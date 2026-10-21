package android.nfc;

import android.app.Activity;
import android.app.Application;
import android.content.ContentResolver;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class NfcActivityManager extends IAppCallback.Stub implements Application.ActivityLifecycleCallbacks {
    public static final Boolean DBG = Boolean.FALSE;
    public static final String TAG = "NFC";
    public final NfcAdapter mAdapter;
    public final NfcEvent mDefaultEvent;
    public final List<NfcActivityState> mActivities = new LinkedList();
    public final List<NfcApplicationState> mApps = new ArrayList(1);

    public class NfcActivityState {
        public Activity activity;
        public boolean resumed;
        public Binder token;
        public NdefMessage ndefMessage = null;
        public NfcAdapter.CreateNdefMessageCallback ndefMessageCallback = null;
        public NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback = null;
        public NfcAdapter.CreateBeamUrisCallback uriCallback = null;
        public Uri[] uris = null;
        public int flags = 0;
        public int readerModeFlags = 0;
        public NfcAdapter.ReaderCallback readerCallback = null;
        public Bundle readerModeExtras = null;

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
            StringBuilder sb = new StringBuilder("[");
            sb.append(" ");
            sb.append(this.ndefMessage);
            sb.append(" ");
            sb.append(this.ndefMessageCallback);
            sb.append(" ");
            sb.append(this.uriCallback);
            sb.append(" ");
            Uri[] uriArr = this.uris;
            if (uriArr != null) {
                for (Uri uri : uriArr) {
                    sb.append(this.onNdefPushCompleteCallback);
                    sb.append(" ");
                    sb.append(uri);
                    sb.append("]");
                }
            }
            return sb.toString();
        }
    }

    public class NfcApplicationState {

        /* JADX INFO: renamed from: app, reason: collision with root package name */
        public final Application f143app;
        public int refCount = 0;

        public NfcApplicationState(Application application) {
            this.f143app = application;
        }

        public void register() {
            int i2 = this.refCount + 1;
            this.refCount = i2;
            if (i2 == 1) {
                this.f143app.registerActivityLifecycleCallbacks(NfcActivityManager.this);
            }
        }

        public void unregister() {
            int i2 = this.refCount - 1;
            this.refCount = i2;
            if (i2 == 0) {
                this.f143app.unregisterActivityLifecycleCallbacks(NfcActivityManager.this);
            } else if (i2 < 0) {
                Log.e("NFC", "-ve refcount for " + this.f143app);
            }
        }
    }

    public NfcActivityManager(NfcAdapter nfcAdapter) {
        this.mAdapter = nfcAdapter;
        this.mDefaultEvent = new NfcEvent(nfcAdapter);
    }

    @Override // android.nfc.IAppCallback
    public BeamShareData createBeamShareData() {
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
            if (createNdefMessageCallback != null) {
                ndefMessageCreateNdefMessage = createNdefMessageCallback.createNdefMessage(this.mDefaultEvent);
            }
            if (createBeamUrisCallback != null && (uriArrCreateBeamUris = createBeamUrisCallback.createBeamUris(this.mDefaultEvent)) != null) {
                for (Uri uri : uriArrCreateBeamUris) {
                    if (uri == null) {
                        Log.e("NFC", "Uri not allowed to be null.");
                        return null;
                    }
                    String scheme = uri.getScheme();
                    if (scheme == null || !(scheme.equalsIgnoreCase(ContentResolver.SCHEME_FILE) || scheme.equalsIgnoreCase("content"))) {
                        Log.e("NFC", "Uri needs to have either scheme file or scheme content");
                        return null;
                    }
                }
            }
            return new BeamShareData(ndefMessageCreateNdefMessage, uriArrCreateBeamUris, i2);
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
            if (nfcApplicationState.f143app == application) {
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
                Log.d("NFC", "onDestroy() for " + activity + " " + nfcActivityStateFindActivityState);
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
                Log.d("NFC", "onPause() for " + activity + " " + nfcActivityStateFindActivityState);
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
                Log.d("NFC", "onResume() for " + activity + " " + nfcActivityStateFindActivityState);
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
    public void onNdefPushComplete() {
        synchronized (this) {
            NfcActivityState nfcActivityStateFindResumedActivityState = findResumedActivityState();
            if (nfcActivityStateFindResumedActivityState == null) {
                return;
            }
            NfcAdapter.OnNdefPushCompleteCallback onNdefPushCompleteCallback = nfcActivityStateFindResumedActivityState.onNdefPushCompleteCallback;
            if (onNdefPushCompleteCallback != null) {
                onNdefPushCompleteCallback.onNdefPushComplete(this.mDefaultEvent);
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
        }
    }

    public void setReaderMode(Binder binder, int i2, Bundle bundle) {
        if (DBG.booleanValue()) {
            Log.d("NFC", "Setting reader mode");
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
        Log.e("NFC", "app was not registered " + application);
    }
}
