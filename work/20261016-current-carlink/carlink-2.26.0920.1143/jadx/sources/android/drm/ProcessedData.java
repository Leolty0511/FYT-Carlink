package android.drm;

/* JADX INFO: loaded from: classes.dex */
public class ProcessedData {
    private String mAccountId;
    private final byte[] mData;
    private String mSubscriptionId;

    public ProcessedData(byte[] bArr, String str) {
        this.mSubscriptionId = "";
        this.mData = bArr;
        this.mAccountId = str;
    }

    public String getAccountId() {
        return this.mAccountId;
    }

    public byte[] getData() {
        return this.mData;
    }

    public String getSubscriptionId() {
        return this.mSubscriptionId;
    }

    public ProcessedData(byte[] bArr, String str, String str2) {
        this.mData = bArr;
        this.mAccountId = str;
        this.mSubscriptionId = str2;
    }
}
