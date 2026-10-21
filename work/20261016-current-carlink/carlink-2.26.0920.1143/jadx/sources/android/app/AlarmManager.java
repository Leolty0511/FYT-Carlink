package android.app;

import android.content.Context;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.UserHandle;
import android.os.WorkSource;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import libcore.util.ZoneInfoDB;

/* JADX INFO: loaded from: classes.dex */
public class AlarmManager {
    public static final String ACTION_NEXT_ALARM_CLOCK_CHANGED = "android.app.action.NEXT_ALARM_CLOCK_CHANGED";
    public static final int ELAPSED_REALTIME = 3;
    public static final int ELAPSED_REALTIME_WAKEUP = 2;
    public static final int FLAG_ALLOW_WHILE_IDLE = 4;
    public static final int FLAG_ALLOW_WHILE_IDLE_UNRESTRICTED = 8;
    public static final int FLAG_IDLE_UNTIL = 16;
    public static final int FLAG_STANDALONE = 1;
    public static final int FLAG_WAKE_FROM_IDLE = 2;
    public static final long INTERVAL_DAY = 86400000;
    public static final long INTERVAL_FIFTEEN_MINUTES = 900000;
    public static final long INTERVAL_HALF_DAY = 43200000;
    public static final long INTERVAL_HALF_HOUR = 1800000;
    public static final long INTERVAL_HOUR = 3600000;
    public static final int RTC = 1;
    public static final int RTC_WAKEUP = 0;
    private static final String TAG = "AlarmManager";
    public static final long WINDOW_EXACT = 0;
    public static final long WINDOW_HEURISTIC = -1;
    private static ArrayMap<OnAlarmListener, ListenerWrapper> sWrappers;
    private final boolean mAlwaysExact;
    private final Handler mMainThreadHandler;
    private final String mPackageName;
    private final IAlarmManager mService;
    private final int mTargetSdkVersion;

    @Retention(RetentionPolicy.SOURCE)
    public @interface AlarmType {
    }

    public final class ListenerWrapper extends IAlarmListener.Stub implements Runnable {
        IAlarmCompleteListener mCompletion;
        Handler mHandler;
        final OnAlarmListener mListener;

        public ListenerWrapper(OnAlarmListener onAlarmListener) {
            this.mListener = onAlarmListener;
        }

        public void cancel() {
            try {
                AlarmManager.this.mService.remove(null, this);
                synchronized (AlarmManager.class) {
                    if (AlarmManager.sWrappers != null) {
                        AlarmManager.sWrappers.remove(this.mListener);
                    }
                }
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }

        @Override // android.app.IAlarmListener
        public void doAlarm(IAlarmCompleteListener iAlarmCompleteListener) {
            this.mCompletion = iAlarmCompleteListener;
            synchronized (AlarmManager.class) {
                if (AlarmManager.sWrappers != null) {
                    AlarmManager.sWrappers.remove(this.mListener);
                }
            }
            this.mHandler.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mListener.onAlarm();
            } finally {
                try {
                    this.mCompletion.alarmComplete(this);
                } catch (Exception e2) {
                    Log.e(AlarmManager.TAG, "Unable to report completion to Alarm Manager!", e2);
                }
            }
        }

        public void setHandler(Handler handler) {
            this.mHandler = handler;
        }
    }

    public interface OnAlarmListener {
        void onAlarm();
    }

    public AlarmManager(IAlarmManager iAlarmManager, Context context) {
        this.mService = iAlarmManager;
        this.mPackageName = context.getPackageName();
        int i2 = context.getApplicationInfo().targetSdkVersion;
        this.mTargetSdkVersion = i2;
        this.mAlwaysExact = i2 < 19;
        this.mMainThreadHandler = new Handler(context.getMainLooper());
    }

    private long legacyExactLength() {
        return this.mAlwaysExact ? 0L : -1L;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void setImpl(int i2, long j2, long j3, long j4, int i3, PendingIntent pendingIntent, OnAlarmListener onAlarmListener, String str, Handler handler, WorkSource workSource, AlarmClockInfo alarmClockInfo) {
        ListenerWrapper listenerWrapper;
        ListenerWrapper listenerWrapper2;
        long j5 = j2 < 0 ? 0L : j2;
        if (onAlarmListener != null) {
            synchronized (AlarmManager.class) {
                if (sWrappers == null) {
                    sWrappers = new ArrayMap<>();
                }
                listenerWrapper2 = sWrappers.get(onAlarmListener);
                if (listenerWrapper2 == null) {
                    listenerWrapper2 = new ListenerWrapper(onAlarmListener);
                    sWrappers.put(onAlarmListener, listenerWrapper2);
                }
            }
            listenerWrapper2.setHandler(handler != null ? handler : this.mMainThreadHandler);
            listenerWrapper = listenerWrapper2;
        } else {
            listenerWrapper = null;
        }
        try {
            this.mService.set(this.mPackageName, i2, j5, j3, j4, i3, pendingIntent, listenerWrapper, str, workSource, alarmClockInfo);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void cancel(PendingIntent pendingIntent) {
        if (pendingIntent == null) {
            if (this.mTargetSdkVersion >= 24) {
                throw new NullPointerException("cancel() called with a null PendingIntent");
            }
            Log.e(TAG, "cancel() called with a null PendingIntent");
        } else {
            try {
                this.mService.remove(pendingIntent, null);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public AlarmClockInfo getNextAlarmClock() {
        return getNextAlarmClock(UserHandle.myUserId());
    }

    public long getNextWakeFromIdleTime() {
        try {
            return this.mService.getNextWakeFromIdleTime();
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeExtraAlarm(PendingIntent pendingIntent, IAlarmListener iAlarmListener) {
        try {
            this.mService.removeExtraAlarm(pendingIntent, iAlarmListener);
        } catch (RemoteException unused) {
        }
    }

    public void set(int i2, long j2, PendingIntent pendingIntent) {
        setImpl(i2, j2, legacyExactLength(), 0L, 0, pendingIntent, null, null, null, null, null);
    }

    public void setAlarmClock(AlarmClockInfo alarmClockInfo, PendingIntent pendingIntent) {
        setImpl(0, alarmClockInfo.getTriggerTime(), 0L, 0L, 0, pendingIntent, null, null, null, null, alarmClockInfo);
    }

    public void setAndAllowWhileIdle(int i2, long j2, PendingIntent pendingIntent) {
        setImpl(i2, j2, -1L, 0L, 4, pendingIntent, null, null, null, null, null);
    }

    public void setExact(int i2, long j2, PendingIntent pendingIntent) {
        setImpl(i2, j2, 0L, 0L, 0, pendingIntent, null, null, null, null, null);
    }

    public void setExactAndAllowWhileIdle(int i2, long j2, PendingIntent pendingIntent) {
        setImpl(i2, j2, 0L, 0L, 4, pendingIntent, null, null, null, null, null);
    }

    public void setIdleUntil(int i2, long j2, String str, OnAlarmListener onAlarmListener, Handler handler) {
        setImpl(i2, j2, 0L, 0L, 16, null, onAlarmListener, str, handler, null, null);
    }

    public void setInexactRepeating(int i2, long j2, long j3, PendingIntent pendingIntent) {
        setImpl(i2, j2, -1L, j3, 0, pendingIntent, null, null, null, null, null);
    }

    public void setRepeating(int i2, long j2, long j3, PendingIntent pendingIntent) {
        setImpl(i2, j2, legacyExactLength(), j3, 0, pendingIntent, null, null, null, null, null);
    }

    public void setTime(long j2) {
        try {
            this.mService.setTime(j2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setTimeZone(String str) {
        boolean zHasTimeZone;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (this.mTargetSdkVersion >= 23) {
            try {
                zHasTimeZone = ZoneInfoDB.getInstance().hasTimeZone(str);
            } catch (IOException unused) {
                zHasTimeZone = false;
            }
            if (!zHasTimeZone) {
                throw new IllegalArgumentException(android.accessibilityservice.c.k("Timezone: ", str, " is not an Olson ID"));
            }
        }
        try {
            this.mService.setTimeZone(str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setWindow(int i2, long j2, long j3, PendingIntent pendingIntent) {
        setImpl(i2, j2, j3, 0L, 0, pendingIntent, null, null, null, null, null);
    }

    public AlarmClockInfo getNextAlarmClock(int i2) {
        try {
            return this.mService.getNextAlarmClock(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void set(int i2, long j2, String str, OnAlarmListener onAlarmListener, Handler handler) {
        setImpl(i2, j2, legacyExactLength(), 0L, 0, null, onAlarmListener, str, handler, null, null);
    }

    public void setExact(int i2, long j2, String str, OnAlarmListener onAlarmListener, Handler handler) {
        setImpl(i2, j2, 0L, 0L, 0, null, onAlarmListener, str, handler, null, null);
    }

    public void setWindow(int i2, long j2, long j3, String str, OnAlarmListener onAlarmListener, Handler handler) {
        setImpl(i2, j2, j3, 0L, 0, null, onAlarmListener, str, handler, null, null);
    }

    public static final class AlarmClockInfo implements Parcelable {
        public static final Parcelable.Creator<AlarmClockInfo> CREATOR = new Parcelable.Creator<AlarmClockInfo>() { // from class: android.app.AlarmManager.AlarmClockInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AlarmClockInfo createFromParcel(Parcel parcel) {
                return new AlarmClockInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public AlarmClockInfo[] newArray(int i2) {
                return new AlarmClockInfo[i2];
            }
        };
        private final PendingIntent mShowIntent;
        private final long mTriggerTime;

        public AlarmClockInfo(long j2, PendingIntent pendingIntent) {
            this.mTriggerTime = j2;
            this.mShowIntent = pendingIntent;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public PendingIntent getShowIntent() {
            return this.mShowIntent;
        }

        public long getTriggerTime() {
            return this.mTriggerTime;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i2) {
            parcel.writeLong(this.mTriggerTime);
            parcel.writeParcelable(this.mShowIntent, i2);
        }

        public AlarmClockInfo(Parcel parcel) {
            this.mTriggerTime = parcel.readLong();
            this.mShowIntent = (PendingIntent) parcel.readParcelable(PendingIntent.class.getClassLoader());
        }
    }

    public void set(int i2, long j2, long j3, long j4, PendingIntent pendingIntent, WorkSource workSource) {
        setImpl(i2, j2, j3, j4, 0, pendingIntent, null, null, null, workSource, null);
    }

    public void set(int i2, long j2, long j3, long j4, String str, OnAlarmListener onAlarmListener, Handler handler, WorkSource workSource) {
        setImpl(i2, j2, j3, j4, 0, null, onAlarmListener, str, handler, workSource, null);
    }

    public void set(int i2, long j2, long j3, long j4, OnAlarmListener onAlarmListener, Handler handler, WorkSource workSource) {
        setImpl(i2, j2, j3, j4, 0, null, onAlarmListener, null, handler, workSource, null);
    }

    public void cancel(OnAlarmListener onAlarmListener) {
        ListenerWrapper listenerWrapper;
        if (onAlarmListener != null) {
            synchronized (AlarmManager.class) {
                ArrayMap<OnAlarmListener, ListenerWrapper> arrayMap = sWrappers;
                listenerWrapper = arrayMap != null ? arrayMap.get(onAlarmListener) : null;
            }
            if (listenerWrapper == null) {
                Log.w(TAG, "Unrecognized alarm listener " + onAlarmListener);
                return;
            }
            listenerWrapper.cancel();
            return;
        }
        throw new NullPointerException("cancel() called with a null OnAlarmListener");
    }
}
