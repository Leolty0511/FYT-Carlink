package android.hardware.location;

import android.Manifest;
import android.content.Context;
import android.location.IFusedGeofenceHardware;
import android.location.IGpsGeofenceHardware;
import android.location.Location;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class GeofenceHardwareImpl {
    private static final int ADD_GEOFENCE_CALLBACK = 2;
    private static final int CALLBACK_ADD = 2;
    private static final int CALLBACK_REMOVE = 3;
    private static final int GEOFENCE_CALLBACK_BINDER_DIED = 6;
    private static final int GEOFENCE_STATUS = 1;
    private static final int GEOFENCE_TRANSITION_CALLBACK = 1;
    private static final int LOCATION_HAS_ACCURACY = 16;
    private static final int LOCATION_HAS_ALTITUDE = 2;
    private static final int LOCATION_HAS_BEARING = 8;
    private static final int LOCATION_HAS_LAT_LONG = 1;
    private static final int LOCATION_HAS_SPEED = 4;
    private static final int LOCATION_INVALID = 0;
    private static final int MONITOR_CALLBACK_BINDER_DIED = 4;
    private static final int PAUSE_GEOFENCE_CALLBACK = 4;
    private static final int REAPER_GEOFENCE_ADDED = 1;
    private static final int REAPER_MONITOR_CALLBACK_ADDED = 2;
    private static final int REAPER_REMOVED = 3;
    private static final int REMOVE_GEOFENCE_CALLBACK = 3;
    private static final int RESOLUTION_LEVEL_COARSE = 2;
    private static final int RESOLUTION_LEVEL_FINE = 3;
    private static final int RESOLUTION_LEVEL_NONE = 1;
    private static final int RESUME_GEOFENCE_CALLBACK = 5;
    private static GeofenceHardwareImpl sInstance;
    private final Context mContext;
    private IFusedGeofenceHardware mFusedService;
    private IGpsGeofenceHardware mGpsService;
    private PowerManager.WakeLock mWakeLock;
    private static final String TAG = "GeofenceHardwareImpl";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private final SparseArray<IGeofenceHardwareCallback> mGeofences = new SparseArray<>();
    private final ArrayList<IGeofenceHardwareMonitorCallback>[] mCallbacks = new ArrayList[2];
    private final ArrayList<Reaper> mReapers = new ArrayList<>();
    private int[] mSupportedMonitorTypes = new int[2];
    private Handler mGeofenceHandler = new Handler() { // from class: android.hardware.location.GeofenceHardwareImpl.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            IGeofenceHardwareCallback iGeofenceHardwareCallback;
            IGeofenceHardwareCallback iGeofenceHardwareCallback2;
            IGeofenceHardwareCallback iGeofenceHardwareCallback3;
            IGeofenceHardwareCallback iGeofenceHardwareCallback4;
            IGeofenceHardwareCallback iGeofenceHardwareCallback5;
            switch (message.what) {
                case 1:
                    GeofenceTransition geofenceTransition = (GeofenceTransition) message.obj;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(geofenceTransition.mGeofenceId);
                        if (GeofenceHardwareImpl.DEBUG) {
                            Log.d(GeofenceHardwareImpl.TAG, "GeofenceTransistionCallback: GPS : GeofenceId: " + geofenceTransition.mGeofenceId + " Transition: " + geofenceTransition.mTransition + " Location: " + geofenceTransition.mLocation + ":" + GeofenceHardwareImpl.this.mGeofences);
                        }
                        break;
                    }
                    if (iGeofenceHardwareCallback != null) {
                        try {
                            iGeofenceHardwareCallback.onGeofenceTransition(geofenceTransition.mGeofenceId, geofenceTransition.mTransition, geofenceTransition.mLocation, geofenceTransition.mTimestamp, geofenceTransition.mMonitoringType);
                            break;
                        } catch (RemoteException unused) {
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 2:
                    int i2 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback2 = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(i2);
                        break;
                    }
                    if (iGeofenceHardwareCallback2 != null) {
                        try {
                            iGeofenceHardwareCallback2.onGeofenceAdd(i2, message.arg2);
                        } catch (RemoteException e2) {
                            Log.i(GeofenceHardwareImpl.TAG, "Remote Exception:" + e2);
                        }
                        break;
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 3:
                    int i3 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback3 = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(i3);
                        break;
                    }
                    if (iGeofenceHardwareCallback3 != null) {
                        try {
                            iGeofenceHardwareCallback3.onGeofenceRemove(i3, message.arg2);
                            break;
                        } catch (RemoteException unused2) {
                        }
                        synchronized (GeofenceHardwareImpl.this.mGeofences) {
                            GeofenceHardwareImpl.this.mGeofences.remove(i3);
                            break;
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 4:
                    int i4 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback4 = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(i4);
                        break;
                    }
                    if (iGeofenceHardwareCallback4 != null) {
                        try {
                            iGeofenceHardwareCallback4.onGeofencePause(i4, message.arg2);
                            break;
                        } catch (RemoteException unused3) {
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 5:
                    int i5 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        iGeofenceHardwareCallback5 = (IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.get(i5);
                        break;
                    }
                    if (iGeofenceHardwareCallback5 != null) {
                        try {
                            iGeofenceHardwareCallback5.onGeofenceResume(i5, message.arg2);
                            break;
                        } catch (RemoteException unused4) {
                        }
                    }
                    GeofenceHardwareImpl.this.releaseWakeLock();
                    return;
                case 6:
                    IGeofenceHardwareCallback iGeofenceHardwareCallback6 = (IGeofenceHardwareCallback) message.obj;
                    if (GeofenceHardwareImpl.DEBUG) {
                        Log.d(GeofenceHardwareImpl.TAG, "Geofence callback reaped:" + iGeofenceHardwareCallback6);
                    }
                    int i6 = message.arg1;
                    synchronized (GeofenceHardwareImpl.this.mGeofences) {
                        for (int i7 = 0; i7 < GeofenceHardwareImpl.this.mGeofences.size(); i7++) {
                            if (((IGeofenceHardwareCallback) GeofenceHardwareImpl.this.mGeofences.valueAt(i7)).equals(iGeofenceHardwareCallback6)) {
                                int iKeyAt = GeofenceHardwareImpl.this.mGeofences.keyAt(i7);
                                GeofenceHardwareImpl geofenceHardwareImpl = GeofenceHardwareImpl.this;
                                geofenceHardwareImpl.removeGeofence(geofenceHardwareImpl.mGeofences.keyAt(i7), i6);
                                GeofenceHardwareImpl.this.mGeofences.remove(iKeyAt);
                            }
                        }
                        break;
                    }
                    return;
                default:
                    return;
            }
        }
    };
    private Handler mCallbacksHandler = new Handler() { // from class: android.hardware.location.GeofenceHardwareImpl.2
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                Location location = (Location) message.obj;
                int i3 = message.arg1;
                int i4 = message.arg2;
                boolean z2 = i3 == 0;
                ArrayList arrayList = GeofenceHardwareImpl.this.mCallbacks[i4];
                if (arrayList != null) {
                    if (GeofenceHardwareImpl.DEBUG) {
                        Log.d(GeofenceHardwareImpl.TAG, "MonitoringSystemChangeCallback: GPS : " + z2);
                    }
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        try {
                            ((IGeofenceHardwareMonitorCallback) it.next()).onMonitoringSystemChange(i4, z2, location);
                        } catch (RemoteException unused) {
                        }
                    }
                }
                GeofenceHardwareImpl.this.releaseWakeLock();
                return;
            }
            if (i2 == 2) {
                int i5 = message.arg1;
                IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback = (IGeofenceHardwareMonitorCallback) message.obj;
                ArrayList arrayList2 = GeofenceHardwareImpl.this.mCallbacks[i5];
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    GeofenceHardwareImpl.this.mCallbacks[i5] = arrayList2;
                }
                if (arrayList2.contains(iGeofenceHardwareMonitorCallback)) {
                    return;
                }
                arrayList2.add(iGeofenceHardwareMonitorCallback);
                return;
            }
            if (i2 == 3) {
                int i6 = message.arg1;
                IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback2 = (IGeofenceHardwareMonitorCallback) message.obj;
                ArrayList arrayList3 = GeofenceHardwareImpl.this.mCallbacks[i6];
                if (arrayList3 != null) {
                    arrayList3.remove(iGeofenceHardwareMonitorCallback2);
                    return;
                }
                return;
            }
            if (i2 != 4) {
                return;
            }
            IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback3 = (IGeofenceHardwareMonitorCallback) message.obj;
            if (GeofenceHardwareImpl.DEBUG) {
                Log.d(GeofenceHardwareImpl.TAG, "Monitor callback reaped:" + iGeofenceHardwareMonitorCallback3);
            }
            ArrayList arrayList4 = GeofenceHardwareImpl.this.mCallbacks[message.arg1];
            if (arrayList4 == null || !arrayList4.contains(iGeofenceHardwareMonitorCallback3)) {
                return;
            }
            arrayList4.remove(iGeofenceHardwareMonitorCallback3);
        }
    };
    private Handler mReaperHandler = new Handler() { // from class: android.hardware.location.GeofenceHardwareImpl.3
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            try {
                if (i2 == 1) {
                    IGeofenceHardwareCallback iGeofenceHardwareCallback = (IGeofenceHardwareCallback) message.obj;
                    Reaper reaper = GeofenceHardwareImpl.this.new Reaper(iGeofenceHardwareCallback, message.arg1);
                    if (GeofenceHardwareImpl.this.mReapers.contains(reaper)) {
                        return;
                    }
                    GeofenceHardwareImpl.this.mReapers.add(reaper);
                    iGeofenceHardwareCallback.asBinder().linkToDeath(reaper, 0);
                } else {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            return;
                        }
                        GeofenceHardwareImpl.this.mReapers.remove((Reaper) message.obj);
                        return;
                    }
                    IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback = (IGeofenceHardwareMonitorCallback) message.obj;
                    Reaper reaper2 = GeofenceHardwareImpl.this.new Reaper(iGeofenceHardwareMonitorCallback, message.arg1);
                    if (GeofenceHardwareImpl.this.mReapers.contains(reaper2)) {
                        return;
                    }
                    GeofenceHardwareImpl.this.mReapers.add(reaper2);
                    iGeofenceHardwareMonitorCallback.asBinder().linkToDeath(reaper2, 0);
                }
            } catch (RemoteException unused) {
            }
        }
    };

    public class GeofenceTransition {
        private int mGeofenceId;
        private Location mLocation;
        private int mMonitoringType;
        private int mSourcesUsed;
        private long mTimestamp;
        private int mTransition;

        public GeofenceTransition(int i2, int i3, long j2, Location location, int i4, int i5) {
            this.mGeofenceId = i2;
            this.mTransition = i3;
            this.mTimestamp = j2;
            this.mLocation = location;
            this.mMonitoringType = i4;
            this.mSourcesUsed = i5;
        }
    }

    private GeofenceHardwareImpl(Context context) {
        this.mContext = context;
        setMonitorAvailability(0, 2);
        setMonitorAvailability(1, 2);
    }

    private void acquireWakeLock() {
        if (this.mWakeLock == null) {
            this.mWakeLock = ((PowerManager) this.mContext.getSystemService(Context.POWER_SERVICE)).newWakeLock(1, TAG);
        }
        this.mWakeLock.acquire();
    }

    public static synchronized GeofenceHardwareImpl getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new GeofenceHardwareImpl(context);
        }
        return sInstance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseWakeLock() {
        if (this.mWakeLock.isHeld()) {
            this.mWakeLock.release();
        }
    }

    private void reportGeofenceOperationStatus(int i2, int i3, int i4) {
        acquireWakeLock();
        Message messageObtainMessage = this.mGeofenceHandler.obtainMessage(i2);
        messageObtainMessage.arg1 = i3;
        messageObtainMessage.arg2 = i4;
        messageObtainMessage.sendToTarget();
    }

    private void setMonitorAvailability(int i2, int i3) {
        synchronized (this.mSupportedMonitorTypes) {
            this.mSupportedMonitorTypes[i2] = i3;
        }
    }

    private void updateFusedHardwareAvailability() {
        boolean zIsSupported;
        try {
            zIsSupported = this.mFusedService.isSupported();
        } catch (RemoteException unused) {
            Log.e(TAG, "RemoteException calling LocationManagerService");
            zIsSupported = false;
        }
        if (zIsSupported) {
            setMonitorAvailability(1, 0);
        }
    }

    private void updateGpsHardwareAvailability() {
        boolean zIsHardwareGeofenceSupported;
        try {
            zIsHardwareGeofenceSupported = this.mGpsService.isHardwareGeofenceSupported();
        } catch (RemoteException unused) {
            Log.e(TAG, "Remote Exception calling LocationManagerService");
            zIsHardwareGeofenceSupported = false;
        }
        if (zIsHardwareGeofenceSupported) {
            setMonitorAvailability(0, 0);
        }
    }

    public boolean addCircularFence(int i2, int i3, double d2, double d3, double d4, int i4, int i5, int i6, int i7, IGeofenceHardwareCallback iGeofenceHardwareCallback) {
        int i8;
        if (DEBUG) {
            Log.d(TAG, "addCircularFence: GeofenceId: " + i2 + " Latitude: " + d2 + " Longitude: " + d3 + " Radius: " + d4 + " LastTransition: " + i4 + " MonitorTransition: " + i5 + " NotificationResponsiveness: " + i6 + " UnKnown Timer: " + i7 + " MonitoringType: " + i3);
        }
        synchronized (this.mGeofences) {
            this.mGeofences.put(i2, iGeofenceHardwareCallback);
        }
        boolean zAddCircularHardwareGeofence = true;
        if (i3 != 0) {
            if (i3 == 1) {
                if (this.mFusedService == null) {
                    return false;
                }
                GeofenceHardwareRequest geofenceHardwareRequestCreateCircularGeofence = GeofenceHardwareRequest.createCircularGeofence(d2, d3, d4);
                geofenceHardwareRequestCreateCircularGeofence.setUnknownTimer(i7);
                geofenceHardwareRequestCreateCircularGeofence.setNotificationResponsiveness(i6);
                geofenceHardwareRequestCreateCircularGeofence.setMonitorTransitions(i5);
                geofenceHardwareRequestCreateCircularGeofence.setLastTransition(i4);
                try {
                    this.mFusedService.addGeofences(new GeofenceHardwareRequestParcelable[]{new GeofenceHardwareRequestParcelable(i2, geofenceHardwareRequestCreateCircularGeofence)});
                    i8 = 1;
                } catch (RemoteException unused) {
                    Log.e(TAG, "AddGeofence: RemoteException calling LocationManagerService");
                    i8 = 1;
                    zAddCircularHardwareGeofence = false;
                }
            }
            i8 = 1;
            zAddCircularHardwareGeofence = false;
        } else {
            IGpsGeofenceHardware iGpsGeofenceHardware = this.mGpsService;
            if (iGpsGeofenceHardware == null) {
                return false;
            }
            i8 = 1;
            try {
                zAddCircularHardwareGeofence = iGpsGeofenceHardware.addCircularHardwareGeofence(i2, d2, d3, d4, i4, i5, i6, i7);
            } catch (RemoteException unused2) {
                Log.e(TAG, "AddGeofence: Remote Exception calling LocationManagerService");
                zAddCircularHardwareGeofence = false;
            }
        }
        if (zAddCircularHardwareGeofence) {
            Message messageObtainMessage = this.mReaperHandler.obtainMessage(i8, iGeofenceHardwareCallback);
            messageObtainMessage.arg1 = i3;
            this.mReaperHandler.sendMessage(messageObtainMessage);
        } else {
            synchronized (this.mGeofences) {
                this.mGeofences.remove(i2);
            }
        }
        if (DEBUG) {
            Log.d(TAG, "addCircularFence: Result is: " + zAddCircularHardwareGeofence);
        }
        return zAddCircularHardwareGeofence;
    }

    public int getAllowedResolutionLevel(int i2, int i3) {
        if (this.mContext.checkPermission(Manifest.permission.ACCESS_FINE_LOCATION, i2, i3) == 0) {
            return 3;
        }
        return this.mContext.checkPermission(Manifest.permission.ACCESS_COARSE_LOCATION, i2, i3) == 0 ? 2 : 1;
    }

    public int getMonitoringResolutionLevel(int i2) {
        return (i2 == 0 || i2 == 1) ? 3 : 1;
    }

    public int[] getMonitoringTypes() {
        boolean z2;
        boolean z3;
        synchronized (this.mSupportedMonitorTypes) {
            int[] iArr = this.mSupportedMonitorTypes;
            z2 = iArr[0] != 2;
            z3 = iArr[1] != 2;
        }
        if (z2) {
            return z3 ? new int[]{0, 1} : new int[]{0};
        }
        return z3 ? new int[]{1} : new int[0];
    }

    public int getStatusOfMonitoringType(int i2) {
        int i3;
        synchronized (this.mSupportedMonitorTypes) {
            int[] iArr = this.mSupportedMonitorTypes;
            if (i2 >= iArr.length || i2 < 0) {
                throw new IllegalArgumentException("Unknown monitoring type");
            }
            i3 = iArr[i2];
        }
        return i3;
    }

    public boolean pauseGeofence(int i2, int i3) {
        if (DEBUG) {
            Log.d(TAG, "Pause Geofence: GeofenceId: " + i2);
        }
        synchronized (this.mGeofences) {
            if (this.mGeofences.get(i2) == null) {
                throw new IllegalArgumentException("Geofence " + i2 + " not registered.");
            }
        }
        boolean zPauseHardwareGeofence = true;
        if (i3 == 0) {
            IGpsGeofenceHardware iGpsGeofenceHardware = this.mGpsService;
            if (iGpsGeofenceHardware == null) {
                return false;
            }
            try {
                zPauseHardwareGeofence = iGpsGeofenceHardware.pauseHardwareGeofence(i2);
            } catch (RemoteException unused) {
                Log.e(TAG, "PauseGeofence: Remote Exception calling LocationManagerService");
                zPauseHardwareGeofence = false;
            }
        } else if (i3 != 1) {
            zPauseHardwareGeofence = false;
        } else {
            IFusedGeofenceHardware iFusedGeofenceHardware = this.mFusedService;
            if (iFusedGeofenceHardware == null) {
                return false;
            }
            try {
                iFusedGeofenceHardware.pauseMonitoringGeofence(i2);
            } catch (RemoteException unused2) {
                Log.e(TAG, "PauseGeofence: RemoteException calling LocationManagerService");
                zPauseHardwareGeofence = false;
            }
        }
        if (DEBUG) {
            Log.d(TAG, "pauseGeofence: Result is: " + zPauseHardwareGeofence);
        }
        return zPauseHardwareGeofence;
    }

    public boolean registerForMonitorStateChangeCallback(int i2, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback) {
        Message messageObtainMessage = this.mReaperHandler.obtainMessage(2, iGeofenceHardwareMonitorCallback);
        messageObtainMessage.arg1 = i2;
        this.mReaperHandler.sendMessage(messageObtainMessage);
        Message messageObtainMessage2 = this.mCallbacksHandler.obtainMessage(2, iGeofenceHardwareMonitorCallback);
        messageObtainMessage2.arg1 = i2;
        this.mCallbacksHandler.sendMessage(messageObtainMessage2);
        return true;
    }

    public boolean removeGeofence(int i2, int i3) {
        if (DEBUG) {
            Log.d(TAG, "Remove Geofence: GeofenceId: " + i2);
        }
        synchronized (this.mGeofences) {
            if (this.mGeofences.get(i2) == null) {
                throw new IllegalArgumentException("Geofence " + i2 + " not registered.");
            }
        }
        boolean zRemoveHardwareGeofence = true;
        if (i3 == 0) {
            IGpsGeofenceHardware iGpsGeofenceHardware = this.mGpsService;
            if (iGpsGeofenceHardware == null) {
                return false;
            }
            try {
                zRemoveHardwareGeofence = iGpsGeofenceHardware.removeHardwareGeofence(i2);
            } catch (RemoteException unused) {
                Log.e(TAG, "RemoveGeofence: Remote Exception calling LocationManagerService");
                zRemoveHardwareGeofence = false;
            }
        } else if (i3 != 1) {
            zRemoveHardwareGeofence = false;
        } else {
            IFusedGeofenceHardware iFusedGeofenceHardware = this.mFusedService;
            if (iFusedGeofenceHardware == null) {
                return false;
            }
            try {
                iFusedGeofenceHardware.removeGeofences(new int[]{i2});
            } catch (RemoteException unused2) {
                Log.e(TAG, "RemoveGeofence: RemoteException calling LocationManagerService");
                zRemoveHardwareGeofence = false;
            }
        }
        if (DEBUG) {
            Log.d(TAG, "removeGeofence: Result is: " + zRemoveHardwareGeofence);
        }
        return zRemoveHardwareGeofence;
    }

    public void reportGeofenceAddStatus(int i2, int i3) {
        if (DEBUG) {
            Log.d(TAG, "AddCallback| id:" + i2 + ", status:" + i3);
        }
        reportGeofenceOperationStatus(2, i2, i3);
    }

    public void reportGeofenceMonitorStatus(int i2, int i3, Location location, int i4) {
        setMonitorAvailability(i2, i3);
        acquireWakeLock();
        Message messageObtainMessage = this.mCallbacksHandler.obtainMessage(1, location);
        messageObtainMessage.arg1 = i3;
        messageObtainMessage.arg2 = i2;
        messageObtainMessage.sendToTarget();
    }

    public void reportGeofencePauseStatus(int i2, int i3) {
        if (DEBUG) {
            Log.d(TAG, "PauseCallbac| id:" + i2 + ", status" + i3);
        }
        reportGeofenceOperationStatus(4, i2, i3);
    }

    public void reportGeofenceRemoveStatus(int i2, int i3) {
        if (DEBUG) {
            Log.d(TAG, "RemoveCallback| id:" + i2 + ", status:" + i3);
        }
        reportGeofenceOperationStatus(3, i2, i3);
    }

    public void reportGeofenceResumeStatus(int i2, int i3) {
        if (DEBUG) {
            Log.d(TAG, "ResumeCallback| id:" + i2 + ", status:" + i3);
        }
        reportGeofenceOperationStatus(5, i2, i3);
    }

    public void reportGeofenceTransition(int i2, Location location, int i3, long j2, int i4, int i5) {
        if (location == null) {
            Log.e(TAG, String.format("Invalid Geofence Transition: location=%p", location));
            return;
        }
        if (DEBUG) {
            Log.d(TAG, "GeofenceTransition| " + location + ", transition:" + i3 + ", transitionTimestamp:" + j2 + ", monitoringType:" + i4 + ", sourcesUsed:" + i5);
        }
        GeofenceTransition geofenceTransition = new GeofenceTransition(i2, i3, j2, location, i4, i5);
        acquireWakeLock();
        this.mGeofenceHandler.obtainMessage(1, geofenceTransition).sendToTarget();
    }

    public boolean resumeGeofence(int i2, int i3, int i4) {
        if (DEBUG) {
            Log.d(TAG, "Resume Geofence: GeofenceId: " + i2);
        }
        synchronized (this.mGeofences) {
            if (this.mGeofences.get(i2) == null) {
                throw new IllegalArgumentException("Geofence " + i2 + " not registered.");
            }
        }
        boolean zResumeHardwareGeofence = true;
        if (i3 == 0) {
            IGpsGeofenceHardware iGpsGeofenceHardware = this.mGpsService;
            if (iGpsGeofenceHardware == null) {
                return false;
            }
            try {
                zResumeHardwareGeofence = iGpsGeofenceHardware.resumeHardwareGeofence(i2, i4);
            } catch (RemoteException unused) {
                Log.e(TAG, "ResumeGeofence: Remote Exception calling LocationManagerService");
                zResumeHardwareGeofence = false;
            }
        } else if (i3 != 1) {
            zResumeHardwareGeofence = false;
        } else {
            IFusedGeofenceHardware iFusedGeofenceHardware = this.mFusedService;
            if (iFusedGeofenceHardware == null) {
                return false;
            }
            try {
                iFusedGeofenceHardware.resumeMonitoringGeofence(i2, i4);
            } catch (RemoteException unused2) {
                Log.e(TAG, "ResumeGeofence: RemoteException calling LocationManagerService");
                zResumeHardwareGeofence = false;
            }
        }
        if (DEBUG) {
            Log.d(TAG, "resumeGeofence: Result is: " + zResumeHardwareGeofence);
        }
        return zResumeHardwareGeofence;
    }

    public void setFusedGeofenceHardware(IFusedGeofenceHardware iFusedGeofenceHardware) {
        if (this.mFusedService == null) {
            this.mFusedService = iFusedGeofenceHardware;
            updateFusedHardwareAvailability();
        } else if (iFusedGeofenceHardware != null) {
            Log.e(TAG, "Error: FusedService being set again");
        } else {
            this.mFusedService = null;
            Log.w(TAG, "Fused Geofence Hardware service seems to have crashed");
        }
    }

    public void setGpsHardwareGeofence(IGpsGeofenceHardware iGpsGeofenceHardware) {
        if (this.mGpsService == null) {
            this.mGpsService = iGpsGeofenceHardware;
            updateGpsHardwareAvailability();
        } else if (iGpsGeofenceHardware != null) {
            Log.e(TAG, "Error: GpsService being set again.");
        } else {
            this.mGpsService = null;
            Log.w(TAG, "GPS Geofence Hardware service seems to have crashed");
        }
    }

    public boolean unregisterForMonitorStateChangeCallback(int i2, IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback) {
        Message messageObtainMessage = this.mCallbacksHandler.obtainMessage(3, iGeofenceHardwareMonitorCallback);
        messageObtainMessage.arg1 = i2;
        this.mCallbacksHandler.sendMessage(messageObtainMessage);
        return true;
    }

    public class Reaper implements IBinder.DeathRecipient {
        private IGeofenceHardwareCallback mCallback;
        private IGeofenceHardwareMonitorCallback mMonitorCallback;
        private int mMonitoringType;

        public Reaper(IGeofenceHardwareCallback iGeofenceHardwareCallback, int i2) {
            this.mCallback = iGeofenceHardwareCallback;
            this.mMonitoringType = i2;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            if (this.mCallback != null) {
                Message messageObtainMessage = GeofenceHardwareImpl.this.mGeofenceHandler.obtainMessage(6, this.mCallback);
                messageObtainMessage.arg1 = this.mMonitoringType;
                GeofenceHardwareImpl.this.mGeofenceHandler.sendMessage(messageObtainMessage);
            } else if (this.mMonitorCallback != null) {
                Message messageObtainMessage2 = GeofenceHardwareImpl.this.mCallbacksHandler.obtainMessage(4, this.mMonitorCallback);
                messageObtainMessage2.arg1 = this.mMonitoringType;
                GeofenceHardwareImpl.this.mCallbacksHandler.sendMessage(messageObtainMessage2);
            }
            GeofenceHardwareImpl.this.mReaperHandler.sendMessage(GeofenceHardwareImpl.this.mReaperHandler.obtainMessage(3, this));
        }

        public boolean equals(Object obj) {
            if (obj == null) {
                return false;
            }
            if (obj == this) {
                return true;
            }
            Reaper reaper = (Reaper) obj;
            return reaper.mCallback == this.mCallback && reaper.mMonitorCallback == this.mMonitorCallback && reaper.mMonitoringType == this.mMonitoringType;
        }

        public int hashCode() {
            IGeofenceHardwareCallback iGeofenceHardwareCallback = this.mCallback;
            int iHashCode = (527 + (iGeofenceHardwareCallback != null ? iGeofenceHardwareCallback.hashCode() : 0)) * 31;
            IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback = this.mMonitorCallback;
            return ((iHashCode + (iGeofenceHardwareMonitorCallback != null ? iGeofenceHardwareMonitorCallback.hashCode() : 0)) * 31) + this.mMonitoringType;
        }

        public Reaper(IGeofenceHardwareMonitorCallback iGeofenceHardwareMonitorCallback, int i2) {
            this.mMonitorCallback = iGeofenceHardwareMonitorCallback;
            this.mMonitoringType = i2;
        }
    }
}
