package com.quanlikhaibaoo.entity.key;

import io.jmix.core.metamodel.annotation.JmixEntity;
import org.springframework.data.util.ProxyUtils;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.util.Objects;

@JmixEntity
@Embeddable
public class TbtotNghiepCompKey {
    @Column(name = "`maNganh`", nullable = false, unique = true)
    private Integer maNganh;

    @Column(name = "`maTruong`", nullable = false, unique = true)
    private Integer maTruong;

    @Column(name = "`soCMND`", nullable = false, unique = true)
    private Integer soCMND;

    public Integer getSoCMND() {
        return soCMND;
    }

    public void setSoCMND(Integer soCMND) {
        this.soCMND = soCMND;
    }

    public Integer getMaTruong() {
        return maTruong;
    }

    public void setMaTruong(Integer maTruong) {
        this.maTruong = maTruong;
    }

    public Integer getMaNganh() {
        return maNganh;
    }

    public void setMaNganh(Integer maNganh) {
        this.maNganh = maNganh;
    }

    @Override
    public int hashCode() {
        return Objects.hash(maTruong, soCMND, maNganh);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || ProxyUtils.getUserClass(this) != ProxyUtils.getUserClass(o)) return false;
        TbtotNghiepCompKey entity = (TbtotNghiepCompKey) o;
        return Objects.equals(this.maTruong, entity.maTruong) &&
                Objects.equals(this.soCMND, entity.soCMND) &&
                Objects.equals(this.maNganh, entity.maNganh);
    }
}