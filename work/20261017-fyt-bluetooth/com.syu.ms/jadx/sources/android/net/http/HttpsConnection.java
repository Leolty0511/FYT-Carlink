package android.net.http;

import android.content.Context;
import android.net.Proxy;
import android.security.KeyChain;
import android.util.Log;
import com.android.org.conscrypt.FileClientSessionCache;
import com.android.org.conscrypt.OpenSSLContextImpl;
import com.android.org.conscrypt.SSLClientSessionCache;
import java.io.File;
import java.io.IOException;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.Locale;
import javax.net.ssl.KeyManager;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpInetConnection;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
public class HttpsConnection extends Connection {
    private static SSLSocketFactory mSslSocketFactory;
    private boolean mAborted;
    private HttpHost mProxyHost;
    private Object mSuspendLock;
    private boolean mSuspended;

    static {
        initializeEngine(null);
    }

    public HttpsConnection(Context context, HttpHost httpHost, HttpHost httpHost2, RequestFeeder requestFeeder) {
        super(context, httpHost, requestFeeder);
        this.mSuspendLock = new Object();
        this.mSuspended = false;
        this.mAborted = false;
        this.mProxyHost = httpHost2;
    }

    private static synchronized SSLSocketFactory getSocketFactory() {
        return mSslSocketFactory;
    }

    public static void initializeEngine(File file) {
        SSLClientSessionCache sSLClientSessionCacheUsingDirectory;
        if (file != null) {
            try {
                Log.d("HttpsConnection", "Caching SSL sessions in " + file + ".");
                sSLClientSessionCacheUsingDirectory = FileClientSessionCache.usingDirectory(file);
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            } catch (KeyManagementException e3) {
                throw new RuntimeException(e3);
            }
        } else {
            sSLClientSessionCacheUsingDirectory = null;
        }
        OpenSSLContextImpl openSSLContextImpl = new OpenSSLContextImpl();
        openSSLContextImpl.engineInit((KeyManager[]) null, new TrustManager[]{new X509TrustManager() { // from class: android.net.http.HttpsConnection.1
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
        }}, (SecureRandom) null);
        openSSLContextImpl.engineGetClientSessionContext().setPersistentCache(sSLClientSessionCacheUsingDirectory);
        synchronized (HttpsConnection.class) {
            mSslSocketFactory = openSSLContextImpl.engineGetSocketFactory();
        }
    }

    @Override // android.net.http.Connection
    public void closeConnection() {
        if (this.mSuspended) {
            restartConnection(false);
        }
        try {
            AndroidHttpClientConnection androidHttpClientConnection = this.mHttpClientConnection;
            if (androidHttpClientConnection == null || !androidHttpClientConnection.isOpen()) {
                return;
            }
            this.mHttpClientConnection.close();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.net.http.Connection
    public String getScheme() {
        return "https";
    }

    @Override // android.net.http.Connection
    public AndroidHttpClientConnection openConnection(Request request) throws IOException {
        SSLSocket sSLSocket;
        StatusLine responseHeader;
        int statusCode;
        SSLSocket sSLSocket2 = null;
        HttpInetConnection httpInetConnection = null;
        if (this.mProxyHost != null) {
            try {
                Socket socket = new Socket(this.mProxyHost.getHostName(), this.mProxyHost.getPort());
                socket.setSoTimeout(Connection.SOCKET_TIMEOUT);
                AndroidHttpClientConnection androidHttpClientConnection = new AndroidHttpClientConnection();
                try {
                    HttpParams basicHttpParams = new BasicHttpParams();
                    HttpConnectionParams.setSocketBufferSize(basicHttpParams, 8192);
                    androidHttpClientConnection.bind(socket, basicHttpParams);
                    Headers headers = new Headers();
                    try {
                        BasicHttpRequest basicHttpRequest = new BasicHttpRequest("CONNECT", this.mHost.toHostString());
                        for (Header header : request.mHttpRequest.getAllHeaders()) {
                            String lowerCase = header.getName().toLowerCase(Locale.ROOT);
                            if (lowerCase.startsWith(Proxy.EXTRA_PROXY_INFO) || lowerCase.equals("keep-alive") || lowerCase.equals(KeyChain.EXTRA_HOST)) {
                                basicHttpRequest.addHeader(header);
                            }
                        }
                        androidHttpClientConnection.sendRequestHeader(basicHttpRequest);
                        androidHttpClientConnection.flush();
                        do {
                            responseHeader = androidHttpClientConnection.parseResponseHeader(headers);
                            statusCode = responseHeader.getStatusCode();
                        } while (statusCode < 200);
                        if (statusCode != 200) {
                            ProtocolVersion protocolVersion = responseHeader.getProtocolVersion();
                            request.mEventHandler.status(protocolVersion.getMajor(), protocolVersion.getMinor(), statusCode, responseHeader.getReasonPhrase());
                            request.mEventHandler.headers(headers);
                            request.mEventHandler.endData();
                            androidHttpClientConnection.close();
                            return null;
                        }
                        try {
                            sSLSocket = (SSLSocket) getSocketFactory().createSocket(socket, this.mHost.getHostName(), this.mHost.getPort(), true);
                        } catch (IOException e2) {
                            String message = e2.getMessage();
                            if (message == null) {
                                message = "failed to create an SSL socket";
                            }
                            throw new IOException(message);
                        }
                    } catch (IOException e3) {
                        String message2 = e3.getMessage();
                        if (message2 == null) {
                            message2 = "failed to send a CONNECT request";
                        }
                        throw new IOException(message2);
                    } catch (org.apache.http.HttpException e4) {
                        String message3 = e4.getMessage();
                        if (message3 == null) {
                            message3 = "failed to send a CONNECT request";
                        }
                        throw new IOException(message3);
                    } catch (ParseException e5) {
                        String message4 = e5.getMessage();
                        if (message4 == null) {
                            message4 = "failed to send a CONNECT request";
                        }
                        throw new IOException(message4);
                    }
                } catch (IOException e6) {
                    e = e6;
                    httpInetConnection = androidHttpClientConnection;
                    if (httpInetConnection != null) {
                        httpInetConnection.close();
                    }
                    String message5 = e.getMessage();
                    if (message5 == null) {
                        message5 = "failed to establish a connection to the proxy";
                    }
                    throw new IOException(message5);
                }
            } catch (IOException e7) {
                e = e7;
            }
        } else {
            try {
                sSLSocket = (SSLSocket) getSocketFactory().createSocket(this.mHost.getHostName(), this.mHost.getPort());
                try {
                    sSLSocket.setSoTimeout(Connection.SOCKET_TIMEOUT);
                } catch (IOException e8) {
                    e = e8;
                    sSLSocket2 = sSLSocket;
                    if (sSLSocket2 != null) {
                        sSLSocket2.close();
                    }
                    String message6 = e.getMessage();
                    if (message6 == null) {
                        message6 = "failed to create an SSL socket";
                    }
                    throw new IOException(message6);
                }
            } catch (IOException e9) {
                e = e9;
            }
        }
        SslError sslErrorDoHandshakeAndValidateServerCertificates = CertificateChainValidator.getInstance().doHandshakeAndValidateServerCertificates(this, sSLSocket, this.mHost.getHostName());
        if (sslErrorDoHandshakeAndValidateServerCertificates != null) {
            synchronized (this.mSuspendLock) {
                this.mSuspended = true;
            }
            if (!request.getEventHandler().handleSslErrorRequest(sslErrorDoHandshakeAndValidateServerCertificates)) {
                throw new IOException("failed to handle " + sslErrorDoHandshakeAndValidateServerCertificates);
            }
            synchronized (this.mSuspendLock) {
                if (this.mSuspended) {
                    try {
                        this.mSuspendLock.wait(600000L);
                        if (this.mSuspended) {
                            this.mSuspended = false;
                            this.mAborted = true;
                        }
                    } catch (InterruptedException unused) {
                    }
                }
                if (this.mAborted) {
                    sSLSocket.close();
                    throw new SSLConnectionClosedByUserException("connection closed by the user");
                }
            }
        }
        AndroidHttpClientConnection androidHttpClientConnection2 = new AndroidHttpClientConnection();
        BasicHttpParams basicHttpParams2 = new BasicHttpParams();
        basicHttpParams2.setIntParameter("http.socket.buffer-size", 8192);
        androidHttpClientConnection2.bind(sSLSocket, basicHttpParams2);
        return androidHttpClientConnection2;
    }

    public void restartConnection(boolean z2) {
        synchronized (this.mSuspendLock) {
            if (this.mSuspended) {
                this.mSuspended = false;
                this.mAborted = z2 ? false : true;
                this.mSuspendLock.notify();
            }
        }
    }

    public void setCertificate(SslCertificate sslCertificate) {
        this.mCertificate = sslCertificate;
    }

    @Override // android.net.http.Connection
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }
}
