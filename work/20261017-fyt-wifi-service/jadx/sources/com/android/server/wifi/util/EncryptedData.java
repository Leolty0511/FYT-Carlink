package com.android.server.wifi.util;

import com.android.internal.util.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class EncryptedData {
    public static final int ENCRYPTED_DATA_LENGTH = 48;
    public static final int IV_LENGTH = 12;
    private final byte[] mEncryptedData;
    private final byte[] mIv;

    public EncryptedData(byte[] encryptedData, byte[] iv) {
        Preconditions.checkNotNull(encryptedData, iv);
        Preconditions.checkState(encryptedData.length == 48, "encryptedData.length=" + encryptedData.length);
        Preconditions.checkState(iv.length == 12, "iv.length=" + iv.length);
        this.mEncryptedData = encryptedData;
        this.mIv = iv;
    }

    public byte[] getEncryptedData() {
        return this.mEncryptedData;
    }

    public byte[] getIv() {
        return this.mIv;
    }
}
