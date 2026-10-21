package android.telephony;

import android.content.Context;
import android.net.ProxyProperties;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.MediaStore;
import android.util.Log;
import com.android.internal.telephony.PhoneConstants;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import r.c;
import r.d;
import r.e;
import r.f;

/* JADX INFO: loaded from: classes.dex */
public class TelephonyManager {
    public static final String ACTION_PHONE_STATE_CHANGED = "android.intent.action.PHONE_STATE";
    public static final String ACTION_RESPOND_VIA_MESSAGE = "android.intent.action.RESPOND_VIA_MESSAGE";
    public static final int CALL_STATE_IDLE = 0;
    public static final int CALL_STATE_OFFHOOK = 2;
    public static final int CALL_STATE_RINGING = 1;
    public static final int DATA_ACTIVITY_DORMANT = 4;
    public static final int DATA_ACTIVITY_IN = 1;
    public static final int DATA_ACTIVITY_INOUT = 3;
    public static final int DATA_ACTIVITY_NONE = 0;
    public static final int DATA_ACTIVITY_OUT = 2;
    public static final int DATA_CONNECTED = 2;
    public static final int DATA_CONNECTING = 1;
    public static final int DATA_DISCONNECTED = 0;
    public static final int DATA_SUSPENDED = 3;
    public static final int DATA_UNKNOWN = -1;
    public static final String EXTRA_INCOMING_NUMBER = "incoming_number";
    public static final String EXTRA_STATE = "state";
    public static final int NETWORK_CLASS_2_G = 1;
    public static final int NETWORK_CLASS_3_G = 2;
    public static final int NETWORK_CLASS_4_G = 3;
    public static final int NETWORK_CLASS_UNKNOWN = 0;
    public static final int NETWORK_TYPE_1xRTT = 7;
    public static final int NETWORK_TYPE_CDMA = 4;
    public static final int NETWORK_TYPE_EDGE = 2;
    public static final int NETWORK_TYPE_EHRPD = 14;
    public static final int NETWORK_TYPE_EVDO_0 = 5;
    public static final int NETWORK_TYPE_EVDO_A = 6;
    public static final int NETWORK_TYPE_EVDO_B = 12;
    public static final int NETWORK_TYPE_GPRS = 1;
    public static final int NETWORK_TYPE_HSDPA = 8;
    public static final int NETWORK_TYPE_HSPA = 10;
    public static final int NETWORK_TYPE_HSPAP = 15;
    public static final int NETWORK_TYPE_HSUPA = 9;
    public static final int NETWORK_TYPE_IDEN = 11;
    public static final int NETWORK_TYPE_LTE = 13;
    public static final int NETWORK_TYPE_UMTS = 3;
    public static final int NETWORK_TYPE_UNKNOWN = 0;
    public static final int PHONE_TYPE_CDMA = 2;
    public static final int PHONE_TYPE_GSM = 1;
    public static final int PHONE_TYPE_NONE = 0;
    public static final int PHONE_TYPE_SIP = 3;
    public static final int SIM_STATE_ABSENT = 1;
    public static final int SIM_STATE_NETWORK_LOCKED = 4;
    public static final int SIM_STATE_PIN_REQUIRED = 2;
    public static final int SIM_STATE_PUK_REQUIRED = 3;
    public static final int SIM_STATE_READY = 5;
    public static final int SIM_STATE_UNKNOWN = 0;
    private static final String TAG = "TelephonyManager";
    private static f sRegistry;
    private final Context mContext;
    private final HashMap<CallStateListener, Listener> mListeners;
    private static TelephonyManager sInstance = new TelephonyManager();
    public static final String EXTRA_STATE_IDLE = PhoneConstants.State.IDLE.toString();
    public static final String EXTRA_STATE_RINGING = PhoneConstants.State.RINGING.toString();
    public static final String EXTRA_STATE_OFFHOOK = PhoneConstants.State.OFFHOOK.toString();
    private static final String sKernelCmdLine = getProcCmdLine();
    private static final Pattern sProductTypePattern = Pattern.compile("\\sproduct_type\\s*=\\s*(\\w+)");
    private static final String sLteOnCdmaProductType = SystemProperties.get("telephony.lteOnCdmaProductType", ProxyProperties.LOCAL_EXCL_LIST);

    public static class Listener extends e.a {
        private static final int WHAT = 1;
        private Handler mHandler = new Handler() { // from class: android.telephony.TelephonyManager.Listener.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                Listener.this.mListener.onCallStateChanged(message.arg1, message.arg2, (String) message.obj);
            }
        };
        public final CallStateListener mListener;

        public Listener(CallStateListener callStateListener) {
            this.mListener = callStateListener;
        }

        public void clearQueue() {
            this.mHandler.removeMessages(1);
            this.mHandler = null;
        }

        @Override // r.e
        public void onUpdate(int i2, int i3, String str) {
            Handler handler = this.mHandler;
            if (handler != null) {
                handler.sendMessage(handler.obtainMessage(1, i2, i3, str));
            }
        }
    }

    public TelephonyManager(Context context) {
        this.mListeners = new HashMap<>();
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            this.mContext = applicationContext;
        } else {
            this.mContext = context;
        }
        if (sRegistry == null) {
            sRegistry = f.a.J2(ServiceManager.getService("telephony.registry"));
        }
    }

    public static TelephonyManager from(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    public static TelephonyManager getDefault() {
        return sInstance;
    }

    private d getITelephony() {
        return d.a.J2(ServiceManager.getService("phone"));
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0029 A[PHI: r4
  0x0029: PHI (r4v2 java.lang.String) = (r4v0 java.lang.String), (r4v3 java.lang.String) binds: [B:5:0x001a, B:7:0x0026] A[DONT_GENERATE, DONT_INLINE]] */
    public static int getLteOnCdmaModeStatic() {
        int i2 = SystemProperties.getInt("telephony.lteOnCdmaDevice", -1);
        int i3 = 1;
        String strGroup = ProxyProperties.LOCAL_EXCL_LIST;
        if (i2 == -1) {
            Matcher matcher = sProductTypePattern.matcher(sKernelCmdLine);
            if (matcher.find()) {
                strGroup = matcher.group(1);
                if (!sLteOnCdmaProductType.equals(strGroup)) {
                    i3 = 0;
                }
            } else {
                i3 = 0;
            }
        } else {
            i3 = i2;
        }
        Rlog.d(TAG, "getLteOnCdmaMode=" + i3 + " curVal=" + i2 + " product_type='" + strGroup + "' lteOnCdmaProductType='" + sLteOnCdmaProductType + "'");
        return i3;
    }

    public static int getNetworkClass(int i2) {
        switch (i2) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return 1;
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return 2;
            case 13:
                return 3;
            default:
                return 0;
        }
    }

    public static String getNetworkTypeName(int i2) {
        switch (i2) {
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "CDMA - EvDo rev. 0";
            case 6:
                return "CDMA - EvDo rev. A";
            case 7:
                return "CDMA - 1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "iDEN";
            case 12:
                return "CDMA - EvDo rev. B";
            case 13:
                return "LTE";
            case 14:
                return "CDMA - eHRPD";
            case 15:
                return "HSPA+";
            default:
                return "UNKNOWN";
        }
    }

    private int getPhoneTypeFromNetworkType() {
        int i2 = SystemProperties.getInt("ro.telephony.default_network", -1);
        if (i2 == -1) {
            return 0;
        }
        return getPhoneType(i2);
    }

    private int getPhoneTypeFromProperty() {
        return SystemProperties.getInt("gsm.current.phone-type", getPhoneTypeFromNetworkType());
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0059 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private static String getProcCmdLine() throws Throwable {
        FileInputStream fileInputStream;
        IOException e2;
        String str = ProxyProperties.LOCAL_EXCL_LIST;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                fileInputStream = new FileInputStream("/proc/cmdline");
                try {
                    byte[] bArr = new byte[2048];
                    int i2 = fileInputStream.read(bArr);
                    if (i2 > 0) {
                        str = new String(bArr, 0, i2);
                    }
                } catch (IOException e3) {
                    e2 = e3;
                    Rlog.d(TAG, "No /proc/cmdline exception=" + e2);
                    if (fileInputStream != null) {
                    }
                    Rlog.d(TAG, "/proc/cmdline=" + str);
                    return str;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException unused) {
                    }
                }
                throw th;
            }
        } catch (IOException e4) {
            fileInputStream = null;
            e2 = e4;
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
        try {
            fileInputStream.close();
        } catch (IOException unused2) {
        }
        Rlog.d(TAG, "/proc/cmdline=" + str);
        return str;
    }

    private c getSubscriberInfo() {
        return c.a.J2(ServiceManager.getService("iphonesubinfo"));
    }

    public void addCallStateListener(CallStateListener callStateListener) {
        try {
            if (callStateListener == null) {
                throw new RuntimeException("Listener can't be null");
            }
            if (this.mListeners.containsKey(callStateListener)) {
                return;
            }
            Listener listener = new Listener(callStateListener);
            this.mListeners.put(callStateListener, listener);
            getITelephony().x(listener);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#addListener", e2);
        }
    }

    public void answerRingingCall() {
        try {
            getITelephony().n();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#answerRingingCall", e2);
        }
    }

    public void call(String str, String str2) {
        try {
            getITelephony().e(str, str2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#call", e2);
        }
    }

    public void cancelMissedCallsNotification() {
        try {
            getITelephony().i2();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#cancelMissedCallsNotification", e2);
        }
    }

    public void dial(String str) {
        try {
            getITelephony().c(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#dial", e2);
        }
    }

    public int disableApnType(String str) {
        try {
            return getITelephony().h2(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#disableApnType", e2);
            return 3;
        }
    }

    public boolean disableDataConnectivity() {
        try {
            return getITelephony().B2();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#disableDataConnectivity", e2);
            return false;
        }
    }

    public void disableLocationUpdates() {
        try {
            getITelephony().n1();
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public int enableApnType(String str) {
        try {
            return getITelephony().A(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#enableApnType", e2);
            return 3;
        }
    }

    public boolean enableDataConnectivity() {
        try {
            return getITelephony().u1();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#enableDataConnectivity", e2);
            return false;
        }
    }

    public void enableLocationUpdates() {
        try {
            getITelephony().F0();
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public boolean endCall() {
        try {
            return getITelephony().j();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#endCall", e2);
            return false;
        }
    }

    public List<CellInfo> getAllCellInfo() {
        try {
            return getITelephony().e0();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getCallState() {
        try {
            return getITelephony().v2();
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public int getCdmaEriIconIndex() {
        try {
            return getITelephony().D2();
        } catch (RemoteException | NullPointerException unused) {
            return -1;
        }
    }

    public int getCdmaEriIconMode() {
        try {
            return getITelephony().X0();
        } catch (RemoteException | NullPointerException unused) {
            return -1;
        }
    }

    public String getCdmaEriText() {
        try {
            return getITelephony().t0();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public CellLocation getCellLocation() {
        try {
            Bundle bundleE1 = getITelephony().e1();
            if (bundleE1.isEmpty()) {
                return null;
            }
            CellLocation cellLocationNewFromBundle = CellLocation.newFromBundle(bundleE1);
            if (cellLocationNewFromBundle.isEmpty()) {
                return null;
            }
            return cellLocationNewFromBundle;
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getCompleteVoiceMailNumber() {
        try {
            return getSubscriberInfo().C0();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getCurrentPhoneType() {
        try {
            d iTelephony = getITelephony();
            return iTelephony != null ? iTelephony.e2() : getPhoneTypeFromProperty();
        } catch (RemoteException unused) {
            return getPhoneTypeFromProperty();
        } catch (NullPointerException unused2) {
            return getPhoneTypeFromProperty();
        }
    }

    public int getDataActivity() {
        try {
            return getITelephony().t();
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public int getDataNetworkType() {
        try {
            d iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.B();
            }
            return 0;
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public int getDataState() {
        try {
            return getITelephony().s2();
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public String getDeviceId() {
        String strH0;
        try {
            strH0 = getSubscriberInfo().h0();
        } catch (RemoteException | NullPointerException unused) {
            strH0 = null;
        }
        return strH0 == null ? "012345678912345" : strH0;
    }

    public String getDeviceSoftwareVersion() {
        try {
            return getSubscriberInfo().q1();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getGroupIdLevel1() {
        try {
            return getSubscriberInfo().j2();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIsimDomain() {
        try {
            return getSubscriberInfo().a2();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getIsimImpi() {
        try {
            return getSubscriberInfo().g0();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String[] getIsimImpu() {
        try {
            return getSubscriberInfo().P1();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getLine1AlphaTag() {
        try {
            return getSubscriberInfo().G2();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getLine1Number() {
        try {
            return getSubscriberInfo().q2();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getLteOnCdmaMode() {
        try {
            return getITelephony().G1();
        } catch (RemoteException | NullPointerException unused) {
            return -1;
        }
    }

    public String getMmsUAProfUrl() {
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        return context.getResources().getString(17039406);
    }

    public String getMmsUserAgent() {
        Context context = this.mContext;
        if (context == null) {
            return null;
        }
        return context.getResources().getString(17039405);
    }

    public String getMsisdn() {
        try {
            return getSubscriberInfo().N();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public List<NeighboringCellInfo> getNeighboringCellInfo() {
        try {
            return getITelephony().W(this.mContext.getOpPackageName());
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getNetworkCountryIso() {
        return SystemProperties.get("gsm.operator.iso-country");
    }

    public String getNetworkOperator() {
        return SystemProperties.get("gsm.operator.numeric");
    }

    public String getNetworkOperatorName() {
        return SystemProperties.get("gsm.operator.alpha");
    }

    public int getNetworkType() {
        return getDataNetworkType();
    }

    public String getNetworkTypeName() {
        return getNetworkTypeName(getNetworkType());
    }

    public int getPhoneType() {
        if (isVoiceCapable()) {
            return getCurrentPhoneType();
        }
        return 0;
    }

    public String getSimCountryIso() {
        return SystemProperties.get("gsm.sim.operator.iso-country");
    }

    public String getSimOperator() {
        return SystemProperties.get("gsm.sim.operator.numeric");
    }

    public String getSimOperatorName() {
        return SystemProperties.get("gsm.sim.operator.alpha");
    }

    public String getSimSerialNumber() {
        try {
            return getSubscriberInfo().c1();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getSimState() {
        String str = SystemProperties.get("gsm.sim.state");
        if ("ABSENT".equals(str)) {
            return 1;
        }
        if ("PIN_REQUIRED".equals(str)) {
            return 2;
        }
        if ("PUK_REQUIRED".equals(str)) {
            return 3;
        }
        if ("NETWORK_LOCKED".equals(str)) {
            return 4;
        }
        return "READY".equals(str) ? 5 : 0;
    }

    public String getSubscriberId() {
        try {
            return getSubscriberInfo().E1();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getVoiceMailAlphaTag() {
        try {
            return getSubscriberInfo().z0();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public String getVoiceMailNumber() {
        try {
            return getSubscriberInfo().h();
        } catch (RemoteException | NullPointerException unused) {
            return null;
        }
    }

    public int getVoiceMessageCount() {
        try {
            return getITelephony().N0();
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public int getVoiceNetworkType() {
        try {
            d iTelephony = getITelephony();
            if (iTelephony != null) {
                return iTelephony.I1();
            }
            return 0;
        } catch (RemoteException | NullPointerException unused) {
            return 0;
        }
    }

    public boolean handlePinMmi(String str) {
        try {
            return getITelephony().V0(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#handlePinMmi", e2);
            return false;
        }
    }

    public boolean hasIccCard() {
        try {
            return getITelephony().I0();
        } catch (RemoteException | NullPointerException unused) {
            return false;
        }
    }

    public boolean isDataConnectivityPossible() {
        try {
            return getITelephony().u();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isDataConnectivityPossible", e2);
            return false;
        }
    }

    public boolean isIdle() {
        try {
            return getITelephony().t1();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isIdle", e2);
            return true;
        }
    }

    public boolean isNetworkRoaming() {
        return "true".equals(SystemProperties.get("gsm.operator.isroaming"));
    }

    public boolean isOffhook() {
        try {
            return getITelephony().q();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isOffhook", e2);
            return false;
        }
    }

    public boolean isRadioOn() {
        try {
            return getITelephony().U();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isRadioOn", e2);
            return false;
        }
    }

    public boolean isRinging() {
        try {
            return getITelephony().i0();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isRinging", e2);
            return false;
        }
    }

    public boolean isSimPinEnabled() {
        try {
            return getITelephony().K0();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#isSimPinEnabled", e2);
            return false;
        }
    }

    public boolean isSmsCapable() {
        if (this.mContext == null) {
            return true;
        }
        return SystemProperties.getBoolean("ro.sms.capable", false);
    }

    public boolean isVoiceCapable() {
        if (this.mContext == null) {
            return true;
        }
        return SystemProperties.getBoolean("ro.voice.capable", false);
    }

    public void listen(PhoneStateListener phoneStateListener, int i2) {
        Context context = this.mContext;
        try {
            sRegistry.I(context != null ? context.getPackageName() : MediaStore.UNKNOWN_STRING, phoneStateListener.callback, i2, true);
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public void merge() {
        try {
            getITelephony().X();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#merge", e2);
        }
    }

    public void mute(boolean z2) {
        try {
            getITelephony().a(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#mute", e2);
        }
    }

    public boolean needsOtaServiceProvisioning() {
        try {
            return getITelephony().k1();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#needsOtaServiceProvisioning", e2);
            return false;
        }
    }

    public void playDtmfTone(char c2, boolean z2) {
        try {
            getITelephony().b0(c2, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#playDtmfTone", e2);
        }
    }

    public void removeCallStateListener(CallStateListener callStateListener) {
        try {
            Listener listenerRemove = this.mListeners.remove(callStateListener);
            if (listenerRemove != null) {
                listenerRemove.clearQueue();
                getITelephony().J1(listenerRemove);
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#removeListener", e2);
        }
    }

    public void setCellInfoListRate(int i2) {
        try {
            getITelephony().C1(i2);
        } catch (RemoteException | NullPointerException unused) {
        }
    }

    public boolean setRadio(boolean z2) {
        try {
            return getITelephony().setRadio(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setRadio", e2);
            return false;
        }
    }

    public boolean setRadioPower(boolean z2) {
        try {
            return getITelephony().f(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#setRadioPower", e2);
            return false;
        }
    }

    public boolean showCallScreen() {
        try {
            return getITelephony().g1();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#showCallScreen", e2);
            return false;
        }
    }

    public boolean showCallScreenWithDialpad(boolean z2) {
        try {
            return getITelephony().g2(z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#showCallScreenWithDialpad", e2);
            return false;
        }
    }

    public void silenceRinger() {
        try {
            getITelephony().L0();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#silenceRinger", e2);
        }
    }

    public void stopDtmfTone() {
        try {
            getITelephony().K();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#stopDtmfTone", e2);
        }
    }

    public boolean supplyPin(String str) {
        try {
            return getITelephony().x2(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#supplyPin", e2);
            return false;
        }
    }

    public int[] supplyPinReportResult(String str) {
        try {
            return getITelephony().s(str);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#supplyPinReportResult", e2);
            return new int[0];
        }
    }

    public boolean supplyPuk(String str, String str2) {
        try {
            return getITelephony().l(str, str2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#supplyPuk", e2);
            return false;
        }
    }

    public int[] supplyPukReportResult(String str, String str2) {
        try {
            return getITelephony().i(str, str2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#]", e2);
            return new int[0];
        }
    }

    public void swap() {
        try {
            getITelephony().a0();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#swap", e2);
        }
    }

    public void toggleHold() {
        try {
            getITelephony().w1();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#toggleHold", e2);
        }
    }

    public void toggleRadioOnOff() {
        try {
            getITelephony().P();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#toggleRadioOnOff", e2);
        }
    }

    public void updateServiceLocation() {
        try {
            getITelephony().y0();
        } catch (RemoteException e2) {
            Log.e(TAG, "Error calling ITelephony#updateServiceLocation", e2);
        }
    }

    public static int getPhoneType(int i2) {
        if (i2 == 11) {
            return getLteOnCdmaModeStatic() == 1 ? 2 : 1;
        }
        switch (i2) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return 2;
            default:
                return 1;
        }
    }

    private TelephonyManager() {
        this.mListeners = new HashMap<>();
        this.mContext = null;
    }
}
