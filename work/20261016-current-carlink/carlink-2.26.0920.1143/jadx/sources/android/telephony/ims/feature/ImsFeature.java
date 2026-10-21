package android.telephony.ims.feature;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.telephony.ims.feature.ImsFeature;
import android.util.Log;
import com.android.ims.internal.IImsFeatureStatusCallback;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ImsFeature {
    public static final String ACTION_IMS_SERVICE_DOWN = "com.android.ims.IMS_SERVICE_DOWN";
    public static final String ACTION_IMS_SERVICE_UP = "com.android.ims.IMS_SERVICE_UP";
    public static final int EMERGENCY_MMTEL = 0;
    public static final String EXTRA_PHONE_ID = "android:phone_id";
    public static final int INVALID = -1;
    private static final String LOG_TAG = "ImsFeature";
    public static final int MAX = 3;
    public static final int MMTEL = 1;
    public static final int RCS = 2;
    public static final int STATE_INITIALIZING = 1;
    public static final int STATE_NOT_AVAILABLE = 0;
    public static final int STATE_READY = 2;
    private Context mContext;
    private List<INotifyFeatureRemoved> mRemovedListeners = new ArrayList();
    private final Set<IImsFeatureStatusCallback> mStatusCallbacks = Collections.newSetFromMap(new WeakHashMap());
    private int mState = 0;
    private int mSlotId = -1;

    public interface INotifyFeatureRemoved {
        void onFeatureRemoved(int i2);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ImsState {
    }

    private void notifyFeatureState(int i2) {
        synchronized (this.mStatusCallbacks) {
            Iterator<IImsFeatureStatusCallback> it = this.mStatusCallbacks.iterator();
            while (it.hasNext()) {
                IImsFeatureStatusCallback next = it.next();
                try {
                    Log.i(LOG_TAG, "notifying ImsFeatureState=" + i2);
                    next.notifyImsFeatureStatus(i2);
                } catch (RemoteException e2) {
                    it.remove();
                    Log.w(LOG_TAG, "Couldn't notify feature state: " + e2.getMessage());
                }
            }
        }
        sendImsServiceIntent(i2);
    }

    private void sendImsServiceIntent(int i2) {
        if (this.mContext == null || this.mSlotId == -1) {
            return;
        }
        Intent intent = (i2 == 0 || i2 == 1 || i2 != 2) ? new Intent(ACTION_IMS_SERVICE_DOWN) : new Intent(ACTION_IMS_SERVICE_UP);
        intent.putExtra("android:phone_id", this.mSlotId);
        this.mContext.sendBroadcast(intent);
    }

    public void addFeatureRemovedListener(INotifyFeatureRemoved iNotifyFeatureRemoved) {
        synchronized (this.mRemovedListeners) {
            this.mRemovedListeners.add(iNotifyFeatureRemoved);
        }
    }

    public void addImsFeatureStatusCallback(IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        if (iImsFeatureStatusCallback == null) {
            return;
        }
        try {
            iImsFeatureStatusCallback.notifyImsFeatureStatus(this.mState);
            synchronized (this.mStatusCallbacks) {
                try {
                    this.mStatusCallbacks.add(iImsFeatureStatusCallback);
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (RemoteException e2) {
            Log.w(LOG_TAG, "Couldn't notify feature state: " + e2.getMessage());
        }
    }

    public int getFeatureState() {
        return this.mState;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [b.a] */
    public void notifyFeatureRemoved(final int i2) {
        synchronized (this.mRemovedListeners) {
            this.mRemovedListeners.forEach(new Consumer() { // from class: b.a
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((ImsFeature.INotifyFeatureRemoved) obj).onFeatureRemoved(i2);
                }
            });
            onFeatureRemoved();
        }
    }

    public abstract void onFeatureRemoved();

    public void removeFeatureRemovedListener(INotifyFeatureRemoved iNotifyFeatureRemoved) {
        synchronized (this.mRemovedListeners) {
            this.mRemovedListeners.remove(iNotifyFeatureRemoved);
        }
    }

    public void removeImsFeatureStatusCallback(IImsFeatureStatusCallback iImsFeatureStatusCallback) {
        if (iImsFeatureStatusCallback == null) {
            return;
        }
        synchronized (this.mStatusCallbacks) {
            this.mStatusCallbacks.remove(iImsFeatureStatusCallback);
        }
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public final void setFeatureState(int i2) {
        if (this.mState != i2) {
            this.mState = i2;
            notifyFeatureState(i2);
        }
    }

    public void setSlotId(int i2) {
        this.mSlotId = i2;
    }
}
