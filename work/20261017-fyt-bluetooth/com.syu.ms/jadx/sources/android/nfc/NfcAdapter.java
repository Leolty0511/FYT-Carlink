package android.nfc;

import android.app.Activity;
import android.app.ActivityThread;
import android.app.OnActivityPausedListener;
import android.app.PendingIntent;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.content.pm.IPackageManager;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import java.util.HashMap;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class NfcAdapter {
    public static final String ACTION_ADAPTER_STATE_CHANGED = "android.nfc.action.ADAPTER_STATE_CHANGED";
    public static final String ACTION_HANDOVER_TRANSFER_DONE = "android.nfc.action.HANDOVER_TRANSFER_DONE";
    public static final String ACTION_HANDOVER_TRANSFER_STARTED = "android.nfc.action.HANDOVER_TRANSFER_STARTED";
    public static final String ACTION_NDEF_DISCOVERED = "android.nfc.action.NDEF_DISCOVERED";
    public static final String ACTION_TAG_DISCOVERED = "android.nfc.action.TAG_DISCOVERED";
    public static final String ACTION_TAG_LEFT_FIELD = "android.nfc.action.TAG_LOST";
    public static final String ACTION_TECH_DISCOVERED = "android.nfc.action.TECH_DISCOVERED";
    public static final String EXTRA_ADAPTER_STATE = "android.nfc.extra.ADAPTER_STATE";
    public static final String EXTRA_HANDOVER_TRANSFER_STATUS = "android.nfc.extra.HANDOVER_TRANSFER_STATUS";
    public static final String EXTRA_HANDOVER_TRANSFER_URI = "android.nfc.extra.HANDOVER_TRANSFER_URI";
    public static final String EXTRA_ID = "android.nfc.extra.ID";
    public static final String EXTRA_NDEF_MESSAGES = "android.nfc.extra.NDEF_MESSAGES";
    public static final String EXTRA_READER_PRESENCE_CHECK_DELAY = "presence";
    public static final String EXTRA_TAG = "android.nfc.extra.TAG";
    public static final int FLAG_NDEF_PUSH_NO_CONFIRM = 1;
    public static final int FLAG_READER_NFC_A = 1;
    public static final int FLAG_READER_NFC_B = 2;
    public static final int FLAG_READER_NFC_BARCODE = 16;
    public static final int FLAG_READER_NFC_F = 4;
    public static final int FLAG_READER_NFC_V = 8;
    public static final int FLAG_READER_NO_PLATFORM_SOUNDS = 256;
    public static final int FLAG_READER_SKIP_NDEF_CHECK = 128;
    public static final int HANDOVER_TRANSFER_STATUS_FAILURE = 1;
    public static final int HANDOVER_TRANSFER_STATUS_SUCCESS = 0;
    public static final int STATE_OFF = 1;
    public static final int STATE_ON = 3;
    public static final int STATE_TURNING_OFF = 4;
    public static final int STATE_TURNING_ON = 2;
    public static final String TAG = "NFC";
    public static INfcCardEmulation sCardEmulationService = null;
    public static boolean sIsInitialized = false;
    public static HashMap<Context, NfcAdapter> sNfcAdapters = new HashMap<>();
    public static NfcAdapter sNullContextNfcAdapter;
    public static INfcAdapter sService;
    public static INfcTag sTagService;
    public final Context mContext;
    public OnActivityPausedListener mForegroundDispatchListener = new OnActivityPausedListener() { // from class: android.nfc.NfcAdapter.1
        @Override // android.app.OnActivityPausedListener
        public void onPaused(Activity activity) {
            NfcAdapter.this.disableForegroundDispatchInternal(activity, true);
        }
    };
    public final NfcActivityManager mNfcActivityManager = new NfcActivityManager(this);

    public interface CreateBeamUrisCallback {
        Uri[] createBeamUris(NfcEvent nfcEvent);
    }

    public interface CreateNdefMessageCallback {
        NdefMessage createNdefMessage(NfcEvent nfcEvent);
    }

    public interface OnNdefPushCompleteCallback {
        void onNdefPushComplete(NfcEvent nfcEvent);
    }

    public interface ReaderCallback {
        void onTagDiscovered(Tag tag);
    }

    public NfcAdapter(Context context) {
        this.mContext = context;
    }

    public static NfcAdapter getDefaultAdapter(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context cannot be null");
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            throw new IllegalArgumentException("context not associated with any application (using a mock context?)");
        }
        NfcManager nfcManager = (NfcManager) applicationContext.getSystemService("nfc");
        if (nfcManager == null) {
            return null;
        }
        return nfcManager.getDefaultAdapter();
    }

    public static synchronized NfcAdapter getNfcAdapter(Context context) {
        if (!sIsInitialized) {
            if (!hasNfcFeature()) {
                Log.v("NFC", "this device does not have NFC support");
                throw new UnsupportedOperationException();
            }
            INfcAdapter serviceInterface = getServiceInterface();
            sService = serviceInterface;
            if (serviceInterface == null) {
                Log.e("NFC", "could not retrieve NFC service");
                throw new UnsupportedOperationException();
            }
            try {
                sTagService = serviceInterface.getNfcTagInterface();
                try {
                    sCardEmulationService = sService.getNfcCardEmulationInterface();
                    sIsInitialized = true;
                } catch (RemoteException unused) {
                    Log.e("NFC", "could not retrieve card emulation service");
                    throw new UnsupportedOperationException();
                }
            } catch (RemoteException unused2) {
                Log.e("NFC", "could not retrieve NFC Tag service");
                throw new UnsupportedOperationException();
            }
        }
        if (context == null) {
            if (sNullContextNfcAdapter == null) {
                sNullContextNfcAdapter = new NfcAdapter(null);
            }
            return sNullContextNfcAdapter;
        }
        NfcAdapter nfcAdapter = sNfcAdapters.get(context);
        if (nfcAdapter == null) {
            nfcAdapter = new NfcAdapter(context);
            sNfcAdapters.put(context, nfcAdapter);
        }
        return nfcAdapter;
    }

    private static INfcAdapter getServiceInterface() {
        IBinder service = ServiceManager.getService("nfc");
        if (service == null) {
            return null;
        }
        return INfcAdapter.Stub.asInterface(service);
    }

    private static boolean hasNfcFeature() {
        IPackageManager packageManager = ActivityThread.getPackageManager();
        if (packageManager == null) {
            Log.e("NFC", "Cannot get package manager, assuming no NFC feature");
            return false;
        }
        try {
            return packageManager.hasSystemFeature(PackageManager.FEATURE_NFC);
        } catch (RemoteException e2) {
            Log.e("NFC", "Package manager query failed, assuming no NFC feature", e2);
            return false;
        }
    }

    public void attemptDeadServiceRecovery(Exception exc) {
        Log.e("NFC", "NFC service dead - attempting to recover", exc);
        INfcAdapter serviceInterface = getServiceInterface();
        if (serviceInterface == null) {
            Log.e("NFC", "could not retrieve NFC service during service recovery");
            return;
        }
        sService = serviceInterface;
        try {
            sTagService = serviceInterface.getNfcTagInterface();
            try {
                sCardEmulationService = serviceInterface.getNfcCardEmulationInterface();
            } catch (RemoteException unused) {
                Log.e("NFC", "could not retrieve NFC card emulation service during service recovery");
            }
        } catch (RemoteException unused2) {
            Log.e("NFC", "could not retrieve NFC tag service during service recovery");
        }
    }

    public boolean disable() {
        try {
            return sService.disable(true);
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
            return false;
        }
    }

    public void disableForegroundDispatch(Activity activity) {
        ActivityThread.currentActivityThread().unregisterOnActivityPausedListener(activity, this.mForegroundDispatchListener);
        disableForegroundDispatchInternal(activity, false);
    }

    public void disableForegroundDispatchInternal(Activity activity, boolean z2) {
        try {
            sService.setForegroundDispatch(null, null, null);
            if (!z2 && !activity.isResumed()) {
                throw new IllegalStateException("You must disable foreground dispatching while your activity is still resumed");
            }
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
        }
    }

    @Deprecated
    public void disableForegroundNdefPush(Activity activity) {
        Objects.requireNonNull(activity);
        enforceResumed(activity);
        this.mNfcActivityManager.setNdefPushMessage(activity, null, 0);
        this.mNfcActivityManager.setNdefPushMessageCallback(activity, null, 0);
        this.mNfcActivityManager.setOnNdefPushCompleteCallback(activity, null);
    }

    public boolean disableNdefPush() {
        try {
            return sService.disableNdefPush();
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
            return false;
        }
    }

    public void disableReaderMode(Activity activity) {
        this.mNfcActivityManager.disableReaderMode(activity);
    }

    public void dispatch(Tag tag) {
        Objects.requireNonNull(tag, "tag cannot be null");
        try {
            sService.dispatch(tag);
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
        }
    }

    public boolean enable() {
        try {
            return sService.enable();
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
            return false;
        }
    }

    public void enableForegroundDispatch(Activity activity, PendingIntent pendingIntent, IntentFilter[] intentFilterArr, String[][] strArr) {
        TechListParcel techListParcel = null;
        if (activity == null || pendingIntent == null) {
            throw null;
        }
        if (!activity.isResumed()) {
            throw new IllegalStateException("Foreground dispatch can only be enabled when your activity is resumed");
        }
        if (strArr != null) {
            try {
                if (strArr.length > 0) {
                    techListParcel = new TechListParcel(strArr);
                }
            } catch (RemoteException e2) {
                attemptDeadServiceRecovery(e2);
                return;
            }
        }
        ActivityThread.currentActivityThread().registerOnActivityPausedListener(activity, this.mForegroundDispatchListener);
        sService.setForegroundDispatch(pendingIntent, intentFilterArr, techListParcel);
    }

    @Deprecated
    public void enableForegroundNdefPush(Activity activity, NdefMessage ndefMessage) {
        if (activity == null || ndefMessage == null) {
            throw null;
        }
        enforceResumed(activity);
        this.mNfcActivityManager.setNdefPushMessage(activity, ndefMessage, 0);
    }

    public boolean enableNdefPush() {
        try {
            return sService.enableNdefPush();
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
            return false;
        }
    }

    public void enableReaderMode(Activity activity, ReaderCallback readerCallback, int i2, Bundle bundle) {
        this.mNfcActivityManager.enableReaderMode(activity, readerCallback, i2, bundle);
    }

    public void enforceResumed(Activity activity) {
        if (!activity.isResumed()) {
            throw new IllegalStateException("API cannot be called while activity is paused");
        }
    }

    public int getAdapterState() {
        try {
            return sService.getState();
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
            return 1;
        }
    }

    public INfcCardEmulation getCardEmulationService() {
        isEnabled();
        return sCardEmulationService;
    }

    public Context getContext() {
        return this.mContext;
    }

    public INfcAdapterExtras getNfcAdapterExtrasInterface() {
        Context context = this.mContext;
        if (context == null) {
            throw new UnsupportedOperationException("You need a context on NfcAdapter to use the  NFC extras APIs");
        }
        try {
            return sService.getNfcAdapterExtrasInterface(context.getPackageName());
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
            return null;
        }
    }

    public int getSdkVersion() {
        Context context = this.mContext;
        if (context == null) {
            return 9;
        }
        return context.getApplicationInfo().targetSdkVersion;
    }

    public INfcAdapter getService() {
        isEnabled();
        return sService;
    }

    public INfcTag getTagService() {
        isEnabled();
        return sTagService;
    }

    public boolean isEnabled() {
        try {
            return sService.getState() == 3;
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
            return false;
        }
    }

    public boolean isNdefPushEnabled() {
        try {
            return sService.isNdefPushEnabled();
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
            return false;
        }
    }

    public void setBeamPushUris(Uri[] uriArr, Activity activity) {
        Objects.requireNonNull(activity, "activity cannot be null");
        if (uriArr != null) {
            for (Uri uri : uriArr) {
                Objects.requireNonNull(uri, "Uri not allowed to be null");
                String scheme = uri.getScheme();
                if (scheme == null || !(scheme.equalsIgnoreCase(ContentResolver.SCHEME_FILE) || scheme.equalsIgnoreCase("content"))) {
                    throw new IllegalArgumentException("URI needs to have either scheme file or scheme content");
                }
            }
        }
        this.mNfcActivityManager.setNdefPushContentUri(activity, uriArr);
    }

    public void setBeamPushUrisCallback(CreateBeamUrisCallback createBeamUrisCallback, Activity activity) {
        Objects.requireNonNull(activity, "activity cannot be null");
        this.mNfcActivityManager.setNdefPushContentUriCallback(activity, createBeamUrisCallback);
    }

    public void setNdefPushMessage(NdefMessage ndefMessage, Activity activity, Activity... activityArr) {
        int sdkVersion = getSdkVersion();
        try {
            if (activity == null) {
                throw new NullPointerException("activity cannot be null");
            }
            this.mNfcActivityManager.setNdefPushMessage(activity, ndefMessage, 0);
            for (Activity activity2 : activityArr) {
                if (activity2 == null) {
                    throw new NullPointerException("activities cannot contain null");
                }
                this.mNfcActivityManager.setNdefPushMessage(activity2, ndefMessage, 0);
            }
        } catch (IllegalStateException e2) {
            if (sdkVersion >= 16) {
                throw e2;
            }
            Log.e("NFC", "Cannot call API with Activity that has already been destroyed", e2);
        }
    }

    public void setNdefPushMessageCallback(CreateNdefMessageCallback createNdefMessageCallback, Activity activity, Activity... activityArr) {
        int sdkVersion = getSdkVersion();
        try {
            if (activity == null) {
                throw new NullPointerException("activity cannot be null");
            }
            this.mNfcActivityManager.setNdefPushMessageCallback(activity, createNdefMessageCallback, 0);
            for (Activity activity2 : activityArr) {
                if (activity2 == null) {
                    throw new NullPointerException("activities cannot contain null");
                }
                this.mNfcActivityManager.setNdefPushMessageCallback(activity2, createNdefMessageCallback, 0);
            }
        } catch (IllegalStateException e2) {
            if (sdkVersion >= 16) {
                throw e2;
            }
            Log.e("NFC", "Cannot call API with Activity that has already been destroyed", e2);
        }
    }

    public void setOnNdefPushCompleteCallback(OnNdefPushCompleteCallback onNdefPushCompleteCallback, Activity activity, Activity... activityArr) {
        int sdkVersion = getSdkVersion();
        try {
            if (activity == null) {
                throw new NullPointerException("activity cannot be null");
            }
            this.mNfcActivityManager.setOnNdefPushCompleteCallback(activity, onNdefPushCompleteCallback);
            for (Activity activity2 : activityArr) {
                if (activity2 == null) {
                    throw new NullPointerException("activities cannot contain null");
                }
                this.mNfcActivityManager.setOnNdefPushCompleteCallback(activity2, onNdefPushCompleteCallback);
            }
        } catch (IllegalStateException e2) {
            if (sdkVersion >= 16) {
                throw e2;
            }
            Log.e("NFC", "Cannot call API with Activity that has already been destroyed", e2);
        }
    }

    public void setP2pModes(int i2, int i3) {
        try {
            sService.setP2pModes(i2, i3);
        } catch (RemoteException e2) {
            attemptDeadServiceRecovery(e2);
        }
    }

    @Deprecated
    public static NfcAdapter getDefaultAdapter() {
        Log.w("NFC", "WARNING: NfcAdapter.getDefaultAdapter() is deprecated, use NfcAdapter.getDefaultAdapter(Context) instead", new Exception());
        return getNfcAdapter(null);
    }

    public void setNdefPushMessage(NdefMessage ndefMessage, Activity activity, int i2) {
        Objects.requireNonNull(activity, "activity cannot be null");
        this.mNfcActivityManager.setNdefPushMessage(activity, ndefMessage, i2);
    }

    public void setNdefPushMessageCallback(CreateNdefMessageCallback createNdefMessageCallback, Activity activity, int i2) {
        Objects.requireNonNull(activity, "activity cannot be null");
        this.mNfcActivityManager.setNdefPushMessageCallback(activity, createNdefMessageCallback, i2);
    }
}
