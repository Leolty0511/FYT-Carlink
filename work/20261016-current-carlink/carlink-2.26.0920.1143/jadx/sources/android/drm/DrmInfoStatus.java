package android.drm;

import android.accessibilityservice.c;

/* JADX INFO: loaded from: classes.dex */
public class DrmInfoStatus {
    public static final int STATUS_ERROR = 2;
    public static final int STATUS_OK = 1;
    public final ProcessedData data;
    public final int infoType;
    public final String mimeType;
    public final int statusCode;

    public DrmInfoStatus(int i2, int i3, ProcessedData processedData, String str) {
        if (!DrmInfoRequest.isValidType(i3)) {
            throw new IllegalArgumentException(c.d("infoType: ", i3));
        }
        if (!isValidStatusCode(i2)) {
            throw new IllegalArgumentException(c.d("Unsupported status code: ", i2));
        }
        if (str == null || str == "") {
            throw new IllegalArgumentException("mimeType is null or an empty string");
        }
        this.statusCode = i2;
        this.infoType = i3;
        this.data = processedData;
        this.mimeType = str;
    }

    private boolean isValidStatusCode(int i2) {
        return i2 == 1 || i2 == 2;
    }
}
