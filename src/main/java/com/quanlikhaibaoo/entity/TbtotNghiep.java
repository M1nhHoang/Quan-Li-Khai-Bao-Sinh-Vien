package com.quanlikhaibaoo.entity;

import com.quanlikhaibaoo.entity.key.TbtotNghiepCompKey;
import io.jmix.core.metamodel.annotation.JmixEntity;
import io.jmix.data.DdlGeneration;

import javax.persistence.*;
import java.util.Date;

@DdlGeneration(value = DdlGeneration.DbScriptGenerationMode.DISABLED)
@JmixEntity
@Table(name = "tbtot_nghiep")
@Entity
public class TbtotNghiep {
    @EmbeddedId
    private TbtotNghiepCompKey id;

    @Column(name = "`heTN`")
    private String heTN;

    @Column(name = "`loaiTN`")
    private String loaiTN;

    @JoinColumn(name = "`maNganh`")
    @MapsId
    @ManyToOne(fetch = FetchType.LAZY)
    private Tbnganh maNganh;

    @JoinColumn(name = "`maTruong`")
    @MapsId
    @ManyToOne(fetch = FetchType.LAZY)
    private Tbtruong maTruong;

    @Column(name = "`ngayTN`")
    @Temporal(TemporalType.DATE)
    private Date ngayTN;

    @JoinColumn(name = "`soCMND`")
    @MapsId
    @ManyToOne(fetch = FetchType.LAZY)
    private Tbsinhvien soCMND;

    public Tbsinhvien getSoCMND() {
        return soCMND;
    }

    public void setSoCMND(Tbsinhvien soCMND) {
        this.soCMND = soCMND;
    }

    public Date getNgayTN() {
        return ngayTN;
    }

    public void setNgayTN(Date ngayTN) {
        this.ngayTN = ngayTN;
    }

    public Tbtruong getMaTruong() {
        return maTruong;
    }

    public void setMaTruong(Tbtruong maTruong) {
        this.maTruong = maTruong;
    }

    public Tbnganh getMaNganh() {
        return maNganh;
    }

    public void setMaNganh(Tbnganh maNganh) {
        this.maNganh = maNganh;
    }

    public String getLoaiTN() {
        return loaiTN;
    }

    public void setLoaiTN(String loaiTN) {
        this.loaiTN = loaiTN;
    }

    public String getHeTN() {
        return heTN;
    }

    public void setHeTN(String heTN) {
        this.heTN = heTN;
    }

    public TbtotNghiepCompKey getId() {
        return id;
    }

    public void setId(TbtotNghiepCompKey id) {
        this.id = id;
    }
}