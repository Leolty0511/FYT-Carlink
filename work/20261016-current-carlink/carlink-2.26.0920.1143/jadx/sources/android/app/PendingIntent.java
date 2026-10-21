package android.app;

import android.content.Context;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.AndroidException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class PendingIntent implements Parcelable {
    public static final int FLAG_CANCEL_CURRENT = 268435456;
    public static final int FLAG_IMMUTABLE = 67108864;
    public static final int FLAG_NO_CREATE = 536870912;
    public static final int FLAG_ONE_SHOT = 1073741824;
    public static final int FLAG_UPDATE_CURRENT = 134217728;
    private final IIntentSender mTarget;
    private IBinder mWhitelistToken;
    private static final ThreadLocal<OnMarshaledListener> sOnMarshaledListener = new ThreadLocal<>();
    public static final Parcelable.Creator<PendingIntent> CREATOR = new Parcelable.Creator<PendingIntent>() { // from class: android.app.PendingIntent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PendingIntent createFromParcel(Parcel parcel) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                return new PendingIntent(strongBinder, parcel.getClassCookie(PendingIntent.class));
            }
            return null;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PendingIntent[] newArray(int i2) {
            return new PendingIntent[i2];
        }
    };

    public static class CanceledException extends AndroidException {
        public CanceledException() {
        }

        public CanceledException(String str) {
            super(str);
        }

        public CanceledException(Exception exc) {
            super(exc);
        }
    }

    public static class FinishedDispatcher extends IIntentReceiver.Stub implements Runnable {
        private static Handler sDefaultSystemHandler;
        private final Handler mHandler;
        private Intent mIntent;
        private final PendingIntent mPendingIntent;
        private int mResultCode;
        private String mResultData;
        private Bundle mResultExtras;
        private final OnFinished mWho;

        public FinishedDispatcher(PendingIntent pendingIntent, OnFinished onFinished, Handler handler) {
            this.mPendingIntent = pendingIntent;
            this.mWho = onFinished;
            if (handler != null || !ActivityThread.isSystem()) {
                this.mHandler = handler;
                return;
            }
            if (sDefaultSystemHandler == null) {
                sDefaultSystemHandler = new Handler(Looper.getMainLooper());
            }
            this.mHandler = sDefaultSystemHandler;
        }

        @Override // android.content.IIntentReceiver
        public void performReceive(Intent intent, int i2, String str, Bundle bundle, boolean z2, boolean z3, int i3) {
            this.mIntent = intent;
            this.mResultCode = i2;
            this.mResultData = str;
            this.mResultExtras = bundle;
            Handler handler = this.mHandler;
            if (handler == null) {
                run();
            } else {
                handler.post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mWho.onSendFinished(this.mPendingIntent, this.mIntent, this.mResultCode, this.mResultData, this.mResultExtras);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public interface OnFinished {
        void onSendFinished(PendingIntent pendingIntent, Intent intent, int i2, String str, Bundle bundle);
    }

    public interface OnMarshaledListener {
        void onMarshaled(PendingIntent pendingIntent, Parcel parcel, int i2);
    }

    public PendingIntent(IIntentSender iIntentSender) {
        this.mTarget = iIntentSender;
    }

    private static PendingIntent buildServicePendingIntent(Context context, int i2, Intent intent, int i3, int i4) {
        String packageName = context.getPackageName();
        String strResolveTypeIfNeeded = intent != null ? intent.resolveTypeIfNeeded(context.getContentResolver()) : null;
        try {
            intent.prepareToLeaveProcess(context);
            IIntentSender intentSender = ActivityManager.getService().getIntentSender(i4, packageName, null, null, i2, new Intent[]{intent}, strResolveTypeIfNeeded != null ? new String[]{strResolveTypeIfNeeded} : null, i3, null, UserHandle.myUserId());
            if (intentSender != null) {
                return new PendingIntent(intentSender);
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static PendingIntent getActivities(Context context, int i2, Intent[] intentArr, int i3) {
        return getActivities(context, i2, intentArr, i3, null);
    }

    public static PendingIntent getActivitiesAsUser(Context context, int i2, Intent[] intentArr, int i3, Bundle bundle, UserHandle userHandle) {
        String packageName = context.getPackageName();
        String[] strArr = new String[intentArr.length];
        for (int i4 = 0; i4 < intentArr.length; i4++) {
            intentArr[i4].migrateExtraStreamToClipData();
            intentArr[i4].prepareToLeaveProcess(context);
            strArr[i4] = intentArr[i4].resolveTypeIfNeeded(context.getContentResolver());
        }
        try {
            IIntentSender intentSender = ActivityManager.getService().getIntentSender(2, packageName, null, null, i2, intentArr, strArr, i3, bundle, userHandle.getIdentifier());
            if (intentSender != null) {
                return new PendingIntent(intentSender);
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static PendingIntent getActivity(Context context, int i2, Intent intent, int i3) {
        return getActivity(context, i2, intent, i3, null);
    }

    public static PendingIntent getActivityAsUser(Context context, int i2, Intent intent, int i3, Bundle bundle, UserHandle userHandle) {
        String packageName = context.getPackageName();
        String strResolveTypeIfNeeded = intent != null ? intent.resolveTypeIfNeeded(context.getContentResolver()) : null;
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess(context);
            IIntentSender intentSender = ActivityManager.getService().getIntentSender(2, packageName, null, null, i2, new Intent[]{intent}, strResolveTypeIfNeeded != null ? new String[]{strResolveTypeIfNeeded} : null, i3, bundle, userHandle.getIdentifier());
            if (intentSender != null) {
                return new PendingIntent(intentSender);
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static PendingIntent getBroadcast(Context context, int i2, Intent intent, int i3) {
        return getBroadcastAsUser(context, i2, intent, i3, new UserHandle(UserHandle.myUserId()));
    }

    public static PendingIntent getBroadcastAsUser(Context context, int i2, Intent intent, int i3, UserHandle userHandle) {
        String packageName = context.getPackageName();
        String strResolveTypeIfNeeded = intent != null ? intent.resolveTypeIfNeeded(context.getContentResolver()) : null;
        try {
            intent.prepareToLeaveProcess(context);
            IIntentSender intentSender = ActivityManager.getService().getIntentSender(1, packageName, null, null, i2, new Intent[]{intent}, strResolveTypeIfNeeded != null ? new String[]{strResolveTypeIfNeeded} : null, i3, null, userHandle.getIdentifier());
            if (intentSender != null) {
                return new PendingIntent(intentSender);
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static PendingIntent getForegroundService(Context context, int i2, Intent intent, int i3) {
        return buildServicePendingIntent(context, i2, intent, i3, 5);
    }

    public static PendingIntent getService(Context context, int i2, Intent intent, int i3) {
        return buildServicePendingIntent(context, i2, intent, i3, 4);
    }

    public static PendingIntent readPendingIntentOrNullFromParcel(Parcel parcel) {
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder != null) {
            return new PendingIntent(strongBinder, parcel.getClassCookie(PendingIntent.class));
        }
        return null;
    }

    public static void setOnMarshaledListener(OnMarshaledListener onMarshaledListener) {
        sOnMarshaledListener.set(onMarshaledListener);
    }

    public static void writePendingIntentOrNullToParcel(PendingIntent pendingIntent, Parcel parcel) {
        parcel.writeStrongBinder(pendingIntent != null ? pendingIntent.mTarget.asBinder() : null);
    }

    public void cancel() {
        try {
            ActivityManager.getService().cancelIntentSender(this.mTarget);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj instanceof PendingIntent) {
            return this.mTarget.asBinder().equals(((PendingIntent) obj).mTarget.asBinder());
        }
        return false;
    }

    public String getCreatorPackage() {
        try {
            return ActivityManager.getService().getPackageForIntentSender(this.mTarget);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int getCreatorUid() {
        try {
            return ActivityManager.getService().getUidForIntentSender(this.mTarget);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public UserHandle getCreatorUserHandle() {
        try {
            int uidForIntentSender = ActivityManager.getService().getUidForIntentSender(this.mTarget);
            if (uidForIntentSender > 0) {
                return new UserHandle(UserHandle.getUserId(uidForIntentSender));
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Intent getIntent() {
        try {
            return ActivityManager.getService().getIntentForIntentSender(this.mTarget);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public IntentSender getIntentSender() {
        return new IntentSender(this.mTarget, this.mWhitelistToken);
    }

    public String getTag(String str) {
        try {
            return ActivityManager.getService().getTagForIntentSender(this.mTarget, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public IIntentSender getTarget() {
        return this.mTarget;
    }

    @Deprecated
    public String getTargetPackage() {
        try {
            return ActivityManager.getService().getPackageForIntentSender(this.mTarget);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public IBinder getWhitelistToken() {
        return this.mWhitelistToken;
    }

    public int hashCode() {
        return this.mTarget.asBinder().hashCode();
    }

    public boolean isActivity() {
        try {
            return ActivityManager.getService().isIntentSenderAnActivity(this.mTarget);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isTargetedToPackage() {
        try {
            return ActivityManager.getService().isIntentSenderTargetedToPackage(this.mTarget);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void send() throws CanceledException {
        send(null, 0, null, null, null, null, null);
    }

    public String toString() {
        StringBuilder sbQ = android.accessibilityservice.c.q(128, "PendingIntent{");
        sbQ.append(Integer.toHexString(System.identityHashCode(this)));
        sbQ.append(": ");
        IIntentSender iIntentSender = this.mTarget;
        sbQ.append(iIntentSender != null ? iIntentSender.asBinder() : null);
        sbQ.append('}');
        return sbQ.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStrongBinder(this.mTarget.asBinder());
        OnMarshaledListener onMarshaledListener = sOnMarshaledListener.get();
        if (onMarshaledListener != null) {
            onMarshaledListener.onMarshaled(this, parcel, i2);
        }
    }

    public static PendingIntent getActivities(Context context, int i2, Intent[] intentArr, int i3, Bundle bundle) {
        String packageName = context.getPackageName();
        String[] strArr = new String[intentArr.length];
        for (int i4 = 0; i4 < intentArr.length; i4++) {
            intentArr[i4].migrateExtraStreamToClipData();
            intentArr[i4].prepareToLeaveProcess(context);
            strArr[i4] = intentArr[i4].resolveTypeIfNeeded(context.getContentResolver());
        }
        try {
            IIntentSender intentSender = ActivityManager.getService().getIntentSender(2, packageName, null, null, i2, intentArr, strArr, i3, bundle, UserHandle.myUserId());
            if (intentSender != null) {
                return new PendingIntent(intentSender);
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public static PendingIntent getActivity(Context context, int i2, Intent intent, int i3, Bundle bundle) {
        String packageName = context.getPackageName();
        String strResolveTypeIfNeeded = intent != null ? intent.resolveTypeIfNeeded(context.getContentResolver()) : null;
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess(context);
            IIntentSender intentSender = ActivityManager.getService().getIntentSender(2, packageName, null, null, i2, new Intent[]{intent}, strResolveTypeIfNeeded != null ? new String[]{strResolveTypeIfNeeded} : null, i3, bundle, UserHandle.myUserId());
            if (intentSender != null) {
                return new PendingIntent(intentSender);
            }
            return null;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void send(int i2) throws CanceledException {
        send(null, i2, null, null, null, null, null);
    }

    public PendingIntent(IBinder iBinder, Object obj) {
        this.mTarget = IIntentSender.Stub.asInterface(iBinder);
        if (obj != null) {
            this.mWhitelistToken = (IBinder) obj;
        }
    }

    public void send(Context context, int i2, Intent intent) throws CanceledException {
        send(context, i2, intent, null, null, null, null);
    }

    public void send(int i2, OnFinished onFinished, Handler handler) throws CanceledException {
        send(null, i2, null, onFinished, handler, null, null);
    }

    public void send(Context context, int i2, Intent intent, OnFinished onFinished, Handler handler) throws CanceledException {
        send(context, i2, intent, onFinished, handler, null, null);
    }

    public void send(Context context, int i2, Intent intent, OnFinished onFinished, Handler handler, String str) throws CanceledException {
        send(context, i2, intent, onFinished, handler, str, null);
    }

    public void send(Context context, int i2, Intent intent, OnFinished onFinished, Handler handler, String str, Bundle bundle) throws CanceledException {
        String strResolveTypeIfNeeded;
        if (intent != null) {
            try {
                strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(context.getContentResolver());
            } catch (RemoteException e2) {
                throw new CanceledException(e2);
            }
        } else {
            strResolveTypeIfNeeded = null;
        }
        if (ActivityManager.getService().sendIntentSender(this.mTarget, this.mWhitelistToken, i2, intent, strResolveTypeIfNeeded, onFinished != null ? new FinishedDispatcher(this, onFinished, handler) : null, str, bundle) >= 0) {
        } else {
            throw new CanceledException();
        }
    }
}
