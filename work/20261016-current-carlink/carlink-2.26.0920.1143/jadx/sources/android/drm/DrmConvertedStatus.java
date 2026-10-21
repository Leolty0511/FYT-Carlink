package android.drm;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes.dex */
public class DrmConvertedStatus {
    public static final int STATUS_ERROR = 3;
    public static final int STATUS_INPUTDATA_ERROR = 2;
    public static final int STATUS_OK = 1;
    public final byte[] convertedData;
    public final int offset;
    public final int statusCode;

    public DrmConvertedStatus(int i2, byte[] bArr, int i3) {
        if (!isValidStatusCode(i2)) {
            throw new IllegalArgumentException(c.d("Unsupported status code: ", i2));
        }
        this.statusCode = i2;
        this.convertedData = bArr;
        this.offset = i3;
    }

    private boolean isValidStatusCode(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3;
    }
}
