package com.android.internal.telephony.fdnsvr;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.a;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.util.Log;
import com.android.internal.telephony.IFdnService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class FdnServiceUtil {
    public static final String TAG = "FdnService";
    public static boolean isConnected = false;
    private static boolean isWaiting = false;
    private static Context mContext;
    private static FdnServiceManger mFdnServiceManger;
    private static IFdnService mService;
    private static final Object mObject = new Object();
    private static final ComponentName FDN_SERVICE_COMPONENT = new ComponentName(FdnServiceManger.FDNSERVICE_PACKAGENAME, "com.spread.cachefdn.SprdFdnService");
    private static ServiceConnection mConnection = new ServiceConnection() { // from class: com.android.internal.telephony.fdnsvr.FdnServiceUtil.1
        @Override // android.content.ServiceConnection
        public final /* synthetic */ void onBindingDied(ComponentName componentName) {
            a.a(this, componentName);
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.i(FdnServiceUtil.TAG, "FdnService mConnection connected");
            synchronized (FdnServiceUtil.mObject) {
                IFdnService unused = FdnServiceUtil.mService = IFdnService.Stub.asInterface(iBinder);
                FdnServiceUtil.isConnected = true;
                FdnServiceUtil.mObject.notify();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.i(FdnServiceUtil.TAG, "FdnService mConnection unexpectedly disconnected");
            synchronized (FdnServiceUtil.mObject) {
                IFdnService unused = FdnServiceUtil.mService = null;
                FdnServiceUtil.isConnected = false;
                FdnServiceUtil.mObject.notify();
            }
        }
    };

    private static List<SubscriptionInfo> getActiveSubInfoList() {
        ArrayList arrayList = new ArrayList();
        List<SubscriptionInfo> activeSubscriptionInfoList = SubscriptionManager.from(mContext).getActiveSubscriptionInfoList();
        return activeSubscriptionInfoList == null ? arrayList : activeSubscriptionInfoList;
    }

    public static synchronized IFdnService getIFdnService(Context context) {
        mContext = context;
        if (mService == null) {
            tryConnectingFdnService(context);
        }
        return mService;
    }

    private static ArrayList<Integer> getSubIds(List<SubscriptionInfo> list) {
        if (list == null) {
            Log.i(TAG, "mSubscriptionInfolist == null");
            return null;
        }
        Iterator<SubscriptionInfo> it = list.iterator();
        if (it == null) {
            Log.i(TAG, "mSubscriptionInfolist's iterator== null");
            return null;
        }
        ArrayList<Integer> arrayList = new ArrayList<>(list.size());
        while (it.hasNext()) {
            SubscriptionInfo next = it.next();
            next.getSimSlotIndex();
            arrayList.add(Integer.valueOf(next.getSubscriptionId()));
        }
        return arrayList;
    }

    private static boolean isPkgInstalled(Context context, String str) {
        if (str == null || "".equals(str)) {
            return false;
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, 0) != null;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static void tryConnectingFdnService(Context context) {
        if (!isPkgInstalled(context, FdnServiceManger.FDNSERVICE_PACKAGENAME)) {
            Log.i(TAG, "can't find FdnService.apk");
            return;
        }
        synchronized (mObject) {
            Log.i(TAG, " SmsManager is going to Connect IFdnService");
            if (mService != null) {
                Log.i(TAG, "SmsManager Already connected");
                return;
            }
            Intent intent = new Intent();
            intent.putIntegerArrayListExtra("AcitivitySubIds", getSubIds(getActiveSubInfoList()));
            intent.setComponent(FDN_SERVICE_COMPONENT);
            try {
                if (context.bindService(intent, mConnection, 1)) {
                    mObject.wait(3000L);
                    return;
                }
                Log.i(TAG, "SmsManager Failed to bind to FdnService");
                try {
                    mObject.wait(3000L);
                } catch (Exception unused) {
                    System.out.println("error happended when wait for FdnService");
                    mObject.notify();
                }
                return;
            } catch (SecurityException e2) {
                Log.i(TAG, "Forbidden to bind to FdnService", e2);
            }
            throw th;
        }
    }
}
