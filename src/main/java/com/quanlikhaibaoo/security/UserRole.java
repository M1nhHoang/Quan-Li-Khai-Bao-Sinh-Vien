package com.quanlikhaibaoo.security;

import com.quanlikhaibaoo.entity.*;
import com.quanlikhaibaoo.entity.key.TbcongViecCompKey;
import com.quanlikhaibaoo.entity.key.TbtotNghiepCompKey;
import io.jmix.security.model.EntityAttributePolicyAction;
import io.jmix.security.model.EntityPolicyAction;
import io.jmix.security.role.annotation.EntityAttributePolicy;
import io.jmix.security.role.annotation.EntityPolicy;
import io.jmix.security.role.annotation.ResourceRole;
import io.jmix.security.role.annotation.SpecificPolicy;
import io.jmix.securityui.role.annotation.MenuPolicy;
import io.jmix.securityui.role.annotation.ScreenPolicy;

@ResourceRole(name = "UserRole", code = "user-role")
public interface UserRole {
    @EntityAttributePolicy(entityClass = TbcongViec.class, attributes = "*", action = EntityAttributePolicyAction.VIEW)
    @EntityPolicy(entityClass = TbcongViec.class, actions = EntityPolicyAction.READ)
    void tbcongViec();

    @EntityAttributePolicy(entityClass = TbcongViecCompKey.class, attributes = "*", action = EntityAttributePolicyAction.VIEW)
    @EntityPolicy(entityClass = TbcongViecCompKey.class, actions = EntityPolicyAction.READ)
    void tbcongViecCompKey();

    @EntityAttributePolicy(entityClass = Tbnganh.class, attributes = "*", action = EntityAttributePolicyAction.VIEW)
    @EntityPolicy(entityClass = Tbnganh.class, actions = EntityPolicyAction.READ)
    void tbnganh();

    @EntityAttributePolicy(entityClass = Tbsinhvien.class, attributes = "*", action = EntityAttributePolicyAction.VIEW)
    @EntityPolicy(entityClass = Tbsinhvien.class, actions = EntityPolicyAction.READ)
    void tbsinhvien();

    @EntityAttributePolicy(entityClass = TbtotNghiep.class, attributes = "*", action = EntityAttributePolicyAction.VIEW)
    @EntityPolicy(entityClass = TbtotNghiep.class, actions = EntityPolicyAction.READ)
    void tbtotNghiep();

    @EntityAttributePolicy(entityClass = TbtotNghiepCompKey.class, attributes = "*", action = EntityAttributePolicyAction.VIEW)
    @EntityPolicy(entityClass = TbtotNghiepCompKey.class, actions = EntityPolicyAction.READ)
    void tbtotNghiepCompKey();

    @EntityAttributePolicy(entityClass = Tbtruong.class, attributes = "*", action = EntityAttributePolicyAction.VIEW)
    @EntityPolicy(entityClass = Tbtruong.class, actions = EntityPolicyAction.READ)
    void tbtruong();

    @EntityAttributePolicy(entityClass = User.class, attributes = {"username", "firstName", "lastName", "email", "timeZoneId"}, action = EntityAttributePolicyAction.VIEW)
    @EntityPolicy(entityClass = User.class, actions = EntityPolicyAction.READ)
    void user();

    @MenuPolicy(menuIds = {"khaiBao.Browse", "User.browse", "TbtotNghiep.browse", "Tbtruong.browse", "TbcongViec.browse", "Tbsinhvien.browse", "Tbnganh.browse", "QuanLyKhaiBao.browse"})
    @ScreenPolicy(screenIds = {"khaiBao.Browse", "User.browse", "TbtotNghiep.browse", "Tbtruong.browse", "TbcongViec.browse", "Tbsinhvien.browse", "Tbnganh.browse", "QuanLyKhaiBao.browse"})
    void screens();

    @SpecificPolicy(resources = "ui.loginToUi")
    void specific();
}