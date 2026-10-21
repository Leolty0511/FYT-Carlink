package com.android.internal.telephony;

/* JADX INFO: loaded from: classes3.dex */
public class IccPBForEncodeException extends Exception {
    public IccPBForEncodeException() {
    }

    public IccPBForEncodeException(String str) {
        super(str);
    }

    public IccPBForEncodeException(char c) {
        super("Unencodable char: '" + c + "'");
    }
}
