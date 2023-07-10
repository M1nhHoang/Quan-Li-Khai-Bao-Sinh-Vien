package com.quanlikhaibaoo.screen.khaiBao;

import com.quanlikhaibaoo.entity.Tbnganh;
import com.quanlikhaibaoo.entity.Tbsinhvien;
import com.quanlikhaibaoo.entity.TbtotNghiep;
import com.quanlikhaibaoo.entity.Tbtruong;
import io.jmix.core.DataManager;
import io.jmix.core.Messages;
import io.jmix.ui.Notifications;
import io.jmix.ui.component.Button;
import io.jmix.ui.component.ComboBox;
import io.jmix.ui.component.DateField;
import io.jmix.ui.component.TextField;
import io.jmix.ui.navigation.Route;
import io.jmix.ui.screen.*;
import liquibase.pro.packaged.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.support.TransactionTemplate;

import javax.inject.Inject;
import java.util.Date;
import java.util.List;

@UiController("khaiBao.Browse")
@UiDescriptor("khaiBao-brow.xml")
@EditedEntityContainer("khaibaoDC")
@Route("khaibao")
public class khaiBaoBrowse extends Screen {

    @Inject
    private DataManager dataManager;

    @Inject
    private TextField<Integer> soCMND;

    @Inject
    private TextField<String> hoTen;

    @Inject
    private TextField<String> email;

    @Inject
    private TextField<String> soDt;

    @Inject
    private TextField<String> diaChi;

    @Inject
    private ComboBox<Tbtruong> truong;

    @Inject
    private ComboBox<Tbnganh> nganh;

    @Inject
    private TextField<String> heTN;

    @Inject
    private TextField<String> loaiTN;

    @Inject
    private DateField ngayTN;

    @Inject
    private Notifications noti;

    @Inject
    private Messages mess;

    @Inject
    private TransactionTemplate trans;

    @Subscribe
    public void onInit(InitEvent event) {
        List<Tbnganh> dsNganh = dataManager.load(Tbnganh.class).all().list();
        List<Tbtruong> dsTruong = dataManager.load(Tbtruong.class).all().list();

        this.nganh.setOptionsList(dsNganh);
        this.nganh.setOptionCaptionProvider(Tbnganh::getTenNganh);
        this.truong.setOptionsList(dsTruong);
        this.truong.setOptionCaptionProvider(Tbtruong::getTenTruong);
    }

    @Subscribe("saveBtn")
    protected void onSaveBtnClick(Button.ClickEvent event) {
        trans.execute(status -> {
            try {
                // Lưu thông tin sinh viên
                Tbsinhvien sv = new Tbsinhvien();
                sv.setId(this.soCMND.getValue());
                sv.setHoTen(this.hoTen.getValue());
                sv.setEmail(this.email.getValue());
                sv.setSoDt(this.soDt.getValue());
                sv.setDiaChi(this.diaChi.getValue());

                // Lưu thông tin tốt nghiệp
                TbtotNghiep tn = new TbtotNghiep();
                tn.setSoCMND(sv);
                tn.setMaNganh(this.nganh.getValue());
                tn.setMaTruong(this.truong.getValue());
                tn.setHeTN(this.heTN.getValue());
                tn.setNgayTN((Date) this.ngayTN.getValue());
                tn.setLoaiTN(this.loaiTN.getValue());

                dataManager.save(sv);
                dataManager.save(tn);

                noti.create()
                        .withCaption("Thành công!")
                        .withDescription("form của bạn đã đuược gửi!")
                        .show();

                close(StandardOutcome.COMMIT);
            }
            catch (Exception e) {
                status.setRollbackOnly();
                noti.create()
                        .withCaption("Lỗi!")
                        .withDescription(e.toString())
                        .show();
            }
            return null;
        });
    }

    @Subscribe("closeBtn")
    protected void onCloseBtnClick(Button.ClickEvent event) {
        close(StandardOutcome.CLOSE);
    }
}
