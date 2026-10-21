package com.android.internal.telephony;

/* JADX INFO: loaded from: classes3.dex */
public class IccPBForRecordException extends IccPhoneBookOperationException {
    public static final int ADN_RECORD_CAPACITY_FULL = -4;
    public static final int ANR_RECORD_CAPACITY_FULL = -6;
    public static final int LOAD_RECORD_FAILED = -5;
    public static final int OVER_GRP_MAX_LENGTH = -7;
    public static final int WRITE_RECORD_FAILED = -1;
    private static final long serialVersionUID = 1;
    public int mErrorCode;

    public IccPBForRecordException() {
        this.mErrorCode = -1;
    }

    public IccPBForRecordException(String str) {
        super(str);
        this.mErrorCode = -1;
    }

    public IccPBForRecordException(Throwable th) {
        super(th);
        this.mErrorCode = -1;
    }

    public IccPBForRecordException(String str, Throwable th) {
        super(str, th);
        this.mErrorCode = -1;
    }

    public IccPBForRecordException(int i2, String str) {
        super(str);
        this.mErrorCode = i2;
    }
}
