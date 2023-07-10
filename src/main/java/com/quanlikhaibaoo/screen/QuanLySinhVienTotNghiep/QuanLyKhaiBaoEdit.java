package com.quanlikhaibaoo.screen.QuanLySinhVienTotNghiep;

import com.quanlikhaibaoo.entity.Tbsinhvien;
import io.jmix.core.DataManager;
import io.jmix.ui.component.Button;
import io.jmix.ui.component.DateField;
import io.jmix.ui.component.TextField;
import io.jmix.ui.model.InstanceContainer;
import io.jmix.ui.screen.*;
import com.quanlikhaibaoo.entity.TbtotNghiep;
import org.springframework.beans.factory.annotation.Autowired;

import javax.inject.Inject;
import java.util.Date;

@UiController("QuanLyKhaiBao.edit")
@UiDescriptor("QuanLyKhaiBao-edit.xml")
@EditedEntityContainer("tbtotNghiepDc")
public class QuanLyKhaiBaoEdit extends StandardEditor<TbtotNghiep> {
}