package android.net.http;

import com.android.org.conscrypt.TrustManagerImpl;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class X509TrustManagerExtensions {
    public TrustManagerImpl mDelegate;

    public X509TrustManagerExtensions(X509TrustManager x509TrustManager) {
        if (!(x509TrustManager instanceof TrustManagerImpl)) {
            throw new IllegalArgumentException("tm is not a supported type of X509TrustManager");
        }
        this.mDelegate = (TrustManagerImpl) x509TrustManager;
    }

    public List<X509Certificate> checkServerTrusted(X509Certificate[] x509CertificateArr, String str, String str2) {
        return this.mDelegate.checkServerTrusted(x509CertificateArr, str, str2);
    }
}
