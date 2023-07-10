package com.quanlikhaibaoo.screen.tbtruong;

import io.jmix.ui.screen.*;
import com.quanlikhaibaoo.entity.Tbtruong;

@UiController("Tbtruong.browse")
@UiDescriptor("tbtruong-browse.xml")
@LookupComponent("tbtruongsTable")
public class TbtruongBrowse extends StandardLookup<Tbtruong> {
}