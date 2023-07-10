package com.quanlikhaibaoo.screen.tbnganh;

import io.jmix.ui.screen.*;
import com.quanlikhaibaoo.entity.Tbnganh;

@UiController("Tbnganh.browse")
@UiDescriptor("tbnganh-browse.xml")
@LookupComponent("tbnganhsTable")
public class TbnganhBrowse extends StandardLookup<Tbnganh> {
}