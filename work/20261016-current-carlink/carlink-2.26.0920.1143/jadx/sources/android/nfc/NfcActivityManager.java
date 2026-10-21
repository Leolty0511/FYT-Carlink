package android.nfc;

import android.app.Activity;
import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentResolver;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class NfcActivityManager extends IAppCallback.Stub implements Application.ActivityLifecycleCallbacks {
    static final Boolean DBG = Boolean.FALSE;
    static final String TAG = "NFC";
    final NfcAdapter mAdapter;
    final List<NfcActivityState> mActivities = new LinkedList();
    final List<NfcApplicationState> mApps = new ArrayList(1);

    public class NfcActivityState {
        Activity activity;
        boolean resumed;
        Binder token;
        NdefMessage ndefMessage = null;
        NfcAdapter.CreateNdefMessageCallback ndefMessageCallback = null;
        NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback = null;
        NfcAdapter.CreateBeamUrisCallback uriCallback = null;
        Uri[] uris = null;
        int flags = 0;
        int readerModeFlags = 0;
        NfcAdapter.ReaderCallback readerCallback = null;
        Bundle readerModeExtras = null;

        public NfcActivityState(Activity activity) {
            this.resumed = false;
            if (activity.getWindow().isDestroyed()) {
                throw new IllegalStateException("activity is already destroyed");
            }
            this.resumed = activity.isResumed();
            this.activity = activity;
            this.token = new Binder();
            NfcActivityManager.this.registerApplication(activity.getApplication());
        }

        public void destroy() {
            NfcActivityManager.this.unregisterApplication(this.activity.getApplication());
            this.resumed = false;
            this.activity = null;
            this.ndefMessage = null;
            this.ndefMessageCallback = null;
            this.onNdefPushCompleteCallback = null;
            this.uriCallback = null;
            this.uris = null;
            this.readerModeFlags = 0;
            this.token = null;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("[ ");
            sb.append(this.ndefMessage);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(this.ndefMessageCallback);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            sb.append(this.uriCallback);
            sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
            Uri[] uriArr = this.uris;
            if (uriArr != null) {
                for (Uri uri : uriArr) {
                    sb.append(this.onNdefPushCompleteCallback);
                    sb.append(WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER);
                    sb.append(uri);
                    sb.append("]");
                }
            }
            return sb.toString();
        }
    }

    public class NfcApplicationState {
        final Application app;
        int refCount = 0;

        public NfcApplicationState(Application application) {
            this.app = application;
        }

        public void register() {
            int i2 = this.refCount + 1;
            this.refCount = i2;
            if (i2 == 1) {
                this.app.registerActivityLifecycleCallbacks(NfcActivityManager.this);
            }
        }

        public void unregister() {
            int i2 = this.refCount - 1;
            this.refCount = i2;
            if (i2 == 0) {
                this.app.unregisterActivityLifecycleCallbacks(NfcActivityManager.this);
            } else if (i2 < 0) {
                Log.e(NfcActivityManager.TAG, "-ve refcount for " + this.app);
            }
        }
    }

    public NfcActivityManager(NfcAdapter nfcAdapter) {
        this.mAdapter = nfcAdapter;
    }

    @Override // android.nfc.IAppCallback
    public BeamShareData createBeamShareData(byte b2) {
        NfcEvent nfcEvent = new NfcEvent(this.mAdapter, b2);
        synchronized (this) {
            NfcActivityState nfcActivityStateFindResumedActivityState = findResumedActivityState();
            if (nfcActivityStateFindResumedActivityState == null) {
                return null;
            }
            NfcAdapter.CreateNdefMessageCallback createNdefMessageCallback = nfcActivityStateFindResumedActivityState.ndefMessageCallback;
            NfcAdapter.CreateBeamUrisCallback createBeamUrisCallback = nfcActivityStateFindResumedActivityState.uriCallback;
            NdefMessage ndefMessageCreateNdefMessage = nfcActivityStateFindResumedActivityState.ndefMessage;
            Uri[] uriArrCreateBeamUris = nfcActivityStateFindResumedActivityState.uris;
            int i2 = nfcActivityStateFindResumedActivityState.flags;
            Activity activity = nfcActivityStateFindResumedActivityState.activity;
            long jClearCallingIdentity = Binder.clearCallingIdentity();
            if (createNdefMessageCallback != null) {
                try {
                    ndefMessageCreateNdefMessage = createNdefMessageCallback.createNdefMessage(nfcEvent);
                } finally {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                }
            }
            if (createBeamUrisCallback != null && (uriArrCreateBeamUris = createBeamUrisCallback.createBeamUris(nfcEvent)) != null) {
                ArrayList arrayList = new ArrayList();
                for (Uri uri : uriArrCreateBeamUris) {
                    if (uri == null) {
                        Log.e(TAG, "Uri not allowed to be null.");
                    } else {
                        String scheme = uri.getScheme();
                        if (scheme == null || !(scheme.equalsIgnoreCase(ContentResolver.SCHEME_FILE) || scheme.equalsIgnoreCase("content"))) {
                            Log.e(TAG, "Uri needs to have either scheme file or scheme content");
                        } else {
                            arrayList.add(ContentProvider.maybeAddUserId(uri, UserHandle.myUserId()));
                        }
                    }
                }
                uriArrCreateBeamUris = (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
            }
            if (uriArrCreateBeamUris != null && uriArrCreateBeamUris.length > 0) {
                for (Uri uri2 : uriArrCreateBeamUris) {
                    activity.grantUriPermission("com.android.nfc", uri2, 1);
                }
            }
            return new BeamShareData(ndefMessageCreateNdefMessage, uriArrCreateBeamUris, new UserHandle(UserHandle.myUserId()), i2);
        }
    }

    public synchronized void destroyActivityState(Activity activity) {
        NfcActivityState nfcActivityStateFindActivityState = findActivityState(activity);
        if (nfcActivityStateFindActivityState != null) {
            nfcActivityStateFindActivityState.destroy();
            this.mActivities.remove(nfcActivityStateFindActivityState);
        }
    }

    public void disableReaderMode(Activity activity) {
        Binder binder;
        boolean z2;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.readerCallback = null;
            activityState.readerModeFlags = 0;
            activityState.readerModeExtras = null;
            binder = activityState.token;
            z2 = activityState.resumed;
        }
        if (z2) {
            setReaderMode(binder, 0, null);
        }
    }

    public void enableReaderMode(Activity activity, NfcAdapter.ReaderCallback readerCallback, int i2, Bundle bundle) {
        Binder binder;
        boolean z2;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.readerCallback = readerCallback;
            activityState.readerModeFlags = i2;
            activityState.readerModeExtras = bundle;
            binder = activityState.token;
            z2 = activityState.resumed;
        }
        if (z2) {
            setReaderMode(binder, i2, bundle);
        }
    }

    public synchronized NfcActivityState findActivityState(Activity activity) {
        for (NfcActivityState nfcActivityState : this.mActivities) {
            if (nfcActivityState.activity == activity) {
                return nfcActivityState;
            }
        }
        return null;
    }

    public NfcApplicationState findAppState(Application application) {
        for (NfcApplicationState nfcApplicationState : this.mApps) {
            if (nfcApplicationState.app == application) {
                return nfcApplicationState;
            }
        }
        return null;
    }

    public synchronized NfcActivityState findResumedActivityState() {
        for (NfcActivityState nfcActivityState : this.mActivities) {
            if (nfcActivityState.resumed) {
                return nfcActivityState;
            }
        }
        return null;
    }

    public synchronized NfcActivityState getActivityState(Activity activity) {
        NfcActivityState nfcActivityStateFindActivityState;
        nfcActivityStateFindActivityState = findActivityState(activity);
        if (nfcActivityStateFindActivityState == null) {
            nfcActivityStateFindActivityState = new NfcActivityState(activity);
            this.mActivities.add(nfcActivityStateFindActivityState);
        }
        return nfcActivityStateFindActivityState;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        synchronized (this) {
            NfcActivityState nfcActivityStateFindActivityState = findActivityState(activity);
            if (DBG.booleanValue()) {
                Log.d(TAG, "onDestroy() for " + activity + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + nfcActivityStateFindActivityState);
            }
            if (nfcActivityStateFindActivityState != null) {
                destroyActivityState(activity);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        synchronized (this) {
            NfcActivityState nfcActivityStateFindActivityState = findActivityState(activity);
            if (DBG.booleanValue()) {
                Log.d(TAG, "onPause() for " + activity + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + nfcActivityStateFindActivityState);
            }
            if (nfcActivityStateFindActivityState == null) {
                return;
            }
            nfcActivityStateFindActivityState.resumed = false;
            Binder binder = nfcActivityStateFindActivityState.token;
            boolean z2 = nfcActivityStateFindActivityState.readerModeFlags != 0;
            if (z2) {
                setReaderMode(binder, 0, null);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        synchronized (this) {
            NfcActivityState nfcActivityStateFindActivityState = findActivityState(activity);
            if (DBG.booleanValue()) {
                Log.d(TAG, "onResume() for " + activity + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + nfcActivityStateFindActivityState);
            }
            if (nfcActivityStateFindActivityState == null) {
                return;
            }
            nfcActivityStateFindActivityState.resumed = true;
            Binder binder = nfcActivityStateFindActivityState.token;
            int i2 = nfcActivityStateFindActivityState.readerModeFlags;
            Bundle bundle = nfcActivityStateFindActivityState.readerModeExtras;
            if (i2 != 0) {
                setReaderMode(binder, i2, bundle);
            }
            requestNfcServiceCallback();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.nfc.IAppCallback
    public void onNdefPushComplete(byte b2) {
        synchronized (this) {
            NfcActivityState nfcActivityStateFindResumedActivityState = findResumedActivityState();
            if (nfcActivityStateFindResumedActivityState == null) {
                return;
            }
            NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback = nfcActivityStateFindResumedActivityState.onNdefPushCompleteCallback;
            NfcEvent nfcEvent = new NfcEvent(this.mAdapter, b2);
            if (onNdefPushCompleteCallback != null) {
                onNdefPushCompleteCallback.onNdefPushComplete(nfcEvent);
            }
        }
    }

    @Override // android.nfc.IAppCallback
    public void onTagDiscovered(Tag tag) {
        synchronized (this) {
            NfcActivityState nfcActivityStateFindResumedActivityState = findResumedActivityState();
            if (nfcActivityStateFindResumedActivityState == null) {
                return;
            }
            NfcAdapter.ReaderCallback readerCallback = nfcActivityStateFindResumedActivityState.readerCallback;
            if (readerCallback != null) {
                readerCallback.onTagDiscovered(tag);
            }
        }
    }

    public void registerApplication(Application application) {
        NfcApplicationState nfcApplicationStateFindAppState = findAppState(application);
        if (nfcApplicationStateFindAppState == null) {
            nfcApplicationStateFindAppState = new NfcApplicationState(application);
            this.mApps.add(nfcApplicationStateFindAppState);
        }
        nfcApplicationStateFindAppState.register();
    }

    public void requestNfcServiceCallback() {
        try {
            NfcAdapter.sService.setAppCallback(this);
        } catch (RemoteException e2) {
            this.mAdapter.attemptDeadServiceRecovery(e2);
        }
    }

    public void setNdefPushContentUri(Activity activity, Uri[] uriArr) {
        boolean z2;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.uris = uriArr;
            z2 = activityState.resumed;
        }
        if (z2) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setNdefPushContentUriCallback(Activity activity, NfcAdapter.CreateBeamUrisCallback createBeamUrisCallback) {
        boolean z2;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.uriCallback = createBeamUrisCallback;
            z2 = activityState.resumed;
        }
        if (z2) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setNdefPushMessage(Activity activity, NdefMessage ndefMessage, int i2) {
        boolean z2;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.ndefMessage = ndefMessage;
            activityState.flags = i2;
            z2 = activityState.resumed;
        }
        if (z2) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setNdefPushMessageCallback(Activity activity, NfcAdapter.CreateNdefMessageCallback createNdefMessageCallback, int i2) {
        boolean z2;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.ndefMessageCallback = createNdefMessageCallback;
            activityState.flags = i2;
            z2 = activityState.resumed;
        }
        if (z2) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setOnNdefPushCompleteCallback(Activity activity, NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback) {
        boolean z2;
        synchronized (this) {
            NfcActivityState activityState = getActivityState(activity);
            activityState.onNdefPushCompleteCallback = onNdefPushCompleteCallback;
            z2 = activityState.resumed;
        }
        if (z2) {
            requestNfcServiceCallback();
        } else {
            verifyNfcPermission();
        }
    }

    public void setReaderMode(Binder binder, int i2, Bundle bundle) {
        if (DBG.booleanValue()) {
            Log.d(TAG, "Setting reader mode");
        }
        try {
            NfcAdapter.sService.setReaderMode(binder, this, i2, bundle);
        } catch (RemoteException e2) {
            this.mAdapter.attemptDeadServiceRecovery(e2);
        }
    }

    public void unregisterApplication(Application application) {
        NfcApplicationState nfcApplicationStateFindAppState = findAppState(application);
        if (nfcApplicationStateFindAppState != null) {
            nfcApplicationStateFindAppState.unregister();
            return;
        }
        Log.e(TAG, "app was not registered " + application);
    }

    public void verifyNfcPermission() {
        try {
            NfcAdapter.sService.verifyNfcPermission();
        } catch (RemoteException e2) {
            this.mAdapter.attemptDeadServiceRecovery(e2);
        }
    }
}
