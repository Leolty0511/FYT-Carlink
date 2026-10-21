package android.media;

/* JADX INFO: loaded from: classes.dex */
public interface MediaScannerClient {
    void handleStringTag(String str, String str2);

    void scanFile(String str, long j2, long j3, boolean z2, boolean z3);

    void setMimeType(String str);
}
