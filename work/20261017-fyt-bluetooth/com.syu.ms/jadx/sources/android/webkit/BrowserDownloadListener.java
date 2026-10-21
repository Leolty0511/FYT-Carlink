package android.webkit;

/* JADX INFO: loaded from: classes.dex */
public abstract class BrowserDownloadListener implements DownloadListener {
    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
        onDownloadStart(str, str2, str3, str4, null, j2);
    }

    public abstract void onDownloadStart(String str, String str2, String str3, String str4, String str5, long j2);
}
