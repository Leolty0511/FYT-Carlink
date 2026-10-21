package android.net;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.android.internal.util.AsyncChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class NetworkAgent extends Handler {
    private static final int BASE = 528384;
    private static final long BW_REFRESH_MIN_WIN_MS = 500;
    public static final int CMD_PREVENT_AUTOMATIC_RECONNECT = 528399;
    public static final int CMD_REPORT_NETWORK_STATUS = 528391;
    public static final int CMD_REQUEST_BANDWIDTH_UPDATE = 528394;
    public static final int CMD_SAVE_ACCEPT_UNVALIDATED = 528393;
    public static final int CMD_SET_SIGNAL_STRENGTH_THRESHOLDS = 528398;
    public static final int CMD_START_PACKET_KEEPALIVE = 528395;
    public static final int CMD_STOP_PACKET_KEEPALIVE = 528396;
    public static final int CMD_SUSPECT_BAD = 528384;
    private static final boolean DBG = true;
    public static final int EVENT_NETWORK_CAPABILITIES_CHANGED = 528386;
    public static final int EVENT_NETWORK_INFO_CHANGED = 528385;
    public static final int EVENT_NETWORK_PROPERTIES_CHANGED = 528387;
    public static final int EVENT_NETWORK_SCORE_CHANGED = 528388;
    public static final int EVENT_PACKET_KEEPALIVE = 528397;
    public static final int EVENT_SET_EXPLICITLY_SELECTED = 528392;
    public static final int EVENT_UID_RANGES_ADDED = 528389;
    public static final int EVENT_UID_RANGES_REMOVED = 528390;
    public static final int INVALID_NETWORK = 2;
    public static String REDIRECT_URL_KEY = "redirect URL";
    public static final int VALID_NETWORK = 1;
    private static final boolean VDBG = false;
    public static final int WIFI_BASE_SCORE = 60;
    private final String LOG_TAG;
    private volatile AsyncChannel mAsyncChannel;
    private final Context mContext;
    private volatile long mLastBwRefreshTime;
    private AtomicBoolean mPollLcePending;
    private boolean mPollLceScheduled;
    private final ArrayList<Message> mPreConnectedQueue;
    public final int netId;

    public NetworkAgent(Looper looper, Context context, String str, NetworkInfo networkInfo, NetworkCapabilities networkCapabilities, LinkProperties linkProperties, int i2) {
        this(looper, context, str, networkInfo, networkCapabilities, linkProperties, i2, null);
    }

    private void queueOrSendMessage(int i2, Object obj) {
        queueOrSendMessage(i2, 0, 0, obj);
    }

    public void addUidRanges(UidRange[] uidRangeArr) {
        queueOrSendMessage(EVENT_UID_RANGES_ADDED, uidRangeArr);
    }

    public void explicitlySelected(boolean z2) {
        queueOrSendMessage(EVENT_SET_EXPLICITLY_SELECTED, Boolean.valueOf(z2));
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case AsyncChannel.CMD_CHANNEL_FULL_CONNECTION /* 69633 */:
                if (this.mAsyncChannel != null) {
                    log("Received new connection while already connected!");
                    return;
                }
                AsyncChannel asyncChannel = new AsyncChannel();
                asyncChannel.connected(null, this, message.replyTo);
                asyncChannel.replyToMessage(message, AsyncChannel.CMD_CHANNEL_FULLY_CONNECTED, 0);
                synchronized (this.mPreConnectedQueue) {
                    this.mAsyncChannel = asyncChannel;
                    Iterator<Message> it = this.mPreConnectedQueue.iterator();
                    while (it.hasNext()) {
                        asyncChannel.sendMessage(it.next());
                    }
                    this.mPreConnectedQueue.clear();
                    break;
                }
                return;
            case AsyncChannel.CMD_CHANNEL_DISCONNECT /* 69635 */:
                if (this.mAsyncChannel != null) {
                    this.mAsyncChannel.disconnect();
                    return;
                }
                return;
            case AsyncChannel.CMD_CHANNEL_DISCONNECTED /* 69636 */:
                log("NetworkAgent channel lost");
                unwanted();
                synchronized (this.mPreConnectedQueue) {
                    this.mAsyncChannel = null;
                    break;
                }
                return;
            case 528384:
                log("Unhandled Message " + message);
                return;
            case CMD_REPORT_NETWORK_STATUS /* 528391 */:
                networkStatus(message.arg1, ((Bundle) message.obj).getString(REDIRECT_URL_KEY));
                return;
            case CMD_SAVE_ACCEPT_UNVALIDATED /* 528393 */:
                saveAcceptUnvalidated(message.arg1 != 0);
                return;
            case CMD_REQUEST_BANDWIDTH_UPDATE /* 528394 */:
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis < this.mLastBwRefreshTime + BW_REFRESH_MIN_WIN_MS) {
                    if (this.mPollLceScheduled) {
                        return;
                    }
                    this.mPollLceScheduled = sendEmptyMessageDelayed(CMD_REQUEST_BANDWIDTH_UPDATE, ((this.mLastBwRefreshTime + BW_REFRESH_MIN_WIN_MS) - jCurrentTimeMillis) + 1);
                    return;
                } else {
                    this.mPollLceScheduled = false;
                    if (this.mPollLcePending.getAndSet(true)) {
                        return;
                    }
                    pollLceData();
                    return;
                }
            case CMD_START_PACKET_KEEPALIVE /* 528395 */:
                startPacketKeepalive(message);
                return;
            case CMD_STOP_PACKET_KEEPALIVE /* 528396 */:
                stopPacketKeepalive(message);
                return;
            case CMD_SET_SIGNAL_STRENGTH_THRESHOLDS /* 528398 */:
                ArrayList<Integer> integerArrayList = ((Bundle) message.obj).getIntegerArrayList("thresholds");
                int size = integerArrayList != null ? integerArrayList.size() : 0;
                int[] iArr = new int[size];
                for (int i2 = 0; i2 < size; i2++) {
                    iArr[i2] = integerArrayList.get(i2).intValue();
                }
                setSignalStrengthThresholds(iArr);
                return;
            case CMD_PREVENT_AUTOMATIC_RECONNECT /* 528399 */:
                preventAutomaticReconnect();
                return;
            default:
                return;
        }
    }

    public void log(String str) {
        Log.d(this.LOG_TAG, "NetworkAgent: " + str);
    }

    public void networkStatus(int i2, String str) {
    }

    public void onPacketKeepaliveEvent(int i2, int i3) {
        queueOrSendMessage(EVENT_PACKET_KEEPALIVE, i2, i3);
    }

    public void pollLceData() {
    }

    public void preventAutomaticReconnect() {
    }

    public void removeUidRanges(UidRange[] uidRangeArr) {
        queueOrSendMessage(EVENT_UID_RANGES_REMOVED, uidRangeArr);
    }

    public void saveAcceptUnvalidated(boolean z2) {
    }

    public void sendLinkProperties(LinkProperties linkProperties) {
        queueOrSendMessage(EVENT_NETWORK_PROPERTIES_CHANGED, new LinkProperties(linkProperties));
    }

    public void sendNetworkCapabilities(NetworkCapabilities networkCapabilities) {
        this.mPollLcePending.set(false);
        this.mLastBwRefreshTime = System.currentTimeMillis();
        queueOrSendMessage(EVENT_NETWORK_CAPABILITIES_CHANGED, new NetworkCapabilities(networkCapabilities));
    }

    public void sendNetworkInfo(NetworkInfo networkInfo) {
        queueOrSendMessage(EVENT_NETWORK_INFO_CHANGED, new NetworkInfo(networkInfo));
    }

    public void sendNetworkScore(int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("Score must be >= 0");
        }
        queueOrSendMessage(EVENT_NETWORK_SCORE_CHANGED, new Integer(i2));
    }

    public void setSignalStrengthThresholds(int[] iArr) {
    }

    public void startPacketKeepalive(Message message) {
        onPacketKeepaliveEvent(message.arg1, -30);
    }

    public void stopPacketKeepalive(Message message) {
        onPacketKeepaliveEvent(message.arg1, -30);
    }

    public abstract void unwanted();

    public NetworkAgent(Looper looper, Context context, String str, NetworkInfo networkInfo, NetworkCapabilities networkCapabilities, LinkProperties linkProperties, int i2, NetworkMisc networkMisc) {
        super(looper);
        this.mPreConnectedQueue = new ArrayList<>();
        this.mLastBwRefreshTime = 0L;
        this.mPollLceScheduled = false;
        this.mPollLcePending = new AtomicBoolean(false);
        this.LOG_TAG = str;
        this.mContext = context;
        if (networkInfo == null || networkCapabilities == null || linkProperties == null) {
            throw new IllegalArgumentException();
        }
        this.netId = ((ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE)).registerNetworkAgent(new Messenger(this), new NetworkInfo(networkInfo), new LinkProperties(linkProperties), new NetworkCapabilities(networkCapabilities), i2, networkMisc);
    }

    private void queueOrSendMessage(int i2, int i3, int i4) {
        queueOrSendMessage(i2, i3, i4, null);
    }

    private void queueOrSendMessage(int i2, int i3, int i4, Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        messageObtain.arg1 = i3;
        messageObtain.arg2 = i4;
        messageObtain.obj = obj;
        queueOrSendMessage(messageObtain);
    }

    private void queueOrSendMessage(Message message) {
        synchronized (this.mPreConnectedQueue) {
            if (this.mAsyncChannel != null) {
                this.mAsyncChannel.sendMessage(message);
            } else {
                this.mPreConnectedQueue.add(message);
            }
        }
    }
}
