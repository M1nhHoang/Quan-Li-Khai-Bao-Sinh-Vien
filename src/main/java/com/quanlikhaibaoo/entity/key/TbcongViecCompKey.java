package com.quanlikhaibaoo.entity.key;

import io.jmix.core.metamodel.annotation.JmixEntity;
import org.springframework.data.util.ProxyUtils;

import javax.persistence.*;
import java.util.Date;
import java.util.Objects;

@JmixEntity
@Embeddable
public class TbcongViecCompKey {
    @Column(name = "`ngayVaoCongTy`", nullable = false, unique = true)
    @Temporal(TemporalType.DATE)
    private Date ngayVaoCongTy;

    @Column(name = "`soCMND`", nullable = false, unique = true)
    private Integer soCMND;

    public Integer getSoCMND() {
        return soCMND;
    }

    public void setSoCMND(Integer soCMND) {
        this.soCMND = soCMND;
    }

    public Date getNgayVaoCongTy() {
        return ngayVaoCongTy;
    }

    public void setNgayVaoCongTy(Date ngayVaoCongTy) {
        this.ngayVaoCongTy = ngayVaoCongTy;
    }

    @Override
    public int hashCode() {
        return Objects.hash(soCMND, ngayVaoCongTy);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || ProxyUtils.getUserClass(this) != ProxyUtils.getUserClass(o)) return false;
        TbcongViecCompKey entity = (TbcongViecCompKey) o;
        return Objects.equals(this.soCMND, entity.soCMND) &&
                Objects.equals(this.ngayVaoCongTy, entity.ngayVaoCongTy);
    }
}