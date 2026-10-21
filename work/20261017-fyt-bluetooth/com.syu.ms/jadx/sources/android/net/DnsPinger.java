package android.net;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public final class DnsPinger extends Handler {
    private static final int ACTION_CANCEL_ALL_PINGS = 327683;
    private static final int ACTION_LISTEN_FOR_RESPONSE = 327682;
    private static final int ACTION_PING_DNS = 327681;
    private static final int BASE = 327680;
    private static final boolean DBG = false;
    public static final int DNS_PING_RESULT = 327680;
    private static final int DNS_PORT = 53;
    private static final int RECEIVE_POLL_INTERVAL_MS = 200;
    public static final int SOCKET_EXCEPTION = -2;
    private static final int SOCKET_TIMEOUT_MS = 1;
    public static final int TIMEOUT = -1;
    private String TAG;
    private List<ActivePing> mActivePings;
    private final int mConnectionType;
    private ConnectivityManager mConnectivityManager;
    private final Context mContext;
    private AtomicInteger mCurrentToken;
    private final ArrayList<InetAddress> mDefaultDns;
    private int mEventCounter;
    private final Handler mTarget;
    private static final Random sRandom = new Random();
    private static final AtomicInteger sCounter = new AtomicInteger();
    private static final byte[] mDnsQuery = {0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 3, 119, 119, 119, 6, 103, 111, 111, 103, 108, 101, 3, 99, 111, 109, 0, 0, 1, 0, 1};

    public class ActivePing {
        public int internalId;
        public short packetId;
        public Integer result;
        public DatagramSocket socket;
        public long start;
        public int timeout;

        private ActivePing() {
            this.start = SystemClock.elapsedRealtime();
        }
    }

    public class DnsArg {
        public InetAddress dns;
        public int seq;

        public DnsArg(InetAddress inetAddress, int i2) {
            this.dns = inetAddress;
            this.seq = i2;
        }
    }

    public DnsPinger(Context context, String str, Looper looper, Handler handler, int i2) {
        super(looper);
        this.mConnectivityManager = null;
        this.mCurrentToken = new AtomicInteger();
        this.mActivePings = new ArrayList();
        this.TAG = str;
        this.mContext = context;
        this.mTarget = handler;
        this.mConnectionType = i2;
        if (!ConnectivityManager.isNetworkTypeValid(i2)) {
            throw new IllegalArgumentException("Invalid connectionType in constructor: " + i2);
        }
        ArrayList<InetAddress> arrayList = new ArrayList<>();
        this.mDefaultDns = arrayList;
        arrayList.add(getDefaultDns());
        this.mEventCounter = 0;
    }

    private LinkProperties getCurrentLinkProperties() {
        if (this.mConnectivityManager == null) {
            this.mConnectivityManager = (ConnectivityManager) this.mContext.getSystemService(Context.CONNECTIVITY_SERVICE);
        }
        return this.mConnectivityManager.getLinkProperties(this.mConnectionType);
    }

    private InetAddress getDefaultDns() {
        String string = Settings.Global.getString(this.mContext.getContentResolver(), Settings.Global.DEFAULT_DNS_SERVER);
        if (string == null || string.length() == 0) {
            string = this.mContext.getResources().getString(17039396);
        }
        try {
            return NetworkUtils.numericToInetAddress(string);
        } catch (IllegalArgumentException unused) {
            loge("getDefaultDns::malformed default dns address");
            return null;
        }
    }

    private void log(String str) {
        Log.d(this.TAG, str);
    }

    private void loge(String str) {
        Log.e(this.TAG, str);
    }

    private void sendResponse(int i2, int i3, int i4) {
        this.mTarget.sendMessage(obtainMessage(327680, i2, i4));
    }

    public void cancelPings() {
        this.mCurrentToken.incrementAndGet();
        obtainMessage(ACTION_CANCEL_ALL_PINGS).sendToTarget();
    }

    public List<InetAddress> getDnsList() {
        LinkProperties currentLinkProperties = getCurrentLinkProperties();
        if (currentLinkProperties == null) {
            loge("getCurLinkProperties:: LP for type" + this.mConnectionType + " is null!");
            return this.mDefaultDns;
        }
        Collection<InetAddress> dnses = currentLinkProperties.getDnses();
        if (dnses != null && dnses.size() != 0) {
            return new ArrayList(dnses);
        }
        loge("getDns::LinkProps has null dns - returning default");
        return this.mDefaultDns;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        switch (message.what) {
            case ACTION_PING_DNS /* 327681 */:
                DnsArg dnsArg = (DnsArg) message.obj;
                if (dnsArg.seq == this.mCurrentToken.get()) {
                    try {
                        ActivePing activePing = new ActivePing();
                        InetAddress inetAddress = dnsArg.dns;
                        activePing.internalId = message.arg1;
                        activePing.timeout = message.arg2;
                        DatagramSocket datagramSocket = new DatagramSocket();
                        activePing.socket = datagramSocket;
                        datagramSocket.setSoTimeout(1);
                        try {
                            activePing.socket.setNetworkInterface(NetworkInterface.getByName(getCurrentLinkProperties().getInterfaceName()));
                        } catch (Exception e2) {
                            loge("sendDnsPing::Error binding to socket " + e2);
                        }
                        activePing.packetId = (short) sRandom.nextInt();
                        byte[] bArr = (byte[]) mDnsQuery.clone();
                        short s2 = activePing.packetId;
                        bArr[0] = (byte) (s2 >> 8);
                        bArr[1] = (byte) s2;
                        activePing.socket.send(new DatagramPacket(bArr, bArr.length, inetAddress, 53));
                        this.mActivePings.add(activePing);
                        int i2 = this.mEventCounter + 1;
                        this.mEventCounter = i2;
                        sendMessageDelayed(obtainMessage(ACTION_LISTEN_FOR_RESPONSE, i2, 0), 200L);
                    } catch (IOException unused) {
                        sendResponse(message.arg1, -9999, -2);
                    }
                    break;
                }
                break;
            case ACTION_LISTEN_FOR_RESPONSE /* 327682 */:
                if (message.arg1 == this.mEventCounter) {
                    for (ActivePing activePing2 : this.mActivePings) {
                        try {
                            byte[] bArr2 = new byte[2];
                            activePing2.socket.receive(new DatagramPacket(bArr2, 2));
                            byte b2 = bArr2[0];
                            short s3 = activePing2.packetId;
                            if (b2 == ((byte) (s3 >> 8)) && bArr2[1] == ((byte) s3)) {
                                activePing2.result = Integer.valueOf((int) (SystemClock.elapsedRealtime() - activePing2.start));
                            }
                        } catch (SocketTimeoutException unused2) {
                        } catch (Exception unused3) {
                            activePing2.result = -2;
                        }
                    }
                    Iterator<ActivePing> it = this.mActivePings.iterator();
                    while (it.hasNext()) {
                        ActivePing next = it.next();
                        Integer num = next.result;
                        if (num != null) {
                            sendResponse(next.internalId, next.packetId, num.intValue());
                            next.socket.close();
                            it.remove();
                        } else if (SystemClock.elapsedRealtime() > next.start + ((long) next.timeout)) {
                            sendResponse(next.internalId, next.packetId, -1);
                            next.socket.close();
                            it.remove();
                        }
                    }
                    if (!this.mActivePings.isEmpty()) {
                        sendMessageDelayed(obtainMessage(ACTION_LISTEN_FOR_RESPONSE, this.mEventCounter, 0), 200L);
                    }
                    break;
                }
                break;
            case ACTION_CANCEL_ALL_PINGS /* 327683 */:
                Iterator<ActivePing> it2 = this.mActivePings.iterator();
                while (it2.hasNext()) {
                    it2.next().socket.close();
                }
                this.mActivePings.clear();
                break;
        }
    }

    public int pingDnsAsync(InetAddress inetAddress, int i2, int i3) {
        int iIncrementAndGet = sCounter.incrementAndGet();
        sendMessageDelayed(obtainMessage(ACTION_PING_DNS, iIncrementAndGet, i2, new DnsArg(inetAddress, this.mCurrentToken.get())), i3);
        return iIncrementAndGet;
    }
}
