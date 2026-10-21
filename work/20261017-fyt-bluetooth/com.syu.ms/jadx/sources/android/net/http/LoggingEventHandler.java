package android.net.http;

/* JADX INFO: loaded from: classes.dex */
public class LoggingEventHandler implements EventHandler {
    @Override // android.net.http.EventHandler
    public void certificate(SslCertificate sslCertificate) {
    }

    @Override // android.net.http.EventHandler
    public void data(byte[] bArr, int i2) {
    }

    @Override // android.net.http.EventHandler
    public void endData() {
    }

    @Override // android.net.http.EventHandler
    public void error(int i2, String str) {
    }

    @Override // android.net.http.EventHandler
    public boolean handleSslErrorRequest(SslError sslError) {
        return false;
    }

    @Override // android.net.http.EventHandler
    public void headers(Headers headers) {
    }

    public void locationChanged(String str, boolean z2) {
    }

    public void requestSent() {
        HttpLog.v("LoggingEventHandler:requestSent()");
    }

    @Override // android.net.http.EventHandler
    public void status(int i2, int i3, int i4, String str) {
    }
}
