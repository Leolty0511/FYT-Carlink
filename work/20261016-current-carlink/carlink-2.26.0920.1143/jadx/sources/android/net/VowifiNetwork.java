package android.net;

import android.content.IntentFilter;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.android.okhttp.ConnectionPool;
import com.android.okhttp.Dns;
import com.android.okhttp.HttpHandler;
import com.android.okhttp.HttpsHandler;
import com.android.okhttp.OkHttpClient;
import com.android.okhttp.OkUrlFactory;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.SocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class VowifiNetwork implements Parcelable {
    public static final Parcelable.Creator<VowifiNetwork> CREATOR;
    private static final String TAG = "VowifiNetwork";
    private static final boolean httpKeepAlive;
    private static final long httpKeepAliveDurationMs;
    private static final int httpMaxConnections;
    private int mApnType;
    private volatile ConnectionPool mConnectionPool;
    private volatile Dns mDns;
    private String mDnsIP4Addr;
    private String mDnsIP6Addr;
    private boolean mIsSos;
    private String mLocalIP4Addr;
    private String mLocalIP6Addr;
    private final Object mLock;
    private String mPcscfIP4Addr;
    private String mPcscfIP6Addr;
    private boolean mPrefIPv4;
    private int mSessionId;
    private State mState;
    private int mSubId;
    private volatile VowifiSocketFactory mVowifiSocketFactory;
    private int mWifiNetworkId;

    public enum State {
        CONNECTING,
        CONNECTED,
        DISCONNECTED,
        UNKNOWN
    }

    public class VowifiSocketFactory extends SocketFactory {
        InetSocketAddress mLocalAddress;

        public VowifiSocketFactory() {
            this.mLocalAddress = null;
            if (VowifiNetwork.this.mLocalIP4Addr != null) {
                Log.d(VowifiNetwork.TAG, "VowifiSocketFactory: mLocalIP4Addr is " + VowifiNetwork.this.mLocalIP4Addr);
                this.mLocalAddress = new InetSocketAddress(VowifiNetwork.this.mLocalIP4Addr, 0);
                return;
            }
            Log.d(VowifiNetwork.TAG, "VowifiSocketFactory: mLocalIP6Addr is " + VowifiNetwork.this.mLocalIP6Addr);
            this.mLocalAddress = new InetSocketAddress(VowifiNetwork.this.mLocalIP6Addr, 0);
        }

        private Socket connectToHost(String str, int i2, SocketAddress socketAddress) throws IOException {
            InetAddress[] allByName = VowifiNetwork.this.getAllByName(str);
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
        public Socket createSocket() throws IOException {
            Socket socket = new Socket();
            InetSocketAddress inetSocketAddress = this.mLocalAddress;
            if (inetSocketAddress != null) {
                socket.bind(inetSocketAddress);
            }
            return socket;
        }
    }

    static {
        boolean z2 = Boolean.parseBoolean(System.getProperty("http.keepAlive", "true"));
        httpKeepAlive = z2;
        httpMaxConnections = z2 ? Integer.parseInt(System.getProperty("http.maxConnections", "5")) : 0;
        httpKeepAliveDurationMs = Long.parseLong(System.getProperty("http.keepAliveDuration", "300000"));
        CREATOR = new Parcelable.Creator<VowifiNetwork>() { // from class: android.net.VowifiNetwork.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VowifiNetwork createFromParcel(Parcel parcel) {
                VowifiNetwork vowifiNetwork = new VowifiNetwork(parcel.readInt(), parcel.readInt(), parcel.readInt());
                vowifiNetwork.mState = State.valueOf(parcel.readString());
                vowifiNetwork.mLocalIP4Addr = parcel.readString();
                vowifiNetwork.mLocalIP6Addr = parcel.readString();
                vowifiNetwork.mPcscfIP4Addr = parcel.readString();
                vowifiNetwork.mPcscfIP6Addr = parcel.readString();
                vowifiNetwork.mDnsIP4Addr = parcel.readString();
                vowifiNetwork.mDnsIP6Addr = parcel.readString();
                vowifiNetwork.mPrefIPv4 = parcel.readInt() != 0;
                vowifiNetwork.mIsSos = parcel.readInt() != 0;
                vowifiNetwork.mWifiNetworkId = parcel.readInt();
                return vowifiNetwork;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VowifiNetwork[] newArray(int i2) {
                return new VowifiNetwork[i2];
            }
        };
    }

    public VowifiNetwork(int i2, int i3, int i4) {
        this.mConnectionPool = null;
        this.mVowifiSocketFactory = null;
        this.mDns = null;
        this.mLock = new Object();
        this.mSessionId = i2;
        this.mSubId = i3;
        this.mApnType = i4;
        this.mState = State.UNKNOWN;
    }

    private void maybeInitHttpClient() {
        synchronized (this.mLock) {
            if (this.mDns == null) {
                this.mDns = new Dns() { // from class: android.net.VowifiNetwork.2
                    public List<InetAddress> lookup(String str) {
                        return Arrays.asList(VowifiNetwork.this.getAllByName(str));
                    }
                };
            }
            if (this.mConnectionPool == null) {
                this.mConnectionPool = new ConnectionPool(httpMaxConnections, httpKeepAliveDurationMs, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public InetAddress[] getAllByName(String str) {
        return InetAddress.getAllByNameOnNet(str, this.mWifiNetworkId);
    }

    public int getApnType() {
        int i2;
        synchronized (this) {
            i2 = this.mApnType;
        }
        return i2;
    }

    public InetAddress getByName(String str) {
        return InetAddress.getByNameOnNet(str, this.mWifiNetworkId);
    }

    public String getIPv4DnsAddr() {
        String str;
        synchronized (this) {
            str = this.mDnsIP4Addr;
        }
        return str;
    }

    public String getIPv6DnsAddr() {
        String str;
        synchronized (this) {
            str = this.mDnsIP6Addr;
        }
        return str;
    }

    public String getIpv4Addr() {
        String str;
        synchronized (this) {
            str = this.mLocalIP4Addr;
        }
        return str;
    }

    public String getIpv4PcscfAddr() {
        String str;
        synchronized (this) {
            str = this.mPcscfIP4Addr;
        }
        return str;
    }

    public String getIpv6Addr() {
        String str;
        synchronized (this) {
            str = this.mLocalIP6Addr;
        }
        return str;
    }

    public String getIpv6PcscfAddr() {
        String str;
        synchronized (this) {
            str = this.mPcscfIP6Addr;
        }
        return str;
    }

    public boolean getIsSos() {
        boolean z2;
        synchronized (this) {
            z2 = this.mIsSos;
        }
        return z2;
    }

    public boolean getPrefIPv4() {
        boolean z2;
        synchronized (this) {
            z2 = this.mPrefIPv4;
        }
        return z2;
    }

    public SocketFactory getSocketFactory() {
        if (this.mVowifiSocketFactory == null) {
            synchronized (this.mLock) {
                if (this.mVowifiSocketFactory == null) {
                    this.mVowifiSocketFactory = new VowifiSocketFactory();
                }
            }
        }
        return this.mVowifiSocketFactory;
    }

    public State getState() {
        State state;
        synchronized (this) {
            state = this.mState;
        }
        return state;
    }

    public int getSubId() {
        int i2;
        synchronized (this) {
            i2 = this.mSubId;
        }
        return i2;
    }

    public int getWifiNetId() {
        int i2;
        synchronized (this) {
            i2 = this.mWifiNetworkId;
        }
        return i2;
    }

    public URLConnection openConnection(URL url) {
        return openConnection(url, java.net.Proxy.NO_PROXY);
    }

    public void setIPv4DnsAddr(String str) {
        synchronized (this) {
            this.mDnsIP4Addr = str;
        }
    }

    public void setIPv6DnsAddr(String str) {
        synchronized (this) {
            this.mDnsIP6Addr = str;
        }
    }

    public void setIpv4Addr(String str) {
        synchronized (this) {
            this.mLocalIP4Addr = str;
        }
    }

    public void setIpv4PcscfAddr(String str) {
        synchronized (this) {
            this.mPcscfIP4Addr = str;
        }
    }

    public void setIpv6Addr(String str) {
        synchronized (this) {
            this.mLocalIP6Addr = str;
        }
    }

    public void setIpv6PcscfAddr(String str) {
        synchronized (this) {
            this.mPcscfIP6Addr = str;
        }
    }

    public void setIsSos(boolean z2) {
        synchronized (this) {
            this.mIsSos = z2;
        }
    }

    public void setPrefIPv4(boolean z2) {
        synchronized (this) {
            this.mPrefIPv4 = z2;
        }
    }

    public void setState(State state) {
        synchronized (this) {
            this.mState = state;
        }
    }

    public void setWifiNetId(int i2) {
        synchronized (this) {
            this.mWifiNetworkId = i2;
        }
    }

    public String toString() {
        String str;
        synchronized (this) {
            str = "[sessionId: " + this.mSessionId + ", subId: " + this.mSubId + ",apnType: " + this.mApnType + "LocalIP4Addr: " + this.mLocalIP4Addr + ", LocalIP6Addr: " + this.mLocalIP6Addr + ", PcscfIP4Addr: " + this.mPcscfIP4Addr + ", PcscfIP6Addr: " + this.mPcscfIP6Addr + ", DnsIP4Addr: " + this.mDnsIP4Addr + ", DnsIP6Addr: " + this.mDnsIP6Addr + ", PrefIPv4: " + this.mPrefIPv4 + ", IsSos: " + this.mIsSos + ", wifiNetId: " + this.mWifiNetworkId + "]";
        }
        return str;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.mSessionId);
        parcel.writeInt(this.mSubId);
        parcel.writeInt(this.mApnType);
        parcel.writeString(this.mState.name());
        parcel.writeString(this.mLocalIP4Addr);
        parcel.writeString(this.mLocalIP6Addr);
        parcel.writeString(this.mPcscfIP4Addr);
        parcel.writeString(this.mPcscfIP6Addr);
        parcel.writeString(this.mDnsIP4Addr);
        parcel.writeString(this.mDnsIP6Addr);
        parcel.writeInt(this.mPrefIPv4 ? 1 : 0);
        parcel.writeInt(this.mIsSos ? 1 : 0);
        parcel.writeInt(this.mWifiNetworkId);
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

    public VowifiNetwork(int i2, String str, String str2, String str3, String str4, String str5, String str6, boolean z2, boolean z3, int i3) {
        this.mConnectionPool = null;
        this.mVowifiSocketFactory = null;
        this.mDns = null;
        this.mLock = new Object();
        this.mSessionId = i2;
        this.mLocalIP4Addr = str;
        this.mLocalIP6Addr = str2;
        this.mPcscfIP4Addr = str3;
        this.mPcscfIP6Addr = str4;
        this.mDnsIP4Addr = str5;
        this.mDnsIP6Addr = str6;
        this.mPrefIPv4 = z2;
        this.mIsSos = z3;
        this.mWifiNetworkId = i3;
        this.mState = State.UNKNOWN;
    }

    public VowifiNetwork(VowifiNetwork vowifiNetwork) {
        this.mConnectionPool = null;
        this.mVowifiSocketFactory = null;
        this.mDns = null;
        this.mLock = new Object();
        if (vowifiNetwork != null) {
            synchronized (vowifiNetwork) {
                this.mSessionId = vowifiNetwork.mSessionId;
                this.mSubId = vowifiNetwork.mSubId;
                this.mApnType = vowifiNetwork.mApnType;
                this.mState = vowifiNetwork.mState;
                this.mLocalIP4Addr = vowifiNetwork.mLocalIP4Addr;
                this.mLocalIP6Addr = vowifiNetwork.mLocalIP6Addr;
                this.mPcscfIP4Addr = vowifiNetwork.mPcscfIP4Addr;
                this.mPcscfIP6Addr = vowifiNetwork.mPcscfIP6Addr;
                this.mDnsIP4Addr = vowifiNetwork.mDnsIP4Addr;
                this.mDnsIP6Addr = vowifiNetwork.mDnsIP6Addr;
                this.mPrefIPv4 = vowifiNetwork.mPrefIPv4;
                this.mIsSos = vowifiNetwork.mIsSos;
                this.mWifiNetworkId = vowifiNetwork.mWifiNetworkId;
            }
        }
    }
}
