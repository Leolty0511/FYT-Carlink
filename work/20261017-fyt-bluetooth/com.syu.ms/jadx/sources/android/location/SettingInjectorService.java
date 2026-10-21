package android.location;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public abstract class SettingInjectorService extends Service {
    public static final String ACTION_INJECTED_SETTING_CHANGED = "android.location.InjectedSettingChanged";
    public static final String ACTION_SERVICE_INTENT = "android.location.SettingInjectorService";
    public static final String ATTRIBUTES_NAME = "injected-location-setting";
    public static final String ENABLED_KEY = "enabled";
    public static final String MESSENGER_KEY = "messenger";
    public static final String META_DATA_NAME = "android.location.SettingInjectorService";
    public static final String SUMMARY_KEY = "summary";
    private static final String TAG = "SettingInjectorService";
    private final String mName;

    public SettingInjectorService(String str) {
        this.mName = str;
    }

    private void onHandleIntent(Intent intent) {
        try {
            String strOnGetSummary = onGetSummary();
            try {
                sendStatus(intent, strOnGetSummary, onGetEnabled());
            } catch (RuntimeException e2) {
                sendStatus(intent, strOnGetSummary, true);
                throw e2;
            }
        } catch (RuntimeException e3) {
            sendStatus(intent, null, true);
            throw e3;
        }
    }

    private void sendStatus(Intent intent, String str, boolean z2) {
        Message messageObtain = Message.obtain();
        Bundle bundle = new Bundle();
        bundle.putString("summary", str);
        bundle.putBoolean("enabled", z2);
        messageObtain.setData(bundle);
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, this.mName + ": received " + intent + ", summary=" + str + ", enabled=" + z2 + ", sending message: " + messageObtain);
        }
        try {
            ((Messenger) intent.getParcelableExtra(MESSENGER_KEY)).send(messageObtain);
        } catch (RemoteException e2) {
            Log.e(TAG, this.mName + ": sending dynamic status failed", e2);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return null;
    }

    public abstract boolean onGetEnabled();

    public abstract String onGetSummary();

    @Override // android.app.Service
    public final void onStart(Intent intent, int i2) {
        super.onStart(intent, i2);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i2, int i3) {
        onHandleIntent(intent);
        stopSelf(i3);
        return 2;
    }
}
