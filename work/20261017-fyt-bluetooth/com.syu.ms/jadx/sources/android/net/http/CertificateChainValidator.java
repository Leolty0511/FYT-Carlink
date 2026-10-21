package android.net.http;

import com.android.org.conscrypt.SSLParametersImpl;
import com.android.org.conscrypt.TrustManagerImpl;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.KeyManagementException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import javax.net.ssl.DefaultHostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

/* JADX INFO: loaded from: classes.dex */
public class CertificateChainValidator {
    private static final CertificateChainValidator sInstance = new CertificateChainValidator();
    private static final DefaultHostnameVerifier sVerifier = new DefaultHostnameVerifier();

    private CertificateChainValidator() {
    }

    private void closeSocketThrowException(SSLSocket sSLSocket, String str, String str2) throws SSLHandshakeException {
        if (str == null) {
            str = str2;
        }
        closeSocketThrowException(sSLSocket, str);
    }

    public static CertificateChainValidator getInstance() {
        return sInstance;
    }

    public static void handleTrustStorageUpdate() {
        try {
            TrustManagerImpl defaultTrustManager = SSLParametersImpl.getDefaultTrustManager();
            if (defaultTrustManager instanceof TrustManagerImpl) {
                defaultTrustManager.handleTrustStorageUpdate();
            }
        } catch (KeyManagementException unused) {
        }
    }

    public static SslError verifyServerCertificates(byte[][] bArr, String str, String str2) throws IOException {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("bad certificate chain");
        }
        X509Certificate[] x509CertificateArr = new X509Certificate[bArr.length];
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance("X.509");
            for (int i2 = 0; i2 < bArr.length; i2++) {
                x509CertificateArr[i2] = (X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(bArr[i2]));
            }
            return verifyServerDomainAndCertificates(x509CertificateArr, str, str2);
        } catch (CertificateException e2) {
            throw new IOException("can't read certificate", e2);
        }
    }

    private static SslError verifyServerDomainAndCertificates(X509Certificate[] x509CertificateArr, String str, String str2) {
        boolean z2 = false;
        X509Certificate x509Certificate = x509CertificateArr[0];
        if (x509Certificate == null) {
            throw new IllegalArgumentException("certificate for this site is null");
        }
        if (str != null && !str.isEmpty() && sVerifier.verify(str, x509Certificate)) {
            z2 = true;
        }
        if (!z2) {
            return new SslError(2, x509Certificate);
        }
        try {
            TrustManagerImpl defaultTrustManager = SSLParametersImpl.getDefaultTrustManager();
            if (defaultTrustManager instanceof TrustManagerImpl) {
                defaultTrustManager.checkServerTrusted(x509CertificateArr, str2, str);
                return null;
            }
            defaultTrustManager.checkServerTrusted(x509CertificateArr, str2);
            return null;
        } catch (GeneralSecurityException unused) {
            return new SslError(3, x509Certificate);
        }
    }

    public SslError doHandshakeAndValidateServerCertificates(HttpsConnection httpsConnection, SSLSocket sSLSocket, String str) {
        if (!sSLSocket.getSession().isValid()) {
            closeSocketThrowException(sSLSocket, "failed to perform SSL handshake");
        }
        Certificate[] peerCertificates = sSLSocket.getSession().getPeerCertificates();
        if (peerCertificates == null || peerCertificates.length == 0) {
            closeSocketThrowException(sSLSocket, "failed to retrieve peer certificates");
        } else if (httpsConnection != null && peerCertificates[0] != null) {
            httpsConnection.setCertificate(new SslCertificate((X509Certificate) peerCertificates[0]));
        }
        return verifyServerDomainAndCertificates((X509Certificate[]) peerCertificates, str, "RSA");
    }

    private void closeSocketThrowException(SSLSocket sSLSocket, String str) throws SSLHandshakeException {
        if (sSLSocket != null) {
            SSLSession session = sSLSocket.getSession();
            if (session != null) {
                session.invalidate();
            }
            sSLSocket.close();
        }
        throw new SSLHandshakeException(str);
    }
}
