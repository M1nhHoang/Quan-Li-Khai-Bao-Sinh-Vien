package com.quanlikhaibaoo.entity;

import com.quanlikhaibaoo.entity.key.TbcongViecCompKey;
import io.jmix.core.metamodel.annotation.JmixEntity;
import io.jmix.data.DdlGeneration;

import javax.persistence.*;
import java.util.Date;

@DdlGeneration(value = DdlGeneration.DbScriptGenerationMode.DISABLED)
@JmixEntity
@Table(name = "tbcong_viec")
@Entity
public class TbcongViec {
    @EmbeddedId
    private TbcongViecCompKey id;

    @Column(name = "`diaChiCongTy`")
    private String diaChiCongTy;

    @JoinColumn(name = "`maNganh`", nullable = false)
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    private Tbnganh maNganh;

    @JoinColumn(name = "`soCMND`")
    @MapsId
    @ManyToOne(fetch = FetchType.LAZY)
    private Tbsinhvien soCMND;

    @Column(name = "`tenCongTy`")
    private String tenCongTy;

    @Column(name = "`tenCongViec`")
    private String tenCongViec;

    @Column(name = "`thoiGianLamViec`")
    @Temporal(TemporalType.DATE)
    private Date thoiGianLamViec;

    public Date getThoiGianLamViec() {
        return thoiGianLamViec;
    }

    public void setThoiGianLamViec(Date thoiGianLamViec) {
        this.thoiGianLamViec = thoiGianLamViec;
    }

    public String getTenCongViec() {
        return tenCongViec;
    }

    public void setTenCongViec(String tenCongViec) {
        this.tenCongViec = tenCongViec;
    }

    public String getTenCongTy() {
        return tenCongTy;
    }

    public void setTenCongTy(String tenCongTy) {
        this.tenCongTy = tenCongTy;
    }

    public Tbsinhvien getSoCMND() {
        return soCMND;
    }

    public void setSoCMND(Tbsinhvien soCMND) {
        this.soCMND = soCMND;
    }

    public Tbnganh getMaNganh() {
        return maNganh;
    }

    public void setMaNganh(Tbnganh maNganh) {
        this.maNganh = maNganh;
    }

    public String getDiaChiCongTy() {
        return diaChiCongTy;
    }

    public void setDiaChiCongTy(String diaChiCongTy) {
        this.diaChiCongTy = diaChiCongTy;
    }

    public TbcongViecCompKey getId() {
        return id;
    }

    public void setId(TbcongViecCompKey id) {
        this.id = id;
    }
}