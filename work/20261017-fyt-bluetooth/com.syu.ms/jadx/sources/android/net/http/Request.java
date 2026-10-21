package android.net.http;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpMessage;
import org.apache.http.HttpRequest;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.message.BasicHttpEntityEnclosingRequest;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.protocol.RequestContent;

/* JADX INFO: loaded from: classes.dex */
class Request {
    private static final String ACCEPT_ENCODING_HEADER = "Accept-Encoding";
    private static final String CONTENT_LENGTH_HEADER = "content-length";
    private static final String HOST_HEADER = "Host";
    private static RequestContent requestContentProcessor = new RequestContent();
    private int mBodyLength;
    private InputStream mBodyProvider;
    private Connection mConnection;
    public EventHandler mEventHandler;
    public HttpHost mHost;
    public BasicHttpRequest mHttpRequest;
    public String mPath;
    public HttpHost mProxyHost;
    public volatile boolean mCancelled = false;
    public int mFailCount = 0;
    private int mReceivedBytes = 0;
    private final Object mClientResource = new Object();
    private boolean mLoadingPaused = false;

    public Request(String str, HttpHost httpHost, HttpHost httpHost2, String str2, InputStream inputStream, int i2, EventHandler eventHandler, Map<String, String> map) {
        this.mEventHandler = eventHandler;
        this.mHost = httpHost;
        this.mProxyHost = httpHost2;
        this.mPath = str2;
        this.mBodyProvider = inputStream;
        this.mBodyLength = i2;
        if (inputStream != null || "POST".equalsIgnoreCase(str)) {
            this.mHttpRequest = new BasicHttpEntityEnclosingRequest(str, getUri());
            if (inputStream != null) {
                setBodyProvider(inputStream, i2);
            }
        } else {
            this.mHttpRequest = new BasicHttpRequest(str, getUri());
        }
        addHeader(HOST_HEADER, getHostPort());
        addHeader(ACCEPT_ENCODING_HEADER, "gzip");
        addHeaders(map);
    }

    private static boolean canResponseHaveBody(HttpRequest httpRequest, int i2) {
        return ("HEAD".equalsIgnoreCase(httpRequest.getRequestLine().getMethod()) || i2 < 200 || i2 == 204 || i2 == 304) ? false : true;
    }

    private void setBodyProvider(InputStream inputStream, int i2) {
        if (!inputStream.markSupported()) {
            throw new IllegalArgumentException("bodyProvider must support mark()");
        }
        inputStream.mark(Integer.MAX_VALUE);
        ((BasicHttpEntityEnclosingRequest) this.mHttpRequest).setEntity(new InputStreamEntity(inputStream, i2));
    }

    public void addHeader(String str, String str2) {
        if (str == null) {
            HttpLog.e("Null http header name");
            throw new NullPointerException("Null http header name");
        }
        if (str2 != null && str2.length() != 0) {
            this.mHttpRequest.addHeader(str, str2);
            return;
        }
        String str3 = "Null or empty value for header \"" + str + "\"";
        HttpLog.e(str3);
        throw new RuntimeException(str3);
    }

    public void addHeaders(Map<String, String> map) {
        if (map == null) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            addHeader(entry.getKey(), entry.getValue());
        }
    }

    public synchronized void cancel() {
        this.mLoadingPaused = false;
        notify();
        this.mCancelled = true;
        Connection connection = this.mConnection;
        if (connection != null) {
            connection.cancel();
        }
    }

    public void complete() {
        synchronized (this.mClientResource) {
            this.mClientResource.notifyAll();
        }
    }

    public void error(int i2, int i3) {
        this.mEventHandler.error(i2, this.mConnection.mContext.getText(i3).toString());
    }

    public EventHandler getEventHandler() {
        return this.mEventHandler;
    }

    public String getHostPort() {
        String schemeName = this.mHost.getSchemeName();
        int port = this.mHost.getPort();
        return ((port == 80 || !schemeName.equals("http")) && (port == 443 || !schemeName.equals("https"))) ? this.mHost.getHostName() : this.mHost.toHostString();
    }

    public String getUri() {
        if (this.mProxyHost == null || this.mHost.getSchemeName().equals("https")) {
            return this.mPath;
        }
        return this.mHost.getSchemeName() + "://" + getHostPort() + this.mPath;
    }

    public void handleSslErrorResponse(boolean z2) {
        HttpsConnection httpsConnection = (HttpsConnection) this.mConnection;
        if (httpsConnection != null) {
            httpsConnection.restartConnection(z2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x007b  */
    /* JADX WARN: Code duplicated, block: B:41:0x00b7 A[Catch: IOException -> 0x00cd, EOFException -> 0x00d0, all -> 0x00d5, TryCatch #4 {all -> 0x00d5, blocks: (B:26:0x007c, B:30:0x008a, B:39:0x00af, B:41:0x00b7, B:43:0x00ba, B:46:0x00c3, B:50:0x00cc, B:71:0x00f8), top: B:81:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00ba A[Catch: IOException -> 0x00cd, EOFException -> 0x00d0, all -> 0x00d5, TryCatch #4 {all -> 0x00d5, blocks: (B:26:0x007c, B:30:0x008a, B:39:0x00af, B:41:0x00b7, B:43:0x00ba, B:46:0x00c3, B:50:0x00cc, B:71:0x00f8), top: B:81:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:71:0x00f8 A[Catch: all -> 0x00d5, TRY_ENTER, TRY_LEAVE, TryCatch #4 {all -> 0x00d5, blocks: (B:26:0x007c, B:30:0x008a, B:39:0x00af, B:41:0x00b7, B:43:0x00ba, B:46:0x00c3, B:50:0x00cc, B:71:0x00f8), top: B:81:0x005c }] */
    /* JADX WARN: Code duplicated, block: B:74:0x0100  */
    /* JADX WARN: Code duplicated, block: B:77:0x0106 A[PHI: r9
  0x0106: PHI (r9v8 java.io.InputStream) = (r9v9 java.io.InputStream), (r9v10 java.io.InputStream) binds: [B:76:0x0104, B:54:0x00d2] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:82:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x008b A[EXC_TOP_SPLITTER, LOOP:2: B:84:0x008b->B:101:0x008b, LOOP_START, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:88:0x008a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void readResponse(AndroidHttpClientConnection androidHttpClientConnection) {
        StatusLine responseHeader;
        int statusCode;
        IOException iOException;
        byte[] bArr;
        InputStream gZIPInputStream;
        int i2;
        int i3;
        if (this.mCancelled) {
            return;
        }
        androidHttpClientConnection.flush();
        Headers headers = new Headers();
        do {
            responseHeader = androidHttpClientConnection.parseResponseHeader(headers);
            statusCode = responseHeader.getStatusCode();
        } while (statusCode < 200);
        ProtocolVersion protocolVersion = responseHeader.getProtocolVersion();
        this.mEventHandler.status(protocolVersion.getMajor(), protocolVersion.getMinor(), statusCode, responseHeader.getReasonPhrase());
        this.mEventHandler.headers(headers);
        ?? r7 = 0;
        buf = null;
        buf = null;
        byte[] buf = null;
        InputStream inputStream = null;
        HttpEntity httpEntityReceiveResponseEntity = canResponseHaveBody(this.mHttpRequest, statusCode) ? androidHttpClientConnection.receiveResponseEntity(headers) : null;
        boolean zEqualsIgnoreCase = "bytes".equalsIgnoreCase(headers.getAcceptRanges());
        if (httpEntityReceiveResponseEntity != null) {
            InputStream content = httpEntityReceiveResponseEntity.getContent();
            Header contentEncoding = httpEntityReceiveResponseEntity.getContentEncoding();
            int i4 = 0;
            try {
                try {
                    if (contentEncoding != null) {
                        try {
                            if (contentEncoding.getValue().equals("gzip")) {
                                gZIPInputStream = new GZIPInputStream(content);
                            } else {
                                gZIPInputStream = content;
                            }
                            try {
                                buf = this.mConnection.getBuf();
                                int length = buf.length / 2;
                                i2 = 0;
                                i3 = 0;
                                while (i2 != -1) {
                                    try {
                                        synchronized (this) {
                                            while (this.mLoadingPaused) {
                                                try {
                                                    try {
                                                        wait();
                                                    } catch (InterruptedException e2) {
                                                        HttpLog.e("Interrupted exception whilst network thread paused at WebCore's request. " + e2.getMessage());
                                                    }
                                                } catch (Throwable th) {
                                                    throw th;
                                                }
                                            }
                                        }
                                        i2 = gZIPInputStream.read(buf, i3, buf.length - i3);
                                        if (i2 != -1) {
                                            i3 += i2;
                                            if (zEqualsIgnoreCase) {
                                                this.mReceivedBytes += i2;
                                            }
                                        }
                                        if (i2 != -1 || i3 >= length) {
                                            this.mEventHandler.data(buf, i3);
                                            i3 = 0;
                                        }
                                    } catch (EOFException unused) {
                                        i4 = i3;
                                        if (i4 > 0) {
                                            this.mEventHandler.data(buf, i4);
                                        }
                                        if (gZIPInputStream != null) {
                                            gZIPInputStream.close();
                                        }
                                        this.mConnection.setCanPersist(httpEntityReceiveResponseEntity, responseHeader.getProtocolVersion(), headers.getConnectionType());
                                        this.mEventHandler.endData();
                                        complete();
                                    } catch (IOException e3) {
                                        e = e3;
                                        i4 = i3;
                                        InputStream inputStream2 = gZIPInputStream;
                                        iOException = e;
                                        bArr = buf;
                                        inputStream = inputStream2;
                                        if (statusCode != 200 || statusCode == 206) {
                                            if (!zEqualsIgnoreCase || i4 <= 0) {
                                                throw iOException;
                                            }
                                            this.mEventHandler.data(bArr, i4);
                                            throw iOException;
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        this.mConnection.setCanPersist(httpEntityReceiveResponseEntity, responseHeader.getProtocolVersion(), headers.getConnectionType());
                                        this.mEventHandler.endData();
                                        complete();
                                    }
                                }
                                if (gZIPInputStream != null) {
                                    gZIPInputStream.close();
                                }
                            } catch (EOFException unused2) {
                            } catch (IOException e4) {
                                e = e4;
                            }
                        } catch (EOFException unused3) {
                            gZIPInputStream = null;
                            if (i4 > 0) {
                                this.mEventHandler.data(buf, i4);
                            }
                            if (gZIPInputStream != null) {
                                gZIPInputStream.close();
                            }
                            this.mConnection.setCanPersist(httpEntityReceiveResponseEntity, responseHeader.getProtocolVersion(), headers.getConnectionType());
                            this.mEventHandler.endData();
                            complete();
                        } catch (IOException e5) {
                            iOException = e5;
                            bArr = null;
                            if (statusCode != 200) {
                            }
                            if (!zEqualsIgnoreCase) {
                                throw iOException;
                            }
                            throw iOException;
                        }
                    } else {
                        gZIPInputStream = content;
                        buf = this.mConnection.getBuf();
                        int length2 = buf.length / 2;
                        i2 = 0;
                        i3 = 0;
                        while (i2 != -1) {
                            synchronized (this) {
                                while (this.mLoadingPaused) {
                                    wait();
                                }
                                i2 = gZIPInputStream.read(buf, i3, buf.length - i3);
                                if (i2 != -1) {
                                    i3 += i2;
                                    if (zEqualsIgnoreCase) {
                                        this.mReceivedBytes += i2;
                                    }
                                }
                                if (i2 != -1) {
                                }
                                this.mEventHandler.data(buf, i3);
                                i3 = 0;
                            }
                        }
                        if (gZIPInputStream != null) {
                            gZIPInputStream.close();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (r7 != 0) {
                        r7.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                r7 = contentEncoding;
                if (r7 != 0) {
                    r7.close();
                }
                throw th;
            }
        }
        this.mConnection.setCanPersist(httpEntityReceiveResponseEntity, responseHeader.getProtocolVersion(), headers.getConnectionType());
        this.mEventHandler.endData();
        complete();
    }

    public void reset() {
        this.mHttpRequest.removeHeaders("content-length");
        InputStream inputStream = this.mBodyProvider;
        if (inputStream != null) {
            try {
                inputStream.reset();
            } catch (IOException unused) {
            }
            setBodyProvider(this.mBodyProvider, this.mBodyLength);
        }
        if (this.mReceivedBytes > 0) {
            this.mFailCount = 0;
            HttpLog.v("*** Request.reset() to range:" + this.mReceivedBytes);
            this.mHttpRequest.setHeader("Range", "bytes=" + this.mReceivedBytes + "-");
        }
    }

    public void sendRequest(AndroidHttpClientConnection androidHttpClientConnection) {
        if (this.mCancelled) {
            return;
        }
        requestContentProcessor.process(this.mHttpRequest, this.mConnection.getHttpContext());
        androidHttpClientConnection.sendRequestHeader(this.mHttpRequest);
        HttpMessage httpMessage = this.mHttpRequest;
        if (httpMessage instanceof HttpEntityEnclosingRequest) {
            androidHttpClientConnection.sendRequestEntity((HttpEntityEnclosingRequest) httpMessage);
        }
    }

    public void setConnection(Connection connection) {
        this.mConnection = connection;
    }

    public synchronized void setLoadingPaused(boolean z2) {
        this.mLoadingPaused = z2;
        if (!z2) {
            notify();
        }
    }

    public String toString() {
        return this.mPath;
    }

    public void waitUntilComplete() {
        synchronized (this.mClientResource) {
            try {
                this.mClientResource.wait();
            } catch (InterruptedException unused) {
            }
        }
    }
}
