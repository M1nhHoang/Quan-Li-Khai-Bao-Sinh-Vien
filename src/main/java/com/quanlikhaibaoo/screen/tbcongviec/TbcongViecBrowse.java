package com.quanlikhaibaoo.screen.tbcongviec;

import io.jmix.ui.screen.*;
import com.quanlikhaibaoo.entity.TbcongViec;

@UiController("TbcongViec.browse")
@UiDescriptor("tbcong-viec-browse.xml")
@LookupComponent("tbcongViecsTable")
public class TbcongViecBrowse extends StandardLookup<TbcongViec> {
}