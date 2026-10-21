package android.hardware.location;

import android.content.Context;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class ActivityRecognitionHardware extends IActivityRecognitionHardware.Stub {
    private static final String ENFORCE_HW_PERMISSION_MESSAGE = "Permission 'android.permission.LOCATION_HARDWARE' not granted to access ActivityRecognitionHardware";
    private static final int EVENT_TYPE_COUNT = 3;
    private static final int EVENT_TYPE_DISABLED = 0;
    private static final int EVENT_TYPE_ENABLED = 1;
    private static final String HARDWARE_PERMISSION = "android.permission.LOCATION_HARDWARE";
    private static final int INVALID_ACTIVITY_TYPE = -1;
    private static final int NATIVE_SUCCESS_RESULT = 0;
    private static ActivityRecognitionHardware sSingletonInstance;
    private final Context mContext;
    private final SinkList mSinks = new SinkList();
    private final String[] mSupportedActivities;
    private final int mSupportedActivitiesCount;
    private final int[][] mSupportedActivitiesEnabledEvents;
    private static final String TAG = "ActivityRecognitionHW";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final Object sSingletonInstanceLock = new Object();

    public static class Event {
        public int activity;
        public long timestamp;
        public int type;

        private Event() {
        }
    }

    public class SinkList extends RemoteCallbackList<IActivityRecognitionHardwareSink> {
        private SinkList() {
        }

        private void disableActivityEventIfEnabled(int i2, int i3) {
            if (ActivityRecognitionHardware.this.mSupportedActivitiesEnabledEvents[i2][i3] != 1) {
                return;
            }
            int iNativeDisableActivityEvent = ActivityRecognitionHardware.this.nativeDisableActivityEvent(i2, i3);
            ActivityRecognitionHardware.this.mSupportedActivitiesEnabledEvents[i2][i3] = 0;
            Log.e(ActivityRecognitionHardware.TAG, String.format("DisableActivityEvent: activityType=%d, eventType=%d, result=%d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(iNativeDisableActivityEvent)));
        }

        @Override // android.os.RemoteCallbackList
        public void onCallbackDied(IActivityRecognitionHardwareSink iActivityRecognitionHardwareSink) {
            int registeredCallbackCount = ActivityRecognitionHardware.this.mSinks.getRegisteredCallbackCount();
            if (ActivityRecognitionHardware.DEBUG) {
                Log.d(ActivityRecognitionHardware.TAG, "RegisteredCallbackCount: " + registeredCallbackCount);
            }
            if (registeredCallbackCount != 0) {
                return;
            }
            for (int i2 = 0; i2 < ActivityRecognitionHardware.this.mSupportedActivitiesCount; i2++) {
                for (int i3 = 0; i3 < 3; i3++) {
                    disableActivityEventIfEnabled(i2, i3);
                }
            }
        }
    }

    static {
        nativeClassInit();
    }

    private ActivityRecognitionHardware(Context context) {
        nativeInitialize();
        this.mContext = context;
        String[] strArrFetchSupportedActivities = fetchSupportedActivities();
        this.mSupportedActivities = strArrFetchSupportedActivities;
        int length = strArrFetchSupportedActivities.length;
        this.mSupportedActivitiesCount = length;
        this.mSupportedActivitiesEnabledEvents = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, length, 3);
    }

    private void checkPermissions() {
        this.mContext.enforceCallingPermission("android.permission.LOCATION_HARDWARE", ENFORCE_HW_PERMISSION_MESSAGE);
    }

    private String[] fetchSupportedActivities() {
        String[] strArrNativeGetSupportedActivities = nativeGetSupportedActivities();
        return strArrNativeGetSupportedActivities != null ? strArrNativeGetSupportedActivities : new String[0];
    }

    private String getActivityName(int i2) {
        if (i2 >= 0) {
            String[] strArr = this.mSupportedActivities;
            if (i2 < strArr.length) {
                return strArr[i2];
            }
        }
        Log.e(TAG, String.format("Invalid ActivityType: %d, SupportedActivities: %d", Integer.valueOf(i2), Integer.valueOf(this.mSupportedActivities.length)));
        return null;
    }

    private int getActivityType(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        int length = this.mSupportedActivities.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (str.equals(this.mSupportedActivities[i2])) {
                return i2;
            }
        }
        return -1;
    }

    public static ActivityRecognitionHardware getInstance(Context context) {
        ActivityRecognitionHardware activityRecognitionHardware;
        synchronized (sSingletonInstanceLock) {
            if (sSingletonInstance == null) {
                sSingletonInstance = new ActivityRecognitionHardware(context);
            }
            activityRecognitionHardware = sSingletonInstance;
        }
        return activityRecognitionHardware;
    }

    public static boolean isSupported() {
        return nativeIsSupported();
    }

    private static native void nativeClassInit();

    /* JADX INFO: Access modifiers changed from: private */
    public native int nativeDisableActivityEvent(int i2, int i3);

    private native int nativeEnableActivityEvent(int i2, int i3, long j2);

    private native int nativeFlush();

    private native String[] nativeGetSupportedActivities();

    private native void nativeInitialize();

    private static native boolean nativeIsSupported();

    private native void nativeRelease();

    private void onActivityChanged(Event[] eventArr) {
        if (eventArr == null || eventArr.length == 0) {
            if (DEBUG) {
                Log.d(TAG, "No events to broadcast for onActivityChanged.");
                return;
            }
            return;
        }
        int length = eventArr.length;
        ActivityRecognitionEvent[] activityRecognitionEventArr = new ActivityRecognitionEvent[length];
        for (int i2 = 0; i2 < length; i2++) {
            Event event = eventArr[i2];
            activityRecognitionEventArr[i2] = new ActivityRecognitionEvent(getActivityName(event.activity), event.type, event.timestamp);
        }
        ActivityChangedEvent activityChangedEvent = new ActivityChangedEvent(activityRecognitionEventArr);
        int iBeginBroadcast = this.mSinks.beginBroadcast();
        for (int i3 = 0; i3 < iBeginBroadcast; i3++) {
            try {
                this.mSinks.getBroadcastItem(i3).onActivityChanged(activityChangedEvent);
            } catch (RemoteException e2) {
                Log.e(TAG, "Error delivering activity changed event.", e2);
            }
        }
        this.mSinks.finishBroadcast();
    }

    @Override // android.hardware.location.IActivityRecognitionHardware
    public boolean disableActivityEvent(String str, int i2) {
        checkPermissions();
        int activityType = getActivityType(str);
        if (activityType == -1 || nativeDisableActivityEvent(activityType, i2) != 0) {
            return false;
        }
        this.mSupportedActivitiesEnabledEvents[activityType][i2] = 0;
        return true;
    }

    @Override // android.hardware.location.IActivityRecognitionHardware
    public boolean enableActivityEvent(String str, int i2, long j2) {
        checkPermissions();
        int activityType = getActivityType(str);
        if (activityType == -1 || nativeEnableActivityEvent(activityType, i2, j2) != 0) {
            return false;
        }
        this.mSupportedActivitiesEnabledEvents[activityType][i2] = 1;
        return true;
    }

    @Override // android.hardware.location.IActivityRecognitionHardware
    public boolean flush() {
        checkPermissions();
        return nativeFlush() == 0;
    }

    @Override // android.hardware.location.IActivityRecognitionHardware
    public String[] getSupportedActivities() {
        checkPermissions();
        return this.mSupportedActivities;
    }

    @Override // android.hardware.location.IActivityRecognitionHardware
    public boolean isActivitySupported(String str) {
        checkPermissions();
        return getActivityType(str) != -1;
    }

    @Override // android.hardware.location.IActivityRecognitionHardware
    public boolean registerSink(IActivityRecognitionHardwareSink iActivityRecognitionHardwareSink) {
        checkPermissions();
        return this.mSinks.register(iActivityRecognitionHardwareSink);
    }

    @Override // android.hardware.location.IActivityRecognitionHardware
    public boolean unregisterSink(IActivityRecognitionHardwareSink iActivityRecognitionHardwareSink) {
        checkPermissions();
        return this.mSinks.unregister(iActivityRecognitionHardwareSink);
    }
}
