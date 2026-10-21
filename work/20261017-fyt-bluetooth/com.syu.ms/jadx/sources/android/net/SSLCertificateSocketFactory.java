package android.net;

import android.os.SystemProperties;
import android.util.Log;
import com.android.org.conscrypt.OpenSSLContextImpl;
import com.android.org.conscrypt.OpenSSLSocketImpl;
import com.android.org.conscrypt.SSLClientSessionCache;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.PrivateKey;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import javax.net.SocketFactory;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: loaded from: classes.dex */
public class SSLCertificateSocketFactory extends SSLSocketFactory {
    private static final TrustManager[] INSECURE_TRUST_MANAGER = {new X509TrustManager() { // from class: android.net.SSLCertificateSocketFactory.1
        @Override // javax.net.ssl.X509TrustManager
        public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        }

        @Override // javax.net.ssl.X509TrustManager
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }
    }};
    private static final String TAG = "SSLCertificateSocketFactory";
    private byte[] mAlpnProtocols;
    private PrivateKey mChannelIdPrivateKey;
    private final int mHandshakeTimeoutMillis;
    private SSLSocketFactory mInsecureFactory;
    private KeyManager[] mKeyManagers;
    private byte[] mNpnProtocols;
    private final boolean mSecure;
    private SSLSocketFactory mSecureFactory;
    private final SSLClientSessionCache mSessionCache;
    private TrustManager[] mTrustManagers;

    @Deprecated
    public SSLCertificateSocketFactory(int i2) {
        this(i2, null, true);
    }

    private static OpenSSLSocketImpl castToOpenSSLSocket(Socket socket) {
        if (socket instanceof OpenSSLSocketImpl) {
            return (OpenSSLSocketImpl) socket;
        }
        throw new IllegalArgumentException("Socket not created by this factory: " + socket);
    }

    public static SocketFactory getDefault(int i2) {
        return new SSLCertificateSocketFactory(i2, null, true);
    }

    private synchronized SSLSocketFactory getDelegate() {
        if (this.mSecure && !isSslCheckRelaxed()) {
            if (this.mSecureFactory == null) {
                this.mSecureFactory = makeSocketFactory(this.mKeyManagers, this.mTrustManagers);
            }
            return this.mSecureFactory;
        }
        if (this.mInsecureFactory == null) {
            if (this.mSecure) {
                Log.w(TAG, "*** BYPASSING SSL SECURITY CHECKS (socket.relaxsslcheck=yes) ***");
            } else {
                Log.w(TAG, "Bypassing SSL security checks at caller's request");
            }
            this.mInsecureFactory = makeSocketFactory(this.mKeyManagers, INSECURE_TRUST_MANAGER);
        }
        return this.mInsecureFactory;
    }

    public static org.apache.http.conn.ssl.SSLSocketFactory getHttpSocketFactory(int i2, SSLSessionCache sSLSessionCache) {
        return new org.apache.http.conn.ssl.SSLSocketFactory(new SSLCertificateSocketFactory(i2, sSLSessionCache, true));
    }

    public static SSLSocketFactory getInsecure(int i2, SSLSessionCache sSLSessionCache) {
        return new SSLCertificateSocketFactory(i2, sSLSessionCache, false);
    }

    private static boolean isSslCheckRelaxed() {
        return "1".equals(SystemProperties.get("ro.debuggable")) && "yes".equals(SystemProperties.get("socket.relaxsslcheck"));
    }

    private SSLSocketFactory makeSocketFactory(KeyManager[] keyManagerArr, TrustManager[] trustManagerArr) {
        try {
            OpenSSLContextImpl openSSLContextImpl = new OpenSSLContextImpl();
            openSSLContextImpl.engineInit(keyManagerArr, trustManagerArr, (SecureRandom) null);
            openSSLContextImpl.engineGetClientSessionContext().setPersistentCache(this.mSessionCache);
            return openSSLContextImpl.engineGetSocketFactory();
        } catch (KeyManagementException e2) {
            Log.wtf(TAG, e2);
            return (SSLSocketFactory) SSLSocketFactory.getDefault();
        }
    }

    public static byte[] toLengthPrefixedList(byte[]... bArr) {
        if (bArr.length == 0) {
            throw new IllegalArgumentException("items.length == 0");
        }
        int length = 0;
        for (byte[] bArr2 : bArr) {
            if (bArr2.length == 0 || bArr2.length > 255) {
                throw new IllegalArgumentException("s.length == 0 || s.length > 255: " + bArr2.length);
            }
            length += bArr2.length + 1;
        }
        byte[] bArr3 = new byte[length];
        int length2 = bArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length2) {
            byte[] bArr4 = bArr[i2];
            int i4 = i3 + 1;
            bArr3[i3] = (byte) bArr4.length;
            int length3 = bArr4.length;
            int i5 = 0;
            while (i5 < length3) {
                bArr3[i4] = bArr4[i5];
                i5++;
                i4++;
            }
            i2++;
            i3 = i4;
        }
        return bArr3;
    }

    public static void verifyHostname(Socket socket, String str) throws IOException {
        if (!(socket instanceof SSLSocket)) {
            throw new IllegalArgumentException("Attempt to verify non-SSL socket");
        }
        if (isSslCheckRelaxed()) {
            return;
        }
        SSLSocket sSLSocket = (SSLSocket) socket;
        sSLSocket.startHandshake();
        SSLSession session = sSLSocket.getSession();
        if (session == null) {
            throw new SSLException("Cannot verify SSL socket without session");
        }
        if (HttpsURLConnection.getDefaultHostnameVerifier().verify(str, session)) {
            return;
        }
        throw new SSLPeerUnverifiedException("Cannot verify hostname: " + str);
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i2, boolean z2) throws IOException {
        OpenSSLSocketImpl openSSLSocketImplCreateSocket = getDelegate().createSocket(socket, str, i2, z2);
        openSSLSocketImplCreateSocket.setNpnProtocols(this.mNpnProtocols);
        openSSLSocketImplCreateSocket.setAlpnProtocols(this.mAlpnProtocols);
        openSSLSocketImplCreateSocket.setHandshakeTimeout(this.mHandshakeTimeoutMillis);
        openSSLSocketImplCreateSocket.setChannelIdPrivateKey(this.mChannelIdPrivateKey);
        if (this.mSecure) {
            verifyHostname(openSSLSocketImplCreateSocket, str);
        }
        return openSSLSocketImplCreateSocket;
    }

    public byte[] getAlpnSelectedProtocol(Socket socket) {
        return castToOpenSSLSocket(socket).getAlpnSelectedProtocol();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return getDelegate().getSupportedCipherSuites();
    }

    public byte[] getNpnSelectedProtocol(Socket socket) {
        return castToOpenSSLSocket(socket).getNpnSelectedProtocol();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return getDelegate().getSupportedCipherSuites();
    }

    public void setAlpnProtocols(byte[][] bArr) {
        this.mAlpnProtocols = toLengthPrefixedList(bArr);
    }

    public void setChannelIdPrivateKey(PrivateKey privateKey) {
        this.mChannelIdPrivateKey = privateKey;
    }

    public void setHostname(Socket socket, String str) {
        castToOpenSSLSocket(socket).setHostname(str);
    }

    public void setKeyManagers(KeyManager[] keyManagerArr) {
        this.mKeyManagers = keyManagerArr;
        this.mSecureFactory = null;
        this.mInsecureFactory = null;
    }

    public void setNpnProtocols(byte[][] bArr) {
        this.mNpnProtocols = toLengthPrefixedList(bArr);
    }

    public void setSoWriteTimeout(Socket socket, int i2) {
        castToOpenSSLSocket(socket).setSoWriteTimeout(i2);
    }

    public void setTrustManagers(TrustManager[] trustManagerArr) {
        this.mTrustManagers = trustManagerArr;
        this.mSecureFactory = null;
    }

    public void setUseSessionTickets(Socket socket, boolean z2) {
        castToOpenSSLSocket(socket).setUseSessionTickets(z2);
    }

    private SSLCertificateSocketFactory(int i2, SSLSessionCache sSLSessionCache, boolean z2) {
        this.mInsecureFactory = null;
        this.mSecureFactory = null;
        this.mTrustManagers = null;
        this.mKeyManagers = null;
        this.mNpnProtocols = null;
        this.mAlpnProtocols = null;
        this.mChannelIdPrivateKey = null;
        this.mHandshakeTimeoutMillis = i2;
        this.mSessionCache = sSLSessionCache != null ? sSLSessionCache.mSessionCache : null;
        this.mSecure = z2;
    }

    public static SSLSocketFactory getDefault(int i2, SSLSessionCache sSLSessionCache) {
        return new SSLCertificateSocketFactory(i2, sSLSessionCache, true);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() {
        OpenSSLSocketImpl openSSLSocketImplCreateSocket = getDelegate().createSocket();
        openSSLSocketImplCreateSocket.setNpnProtocols(this.mNpnProtocols);
        openSSLSocketImplCreateSocket.setAlpnProtocols(this.mAlpnProtocols);
        openSSLSocketImplCreateSocket.setHandshakeTimeout(this.mHandshakeTimeoutMillis);
        openSSLSocketImplCreateSocket.setChannelIdPrivateKey(this.mChannelIdPrivateKey);
        return openSSLSocketImplCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) {
        OpenSSLSocketImpl openSSLSocketImplCreateSocket = getDelegate().createSocket(inetAddress, i2, inetAddress2, i3);
        openSSLSocketImplCreateSocket.setNpnProtocols(this.mNpnProtocols);
        openSSLSocketImplCreateSocket.setAlpnProtocols(this.mAlpnProtocols);
        openSSLSocketImplCreateSocket.setHandshakeTimeout(this.mHandshakeTimeoutMillis);
        openSSLSocketImplCreateSocket.setChannelIdPrivateKey(this.mChannelIdPrivateKey);
        return openSSLSocketImplCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i2) {
        OpenSSLSocketImpl openSSLSocketImplCreateSocket = getDelegate().createSocket(inetAddress, i2);
        openSSLSocketImplCreateSocket.setNpnProtocols(this.mNpnProtocols);
        openSSLSocketImplCreateSocket.setAlpnProtocols(this.mAlpnProtocols);
        openSSLSocketImplCreateSocket.setHandshakeTimeout(this.mHandshakeTimeoutMillis);
        openSSLSocketImplCreateSocket.setChannelIdPrivateKey(this.mChannelIdPrivateKey);
        return openSSLSocketImplCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) throws IOException {
        OpenSSLSocketImpl openSSLSocketImplCreateSocket = getDelegate().createSocket(str, i2, inetAddress, i3);
        openSSLSocketImplCreateSocket.setNpnProtocols(this.mNpnProtocols);
        openSSLSocketImplCreateSocket.setAlpnProtocols(this.mAlpnProtocols);
        openSSLSocketImplCreateSocket.setHandshakeTimeout(this.mHandshakeTimeoutMillis);
        openSSLSocketImplCreateSocket.setChannelIdPrivateKey(this.mChannelIdPrivateKey);
        if (this.mSecure) {
            verifyHostname(openSSLSocketImplCreateSocket, str);
        }
        return openSSLSocketImplCreateSocket;
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i2) throws IOException {
        OpenSSLSocketImpl openSSLSocketImplCreateSocket = getDelegate().createSocket(str, i2);
        openSSLSocketImplCreateSocket.setNpnProtocols(this.mNpnProtocols);
        openSSLSocketImplCreateSocket.setAlpnProtocols(this.mAlpnProtocols);
        openSSLSocketImplCreateSocket.setHandshakeTimeout(this.mHandshakeTimeoutMillis);
        openSSLSocketImplCreateSocket.setChannelIdPrivateKey(this.mChannelIdPrivateKey);
        if (this.mSecure) {
            verifyHostname(openSSLSocketImplCreateSocket, str);
        }
        return openSSLSocketImplCreateSocket;
    }
}
