package android.telephony;

import android.app.ActivityThread;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.a;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.text.format.Time;
import android.util.Log;
import com.android.ims.internal.ImsManagerEx;
import com.android.internal.telephony.IMmsNetwork;
import com.android.internal.telephony.ISmsEx;
import com.android.internal.telephony.fdnsvr.FdnCommandUtil;
import com.android.internal.telephony.fdnsvr.FdnServiceManger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class SmsManagerEx {
    private static final int DEFAULT_SUBSCRIPTION_ID = -1002;
    public static final int MMS_ERROR_FDN_CHECKED_CONTACRS = 9;
    private static final long SERVICE_CONNECTION_WAIT_TIME_MS = 4000;
    private static final String TAG = "SmsManagerEx";
    private FdnServiceManger mFdnServiceManger;
    private volatile IMmsNetwork mService;
    private int mSubId;
    private static final SmsManagerEx sInstance = new SmsManagerEx(-1002);
    private static final ComponentName MMS_SERVICE_COMPONENT = new ComponentName("com.android.mms.service", "com.android.mms.service.MmsNetworkService");
    private ServiceConnection mConnection = new ServiceConnection() { // from class: android.telephony.SmsManagerEx.1
        @Override // android.content.ServiceConnection
        public final /* synthetic */ void onBindingDied(ComponentName componentName) {
            a.a(this, componentName);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(SmsManagerEx.TAG, "MmsNetwork connected");
            synchronized (this) {
                SmsManagerEx.this.mService = IMmsNetwork.Stub.asInterface(iBinder);
                notifyAll();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(SmsManagerEx.TAG, "MmsNetwork unexpectedly disconnected");
            synchronized (this) {
                SmsManagerEx.this.mService = null;
                notifyAll();
            }
        }
    };
    private TelephonyManagerEx mTelephonyManagerEx = TelephonyManagerEx.from(ActivityThread.currentApplication().getApplicationContext());

    public class FdnFilterImpl implements FdnServiceManger.FdnInterface {
        private FdnFilterImpl() {
        }

        @Override // com.android.internal.telephony.fdnsvr.FdnServiceManger.FdnInterface
        public boolean getFdnEnable() {
            try {
                return SmsManagerEx.this.mTelephonyManagerEx.getIccFdnEnabled(SmsManagerEx.this.mSubId);
            } catch (Exception e2) {
                e2.printStackTrace();
                return false;
            }
        }

        @Override // com.android.internal.telephony.fdnsvr.FdnServiceManger.FdnInterface
        public boolean isNeedFilterMessaging() {
            String str = SystemProperties.get("ro.messag.fdnfilter");
            Log.d("qiujianhui", "isNeedFilterMessaging -tempt=" + str);
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            Integer.valueOf(str).intValue();
            return false;
        }
    }

    private SmsManagerEx(int i2) {
        this.mSubId = i2;
    }

    private int copyMessageToIcc(byte[] bArr, byte[] bArr2, int i2, int i3) {
        if (bArr2 == null) {
            throw new IllegalArgumentException("pdu is NULL");
        }
        int iCopyMessageToIccEfForSubscriber = 0;
        try {
            ISmsEx iSmsExService = getISmsExService();
            if (iSmsExService == null) {
                return 0;
            }
            iCopyMessageToIccEfForSubscriber = iSmsExService.copyMessageToIccEfForSubscriber(i3, ActivityThread.currentPackageName(), i2, bArr2, bArr);
            Log.d(TAG, "copyMessageToIcc subId:[" + i3 + "]success:[" + iCopyMessageToIccEfForSubscriber + "]");
            return iCopyMessageToIccEfForSubscriber;
        } catch (RemoteException unused) {
            return iCopyMessageToIccEfForSubscriber;
        }
    }

    public static SmsManagerEx getDefault() {
        return sInstance;
    }

    private static ISmsEx getISmsExService() {
        return ISmsEx.Stub.asInterface(ServiceManager.getService("ismsEx"));
    }

    public static byte[] getPdu(String str, String str2, int i2, Time time) {
        if (2 == TelephonyManager.getDefault().getPhoneType()) {
            return null;
        }
        return com.android.internal.telephony.gsm.SmsMessage.getReceivedPdu(str, str2, time);
    }

    public static SmsManagerEx getSubActivity(int i2) {
        return new SmsManagerEx(i2);
    }

    private boolean tryConnecting(Context context) {
        Log.d(TAG, "Connecting to MmsNetwork");
        synchronized (this) {
            if (this.mService != null) {
                Log.d(TAG, "Already connected");
                return true;
            }
            Intent intent = new Intent();
            intent.setComponent(MMS_SERVICE_COMPONENT);
            try {
                if (!context.bindService(intent, this.mConnection, 1)) {
                    Log.d(TAG, "Failed to bind to MmsNetwork");
                    return false;
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j2 = jElapsedRealtime + SERVICE_CONNECTION_WAIT_TIME_MS;
                for (long jElapsedRealtime2 = SERVICE_CONNECTION_WAIT_TIME_MS; jElapsedRealtime2 > 0; jElapsedRealtime2 = j2 - SystemClock.elapsedRealtime()) {
                    try {
                        wait(jElapsedRealtime2);
                    } catch (InterruptedException e2) {
                        Log.d(TAG, "Connection wait interrupted", e2);
                    }
                    if (this.mService != null) {
                        return true;
                    }
                }
                return false;
            } catch (SecurityException e3) {
                Log.d(TAG, "Forbidden to bind to MmsNetwork", e3);
            }
            throw th;
        }
    }

    public boolean acquireNetwork(Context context, IBinder iBinder, IBinder iBinder2) {
        Log.d(TAG, "acquireNetwork");
        try {
            if (!tryConnecting(context)) {
                return false;
            }
            Log.d(TAG, "acquireNetwork from mmsnetwork");
            this.mService.acquireNetwork(iBinder, iBinder2, this.mSubId, ActivityThread.currentPackageName());
            return true;
        } catch (RemoteException e2) {
            Log.d(TAG, "releaseNetwork RemoteException " + e2);
            return false;
        } catch (Exception e3) {
            Log.d(TAG, "acquireNetwork exception " + e3);
            return false;
        }
    }

    public boolean checkFdnContact(String str) {
        Context applicationContext = ActivityThread.currentApplication().getApplicationContext();
        byte[] bArr = new byte[64];
        if (this.mFdnServiceManger == null) {
            FdnServiceManger fdnServiceManger = new FdnServiceManger(applicationContext);
            this.mFdnServiceManger = fdnServiceManger;
            fdnServiceManger.setFdnListner(new FdnFilterImpl());
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(str);
        int iProcess = this.mFdnServiceManger.process(applicationContext, FdnCommandUtil.COMPARE_SINGEL_NUMBER, this.mSubId, arrayList, bArr);
        boolean z2 = false;
        if (iProcess > 0) {
            Log.e(TAG, "mService.process is ok and filtering is well");
        } else if (iProcess == 0) {
            Log.e(TAG, "mService.process is no need to filter or fdn disenable.");
        } else {
            Log.e(TAG, "mService.process is end, and filtering is no match");
            z2 = true;
        }
        Log.e(TAG, "Sms checkFdnContacts is successful");
        return z2;
    }

    public boolean[] checkFdnContacts(List<String> list) {
        boolean z2;
        Context applicationContext = ActivityThread.currentApplication().getApplicationContext();
        boolean[] zArr = new boolean[list.size()];
        byte[] bArr = new byte[64];
        if (this.mFdnServiceManger == null) {
            FdnServiceManger fdnServiceManger = new FdnServiceManger(applicationContext);
            this.mFdnServiceManger = fdnServiceManger;
            fdnServiceManger.setFdnListner(new FdnFilterImpl());
        }
        ArrayList arrayList = new ArrayList(1);
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(list.get(i2));
            Log.i(TAG, "mService.process is begin");
            Log.i(TAG, "destination --->[" + list.get(i2) + "]");
            int iProcess = this.mFdnServiceManger.process(applicationContext, FdnCommandUtil.COMPARE_SINGEL_NUMBER, (long) this.mSubId, arrayList, bArr);
            if (iProcess > 0) {
                Log.i(TAG, "mService.process is ok and filtering is well");
                zArr[i2] = false;
            } else {
                if (iProcess == 0) {
                    Log.i(TAG, "mService.process is no need to filter or fdn disenable.");
                    zArr[i2] = false;
                } else {
                    Log.i(TAG, "mService.process is end, and filtering is no match");
                    z2 = true;
                    zArr[i2] = true;
                }
                arrayList.remove(0);
            }
            z2 = true;
            arrayList.remove(0);
        }
        Log.i(TAG, "Mms checkFdnContacts is successful");
        return zArr;
    }

    public int copyMessageToIccEfWithResult(String str, String str2, String str3, int i2, long j2, int i3) {
        Time time = new Time(Time.TIMEZONE_UTC);
        time.set(j2);
        byte[] pdu = getPdu(str2, str3, i2, time);
        if (pdu != null) {
            return copyMessageToIcc(null, pdu, i2, i3);
        }
        Log.d(TAG, "copyMessageToIccEfWithResult ===> data is null ! ");
        return 0;
    }

    public boolean getIsVowifiConnected() {
        try {
            return 2 == ImsManagerEx.getIImsServiceEx().getCurrentImsFeature();
        } catch (Exception e2) {
            Rlog.d(TAG, "getIsVowifiConnected Exception:" + e2);
            return false;
        }
    }

    public int getPrimaryCardPhoneId() {
        try {
            return Settings.Global.getInt(ActivityThread.currentApplication().getApplicationContext().getContentResolver(), Integer.toString(SubscriptionManager.from(ActivityThread.currentApplication().getApplicationContext()).getDefaultDataPhoneId()), -1);
        } catch (Exception e2) {
            Rlog.d(TAG, "getPrimaryCardPhoneId Exception:" + e2);
            return -1;
        }
    }

    public boolean releaseNetwork(IBinder iBinder, IBinder iBinder2) {
        Log.d(TAG, "releaseNetwork");
        try {
            if (this.mService == null) {
                return false;
            }
            this.mService.releaseNetwork(iBinder, iBinder2, this.mSubId, ActivityThread.currentPackageName());
            return true;
        } catch (RemoteException e2) {
            Log.d(TAG, "releaseNetwork RemoteException " + e2);
            return false;
        } catch (Exception e3) {
            Log.d(TAG, "releaseNetwork exception " + e3);
            return false;
        }
    }
}
