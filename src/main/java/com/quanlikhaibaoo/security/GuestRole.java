package com.quanlikhaibaoo.security;

import io.jmix.security.role.annotation.ResourceRole;
import io.jmix.security.role.annotation.SpecificPolicy;
import io.jmix.securityui.role.annotation.MenuPolicy;
import io.jmix.securityui.role.annotation.ScreenPolicy;

@ResourceRole(name = "GuestRole", code = "guest-role")
public interface GuestRole {
    @MenuPolicy(menuIds = "khaiBao.Browse")
    @ScreenPolicy(screenIds = "khaiBao.Browse")
    void screens();

    @SpecificPolicy(resources = "ui.loginToUi")
    void specific();
}