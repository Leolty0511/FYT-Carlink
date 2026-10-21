package com.autonavi.amapauto.gdarcameraservice.constant;

/* JADX INFO: loaded from: classes.dex */
public class MyDataType {
    public static final int H264 = 1;
    public static final int YUV = 0;
    private int type;

    private MyDataType(int type) {
        this.type = type;
    }

    public int getType() {
        return this.type;
    }
}
