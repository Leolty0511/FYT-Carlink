package android.net.http;

import android.net.ProxyProperties;
import java.security.cert.X509Certificate;

/* JADX INFO: loaded from: classes.dex */
public class SslError {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int SSL_DATE_INVALID = 4;
    public static final int SSL_EXPIRED = 1;
    public static final int SSL_IDMISMATCH = 2;
    public static final int SSL_INVALID = 5;

    @Deprecated
    public static final int SSL_MAX_ERROR = 6;
    public static final int SSL_NOTYETVALID = 0;
    public static final int SSL_UNTRUSTED = 3;
    public final SslCertificate mCertificate;
    public int mErrors;
    public final String mUrl;

    @Deprecated
    public SslError(int i2, SslCertificate sslCertificate) {
        this(i2, sslCertificate, ProxyProperties.LOCAL_EXCL_LIST);
    }

    public static SslError SslErrorFromChromiumErrorCode(int i2, SslCertificate sslCertificate, String str) {
        if (i2 == -200) {
            return new SslError(2, sslCertificate, str);
        }
        if (i2 == -201) {
            return new SslError(4, sslCertificate, str);
        }
        return i2 == -202 ? new SslError(3, sslCertificate, str) : new SslError(5, sslCertificate, str);
    }

    public boolean addError(int i2) {
        boolean z2 = i2 >= 0 && i2 < 6;
        if (z2) {
            this.mErrors = (1 << i2) | this.mErrors;
        }
        return z2;
    }

    public SslCertificate getCertificate() {
        return this.mCertificate;
    }

    public int getPrimaryError() {
        if (this.mErrors == 0) {
            return -1;
        }
        for (int i2 = 5; i2 >= 0; i2--) {
            if ((this.mErrors & (1 << i2)) != 0) {
                return i2;
            }
        }
        return -1;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public boolean hasError(int i2) {
        boolean z2 = i2 >= 0 && i2 < 6;
        if (z2) {
            return ((1 << i2) & this.mErrors) != 0;
        }
        return z2;
    }

    public String toString() {
        return "primary error: " + getPrimaryError() + " certificate: " + getCertificate() + " on URL: " + getUrl();
    }

    @Deprecated
    public SslError(int i2, X509Certificate x509Certificate) {
        this(i2, x509Certificate, ProxyProperties.LOCAL_EXCL_LIST);
    }

    public SslError(int i2, SslCertificate sslCertificate, String str) {
        addError(i2);
        this.mCertificate = sslCertificate;
        this.mUrl = str;
    }

    public SslError(int i2, X509Certificate x509Certificate, String str) {
        this(i2, new SslCertificate(x509Certificate), str);
    }
}
