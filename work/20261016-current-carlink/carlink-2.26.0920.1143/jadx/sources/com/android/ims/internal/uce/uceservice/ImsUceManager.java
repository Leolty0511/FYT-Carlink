package com.android.ims.internal.uce.uceservice;

import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class ImsUceManager {
    public static final String ACTION_UCE_SERVICE_DOWN = "com.android.ims.internal.uce.UCE_SERVICE_DOWN";
    public static final String ACTION_UCE_SERVICE_UP = "com.android.ims.internal.uce.UCE_SERVICE_UP";
    public static final String EXTRA_PHONE_ID = "android:phone_id";
    private static final String LOG_TAG = "ImsUceManager";
    private static final String UCE_SERVICE = "uce";
    public static final int UCE_SERVICE_STATUS_CLOSED = 2;
    public static final int UCE_SERVICE_STATUS_FAILURE = 0;
    public static final int UCE_SERVICE_STATUS_ON = 1;
    public static final int UCE_SERVICE_STATUS_READY = 3;
    private static HashMap<Integer, ImsUceManager> sUceManagerInstances = new HashMap<>();
    private Context mContext;
    private int mPhoneId;
    private IUceService mUceService = null;
    private UceServiceDeathRecipient mDeathReceipient = new UceServiceDeathRecipient();

    public class UceServiceDeathRecipient implements IBinder.DeathRecipient {
        private UceServiceDeathRecipient() {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            ImsUceManager.this.mUceService = null;
            if (ImsUceManager.this.mContext != null) {
                Intent intent = new Intent(ImsUceManager.ACTION_UCE_SERVICE_DOWN);
                intent.putExtra("android:phone_id", ImsUceManager.this.mPhoneId);
                ImsUceManager.this.mContext.sendBroadcast(new Intent(intent));
            }
        }
    }

    private ImsUceManager(Context context, int i2) {
        this.mContext = context;
        this.mPhoneId = i2;
        createUceService(true);
    }

    public static ImsUceManager getInstance(Context context, int i2) {
        synchronized (sUceManagerInstances) {
            if (sUceManagerInstances.containsKey(Integer.valueOf(i2))) {
                return sUceManagerInstances.get(Integer.valueOf(i2));
            }
            ImsUceManager imsUceManager = new ImsUceManager(context, i2);
            sUceManagerInstances.put(Integer.valueOf(i2), imsUceManager);
            return imsUceManager;
        }
    }

    private String getUceServiceName(int i2) {
        return UCE_SERVICE;
    }

    public void createUceService(boolean z2) {
        if (z2 && ServiceManager.checkService(getUceServiceName(this.mPhoneId)) == null) {
            return;
        }
        IBinder service = ServiceManager.getService(getUceServiceName(this.mPhoneId));
        if (service != null) {
            try {
                service.linkToDeath(this.mDeathReceipient, 0);
            } catch (RemoteException unused) {
            }
        }
        this.mUceService = IUceService.Stub.asInterface(service);
    }

    public IUceService getUceServiceInstance() {
        return this.mUceService;
    }
}
