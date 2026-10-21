package android.net.http;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpInetConnection;
import org.apache.http.HttpRequest;
import org.apache.http.NoHttpResponseException;
import org.apache.http.StatusLine;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.impl.HttpConnectionMetricsImpl;
import org.apache.http.impl.entity.EntitySerializer;
import org.apache.http.impl.entity.StrictContentLengthStrategy;
import org.apache.http.impl.io.ChunkedInputStream;
import org.apache.http.impl.io.ContentLengthInputStream;
import org.apache.http.impl.io.HttpRequestWriter;
import org.apache.http.impl.io.IdentityInputStream;
import org.apache.http.impl.io.SocketInputBuffer;
import org.apache.http.impl.io.SocketOutputBuffer;
import org.apache.http.io.HttpMessageWriter;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.BasicLineParser;
import org.apache.http.message.ParserCursor;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.util.CharArrayBuffer;

/* JADX INFO: loaded from: classes.dex */
public class AndroidHttpClientConnection implements HttpInetConnection, org.apache.http.HttpConnection {
    private int maxHeaderCount;
    private int maxLineLength;
    private volatile boolean open;
    private SessionInputBuffer inbuffer = null;
    private SessionOutputBuffer outbuffer = null;
    private HttpMessageWriter requestWriter = null;
    private HttpConnectionMetricsImpl metrics = null;
    private Socket socket = null;
    private final EntitySerializer entityserializer = new EntitySerializer(new StrictContentLengthStrategy());

    private void assertNotOpen() {
        if (this.open) {
            throw new IllegalStateException("Connection is already open");
        }
    }

    private void assertOpen() {
        if (!this.open) {
            throw new IllegalStateException("Connection is not open");
        }
    }

    private long determineLength(Headers headers) {
        long transferEncoding = headers.getTransferEncoding();
        if (transferEncoding < 0) {
            return transferEncoding;
        }
        long contentLength = headers.getContentLength();
        if (contentLength > -1) {
            return contentLength;
        }
        return -1L;
    }

    public void bind(Socket socket, HttpParams httpParams) throws SocketException {
        if (socket == null) {
            throw new IllegalArgumentException("Socket may not be null");
        }
        if (httpParams == null) {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        assertNotOpen();
        socket.setTcpNoDelay(HttpConnectionParams.getTcpNoDelay(httpParams));
        socket.setSoTimeout(HttpConnectionParams.getSoTimeout(httpParams));
        int linger = HttpConnectionParams.getLinger(httpParams);
        if (linger >= 0) {
            socket.setSoLinger(linger > 0, linger);
        }
        this.socket = socket;
        int socketBufferSize = HttpConnectionParams.getSocketBufferSize(httpParams);
        this.inbuffer = new SocketInputBuffer(socket, socketBufferSize, httpParams);
        this.outbuffer = new SocketOutputBuffer(socket, socketBufferSize, httpParams);
        this.maxHeaderCount = httpParams.getIntParameter("http.connection.max-header-count", -1);
        this.maxLineLength = httpParams.getIntParameter("http.connection.max-line-length", -1);
        this.requestWriter = new HttpRequestWriter(this.outbuffer, null, httpParams);
        this.metrics = new HttpConnectionMetricsImpl(this.inbuffer.getMetrics(), this.outbuffer.getMetrics());
        this.open = true;
    }

    @Override // org.apache.http.HttpConnection
    public void close() throws IOException {
        if (this.open) {
            this.open = false;
            doFlush();
            try {
                try {
                    this.socket.shutdownOutput();
                } catch (IOException | UnsupportedOperationException unused) {
                }
            } catch (IOException unused2) {
            }
            this.socket.shutdownInput();
            this.socket.close();
        }
    }

    public void doFlush() throws IOException {
        this.outbuffer.flush();
    }

    public void flush() throws IOException {
        assertOpen();
        doFlush();
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        Socket socket = this.socket;
        if (socket != null) {
            return socket.getLocalAddress();
        }
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        Socket socket = this.socket;
        if (socket != null) {
            return socket.getLocalPort();
        }
        return -1;
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        return this.metrics;
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        Socket socket = this.socket;
        if (socket != null) {
            return socket.getInetAddress();
        }
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        Socket socket = this.socket;
        if (socket != null) {
            return socket.getPort();
        }
        return -1;
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        Socket socket = this.socket;
        if (socket != null) {
            try {
                return socket.getSoTimeout();
            } catch (SocketException unused) {
            }
        }
        return -1;
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        Socket socket;
        return this.open && (socket = this.socket) != null && socket.isConnected();
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        assertOpen();
        try {
            this.inbuffer.isDataAvailable(1);
            return false;
        } catch (IOException unused) {
            return true;
        }
    }

    public StatusLine parseResponseHeader(Headers headers) throws IOException {
        assertOpen();
        int i2 = 64;
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(64);
        if (this.inbuffer.readLine(charArrayBuffer) == -1) {
            throw new NoHttpResponseException("The target server failed to respond");
        }
        StatusLine statusLine = BasicLineParser.DEFAULT.parseStatusLine(charArrayBuffer, new ParserCursor(0, charArrayBuffer.length()));
        int statusCode = statusLine.getStatusCode();
        CharArrayBuffer charArrayBuffer2 = null;
        int i3 = 0;
        while (true) {
            if (charArrayBuffer == null) {
                charArrayBuffer = new CharArrayBuffer(i2);
            } else {
                charArrayBuffer.clear();
            }
            if (this.inbuffer.readLine(charArrayBuffer) == -1 || charArrayBuffer.length() < 1) {
                break;
            }
            char cCharAt = charArrayBuffer.charAt(0);
            if ((cCharAt == ' ' || cCharAt == '\t') && charArrayBuffer2 != null) {
                int length = charArrayBuffer.length();
                int i4 = 0;
                while (i4 < length) {
                    char cCharAt2 = charArrayBuffer.charAt(i4);
                    if (cCharAt2 != ' ' && cCharAt2 != '\t') {
                        break;
                    }
                    i4++;
                }
                if (this.maxLineLength > 0 && ((charArrayBuffer2.length() + 1) + charArrayBuffer.length()) - i4 > this.maxLineLength) {
                    throw new IOException("Maximum line length limit exceeded");
                }
                charArrayBuffer2.append(CharArrayBuffers.uppercaseAddon);
                charArrayBuffer2.append(charArrayBuffer, i4, charArrayBuffer.length() - i4);
            } else {
                if (charArrayBuffer2 != null) {
                    headers.parseHeader(charArrayBuffer2);
                }
                i3++;
                charArrayBuffer2 = charArrayBuffer;
                charArrayBuffer = null;
            }
            int i5 = this.maxHeaderCount;
            if (i5 > 0 && i3 >= i5) {
                throw new IOException("Maximum header count exceeded");
            }
            i2 = 64;
        }
        if (charArrayBuffer2 != null) {
            headers.parseHeader(charArrayBuffer2);
        }
        if (statusCode >= 200) {
            this.metrics.incrementResponseCount();
        }
        return statusLine;
    }

    public HttpEntity receiveResponseEntity(Headers headers) {
        assertOpen();
        BasicHttpEntity basicHttpEntity = new BasicHttpEntity();
        long jDetermineLength = determineLength(headers);
        if (jDetermineLength == -2) {
            basicHttpEntity.setChunked(true);
            basicHttpEntity.setContentLength(-1L);
            basicHttpEntity.setContent(new ChunkedInputStream(this.inbuffer));
        } else if (jDetermineLength == -1) {
            basicHttpEntity.setChunked(false);
            basicHttpEntity.setContentLength(-1L);
            basicHttpEntity.setContent(new IdentityInputStream(this.inbuffer));
        } else {
            basicHttpEntity.setChunked(false);
            basicHttpEntity.setContentLength(jDetermineLength);
            basicHttpEntity.setContent(new ContentLengthInputStream(this.inbuffer, jDetermineLength));
        }
        String contentType = headers.getContentType();
        if (contentType != null) {
            basicHttpEntity.setContentType(contentType);
        }
        String contentEncoding = headers.getContentEncoding();
        if (contentEncoding != null) {
            basicHttpEntity.setContentEncoding(contentEncoding);
        }
        return basicHttpEntity;
    }

    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) throws org.apache.http.HttpException, IOException {
        if (httpEntityEnclosingRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        assertOpen();
        if (httpEntityEnclosingRequest.getEntity() == null) {
            return;
        }
        this.entityserializer.serialize(this.outbuffer, httpEntityEnclosingRequest, httpEntityEnclosingRequest.getEntity());
    }

    public void sendRequestHeader(HttpRequest httpRequest) throws org.apache.http.HttpException, IOException {
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        }
        assertOpen();
        this.requestWriter.write(httpRequest);
        this.metrics.incrementRequestCount();
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i2) {
        assertOpen();
        Socket socket = this.socket;
        if (socket != null) {
            try {
                socket.setSoTimeout(i2);
            } catch (SocketException unused) {
            }
        }
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() throws IOException {
        this.open = false;
        Socket socket = this.socket;
        if (socket != null) {
            socket.close();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        if (isOpen()) {
            sb.append(getRemotePort());
        } else {
            sb.append("closed");
        }
        sb.append("]");
        return sb.toString();
    }
}
