package com.google.android.projection.protocol;

import android.annotation.SuppressLint;
import android.util.Base64;
import com.google.android.projection.logging.Log;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.security.KeyFactory;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.cert.CertificateException;
import java.security.cert.CertificateExpiredException;
import java.security.cert.CertificateFactory;
import java.security.cert.CertificateNotYetValidException;
import java.security.cert.X509Certificate;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import java.util.function.Predicate;
import java.util.function.Supplier;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509KeyManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes3.dex */
public final class SslTransportFactory {
    private static final String TAG = "AHU.WPP.SSL";
    private static final String TLS_12_PROTOCOL = "TLSv1.2";
    private static final String X509_CERT_FACTORY = "X.509";
    private static final String X509_CERT_HEADER = "-----BEGIN CERTIFICATE-----\n";
    private final SSLContext sslContext;

    public static final class Builder {
        private final String clientCert;
        private final String clientKey;
        private final String rootCert;
        private String orgName = "CarService";
        private boolean ignoreCertificateDate = false;

        public Builder(String str, String str2, String str3) {
            this.rootCert = str;
            this.clientCert = str2;
            this.clientKey = str3;
        }

        public SslTransportFactory build() {
            return new SslTransportFactory(this.rootCert, this.clientCert, this.clientKey, this.orgName, this.ignoreCertificateDate);
        }

        @CanIgnoreReturnValue
        public Builder setIgnoreCertificateDate(boolean z2) {
            this.ignoreCertificateDate = z2;
            return this;
        }

        @CanIgnoreReturnValue
        public Builder setOrgName(String str) {
            this.orgName = str;
            return this;
        }
    }

    public static final class WppKeyManager implements X509KeyManager {
        private static final String PKCS1_FOOTER = "-----END RSA PRIVATE KEY-----\n";
        private static final String PKCS1_HEADER = "-----BEGIN RSA PRIVATE KEY-----\n";
        private static final String PKCS8_FOOTER = "-----END PRIVATE KEY-----\n";
        private static final String PKCS8_HEADER = "-----BEGIN PRIVATE KEY-----\n";
        private static final String RSA_ALGORITHM = "RSA";
        private final X509Certificate clientCert;
        private final PrivateKey clientKey;
        private final String orgName;
        private final X509Certificate rootCert;

        public WppKeyManager(String str, String str2, String str3, String str4) {
            this.rootCert = SslTransportFactory.createCert(str);
            this.clientCert = SslTransportFactory.createCert(str2);
            this.clientKey = createKey(str3);
            this.orgName = str4;
        }

        private static PrivateKey createKey(String str) throws NoSuchAlgorithmException {
            KeyFactory keyFactory = KeyFactory.getInstance("RSA");
            if (str.startsWith(PKCS8_HEADER)) {
                return keyFactory.generatePrivate(new PKCS8EncodedKeySpec(Base64.decode(str.substring(28, str.length() - 26), 0)));
            }
            if (str.startsWith(PKCS1_HEADER)) {
                return keyFactory.generatePrivate(new X509EncodedKeySpec(Base64.decode(str.substring(32, str.length() - 30), 0)));
            }
            throw new IllegalArgumentException("Provided key material is not in a supported format");
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseClientAlias(String[] strArr, Principal[] principalArr, Socket socket) {
            if (strArr == null || !Arrays.asList(strArr).contains("RSA")) {
                return null;
            }
            return this.orgName;
        }

        @Override // javax.net.ssl.X509KeyManager
        public String chooseServerAlias(String str, Principal[] principalArr, Socket socket) {
            throw new UnsupportedOperationException("SslTransportFactory is for client side auth.");
        }

        @Override // javax.net.ssl.X509KeyManager
        public X509Certificate[] getCertificateChain(String str) {
            return new X509Certificate[]{this.clientCert, this.rootCert};
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getClientAliases(String str, Principal[] principalArr) {
            if ("RSA".equals(str)) {
                return new String[]{this.orgName};
            }
            return null;
        }

        @Override // javax.net.ssl.X509KeyManager
        public PrivateKey getPrivateKey(String str) {
            return this.clientKey;
        }

        @Override // javax.net.ssl.X509KeyManager
        public String[] getServerAliases(String str, Principal[] principalArr) {
            throw new UnsupportedOperationException("SslTransportFactory is for client side auth.");
        }
    }

    @SuppressLint({"CustomX509TrustManager"})
    public static final class WppTrustManager implements X509TrustManager {
        private final boolean ignoreCertificateDate;
        private final X509TrustManager trustManager;

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean lambda$new$0(TrustManager trustManager) {
            return trustManager instanceof X509TrustManager;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ KeyManagementException lambda$new$1() {
            return new KeyManagementException("Unable to find X509 TrustManager.");
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            if (!this.ignoreCertificateDate) {
                this.trustManager.checkClientTrusted(x509CertificateArr, str);
                return;
            }
            try {
                this.trustManager.checkClientTrusted(x509CertificateArr, str);
            } catch (CertificateExpiredException | CertificateNotYetValidException e2) {
                Log.e(SslTransportFactory.TAG, "Ignore temporally invalid cert due to ignoreCertificateDate being true", e2);
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) throws CertificateException {
            if (!this.ignoreCertificateDate) {
                this.trustManager.checkServerTrusted(x509CertificateArr, str);
                return;
            }
            try {
                this.trustManager.checkServerTrusted(x509CertificateArr, str);
            } catch (CertificateExpiredException | CertificateNotYetValidException e2) {
                Log.e(SslTransportFactory.TAG, "Ignore temporally invalid cert due to ignoreCertificateDate being true", e2);
            }
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return this.trustManager.getAcceptedIssuers();
        }

        /* JADX WARN: Type inference failed for: r4v3, types: [com.google.android.projection.protocol.c] */
        /* JADX WARN: Type inference failed for: r4v4, types: [com.google.android.projection.protocol.d] */
        private WppTrustManager(String str, boolean z2, String str2) throws NoSuchAlgorithmException, IOException, KeyStoreException, CertificateException {
            this.ignoreCertificateDate = z2;
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setCertificateEntry(str2, SslTransportFactory.createCert(str));
            trustManagerFactory.init(keyStore);
            this.trustManager = (X509TrustManager) Arrays.stream(trustManagerFactory.getTrustManagers()).filter(new Predicate() { // from class: com.google.android.projection.protocol.c
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return SslTransportFactory.WppTrustManager.lambda$new$0((TrustManager) obj);
                }
            }).findFirst().orElseThrow(new Supplier() { // from class: com.google.android.projection.protocol.d
                @Override // java.util.function.Supplier
                public final Object get() {
                    return SslTransportFactory.WppTrustManager.lambda$new$1();
                }
            });
        }
    }

    public static Builder builder(String str, String str2, String str3) {
        return new Builder(str, str2, str3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static X509Certificate createCert(String str) throws CertificateException {
        CertificateFactory certificateFactory = CertificateFactory.getInstance(X509_CERT_FACTORY);
        int iIndexOf = str.indexOf(X509_CERT_HEADER);
        if (iIndexOf != -1) {
            return (X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(str.substring(iIndexOf).getBytes(StandardCharsets.UTF_8)));
        }
        throw new CertificateException("Could not find certificate header.");
    }

    public Socket createSslSocket(Socket socket) {
        InetAddress inetAddress = socket.getInetAddress();
        if (inetAddress == null) {
            throw new IllegalArgumentException("Provided socket is not connected.");
        }
        SSLSocket sSLSocket = (SSLSocket) this.sslContext.getSocketFactory().createSocket(socket, inetAddress.getHostAddress(), socket.getPort(), true);
        sSLSocket.setUseClientMode(true);
        return sSLSocket;
    }

    private SslTransportFactory(String str, String str2, String str3, String str4, boolean z2) throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContext = SSLContext.getInstance(TLS_12_PROTOCOL);
        this.sslContext = sSLContext;
        sSLContext.init(new KeyManager[]{new WppKeyManager(str, str2, str3, str4)}, new TrustManager[]{new WppTrustManager(str, z2, str4)}, null);
    }
}
