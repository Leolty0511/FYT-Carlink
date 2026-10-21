package android.net.http;

import android.content.Context;
import android.os.SystemClock;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.LinkedList;
import javax.net.ssl.SSLHandshakeException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpVersion;
import org.apache.http.ParseException;
import org.apache.http.ProtocolVersion;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;

/* JADX INFO: loaded from: classes.dex */
abstract class Connection {
    private static final int DONE = 3;
    private static final int DRAIN = 2;
    private static final String HTTP_CONNECTION = "http.connection";
    private static final int MAX_PIPE = 3;
    private static final int MIN_PIPE = 2;
    private static final int READ = 1;
    private static final int RETRY_REQUEST_LIMIT = 2;
    private static final int SEND = 0;
    public static final int SOCKET_TIMEOUT = 60000;
    private byte[] mBuf;
    public Context mContext;
    public HttpHost mHost;
    public RequestFeeder mRequestFeeder;
    private static final String[] states = {"SEND", "READ", "DRAIN", "DONE"};
    private static int STATE_NORMAL = 0;
    private static int STATE_CANCEL_REQUESTED = 1;
    public AndroidHttpClientConnection mHttpClientConnection = null;
    public SslCertificate mCertificate = null;
    private int mActive = STATE_NORMAL;
    private boolean mCanPersist = false;
    private HttpContext mHttpContext = new BasicHttpContext(null);

    public Connection(Context context, HttpHost httpHost, RequestFeeder requestFeeder) {
        this.mContext = context;
        this.mHost = httpHost;
        this.mRequestFeeder = requestFeeder;
    }

    private boolean clearPipe(LinkedList<Request> linkedList) {
        boolean z2;
        synchronized (this.mRequestFeeder) {
            z2 = true;
            while (!linkedList.isEmpty()) {
                this.mRequestFeeder.requeueRequest(linkedList.removeLast());
                z2 = false;
            }
            if (z2) {
                z2 = !this.mRequestFeeder.haveRequest(this.mHost);
            }
        }
        return z2;
    }

    public static Connection getConnection(Context context, HttpHost httpHost, HttpHost httpHost2, RequestFeeder requestFeeder) {
        return httpHost.getSchemeName().equals("http") ? new HttpConnection(context, httpHost, requestFeeder) : new HttpsConnection(context, httpHost, httpHost2, requestFeeder);
    }

    private boolean httpFailure(Request request, int i2, Exception exc) {
        String string;
        boolean z2 = true;
        int i3 = request.mFailCount + 1;
        request.mFailCount = i3;
        if (i3 >= 2) {
            z2 = false;
            if (i2 < 0) {
                string = ErrorStrings.getString(i2, this.mContext);
            } else {
                Throwable cause = exc.getCause();
                string = cause != null ? cause.toString() : exc.getMessage();
            }
            request.mEventHandler.error(i2, string);
            request.complete();
        }
        closeConnection();
        this.mHttpContext.removeAttribute(HTTP_CONNECTION);
        return z2;
    }

    private boolean keepAlive(HttpEntity httpEntity, ProtocolVersion protocolVersion, int i2, HttpContext httpContext) {
        org.apache.http.HttpConnection httpConnection = (org.apache.http.HttpConnection) httpContext.getAttribute(HTTP_CONNECTION);
        if (httpConnection != null && !httpConnection.isOpen()) {
            return false;
        }
        if ((httpEntity != null && httpEntity.getContentLength() < 0 && (!httpEntity.isChunked() || protocolVersion.lessEquals(HttpVersion.HTTP_1_0))) || i2 == 1) {
            return false;
        }
        if (i2 == 2) {
            return true;
        }
        return true ^ protocolVersion.lessEquals(HttpVersion.HTTP_1_0);
    }

    private boolean openHttpConnection(Request request) {
        SystemClock.uptimeMillis();
        int i2 = -6;
        Exception e2 = null;
        try {
            this.mCertificate = null;
            AndroidHttpClientConnection androidHttpClientConnectionOpenConnection = openConnection(request);
            this.mHttpClientConnection = androidHttpClientConnectionOpenConnection;
            if (androidHttpClientConnectionOpenConnection == null) {
                request.mFailCount = 2;
                return false;
            }
            androidHttpClientConnectionOpenConnection.setSocketTimeout(SOCKET_TIMEOUT);
            this.mHttpContext.setAttribute(HTTP_CONNECTION, this.mHttpClientConnection);
            i2 = 0;
            if (i2 == 0) {
                return true;
            }
            if (request.mFailCount < 2) {
                this.mRequestFeeder.requeueRequest(request);
                request.mFailCount++;
            } else {
                httpFailure(request, i2, e2);
            }
            return i2 == 0;
        } catch (SSLConnectionClosedByUserException unused) {
            request.mFailCount = 2;
            return false;
        } catch (IOException e3) {
            e2 = e3;
        } catch (IllegalArgumentException e4) {
            e2 = e4;
            request.mFailCount = 2;
        } catch (UnknownHostException e5) {
            e2 = e5;
            i2 = -2;
        } catch (SSLHandshakeException e6) {
            e2 = e6;
            request.mFailCount = 2;
            i2 = -11;
        }
    }

    public void cancel() {
        this.mActive = STATE_CANCEL_REQUESTED;
        closeConnection();
    }

    public abstract void closeConnection();

    public byte[] getBuf() {
        if (this.mBuf == null) {
            this.mBuf = new byte[8192];
        }
        return this.mBuf;
    }

    public boolean getCanPersist() {
        return this.mCanPersist;
    }

    public SslCertificate getCertificate() {
        return this.mCertificate;
    }

    public HttpHost getHost() {
        return this.mHost;
    }

    public HttpContext getHttpContext() {
        return this.mHttpContext;
    }

    public abstract String getScheme();

    public abstract AndroidHttpClientConnection openConnection(Request request);

    /* JADX WARN: Code duplicated, block: B:20:0x0044  */
    public void processRequests(Request request) {
        Request request2;
        LinkedList<Request> linkedList = new LinkedList<>();
        char c2 = 2;
        Request request3 = request;
        int i2 = 2;
        Exception e2 = null;
        int i3 = 3;
        char c3 = 0;
        int i4 = 0;
        while (c3 != 3) {
            if (this.mActive == STATE_CANCEL_REQUESTED) {
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException unused) {
                }
                this.mActive = STATE_NORMAL;
            }
            if (c3 != 0) {
                if (c3 == 1 || c3 == c2) {
                    boolean z2 = !this.mRequestFeeder.haveRequest(this.mHost);
                    int size = linkedList.size();
                    if (c3 != c2 && size < i2 && !z2 && this.mCanPersist) {
                        c3 = 0;
                    } else if (size != 0) {
                        Request requestRemoveFirst = linkedList.removeFirst();
                        try {
                            requestRemoveFirst.readResponse(this.mHttpClientConnection);
                        } catch (IOException | IllegalStateException | ParseException e3) {
                            e2 = e3;
                            i4 = -7;
                        }
                        if (e2 != null) {
                            if (httpFailure(requestRemoveFirst, i4, e2) && !requestRemoveFirst.mCancelled) {
                                requestRemoveFirst.reset();
                                linkedList.addFirst(requestRemoveFirst);
                            }
                            this.mCanPersist = false;
                            e2 = null;
                        }
                        if (!this.mCanPersist) {
                            closeConnection();
                            this.mHttpContext.removeAttribute(HTTP_CONNECTION);
                            clearPipe(linkedList);
                            c3 = 0;
                            i3 = 1;
                            i2 = 1;
                        }
                    } else if (z2) {
                        c3 = 3;
                    } else {
                        c3 = 0;
                    }
                }
            } else if (linkedList.size() != i3) {
                if (request3 == null) {
                    Request request4 = request3;
                    request3 = this.mRequestFeeder.getRequest(this.mHost);
                    request2 = request4;
                } else {
                    request2 = null;
                }
                if (request3 == null) {
                    request3 = request2;
                    c3 = 2;
                } else {
                    request3.setConnection(this);
                    if (request3.mCancelled) {
                        request3.complete();
                    } else {
                        AndroidHttpClientConnection androidHttpClientConnection = this.mHttpClientConnection;
                        if ((androidHttpClientConnection == null || !androidHttpClientConnection.isOpen()) && !openHttpConnection(request3)) {
                            request3 = request2;
                            c3 = 3;
                        } else {
                            request3.mEventHandler.certificate(this.mCertificate);
                            try {
                                request3.sendRequest(this.mHttpClientConnection);
                            } catch (IOException e4) {
                                e2 = e4;
                                i4 = -7;
                            } catch (IllegalStateException e5) {
                                e2 = e5;
                                i4 = -7;
                            } catch (org.apache.http.HttpException e6) {
                                e2 = e6;
                                i4 = -1;
                            }
                            if (e2 != null) {
                                if (httpFailure(request3, i4, e2) && !request3.mCancelled) {
                                    linkedList.addLast(request3);
                                }
                                c3 = clearPipe(linkedList) ? (char) 3 : (char) 0;
                                request3 = request2;
                                e2 = null;
                                i3 = 1;
                                i2 = 1;
                            } else {
                                linkedList.addLast(request3);
                                if (!this.mCanPersist) {
                                    request3 = request2;
                                    c3 = 1;
                                }
                            }
                        }
                    }
                    request3 = request2;
                }
            } else {
                c3 = 1;
            }
            c2 = 2;
        }
    }

    public void setCanPersist(HttpEntity httpEntity, ProtocolVersion protocolVersion, int i2) {
        this.mCanPersist = keepAlive(httpEntity, protocolVersion, i2, this.mHttpContext);
    }

    public synchronized String toString() {
        return this.mHost.toString();
    }

    public void setCanPersist(boolean z2) {
        this.mCanPersist = z2;
    }
}
