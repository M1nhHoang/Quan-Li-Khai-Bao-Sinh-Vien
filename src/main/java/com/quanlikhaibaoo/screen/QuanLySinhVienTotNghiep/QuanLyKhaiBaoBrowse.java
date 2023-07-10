package com.quanlikhaibaoo.screen.QuanLySinhVienTotNghiep;

import com.quanlikhaibaoo.entity.Tbnganh;
import com.quanlikhaibaoo.entity.Tbsinhvien;
import com.quanlikhaibaoo.entity.Tbtruong;
import com.quanlikhaibaoo.screen.khaiBao.khaiBaoBrowse;
import io.jmix.core.DataManager;
import io.jmix.core.FileRef;
import io.jmix.core.FileStorage;
import io.jmix.ui.Notifications;
import io.jmix.ui.ScreenBuilders;
import io.jmix.ui.component.Button;
import io.jmix.ui.component.FileStorageUploadField;
import io.jmix.ui.component.GroupTable;
import io.jmix.ui.component.SingleFileUploadField;
import io.jmix.ui.download.DownloadDataProvider;
import io.jmix.ui.download.DownloadFormat;
import io.jmix.ui.download.Downloader;
import io.jmix.ui.download.FileDataProvider;
import io.jmix.ui.model.CollectionContainer;
import io.jmix.ui.model.CollectionLoader;
import io.jmix.ui.screen.*;
import com.quanlikhaibaoo.entity.TbtotNghiep;
import io.jmix.ui.upload.TemporaryStorage;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.support.TransactionTemplate;

import javax.inject.Inject;
import java.io.*;
import java.nio.charset.StandardCharsets;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@UiController("QuanLyKhaiBao.browse")
@UiDescriptor("QuanLyKhaiBao-browse.xml")
@LookupComponent("tbtotNghiepsTable")
public class QuanLyKhaiBaoBrowse extends StandardLookup<TbtotNghiep> {
    @Inject
    private ScreenBuilders screenBuilders;

    @Inject
    private CollectionLoader<TbtotNghiep> tbtotNghiepsDl;

    @Autowired
    private CollectionContainer<TbtotNghiep> tbtotNghiepsDc;
    @Autowired
    private GroupTable<TbtotNghiep> tbtotNghiepsTable;
    @Inject
    private TemporaryStorage temporaryStorage;

    @Inject
    private FileStorageUploadField fileField;

    @Autowired
    private Downloader downloader;

    @Autowired
    private FileStorage fileStorage;

    @Inject
    private TransactionTemplate trans;

    @Inject
    private Notifications noti;

    private String[] columnHeaders = {"Số CMND", "Họ Tên", "Số Điện Thoại", "Mã Ngành", "Tên Ngành", "Mã Trường",
            "Tên Trường", "Hệ TN", "Loại TN", "Ngày TN"};

    @Autowired
    private DataManager dataManager;

    @Subscribe("createBtn")
    private void onOpenScreenButtonClick(Button.ClickEvent event) {
        // Create and open the new screen
        khaiBaoBrowse khaiBao = screenBuilders.screen(this)
                .withScreenClass(khaiBaoBrowse.class)
                .withOpenMode(OpenMode.DIALOG)
                .withAfterCloseListener(afterCloseEvent -> {
                    tbtotNghiepsDl.load();
                })
                .build();
        khaiBao.show();
    }

    @Subscribe("fileField")
    private void onFileFieldFileUploadSucceed(FileStorageUploadField.FileUploadSucceedEvent event) {
        File file = temporaryStorage.getFile(fileField.getFileId());
        System.out.println(file);
        try (InputStream inputStream = new FileInputStream(file)) {
            // get upload excel
            Workbook workbook = new XSSFWorkbook(inputStream);
            Sheet sheet = workbook.getSheetAt(0); // first sheet

            // start Transaction
            trans.execute(status -> {
                try {
                    // Read data from sheet
                    for (Row row : sheet) {
                        // skip title
                        if (row.getRowNum() == 0) {
                            continue;
                        }

                        // create entities
                        TbtotNghiep totNghiep = new TbtotNghiep();
                        Tbsinhvien sinhVien = new Tbsinhvien();

                        for (Cell cell : row) {
                            // cell value
                            Object cellValue = null;

                            // get cell type for each cell
                            CellType cellType = cell.getCellType();
                            if (cellType == CellType.STRING) {
                                cellValue = cell.getStringCellValue();
                            } else if (cellType == CellType.NUMERIC) {
                                cellValue = cell.getNumericCellValue();
                            }

                            // index column
                            int columnIndex = cell.getColumnIndex();

                            switch (columnIndex) {
                                case 0:
                                    sinhVien.setId(((Double) cellValue).intValue());
                                    break;
                                case 1:
                                    sinhVien.setHoTen((String) cellValue);
                                    break;
                                case 2:
                                    sinhVien.setSoDt((String) cellValue);
                                    sinhVien.setEmail((String) cellValue + "@mail.com");
                                    sinhVien.setDiaChi("Chưa có");
                                    break;
                                case 3:
                                    Tbnganh nganh = dataManager.load(Tbnganh.class).id(cellValue).one();
                                    totNghiep.setMaNganh(nganh);
                                    break;
                                case 4:
                                    totNghiep.setSoCMND(sinhVien);
                                    break;
                                case 5:
                                    Tbtruong truong = dataManager.load(Tbtruong.class).id(cellValue).one();
                                    totNghiep.setMaTruong(truong);
                                    break;
                                case 7:
                                    totNghiep.setHeTN((String) cellValue);
                                    break;
                                case 8:
                                    totNghiep.setLoaiTN((String) cellValue);
                                    break;
                                case 9:
                                    if (cellValue != null && !cellValue.toString().isEmpty()) {
                                        try {
                                            Date date = new SimpleDateFormat("E MMM dd HH:mm:ss zzz yyyy").parse(cellValue.toString());
                                            totNghiep.setNgayTN(date);
                                        } catch (ParseException e) {
                                            e.printStackTrace();
                                        }
                                    }
                                    break;
                                default:
                                    break;
                            }
                        }
                        dataManager.save(sinhVien);
                        dataManager.save(totNghiep);
                    }
                } catch (Exception e) {
                    status.setRollbackOnly();
                    noti.create()
                            .withCaption("Lỗi!")
                            .withDescription(e.toString())
                            .show();
                    System.out.println(e);
                }
                return null;
            });
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        // refresh data
        tbtotNghiepsDl.load();

        // delete excel file
        temporaryStorage.deleteFile(fileField.getFileId());
    }

    @Subscribe("exportExcelFile")
    private void onExportButtonClick(Button.ClickEvent event) {
        try {
            File excelFile = createExcelFile(tbtotNghiepsDc.getItems());
            downloader.download(fileStorage.saveStream("export", new FileInputStream(excelFile)), DownloadFormat.XLSX);
        } catch (IOException e) {
        }
    }

    private File createExcelFile(List<TbtotNghiep> data) throws IOException {
        // Create new workbook
        try (Workbook workbook = new XSSFWorkbook()) {
            // new sheet
            Sheet sheet = workbook.createSheet("Data");

            // create header
            Row headerRow = sheet.createRow(0);

            for (int i = 0; i < this.columnHeaders.length; i++) {
                Cell cell = headerRow.createCell(i);
                cell.setCellValue(this.columnHeaders[i]);
            }

            // add value
            int rowNum = 1;
            for (TbtotNghiep object : data) {
                Row row = sheet.createRow(rowNum++);
                row.createCell(0).setCellValue(object.getSoCMND().getId());
                row.createCell(1).setCellValue(object.getSoCMND().getHoTen());
                row.createCell(2).setCellValue(object.getSoCMND().getSoDt());
                row.createCell(3).setCellValue(object.getMaNganh().getId());
                row.createCell(4).setCellValue(object.getMaNganh().getTenNganh());
                row.createCell(5).setCellValue(object.getMaTruong().getId());
                row.createCell(6).setCellValue(object.getMaTruong().getTenTruong());
                row.createCell(7).setCellValue(object.getHeTN());
                row.createCell(8).setCellValue(object.getLoaiTN());
                row.createCell(9).setCellValue((object.getNgayTN() != null)?object.getNgayTN().toString():"");
            }

            File excelFile = File.createTempFile("export", ".xlsx");
            try (FileOutputStream outputStream = new FileOutputStream(excelFile)) {
                workbook.write(outputStream);
            }

            workbook.close();

            return excelFile;

        } catch (IOException e) {
            e.printStackTrace();
        }

        return null;
    }
}