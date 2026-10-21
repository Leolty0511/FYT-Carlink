package com.android.internal.telephony;

/* JADX INFO: loaded from: classes3.dex */
public class IccPhoneBookOperationException extends RuntimeException {
    public static final int AAS_CAPACITY_FULL = -12;
    public static final int ADN_CAPACITY_FULL = -3;
    public static final int ANR_CAPACITY_FULL = -9;
    public static final int EMAIL_CAPACITY_FULL = -2;
    public static final int GROUP_CAPACITY_FULL = -8;
    public static final int GRP_RECORD_MAX_LENGTH = -10;
    public static final int LOAD_ADN_FAIL = -6;
    public static final int OVER_AAS_MAX_LENGTH = -11;
    public static final int OVER_GROUP_NAME_MAX_LENGTH = -7;
    public static final int OVER_NAME_MAX_LENGTH = -4;
    public static final int OVER_NUMBER_MAX_LENGTH = -5;
    public static final int WRITE_OPREATION_FAILED = -1;
    private static final long serialVersionUID = 1;
    public int mErrorCode;

    public IccPhoneBookOperationException() {
        this.mErrorCode = -1;
    }

    public IccPhoneBookOperationException(String str) {
        super(str);
        this.mErrorCode = -1;
    }

    public IccPhoneBookOperationException(Throwable th) {
        super(th);
        this.mErrorCode = -1;
    }

    public IccPhoneBookOperationException(String str, Throwable th) {
        super(str, th);
        this.mErrorCode = -1;
    }

    public IccPhoneBookOperationException(int i2, String str) {
        super(str);
        this.mErrorCode = i2;
    }

    public IccPhoneBookOperationException(int i2, String str, Throwable th) {
        super(str, th);
        this.mErrorCode = i2;
    }
}
