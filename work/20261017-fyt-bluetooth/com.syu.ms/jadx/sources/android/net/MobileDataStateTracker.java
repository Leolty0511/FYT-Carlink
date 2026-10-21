package android.net;

import android.bluetooth.BluetoothClass;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Camera;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Slog;
import com.android.internal.telephony.PhoneConstants;
import java.io.CharArrayWriter;
import java.io.PrintWriter;
import java.util.concurrent.atomic.AtomicBoolean;
import r.d;
import u.b;

/* JADX INFO: loaded from: classes.dex */
public class MobileDataStateTracker extends BaseNetworkStateTracker {
    private static final boolean DBG = true;
    private static final String TAG = "MobileDataStateTracker";
    private static final int UNKNOWN = Integer.MAX_VALUE;
    private static final boolean VDBG = false;
    private static NetworkDataEntry[] mTheoreticalBWTable = {new NetworkDataEntry(2, 237, 118, Integer.MAX_VALUE), new NetworkDataEntry(1, 48, 40, Integer.MAX_VALUE), new NetworkDataEntry(3, 384, 64, Integer.MAX_VALUE), new NetworkDataEntry(8, 14400, Integer.MAX_VALUE, Integer.MAX_VALUE), new NetworkDataEntry(9, 14400, 5760, Integer.MAX_VALUE), new NetworkDataEntry(10, 14400, 5760, Integer.MAX_VALUE), new NetworkDataEntry(15, 21000, 5760, Integer.MAX_VALUE), new NetworkDataEntry(4, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE), new NetworkDataEntry(7, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE), new NetworkDataEntry(5, 2468, 153, Integer.MAX_VALUE), new NetworkDataEntry(6, 3072, BluetoothClass.Device.WEARABLE_PAGER, Integer.MAX_VALUE), new NetworkDataEntry(12, 14700, BluetoothClass.Device.WEARABLE_PAGER, Integer.MAX_VALUE), new NetworkDataEntry(11, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE), new NetworkDataEntry(13, 100000, 50000, Integer.MAX_VALUE), new NetworkDataEntry(14, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE)};
    private String mApnType;
    private Context mContext;
    private b mDataConnectionTrackerAc;
    private Handler mHandler;
    private LinkCapabilities mLinkCapabilities;
    private LinkProperties mLinkProperties;
    private PhoneConstants.DataState mMobileDataState;
    private NetworkInfo mNetworkInfo;
    private d mPhoneService;
    private SignalStrength mSignalStrength;
    private Handler mTarget;
    private boolean mTeardownRequested = false;
    private boolean mPrivateDnsRouteSet = false;
    private boolean mDefaultRouteSet = false;
    public boolean mUserDataEnabled = true;
    public boolean mPolicyDataEnabled = true;
    private AtomicBoolean mIsCaptivePortal = new AtomicBoolean(false);
    private SamplingDataTracker mSamplingDataTracker = new SamplingDataTracker();
    private final PhoneStateListener mPhoneStateListener = new PhoneStateListener() { // from class: android.net.MobileDataStateTracker.1
        @Override // android.telephony.PhoneStateListener
        public void onSignalStrengthsChanged(SignalStrength signalStrength) {
            MobileDataStateTracker.this.mSignalStrength = signalStrength;
        }
    };

    /* JADX INFO: renamed from: android.net.MobileDataStateTracker$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState;

        static {
            int[] iArr = new int[PhoneConstants.DataState.values().length];
            $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState = iArr;
            try {
                iArr[PhoneConstants.DataState.DISCONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState[PhoneConstants.DataState.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState[PhoneConstants.DataState.SUSPENDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$android$internal$telephony$PhoneConstants$DataState[PhoneConstants.DataState.CONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class MdstHandler extends Handler {
        private MobileDataStateTracker mMdst;

        public MdstHandler(Looper looper, MobileDataStateTracker mobileDataStateTracker) {
            super(looper);
            this.mMdst = mobileDataStateTracker;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 != 69632) {
                if (i2 != 69636) {
                    return;
                }
                this.mMdst.mDataConnectionTrackerAc = null;
            } else if (message.arg1 == 0) {
                this.mMdst.mDataConnectionTrackerAc = (b) message.obj;
            }
        }
    }

    public class MobileDataStateReceiver extends BroadcastReceiver {
        private MobileDataStateReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN")) {
                String stringExtra = intent.getStringExtra("apn");
                String stringExtra2 = intent.getStringExtra("apnType");
                if (TextUtils.equals(MobileDataStateTracker.this.mApnType, stringExtra2)) {
                    MobileDataStateTracker.this.log("Broadcast received: " + intent.getAction() + " apnType=" + stringExtra2 + " apnName=" + stringExtra);
                    MobileDataStateTracker.this.mMobileDataState = PhoneConstants.DataState.CONNECTING;
                    MobileDataStateTracker.this.updateLinkProperitesAndCapatilities(intent);
                    MobileDataStateTracker.this.mNetworkInfo.setIsConnectedToProvisioningNetwork(true);
                    MobileDataStateTracker.this.setDetailedState(NetworkInfo.DetailedState.SUSPENDED, ProxyProperties.LOCAL_EXCL_LIST, stringExtra);
                    return;
                }
                return;
            }
            if (!intent.getAction().equals("android.intent.action.ANY_DATA_STATE")) {
                if (!intent.getAction().equals("android.intent.action.DATA_CONNECTION_FAILED")) {
                    MobileDataStateTracker.this.log("Broadcast received: ignore " + intent.getAction());
                    return;
                }
                String stringExtra3 = intent.getStringExtra("apnType");
                if (!TextUtils.equals(stringExtra3, MobileDataStateTracker.this.mApnType)) {
                    MobileDataStateTracker mobileDataStateTracker = MobileDataStateTracker.this;
                    mobileDataStateTracker.log(String.format("Broadcast received: ACTION_ANY_DATA_CONNECTION_FAILED ignore, mApnType=%s != received apnType=%s", mobileDataStateTracker.mApnType, stringExtra3));
                    return;
                }
                MobileDataStateTracker.this.mNetworkInfo.setIsConnectedToProvisioningNetwork(false);
                String stringExtra4 = intent.getStringExtra("reason");
                String stringExtra5 = intent.getStringExtra("apn");
                MobileDataStateTracker mobileDataStateTracker2 = MobileDataStateTracker.this;
                StringBuilder sb = new StringBuilder();
                sb.append("Broadcast received: ");
                sb.append(intent.getAction());
                sb.append(" reason=");
                sb.append(stringExtra4);
                mobileDataStateTracker2.log(sb.toString() == null ? "null" : stringExtra4);
                MobileDataStateTracker.this.setDetailedState(NetworkInfo.DetailedState.FAILED, stringExtra4, stringExtra5);
                return;
            }
            String stringExtra6 = intent.getStringExtra("apnType");
            if (TextUtils.equals(stringExtra6, MobileDataStateTracker.this.mApnType)) {
                MobileDataStateTracker.this.mNetworkInfo.setIsConnectedToProvisioningNetwork(false);
                MobileDataStateTracker.this.log("Broadcast received: " + intent.getAction() + " apnType=" + stringExtra6);
                int subtype = MobileDataStateTracker.this.mNetworkInfo.getSubtype();
                int networkType = TelephonyManager.getDefault().getNetworkType();
                MobileDataStateTracker.this.mNetworkInfo.setSubtype(networkType, TelephonyManager.getDefault().getNetworkTypeName());
                if (networkType != subtype && MobileDataStateTracker.this.mNetworkInfo.isConnected()) {
                    MobileDataStateTracker.this.mTarget.obtainMessage(NetworkStateTracker.EVENT_NETWORK_SUBTYPE_CHANGED, subtype, 0, MobileDataStateTracker.this.mNetworkInfo).sendToTarget();
                }
                PhoneConstants.DataState dataState = (PhoneConstants.DataState) Enum.valueOf(PhoneConstants.DataState.class, intent.getStringExtra("state"));
                String stringExtra7 = intent.getStringExtra("reason");
                String stringExtra8 = intent.getStringExtra("apn");
                MobileDataStateTracker.this.mNetworkInfo.setRoaming(intent.getBooleanExtra("networkRoaming", false));
                MobileDataStateTracker.this.mNetworkInfo.setIsAvailable(!intent.getBooleanExtra("networkUnvailable", false));
                MobileDataStateTracker mobileDataStateTracker3 = MobileDataStateTracker.this;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Received state=");
                sb2.append(dataState);
                sb2.append(", old=");
                sb2.append(MobileDataStateTracker.this.mMobileDataState);
                sb2.append(", reason=");
                sb2.append(stringExtra7 == null ? "(unspecified)" : stringExtra7);
                mobileDataStateTracker3.log(sb2.toString());
                if (MobileDataStateTracker.this.mMobileDataState == dataState) {
                    if (TextUtils.equals(stringExtra7, "linkPropertiesChanged")) {
                        MobileDataStateTracker.this.mLinkProperties = (LinkProperties) intent.getParcelableExtra(WifiManager.EXTRA_LINK_PROPERTIES);
                        if (MobileDataStateTracker.this.mLinkProperties == null) {
                            MobileDataStateTracker.this.loge("No link property in LINK_PROPERTIES change event.");
                            MobileDataStateTracker.this.mLinkProperties = new LinkProperties();
                        }
                        MobileDataStateTracker.this.mNetworkInfo.setDetailedState(MobileDataStateTracker.this.mNetworkInfo.getDetailedState(), stringExtra7, MobileDataStateTracker.this.mNetworkInfo.getExtraInfo());
                        MobileDataStateTracker.this.mTarget.obtainMessage(NetworkStateTracker.EVENT_CONFIGURATION_CHANGED, MobileDataStateTracker.this.mNetworkInfo).sendToTarget();
                        return;
                    }
                    return;
                }
                MobileDataStateTracker.this.mMobileDataState = dataState;
                int i2 = AnonymousClass2.$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState[dataState.ordinal()];
                if (i2 == 1) {
                    if (MobileDataStateTracker.this.isTeardownRequested()) {
                        MobileDataStateTracker.this.setTeardownRequested(false);
                    }
                    MobileDataStateTracker.this.setDetailedState(NetworkInfo.DetailedState.DISCONNECTED, stringExtra7, stringExtra8);
                } else if (i2 == 2) {
                    MobileDataStateTracker.this.setDetailedState(NetworkInfo.DetailedState.CONNECTING, stringExtra7, stringExtra8);
                } else if (i2 == 3) {
                    MobileDataStateTracker.this.setDetailedState(NetworkInfo.DetailedState.SUSPENDED, stringExtra7, stringExtra8);
                } else if (i2 == 4) {
                    MobileDataStateTracker.this.updateLinkProperitesAndCapatilities(intent);
                    MobileDataStateTracker.this.setDetailedState(NetworkInfo.DetailedState.CONNECTED, stringExtra7, stringExtra8);
                }
                MobileDataStateTracker.this.mSamplingDataTracker.resetSamplingData();
            }
        }
    }

    public static class NetworkDataEntry {
        public int downloadBandwidth;
        public int latency;
        public int networkType;
        public int uploadBandwidth;

        public NetworkDataEntry(int i2, int i3, int i4, int i5) {
            this.networkType = i2;
            this.downloadBandwidth = i3;
            this.uploadBandwidth = i4;
            this.latency = i5;
        }
    }

    public MobileDataStateTracker(int i2, String str) {
        this.mNetworkInfo = new NetworkInfo(i2, TelephonyManager.getDefault().getNetworkType(), str, TelephonyManager.getDefault().getNetworkTypeName());
        this.mApnType = networkTypeToApnType(i2);
    }

    private static NetworkDataEntry getNetworkDataEntry(int i2) {
        for (NetworkDataEntry networkDataEntry : mTheoreticalBWTable) {
            if (networkDataEntry.networkType == i2) {
                return networkDataEntry;
            }
        }
        Slog.e(TAG, "Could not find Theoretical BW entry for " + String.valueOf(i2));
        return null;
    }

    private static int getNormalizedSignalStrength(int i2, SignalStrength signalStrength) {
        int gsmLevel;
        switch (i2) {
            case 1:
            case 2:
            case 3:
            case 8:
            case 9:
            case 10:
            case 15:
                gsmLevel = signalStrength.getGsmLevel();
                break;
            case 4:
            case 7:
                gsmLevel = signalStrength.getCdmaLevel();
                break;
            case 5:
            case 6:
            case 12:
                gsmLevel = signalStrength.getEvdoLevel();
                break;
            case 11:
            case 14:
            default:
                return Integer.MAX_VALUE;
            case 13:
                gsmLevel = signalStrength.getLteLevel();
                break;
        }
        return (gsmLevel * 100) / 5;
    }

    private void getPhoneService(boolean z2) {
        if (this.mPhoneService == null || z2) {
            this.mPhoneService = d.a.J2(ServiceManager.getService("phone"));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(String str) {
        Slog.d(TAG, this.mApnType + ": " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loge(String str) {
        Slog.e(TAG, this.mApnType + ": " + str);
    }

    public static String networkTypeToApnType(int i2) {
        if (i2 == 0) {
            return LinkCapabilities.Role.DEFAULT;
        }
        if (i2 == 14) {
            return "ia";
        }
        if (i2 == 2) {
            return "mms";
        }
        if (i2 == 3) {
            return "supl";
        }
        if (i2 == 4) {
            return "dun";
        }
        if (i2 == 5) {
            return "hipri";
        }
        switch (i2) {
            case 10:
                return "fota";
            case 11:
                return "ims";
            case 12:
                return "cbs";
            default:
                sloge("Error mapping networkType " + i2 + " to apnType.");
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDetailedState(NetworkInfo.DetailedState detailedState, String str, String str2) {
        log("setDetailed state, old =" + this.mNetworkInfo.getDetailedState() + " and new state=" + detailedState);
        if (detailedState != this.mNetworkInfo.getDetailedState()) {
            boolean z2 = this.mNetworkInfo.getState() == NetworkInfo.State.CONNECTING;
            String reason = this.mNetworkInfo.getReason();
            if (z2 && detailedState == NetworkInfo.DetailedState.CONNECTED && str == null && reason != null) {
                str = reason;
            }
            this.mNetworkInfo.setDetailedState(detailedState, str, str2);
            this.mTarget.obtainMessage(458752, new NetworkInfo(this.mNetworkInfo)).sendToTarget();
        }
    }

    private int setEnableApn(String str, boolean z2) {
        getPhoneService(false);
        for (int i2 = 0; i2 < 2; i2++) {
            d dVar = this.mPhoneService;
            if (dVar == null) {
                loge("Ignoring feature request because could not acquire PhoneService");
                break;
            }
            try {
                return z2 ? dVar.A(str) : dVar.h2(str);
            } catch (RemoteException unused) {
                if (i2 == 0) {
                    getPhoneService(true);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Could not ");
        sb.append(z2 ? "enable" : "disable");
        sb.append(" APN type \"");
        sb.append(str);
        sb.append("\"");
        loge(sb.toString());
        return 3;
    }

    private static void sloge(String str) {
        Slog.e(TAG, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateLinkProperitesAndCapatilities(Intent intent) {
        LinkProperties linkProperties = (LinkProperties) intent.getParcelableExtra(WifiManager.EXTRA_LINK_PROPERTIES);
        this.mLinkProperties = linkProperties;
        if (linkProperties == null) {
            loge("CONNECTED event did not supply link properties.");
            this.mLinkProperties = new LinkProperties();
        }
        this.mLinkProperties.setMtu(this.mContext.getResources().getInteger(17694789));
        LinkCapabilities linkCapabilities = (LinkCapabilities) intent.getParcelableExtra(WifiManager.EXTRA_LINK_CAPABILITIES);
        this.mLinkCapabilities = linkCapabilities;
        if (linkCapabilities == null) {
            loge("CONNECTED event did not supply link capabilities.");
            this.mLinkCapabilities = new LinkCapabilities();
        }
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void addStackedLink(LinkProperties linkProperties) {
        this.mLinkProperties.addStackedLink(linkProperties);
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void captivePortalCheckComplete() {
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void captivePortalCheckCompleted(boolean z2) {
        if (this.mIsCaptivePortal.getAndSet(z2) != z2) {
            setEnableFailFastMobileData(z2 ? 1 : 0);
        }
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void defaultRouteSet(boolean z2) {
        this.mDefaultRouteSet = z2;
    }

    public void enableMobileProvisioning(String str) {
        log("enableMobileProvisioning(url=" + str + ")");
        b bVar = this.mDataConnectionTrackerAc;
        if (bVar != null) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 270373;
            messageObtain.setData(Bundle.forPair("provisioningUrl", str));
            bVar.p(messageObtain);
        }
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public LinkCapabilities getLinkCapabilities() {
        return new LinkCapabilities(this.mLinkCapabilities);
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public LinkProperties getLinkProperties() {
        return new LinkProperties(this.mLinkProperties);
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public LinkQualityInfo getLinkQualityInfo() {
        NetworkInfo networkInfo = this.mNetworkInfo;
        if (networkInfo == null || networkInfo.getType() == -1) {
            return null;
        }
        MobileLinkQualityInfo mobileLinkQualityInfo = new MobileLinkQualityInfo();
        mobileLinkQualityInfo.setNetworkType(this.mNetworkInfo.getType());
        this.mSamplingDataTracker.setCommonLinkQualityInfoFields(mobileLinkQualityInfo);
        if (this.mNetworkInfo.getSubtype() != 0) {
            mobileLinkQualityInfo.setMobileNetworkType(this.mNetworkInfo.getSubtype());
            NetworkDataEntry networkDataEntry = getNetworkDataEntry(this.mNetworkInfo.getSubtype());
            if (networkDataEntry != null) {
                mobileLinkQualityInfo.setTheoreticalRxBandwidth(networkDataEntry.downloadBandwidth);
                mobileLinkQualityInfo.setTheoreticalRxBandwidth(networkDataEntry.uploadBandwidth);
                mobileLinkQualityInfo.setTheoreticalLatency(networkDataEntry.latency);
            }
            if (this.mSignalStrength != null) {
                mobileLinkQualityInfo.setNormalizedSignalStrength(getNormalizedSignalStrength(mobileLinkQualityInfo.getMobileNetworkType(), this.mSignalStrength));
            }
        }
        SignalStrength signalStrength = this.mSignalStrength;
        if (signalStrength != null) {
            mobileLinkQualityInfo.setRssi(signalStrength.getGsmSignalStrength());
            mobileLinkQualityInfo.setGsmErrorRate(signalStrength.getGsmBitErrorRate());
            mobileLinkQualityInfo.setCdmaDbm(signalStrength.getCdmaDbm());
            mobileLinkQualityInfo.setCdmaEcio(signalStrength.getCdmaEcio());
            mobileLinkQualityInfo.setEvdoDbm(signalStrength.getEvdoDbm());
            mobileLinkQualityInfo.setEvdoEcio(signalStrength.getEvdoEcio());
            mobileLinkQualityInfo.setEvdoSnr(signalStrength.getEvdoSnr());
            mobileLinkQualityInfo.setLteSignalStrength(signalStrength.getLteSignalStrength());
            mobileLinkQualityInfo.setLteRsrp(signalStrength.getLteRsrp());
            mobileLinkQualityInfo.setLteRsrq(signalStrength.getLteRsrq());
            mobileLinkQualityInfo.setLteRssnr(signalStrength.getLteRssnr());
            mobileLinkQualityInfo.setLteCqi(signalStrength.getLteCqi());
        }
        return mobileLinkQualityInfo;
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public NetworkInfo getNetworkInfo() {
        return this.mNetworkInfo;
    }

    @Override // android.net.NetworkStateTracker
    public String getTcpBufferSizesPropName() {
        TelephonyManager telephonyManager = new TelephonyManager(this.mContext);
        String str = "evdo";
        switch (telephonyManager.getNetworkType()) {
            case 1:
                str = "gprs";
                break;
            case 2:
                str = "edge";
                break;
            case 3:
                str = "umts";
                break;
            case 4:
                str = "cdma";
                break;
            case 5:
            case 6:
            case 12:
                break;
            case 7:
                str = "1xrtt";
                break;
            case 8:
                str = "hsdpa";
                break;
            case 9:
                str = "hsupa";
                break;
            case 10:
                str = "hspa";
                break;
            case 11:
                str = "iden";
                break;
            case 13:
                str = "lte";
                break;
            case 14:
                str = "ehrpd";
                break;
            case 15:
                str = "hspap";
                break;
            default:
                loge("unknown network type: " + telephonyManager.getNetworkType());
                str = "unknown";
                break;
        }
        return "net.tcp.buffersize." + str;
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public boolean isAvailable() {
        return this.mNetworkInfo.isAvailable();
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public boolean isDefaultRouteSet() {
        return this.mDefaultRouteSet;
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public boolean isPrivateDnsRouteSet() {
        return this.mPrivateDnsRouteSet;
    }

    public boolean isProvisioningNetwork() {
        boolean z2 = false;
        try {
            Message messageObtain = Message.obtain();
            messageObtain.what = 270374;
            messageObtain.setData(Bundle.forPair("apnType", this.mApnType));
            if (this.mDataConnectionTrackerAc.u(messageObtain).arg1 == 1) {
                z2 = true;
            }
        } catch (NullPointerException e2) {
            loge("isProvisioningNetwork: X " + e2);
        }
        log("isProvisioningNetwork: retVal=" + z2);
        return z2;
    }

    public boolean isReady() {
        return this.mDataConnectionTrackerAc != null;
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public boolean isTeardownRequested() {
        return this.mTeardownRequested;
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void privateDnsRouteSet(boolean z2) {
        this.mPrivateDnsRouteSet = z2;
    }

    @Override // android.net.NetworkStateTracker
    public boolean reconnect() {
        setTeardownRequested(false);
        int enableApn = setEnableApn(this.mApnType, true);
        if (enableApn != 0) {
            if (enableApn != 1) {
                if (enableApn == 2 || enableApn == 3) {
                    return false;
                }
                loge("Error in reconnect - unexpected response.");
                return false;
            }
            this.mNetworkInfo.setDetailedState(NetworkInfo.DetailedState.IDLE, null, null);
        }
        return true;
    }

    public void releaseWakeLock() {
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void removeStackedLink(LinkProperties linkProperties) {
        this.mLinkProperties.removeStackedLink(linkProperties);
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void setDependencyMet(boolean z2) {
        Bundle bundleForPair = Bundle.forPair("apnType", this.mApnType);
        try {
            log("setDependencyMet: E met=" + z2);
            Message messageObtain = Message.obtain();
            messageObtain.what = 270367;
            messageObtain.arg1 = z2 ? 1 : 0;
            messageObtain.setData(bundleForPair);
            this.mDataConnectionTrackerAc.p(messageObtain);
        } catch (NullPointerException e2) {
            loge("setDependencyMet: X mAc was null" + e2);
        }
    }

    public void setEnableFailFastMobileData(int i2) {
        log("setEnableFailFastMobileData(enabled=" + i2 + ")");
        b bVar = this.mDataConnectionTrackerAc;
        if (bVar != null) {
            bVar.l(270372, i2);
        }
    }

    public void setInternalDataEnable(boolean z2) {
        log("setInternalDataEnable: E enabled=" + z2);
        b bVar = this.mDataConnectionTrackerAc;
        if (bVar != null) {
            bVar.l(270363, z2 ? 1 : 0);
        }
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void setPolicyDataEnable(boolean z2) {
        log("setPolicyDataEnable(enabled=" + z2 + ")");
        b bVar = this.mDataConnectionTrackerAc;
        if (bVar != null) {
            bVar.l(270368, z2 ? 1 : 0);
            this.mPolicyDataEnabled = z2;
        }
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public boolean setRadio(boolean z2) {
        getPhoneService(false);
        for (int i2 = 0; i2 < 2; i2++) {
            d dVar = this.mPhoneService;
            if (dVar == null) {
                loge("Ignoring mobile radio request because could not acquire PhoneService");
                break;
            }
            try {
                return dVar.setRadio(z2);
            } catch (RemoteException unused) {
                if (i2 == 0) {
                    getPhoneService(true);
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Could not set radio power to ");
        sb.append(z2 ? Camera.Parameters.FLASH_MODE_ON : "off");
        loge(sb.toString());
        return false;
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void setTeardownRequested(boolean z2) {
        this.mTeardownRequested = z2;
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void setUserDataEnable(boolean z2) {
        log("setUserDataEnable: E enabled=" + z2);
        b bVar = this.mDataConnectionTrackerAc;
        if (bVar != null) {
            bVar.l(270366, z2 ? 1 : 0);
            this.mUserDataEnabled = z2;
        }
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void startMonitoring(Context context, Handler handler) {
        this.mTarget = handler;
        this.mContext = context;
        this.mHandler = new MdstHandler(handler.getLooper(), this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.ANY_DATA_STATE");
        intentFilter.addAction("android.intent.action.DATA_CONNECTION_CONNECTED_TO_PROVISIONING_APN");
        intentFilter.addAction("android.intent.action.DATA_CONNECTION_FAILED");
        this.mContext.registerReceiver(new MobileDataStateReceiver(), intentFilter);
        this.mMobileDataState = PhoneConstants.DataState.DISCONNECTED;
        ((TelephonyManager) this.mContext.getSystemService("phone")).listen(this.mPhoneStateListener, 256);
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void startSampling(SamplingDataTracker.SamplingSnapshot samplingSnapshot) {
        this.mSamplingDataTracker.startSampling(samplingSnapshot);
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void stopSampling(SamplingDataTracker.SamplingSnapshot samplingSnapshot) {
        this.mSamplingDataTracker.stopSampling(samplingSnapshot);
    }

    @Override // android.net.BaseNetworkStateTracker, android.net.NetworkStateTracker
    public void supplyMessenger(Messenger messenger) {
        new b().b(this.mContext, this.mHandler, messenger);
    }

    @Override // android.net.NetworkStateTracker
    public boolean teardown() {
        setTeardownRequested(true);
        return setEnableApn(this.mApnType, false) != 3;
    }

    public String toString() {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        PrintWriter printWriter = new PrintWriter(charArrayWriter);
        printWriter.print("Mobile data state: ");
        printWriter.println(this.mMobileDataState);
        printWriter.print("Data enabled: user=");
        printWriter.print(this.mUserDataEnabled);
        printWriter.print(", policy=");
        printWriter.println(this.mPolicyDataEnabled);
        return charArrayWriter.toString();
    }
}
