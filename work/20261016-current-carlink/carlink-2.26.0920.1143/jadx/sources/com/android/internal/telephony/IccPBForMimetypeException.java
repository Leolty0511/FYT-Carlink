package com.android.internal.telephony;

/* JADX INFO: loaded from: classes3.dex */
public class IccPBForMimetypeException extends IccPhoneBookOperationException {
    public static final int CAPACITY_FULL = -2;
    public static final int COMMON_OPREATION_FAILED = -1;
    public static final int OVER_LENGTH_LIMIT = -3;
    public static final int WRONG_FORMAT = -4;
    private static final long serialVersionUID = 1;
    public int mErrorCode;
    public String mMimeType;

    public IccPBForMimetypeException() {
        this.mErrorCode = -1;
        this.mMimeType = null;
    }

    public IccPBForMimetypeException(String str) {
        super(str);
        this.mErrorCode = -1;
        this.mMimeType = null;
    }

    public IccPBForMimetypeException(Throwable th) {
        super(th);
        this.mErrorCode = -1;
        this.mMimeType = null;
    }

    public IccPBForMimetypeException(String str, Throwable th) {
        super(str, th);
        this.mErrorCode = -1;
        this.mMimeType = null;
    }

    public IccPBForMimetypeException(int i2, String str) {
        super(str);
        this.mMimeType = null;
        this.mErrorCode = i2;
    }

    public IccPBForMimetypeException(int i2, String str, String str2) {
        super(str2);
        this.mErrorCode = i2;
        this.mMimeType = str;
    }
}
