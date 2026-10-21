package android.net.http;

import android.content.Context;
import java.io.IOException;
import java.net.Socket;
import java.net.SocketException;
import org.apache.http.HttpHost;
import org.apache.http.params.BasicHttpParams;

/* JADX INFO: loaded from: classes.dex */
class HttpConnection extends Connection {
    public HttpConnection(Context context, HttpHost httpHost, RequestFeeder requestFeeder) {
        super(context, httpHost, requestFeeder);
    }

    @Override // android.net.http.Connection
    public void closeConnection() {
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
        return "http";
    }

    @Override // android.net.http.Connection
    public AndroidHttpClientConnection openConnection(Request request) throws SocketException {
        EventHandler eventHandler = request.getEventHandler();
        this.mCertificate = null;
        eventHandler.certificate(null);
        AndroidHttpClientConnection androidHttpClientConnection = new AndroidHttpClientConnection();
        BasicHttpParams basicHttpParams = new BasicHttpParams();
        Socket socket = new Socket(this.mHost.getHostName(), this.mHost.getPort());
        basicHttpParams.setIntParameter("http.socket.buffer-size", 8192);
        androidHttpClientConnection.bind(socket, basicHttpParams);
        return androidHttpClientConnection;
    }

    public void restartConnection(boolean z2) {
    }
}
