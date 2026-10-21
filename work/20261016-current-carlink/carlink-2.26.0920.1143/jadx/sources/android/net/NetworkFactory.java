package android.net;

import android.accessibilityservice.c;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.util.IndentingPrintWriter;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes.dex */
public class NetworkFactory extends Handler {
    private static final int BASE = 536576;
    public static final int CMD_CANCEL_REQUEST = 536577;
    public static final int CMD_REQUEST_NETWORK = 536576;
    private static final int CMD_SET_FILTER = 536579;
    private static final int CMD_SET_SCORE = 536578;
    private static final boolean DBG = true;
    private static final boolean VDBG = false;
    private final String LOG_TAG;
    private NetworkCapabilities mCapabilityFilter;
    private final Context mContext;
    private Messenger mMessenger;
    private final SparseArray<NetworkRequestInfo> mNetworkRequests;
    private int mRefCount;
    private int mScore;

    public class NetworkRequestInfo {
        public final NetworkRequest request;
        public boolean requested = false;
        public int score;

        public NetworkRequestInfo(NetworkRequest networkRequest, int i2) {
            this.request = networkRequest;
            this.score = i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("{");
            sb.append(this.request);
            sb.append(", score=");
            sb.append(this.score);
            sb.append(", requested=");
            return c.o(sb, this.requested, "}");
        }
    }

    public NetworkFactory(Looper looper, Context context, String str, NetworkCapabilities networkCapabilities) {
        super(looper);
        this.mNetworkRequests = new SparseArray<>();
        this.mRefCount = 0;
        this.mMessenger = null;
        this.LOG_TAG = str;
        this.mContext = context;
        this.mCapabilityFilter = networkCapabilities;
    }

    private void evalRequest(NetworkRequestInfo networkRequestInfo) {
        if (!networkRequestInfo.requested && networkRequestInfo.score < this.mScore && networkRequestInfo.request.networkCapabilities.satisfiedByNetworkCapabilities(this.mCapabilityFilter) && acceptRequest(networkRequestInfo.request, networkRequestInfo.score)) {
            needNetworkFor(networkRequestInfo.request, networkRequestInfo.score);
            networkRequestInfo.requested = true;
        } else if (networkRequestInfo.requested) {
            if (networkRequestInfo.score <= this.mScore && networkRequestInfo.request.networkCapabilities.satisfiedByNetworkCapabilities(this.mCapabilityFilter) && acceptRequest(networkRequestInfo.request, networkRequestInfo.score)) {
                return;
            }
            releaseNetworkFor(networkRequestInfo.request);
            networkRequestInfo.requested = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: evalRequests, reason: merged with bridge method [inline-methods] */
    public void lambda$reevaluateAllRequests$0() {
        for (int i2 = 0; i2 < this.mNetworkRequests.size(); i2++) {
            evalRequest(this.mNetworkRequests.valueAt(i2));
        }
    }

    private void handleSetFilter(NetworkCapabilities networkCapabilities) {
        this.mCapabilityFilter = networkCapabilities;
        lambda$reevaluateAllRequests$0();
    }

    private void handleSetScore(int i2) {
        this.mScore = i2;
        lambda$reevaluateAllRequests$0();
    }

    public boolean acceptRequest(NetworkRequest networkRequest, int i2) {
        return true;
    }

    public void addNetworkRequest(NetworkRequest networkRequest, int i2) {
        sendMessage(obtainMessage(536576, new NetworkRequestInfo(networkRequest, i2)));
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        IndentingPrintWriter indentingPrintWriter = new IndentingPrintWriter(printWriter, "  ");
        indentingPrintWriter.println(toString());
        indentingPrintWriter.increaseIndent();
        for (int i2 = 0; i2 < this.mNetworkRequests.size(); i2++) {
            indentingPrintWriter.println(this.mNetworkRequests.valueAt(i2));
        }
        indentingPrintWriter.decreaseIndent();
    }

    public int getRequestCount() {
        return this.mNetworkRequests.size();
    }

    public void handleAddRequest(NetworkRequest networkRequest, int i2) {
        NetworkRequestInfo networkRequestInfo = this.mNetworkRequests.get(networkRequest.requestId);
        if (networkRequestInfo == null) {
            log("got request " + networkRequest + " with score " + i2);
            networkRequestInfo = new NetworkRequestInfo(networkRequest, i2);
            this.mNetworkRequests.put(networkRequestInfo.request.requestId, networkRequestInfo);
        } else {
            networkRequestInfo.score = i2;
        }
        evalRequest(networkRequestInfo);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case 536576:
                handleAddRequest((NetworkRequest) message.obj, message.arg1);
                break;
            case CMD_CANCEL_REQUEST /* 536577 */:
                handleRemoveRequest((NetworkRequest) message.obj);
                break;
            case CMD_SET_SCORE /* 536578 */:
                handleSetScore(message.arg1);
                break;
            case CMD_SET_FILTER /* 536579 */:
                handleSetFilter((NetworkCapabilities) message.obj);
                break;
        }
    }

    public void handleRemoveRequest(NetworkRequest networkRequest) {
        NetworkRequestInfo networkRequestInfo = this.mNetworkRequests.get(networkRequest.requestId);
        if (networkRequestInfo != null) {
            this.mNetworkRequests.remove(networkRequest.requestId);
            if (networkRequestInfo.requested) {
                releaseNetworkFor(networkRequestInfo.request);
            }
        }
    }

    public void log(String str) {
        Log.d(this.LOG_TAG, str);
    }

    public void needNetworkFor(NetworkRequest networkRequest, int i2) {
        int i3 = this.mRefCount + 1;
        this.mRefCount = i3;
        if (i3 == 1) {
            startNetwork();
        }
    }

    public void reevaluateAllRequests() {
        post(new b(this, 0));
    }

    public void register() {
        log("Registering NetworkFactory");
        if (this.mMessenger == null) {
            this.mMessenger = new Messenger(this);
            ConnectivityManager.from(this.mContext).registerNetworkFactory(this.mMessenger, this.LOG_TAG);
        }
    }

    public void releaseNetworkFor(NetworkRequest networkRequest) {
        int i2 = this.mRefCount - 1;
        this.mRefCount = i2;
        if (i2 == 0) {
            stopNetwork();
        }
    }

    public void removeNetworkRequest(NetworkRequest networkRequest) {
        sendMessage(obtainMessage(CMD_CANCEL_REQUEST, networkRequest));
    }

    public void setCapabilityFilter(NetworkCapabilities networkCapabilities) {
        sendMessage(obtainMessage(CMD_SET_FILTER, new NetworkCapabilities(networkCapabilities)));
    }

    public void setScoreFilter(int i2) {
        sendMessage(obtainMessage(CMD_SET_SCORE, i2, 0));
    }

    public void startNetwork() {
    }

    public void stopNetwork() {
    }

    @Override // android.os.Handler
    public String toString() {
        StringBuilder sb = new StringBuilder("{");
        sb.append(this.LOG_TAG);
        sb.append(" - ScoreFilter=");
        sb.append(this.mScore);
        sb.append(", Filter=");
        sb.append(this.mCapabilityFilter);
        sb.append(", requests=");
        sb.append(this.mNetworkRequests.size());
        sb.append(", refCount=");
        return c.m(sb, this.mRefCount, "}");
    }

    public void unregister() {
        log("Unregistering NetworkFactory");
        if (this.mMessenger != null) {
            ConnectivityManager.from(this.mContext).unregisterNetworkFactory(this.mMessenger);
            this.mMessenger = null;
        }
    }
}
