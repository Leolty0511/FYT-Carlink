package com.android.internal.telephony.gsm;

/* JADX INFO: loaded from: classes3.dex */
public final class SmsBroadcastConfigInfo {
    private int mFromCodeScheme;
    private int mFromServiceId;
    private boolean mSelected;
    private int mToCodeScheme;
    private int mToServiceId;

    public SmsBroadcastConfigInfo(int i2, int i3, int i4, int i5, boolean z2) {
        this.mFromServiceId = i2;
        this.mToServiceId = i3;
        this.mFromCodeScheme = i4;
        this.mToCodeScheme = i5;
        this.mSelected = z2;
    }

    public int getFromCodeScheme() {
        return this.mFromCodeScheme;
    }

    public int getFromServiceId() {
        return this.mFromServiceId;
    }

    public int getToCodeScheme() {
        return this.mToCodeScheme;
    }

    public int getToServiceId() {
        return this.mToServiceId;
    }

    public boolean isSelected() {
        return this.mSelected;
    }

    public void setFromCodeScheme(int i2) {
        this.mFromCodeScheme = i2;
    }

    public void setFromServiceId(int i2) {
        this.mFromServiceId = i2;
    }

    public void setSelected(boolean z2) {
        this.mSelected = z2;
    }

    public void setToCodeScheme(int i2) {
        this.mToCodeScheme = i2;
    }

    public void setToServiceId(int i2) {
        this.mToServiceId = i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SmsBroadcastConfigInfo: Id [");
        sb.append(this.mFromServiceId);
        sb.append(',');
        sb.append(this.mToServiceId);
        sb.append("] Code [");
        sb.append(this.mFromCodeScheme);
        sb.append(',');
        sb.append(this.mToCodeScheme);
        sb.append("] ");
        sb.append(this.mSelected ? "ENABLED" : "DISABLED");
        return sb.toString();
    }
}
