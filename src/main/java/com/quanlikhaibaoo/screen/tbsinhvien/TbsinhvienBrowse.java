package com.quanlikhaibaoo.screen.tbsinhvien;

import io.jmix.ui.screen.*;
import com.quanlikhaibaoo.entity.Tbsinhvien;

@UiController("Tbsinhvien.browse")
@UiDescriptor("tbsinhvien-browse.xml")
@LookupComponent("tbsinhviensTable")
public class TbsinhvienBrowse extends StandardLookup<Tbsinhvien> {
}