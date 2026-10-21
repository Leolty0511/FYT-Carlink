package android.net;

import android.content.IntentFilter;
import android.os.Parcel;
import android.os.Parcelable;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import com.android.okhttp.ConnectionPool;
import com.android.okhttp.Dns;
import com.android.okhttp.HttpHandler;
import com.android.okhttp.HttpsHandler;
import com.android.okhttp.OkHttpClient;
import com.android.okhttp.OkUrlFactory;
import java.io.FileDescriptor;
import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class Network implements Parcelable {
    public static final Parcelable.Creator<Network> CREATOR;
    private static final boolean httpKeepAlive;
    private static final long httpKeepAliveDurationMs;
    private static final int httpMaxConnections;
    private volatile ConnectionPool mConnectionPool;
    private volatile Dns mDns;
    private final Object mLock;
    private volatile NetworkBoundSocketFactory mNetworkBoundSocketFactory;
    public final int netId;
    public final int networkType;

    public class NetworkBoundSocketFactory extends SocketFactory {
        private final int mNetId;

        public NetworkBoundSocketFactory(int i2) {
            this.mNetId = i2;
        }

        private Socket connectToHost(String str, int i2, SocketAddress socketAddress) throws IOException {
            InetAddress[] allByName = Network.this.getAllByName(str);
            for (int i3 = 0; i3 < allByName.length; i3++) {
                try {
                    Socket socketCreateSocket = createSocket();
                    if (socketAddress != null) {
                        socketCreateSocket.bind(socketAddress);
                    }
                    socketCreateSocket.connect(new InetSocketAddress(allByName[i3], i2));
                    return socketCreateSocket;
                } catch (IOException e2) {
                    if (i3 == allByName.length - 1) {
                        throw e2;
                    }
                }
            }
            throw new UnknownHostException(str);
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(String str, int i2, InetAddress inetAddress, int i3) {
            return connectToHost(str, i2, new InetSocketAddress(inetAddress, i3));
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(InetAddress inetAddress, int i2, InetAddress inetAddress2, int i3) throws IOException {
            Socket socketCreateSocket = createSocket();
            socketCreateSocket.bind(new InetSocketAddress(inetAddress2, i3));
            socketCreateSocket.connect(new InetSocketAddress(inetAddress, i2));
            return socketCreateSocket;
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(InetAddress inetAddress, int i2) throws IOException {
            Socket socketCreateSocket = createSocket();
            socketCreateSocket.connect(new InetSocketAddress(inetAddress, i2));
            return socketCreateSocket;
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket(String str, int i2) {
            return connectToHost(str, i2, null);
        }

        @Override // javax.net.SocketFactory
        public Socket createSocket() throws SocketException {
            Socket socket = new Socket();
            Network.this.bindSocket(socket);
            return socket;
        }
    }

    static {
        boolean z2 = Boolean.parseBoolean(System.getProperty("http.keepAlive", "true"));
        httpKeepAlive = z2;
        httpMaxConnections = z2 ? Integer.parseInt(System.getProperty("http.maxConnections", "5")) : 0;
        httpKeepAliveDurationMs = Long.parseLong(System.getProperty("http.keepAliveDuration", "300000"));
        CREATOR = new Parcelable.Creator<Network>() { // from class: android.net.Network.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Network createFromParcel(Parcel parcel) {
                return new Network(parcel.readInt(), parcel.readInt());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Network[] newArray(int i2) {
                return new Network[i2];
            }
        };
    }

    public Network(int i2) {
        this.mNetworkBoundSocketFactory = null;
        this.mConnectionPool = null;
        this.mDns = null;
        this.mLock = new Object();
        this.netId = i2;
        this.networkType = -1;
    }

    private void maybeInitHttpClient() {
        synchronized (this.mLock) {
            if (this.mDns == null) {
                this.mDns = new Dns() { // from class: android.net.Network.1
                    public List<InetAddress> lookup(String str) {
                        return Arrays.asList(Network.this.getAllByName(str));
                    }
                };
            }
            if (this.mConnectionPool == null) {
                this.mConnectionPool = new ConnectionPool(httpMaxConnections, httpKeepAliveDurationMs, TimeUnit.MILLISECONDS);
            }
        }
    }

    public void bindSocket(DatagramSocket datagramSocket) throws SocketException {
        datagramSocket.getReuseAddress();
        bindSocket(datagramSocket.getFileDescriptor$());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Network) && this.netId == ((Network) obj).netId;
    }

    public InetAddress[] getAllByName(String str) {
        return InetAddress.getAllByNameOnNet(str, this.netId);
    }

    public InetAddress getByName(String str) {
        return InetAddress.getByNameOnNet(str, this.netId);
    }

    public long getNetworkHandle() {
        int i2 = this.netId;
        if (i2 == 0) {
            return 0L;
        }
        return (((long) i2) << 32) | 16435934;
    }

    public SocketFactory getSocketFactory() {
        if (this.mNetworkBoundSocketFactory == null) {
            synchronized (this.mLock) {
                if (this.mNetworkBoundSocketFactory == null) {
                    this.mNetworkBoundSocketFactory = new NetworkBoundSocketFactory(this.netId);
                }
            }
        }
        return this.mNetworkBoundSocketFactory;
    }

    public int hashCode() {
        return this.netId * 11;
    }

    public URLConnection openConnection(URL url) throws IOException {
        ConnectivityManager instanceOrNull = ConnectivityManager.getInstanceOrNull();
        if (instanceOrNull == null) {
            throw new IOException("No ConnectivityManager yet constructed, please construct one");
        }
        ProxyInfo proxyForNetwork = instanceOrNull.getProxyForNetwork(this);
        return openConnection(url, proxyForNetwork != null ? proxyForNetwork.makeProxy() : java.net.Proxy.NO_PROXY);
    }

    public String toString() {
        return Integer.toString(this.netId);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.netId);
        parcel.writeInt(this.networkType);
    }

    public void bindSocket(Socket socket) throws SocketException {
        socket.getReuseAddress();
        bindSocket(socket.getFileDescriptor$());
    }

    public void bindSocket(FileDescriptor fileDescriptor) throws SocketException {
        try {
            if (!((InetSocketAddress) Os.getpeername(fileDescriptor)).getAddress().isAnyLocalAddress()) {
                throw new SocketException("Socket is connected");
            }
        } catch (ErrnoException e2) {
            if (e2.errno != OsConstants.ENOTCONN) {
                throw e2.rethrowAsSocketException();
            }
        } catch (ClassCastException unused) {
            throw new SocketException("Only AF_INET/AF_INET6 sockets supported");
        }
        int iBindSocketToNetwork = NetworkUtils.bindSocketToNetwork(fileDescriptor.getInt$(), this.netId);
        if (iBindSocketToNetwork == 0) {
            return;
        }
        throw new ErrnoException("Binding socket to network " + this.netId, -iBindSocketToNetwork).rethrowAsSocketException();
    }

    public URLConnection openConnection(URL url, java.net.Proxy proxy) throws MalformedURLException {
        OkUrlFactory okUrlFactoryCreateHttpsOkUrlFactory;
        if (proxy != null) {
            maybeInitHttpClient();
            String protocol = url.getProtocol();
            if (protocol.equals(IntentFilter.SCHEME_HTTP)) {
                okUrlFactoryCreateHttpsOkUrlFactory = HttpHandler.createHttpOkUrlFactory(proxy);
            } else if (protocol.equals(IntentFilter.SCHEME_HTTPS)) {
                okUrlFactoryCreateHttpsOkUrlFactory = HttpsHandler.createHttpsOkUrlFactory(proxy);
            } else {
                throw new MalformedURLException("Invalid URL or unrecognized protocol ".concat(protocol));
            }
            OkHttpClient okHttpClientClient = okUrlFactoryCreateHttpsOkUrlFactory.client();
            okHttpClientClient.setSocketFactory(getSocketFactory()).setConnectionPool(this.mConnectionPool);
            okHttpClientClient.setDns(this.mDns);
            return okUrlFactoryCreateHttpsOkUrlFactory.open(url);
        }
        throw new IllegalArgumentException("proxy is null");
    }

    public Network(Network network) {
        this.mNetworkBoundSocketFactory = null;
        this.mConnectionPool = null;
        this.mDns = null;
        this.mLock = new Object();
        this.netId = network.netId;
        this.networkType = -1;
    }

    public Network(int i2, int i3) {
        this.mNetworkBoundSocketFactory = null;
        this.mConnectionPool = null;
        this.mDns = null;
        this.mLock = new Object();
        this.netId = i2;
        this.networkType = i3;
    }
}
