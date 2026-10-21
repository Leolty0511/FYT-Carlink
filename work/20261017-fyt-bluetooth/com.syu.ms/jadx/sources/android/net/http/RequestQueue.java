package android.net.http;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.WebAddress;
import android.util.Log;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes.dex */
public class RequestQueue implements RequestFeeder {
    private static final int CONNECTION_COUNT = 4;
    private final ActivePool mActivePool;
    private final ConnectivityManager mConnectivityManager;
    private final Context mContext;
    private final LinkedHashMap<HttpHost, LinkedList<Request>> mPending;
    private BroadcastReceiver mProxyChangeReceiver;
    private HttpHost mProxyHost;

    public class ActivePool implements ConnectionManager {
        private int mConnectionCount;
        public IdleCache mIdleCache = new IdleCache();
        public ConnectionThread[] mThreads;
        private int mTotalConnection;
        private int mTotalRequest;

        public ActivePool(int i2) {
            this.mConnectionCount = i2;
            this.mThreads = new ConnectionThread[i2];
            for (int i3 = 0; i3 < this.mConnectionCount; i3++) {
                this.mThreads[i3] = new ConnectionThread(RequestQueue.this.mContext, i3, this, RequestQueue.this);
            }
        }

        public static /* synthetic */ int access$408(ActivePool activePool) {
            int i2 = activePool.mTotalRequest;
            activePool.mTotalRequest = i2 + 1;
            return i2;
        }

        public void disablePersistence() {
            for (int i2 = 0; i2 < this.mConnectionCount; i2++) {
                Connection connection = this.mThreads[i2].mConnection;
                if (connection != null) {
                    connection.setCanPersist(false);
                }
            }
            this.mIdleCache.clear();
        }

        @Override // android.net.http.RequestQueue.ConnectionManager
        public Connection getConnection(Context context, HttpHost httpHost) {
            HttpHost httpHostDetermineHost = RequestQueue.this.determineHost(httpHost);
            Connection connection = this.mIdleCache.getConnection(httpHostDetermineHost);
            if (connection != null) {
                return connection;
            }
            this.mTotalConnection++;
            return Connection.getConnection(RequestQueue.this.mContext, httpHostDetermineHost, RequestQueue.this.mProxyHost, RequestQueue.this);
        }

        @Override // android.net.http.RequestQueue.ConnectionManager
        public HttpHost getProxyHost() {
            return RequestQueue.this.mProxyHost;
        }

        public ConnectionThread getThread(HttpHost httpHost) {
            synchronized (RequestQueue.this) {
                int i2 = 0;
                while (true) {
                    ConnectionThread[] connectionThreadArr = this.mThreads;
                    if (i2 >= connectionThreadArr.length) {
                        return null;
                    }
                    ConnectionThread connectionThread = connectionThreadArr[i2];
                    Connection connection = connectionThread.mConnection;
                    if (connection != null && connection.mHost.equals(httpHost)) {
                        return connectionThread;
                    }
                    i2++;
                }
            }
        }

        public void logState() {
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < this.mConnectionCount; i2++) {
                sb.append(this.mThreads[i2] + "\n");
            }
            HttpLog.v(sb.toString());
        }

        @Override // android.net.http.RequestQueue.ConnectionManager
        public boolean recycleConnection(Connection connection) {
            return this.mIdleCache.cacheConnection(connection.getHost(), connection);
        }

        public void shutdown() {
            for (int i2 = 0; i2 < this.mConnectionCount; i2++) {
                this.mThreads[i2].requestStop();
            }
        }

        public void startConnectionThread() {
            synchronized (RequestQueue.this) {
                RequestQueue.this.notify();
            }
        }

        public void startTiming() {
            for (int i2 = 0; i2 < this.mConnectionCount; i2++) {
                ConnectionThread connectionThread = this.mThreads[i2];
                connectionThread.mCurrentThreadTime = -1L;
                connectionThread.mTotalThreadTime = 0L;
            }
            this.mTotalRequest = 0;
            this.mTotalConnection = 0;
        }

        public void startup() {
            for (int i2 = 0; i2 < this.mConnectionCount; i2++) {
                this.mThreads[i2].start();
            }
        }

        public void stopTiming() {
            int i2 = 0;
            for (int i3 = 0; i3 < this.mConnectionCount; i3++) {
                ConnectionThread connectionThread = this.mThreads[i3];
                if (connectionThread.mCurrentThreadTime != -1) {
                    i2 = (int) (((long) i2) + connectionThread.mTotalThreadTime);
                }
                connectionThread.mCurrentThreadTime = 0L;
            }
            Log.d("Http", "Http thread used " + i2 + " ms  for " + this.mTotalRequest + " requests and " + this.mTotalConnection + " new connections");
        }
    }

    public interface ConnectionManager {
        Connection getConnection(Context context, HttpHost httpHost);

        HttpHost getProxyHost();

        boolean recycleConnection(Connection connection);
    }

    public RequestQueue(Context context) {
        this(context, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HttpHost determineHost(HttpHost httpHost) {
        return (this.mProxyHost == null || "https".equals(httpHost.getSchemeName())) ? httpHost : this.mProxyHost;
    }

    private Request removeFirst(LinkedHashMap<HttpHost, LinkedList<Request>> linkedHashMap) {
        Iterator<Map.Entry<HttpHost, LinkedList<Request>>> it = linkedHashMap.entrySet().iterator();
        if (!it.hasNext()) {
            return null;
        }
        Map.Entry<HttpHost, LinkedList<Request>> next = it.next();
        LinkedList<Request> value = next.getValue();
        Request requestRemoveFirst = value.removeFirst();
        if (!value.isEmpty()) {
            return requestRemoveFirst;
        }
        linkedHashMap.remove(next.getKey());
        return requestRemoveFirst;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setProxyConfig() {
        String host;
        NetworkInfo activeNetworkInfo = this.mConnectivityManager.getActiveNetworkInfo();
        if ((activeNetworkInfo == null || activeNetworkInfo.getType() != 1) && (host = Proxy.getHost(this.mContext)) != null) {
            this.mActivePool.disablePersistence();
            this.mProxyHost = new HttpHost(host, Proxy.getPort(this.mContext), "http");
        } else {
            this.mProxyHost = null;
        }
    }

    public synchronized void disablePlatformNotifications() {
        BroadcastReceiver broadcastReceiver = this.mProxyChangeReceiver;
        if (broadcastReceiver != null) {
            this.mContext.unregisterReceiver(broadcastReceiver);
            this.mProxyChangeReceiver = null;
        }
    }

    public synchronized void dump() {
        HttpLog.v("dump()");
        StringBuilder sb = new StringBuilder();
        if (!this.mPending.isEmpty()) {
            Iterator<Map.Entry<HttpHost, LinkedList<Request>>> it = this.mPending.entrySet().iterator();
            int i2 = 0;
            while (it.hasNext()) {
                Map.Entry<HttpHost, LinkedList<Request>> next = it.next();
                String hostName = next.getKey().getHostName();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("p");
                int i3 = i2 + 1;
                sb2.append(i2);
                sb2.append(" ");
                sb2.append(hostName);
                sb2.append(" ");
                StringBuilder sb3 = new StringBuilder(sb2.toString());
                next.getValue().listIterator(0);
                while (it.hasNext()) {
                    sb3.append(((Request) it.next()) + " ");
                }
                sb.append((CharSequence) sb3);
                sb.append("\n");
                i2 = i3;
            }
        }
        HttpLog.v(sb.toString());
    }

    public synchronized void enablePlatformNotifications() {
        if (this.mProxyChangeReceiver == null) {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: android.net.http.RequestQueue.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    RequestQueue.this.setProxyConfig();
                }
            };
            this.mProxyChangeReceiver = broadcastReceiver;
            this.mContext.registerReceiver(broadcastReceiver, new IntentFilter(Proxy.PROXY_CHANGE_ACTION));
        }
        setProxyConfig();
    }

    public HttpHost getProxyHost() {
        return this.mProxyHost;
    }

    @Override // android.net.http.RequestFeeder
    public synchronized Request getRequest() {
        return this.mPending.isEmpty() ? null : removeFirst(this.mPending);
    }

    @Override // android.net.http.RequestFeeder
    public synchronized boolean haveRequest(HttpHost httpHost) {
        return this.mPending.containsKey(httpHost);
    }

    public RequestHandle queueRequest(String str, String str2, Map<String, String> map, EventHandler eventHandler, InputStream inputStream, int i2) {
        return queueRequest(str, new WebAddress(str), str2, map, eventHandler, inputStream, i2);
    }

    public RequestHandle queueSynchronousRequest(String str, WebAddress webAddress, String str2, Map<String, String> map, EventHandler eventHandler, InputStream inputStream, int i2) {
        HttpHost httpHost = new HttpHost(webAddress.getHost(), webAddress.getPort(), webAddress.getScheme());
        return new RequestHandle(this, str, webAddress, str2, map, inputStream, i2, new Request(str2, httpHost, this.mProxyHost, webAddress.getPath(), inputStream, i2, eventHandler, map), Connection.getConnection(this.mContext, determineHost(httpHost), this.mProxyHost, new SyncFeeder()));
    }

    public synchronized boolean requestsPending() {
        return !this.mPending.isEmpty();
    }

    @Override // android.net.http.RequestFeeder
    public void requeueRequest(Request request) {
        queueRequest(request, true);
    }

    public void shutdown() {
        this.mActivePool.shutdown();
    }

    public void startTiming() {
        this.mActivePool.startTiming();
    }

    public void stopTiming() {
        this.mActivePool.stopTiming();
    }

    public static class SyncFeeder implements RequestFeeder {
        private Request mRequest;

        @Override // android.net.http.RequestFeeder
        public Request getRequest() {
            Request request = this.mRequest;
            this.mRequest = null;
            return request;
        }

        @Override // android.net.http.RequestFeeder
        public boolean haveRequest(HttpHost httpHost) {
            return this.mRequest != null;
        }

        @Override // android.net.http.RequestFeeder
        public void requeueRequest(Request request) {
            this.mRequest = request;
        }

        @Override // android.net.http.RequestFeeder
        public Request getRequest(HttpHost httpHost) {
            return getRequest();
        }
    }

    public RequestQueue(Context context, int i2) {
        this.mProxyHost = null;
        this.mContext = context;
        this.mPending = new LinkedHashMap<>(32);
        ActivePool activePool = new ActivePool(i2);
        this.mActivePool = activePool;
        activePool.startup();
        this.mConnectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
    }

    public RequestHandle queueRequest(String str, WebAddress webAddress, String str2, Map<String, String> map, EventHandler eventHandler, InputStream inputStream, int i2) {
        Request request = new Request(str2, new HttpHost(webAddress.getHost(), webAddress.getPort(), webAddress.getScheme()), this.mProxyHost, webAddress.getPath(), inputStream, i2, eventHandler == null ? new LoggingEventHandler() : eventHandler, map);
        queueRequest(request, false);
        ActivePool.access$408(this.mActivePool);
        this.mActivePool.startConnectionThread();
        return new RequestHandle(this, str, webAddress, str2, map, inputStream, i2, request);
    }

    @Override // android.net.http.RequestFeeder
    public synchronized Request getRequest(HttpHost httpHost) {
        Request request;
        request = null;
        if (this.mPending.containsKey(httpHost)) {
            LinkedList<Request> linkedList = this.mPending.get(httpHost);
            Request requestRemoveFirst = linkedList.removeFirst();
            if (linkedList.isEmpty()) {
                this.mPending.remove(httpHost);
            }
            request = requestRemoveFirst;
        }
        return request;
    }

    public synchronized void queueRequest(Request request, boolean z2) {
        LinkedList<Request> linkedList;
        HttpHost httpHost = request.mProxyHost;
        if (httpHost == null) {
            httpHost = request.mHost;
        }
        if (this.mPending.containsKey(httpHost)) {
            linkedList = this.mPending.get(httpHost);
        } else {
            LinkedList<Request> linkedList2 = new LinkedList<>();
            this.mPending.put(httpHost, linkedList2);
            linkedList = linkedList2;
        }
        if (z2) {
            linkedList.addFirst(request);
        } else {
            linkedList.add(request);
        }
    }
}
