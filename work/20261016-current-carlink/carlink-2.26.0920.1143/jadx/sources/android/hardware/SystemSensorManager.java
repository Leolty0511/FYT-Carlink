package android.hardware;

import android.accessibilityservice.c;
import android.animation.b;
import android.app.ActivityThread;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.MemoryFile;
import android.os.MessageQueue;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.android.internal.annotations.GuardedBy;
import dalvik.system.CloseGuard;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SystemSensorManager extends SensorManager {
    private static final boolean DEBUG_DYNAMIC_SENSOR = true;
    private static final int MAX_LISTENER_COUNT = 128;
    private static final int MIN_DIRECT_CHANNEL_BUFFER_SIZE = 104;

    @GuardedBy("sLock")
    private static InjectEventQueue sInjectEventQueue = null;
    private static final Object sLock = new Object();

    @GuardedBy("sLock")
    private static boolean sNativeClassInited = false;
    private final Context mContext;
    private BroadcastReceiver mDynamicSensorBroadcastReceiver;
    private final Looper mMainLooper;
    private final long mNativeInstance;
    private final int mTargetSdkLevel;
    private final ArrayList<Sensor> mFullSensorsList = new ArrayList<>();
    private List<Sensor> mFullDynamicSensorsList = new ArrayList();
    private boolean mDynamicSensorListDirty = true;
    private final HashMap<Integer, Sensor> mHandleToSensor = new HashMap<>();
    private final HashMap<SensorEventListener, SensorEventQueue> mSensorListeners = new HashMap<>();
    private final HashMap<TriggerEventListener, TriggerEventQueue> mTriggerListeners = new HashMap<>();
    private HashMap<SensorManager.DynamicSensorCallback, Handler> mDynamicSensorCallbacks = new HashMap<>();

    public static abstract class BaseEventQueue {
        protected static final int OPERATING_MODE_DATA_INJECTION = 1;
        protected static final int OPERATING_MODE_NORMAL = 0;
        private final CloseGuard mCloseGuard;
        protected final SystemSensorManager mManager;
        private long nSensorEventQueue;
        private final SparseBooleanArray mActiveSensors = new SparseBooleanArray();
        protected final SparseIntArray mSensorAccuracies = new SparseIntArray();

        public BaseEventQueue(Looper looper, SystemSensorManager systemSensorManager, int i2, String str) {
            CloseGuard closeGuard = CloseGuard.get();
            this.mCloseGuard = closeGuard;
            this.nSensorEventQueue = nativeInitBaseEventQueue(systemSensorManager.mNativeInstance, new WeakReference(this), looper.getQueue(), str == null ? "" : str, i2, systemSensorManager.mContext.getOpPackageName());
            closeGuard.open("dispose");
            this.mManager = systemSensorManager;
        }

        private int disableSensor(Sensor sensor) {
            long j2 = this.nSensorEventQueue;
            if (j2 == 0) {
                throw null;
            }
            sensor.getClass();
            return nativeDisableSensor(j2, sensor.getHandle());
        }

        private int enableSensor(Sensor sensor, int i2, int i3) {
            long j2 = this.nSensorEventQueue;
            if (j2 == 0) {
                throw null;
            }
            sensor.getClass();
            return nativeEnableSensor(j2, sensor.getHandle(), i2, i3);
        }

        private static native void nativeDestroySensorEventQueue(long j2);

        private static native int nativeDisableSensor(long j2, int i2);

        private static native int nativeEnableSensor(long j2, int i2, int i3, int i4);

        private static native int nativeFlushSensor(long j2);

        private static native long nativeInitBaseEventQueue(long j2, WeakReference<BaseEventQueue> weakReference, MessageQueue messageQueue, String str, int i2, String str2);

        private static native int nativeInjectSensorData(long j2, int i2, float[] fArr, int i3, long j3);

        public boolean addSensor(Sensor sensor, int i2, int i3) {
            int handle = sensor.getHandle();
            if (this.mActiveSensors.get(handle)) {
                return false;
            }
            this.mActiveSensors.put(handle, true);
            addSensorEvent(sensor);
            if (enableSensor(sensor, i2, i3) == 0 || (i3 != 0 && (i3 <= 0 || enableSensor(sensor, i2, 0) == 0))) {
                return true;
            }
            removeSensor(sensor, false);
            return false;
        }

        public abstract void addSensorEvent(Sensor sensor);

        public void dispatchAdditionalInfoEvent(int i2, int i3, int i4, float[] fArr, int[] iArr) {
        }

        public abstract void dispatchFlushCompleteEvent(int i2);

        public abstract void dispatchSensorEvent(int i2, float[] fArr, int i3, long j2);

        public void dispose() {
            dispose(false);
        }

        public void finalize() throws Throwable {
            try {
                dispose(true);
            } finally {
                super.finalize();
            }
        }

        public int flush() {
            long j2 = this.nSensorEventQueue;
            if (j2 != 0) {
                return nativeFlushSensor(j2);
            }
            throw null;
        }

        public boolean hasSensors() {
            return this.mActiveSensors.indexOfValue(true) >= 0;
        }

        public int injectSensorDataBase(int i2, float[] fArr, int i3, long j2) {
            return nativeInjectSensorData(this.nSensorEventQueue, i2, fArr, i3, j2);
        }

        public boolean removeAllSensors() {
            for (int i2 = 0; i2 < this.mActiveSensors.size(); i2++) {
                if (this.mActiveSensors.valueAt(i2)) {
                    int iKeyAt = this.mActiveSensors.keyAt(i2);
                    Sensor sensor = (Sensor) this.mManager.mHandleToSensor.get(Integer.valueOf(iKeyAt));
                    if (sensor != null) {
                        disableSensor(sensor);
                        this.mActiveSensors.put(iKeyAt, false);
                        removeSensorEvent(sensor);
                    }
                }
            }
            return true;
        }

        public boolean removeSensor(Sensor sensor, boolean z2) {
            if (!this.mActiveSensors.get(sensor.getHandle())) {
                return false;
            }
            if (z2) {
                disableSensor(sensor);
            }
            this.mActiveSensors.put(sensor.getHandle(), false);
            removeSensorEvent(sensor);
            return true;
        }

        public abstract void removeSensorEvent(Sensor sensor);

        private void dispose(boolean z2) {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                if (z2) {
                    closeGuard.warnIfOpen();
                }
                this.mCloseGuard.close();
            }
            long j2 = this.nSensorEventQueue;
            if (j2 != 0) {
                nativeDestroySensorEventQueue(j2);
                this.nSensorEventQueue = 0L;
            }
        }
    }

    public final class InjectEventQueue extends BaseEventQueue {
        public InjectEventQueue(Looper looper, SystemSensorManager systemSensorManager, String str) {
            super(looper, systemSensorManager, 1, str);
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void addSensorEvent(Sensor sensor) {
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchFlushCompleteEvent(int i2) {
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchSensorEvent(int i2, float[] fArr, int i3, long j2) {
        }

        public int injectSensorData(int i2, float[] fArr, int i3, long j2) {
            return injectSensorDataBase(i2, fArr, i3, j2);
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void removeSensorEvent(Sensor sensor) {
        }
    }

    public static final class SensorEventQueue extends BaseEventQueue {
        private final SensorEventListener mListener;
        private final SparseArray<SensorEvent> mSensorsEvents;

        public SensorEventQueue(SensorEventListener sensorEventListener, Looper looper, SystemSensorManager systemSensorManager, String str) {
            super(looper, systemSensorManager, 0, str);
            this.mSensorsEvents = new SparseArray<>();
            this.mListener = sensorEventListener;
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void addSensorEvent(Sensor sensor) {
            SensorEvent sensorEvent = new SensorEvent(Sensor.getMaxLengthValuesArray(sensor, this.mManager.mTargetSdkLevel));
            synchronized (this.mSensorsEvents) {
                this.mSensorsEvents.put(sensor.getHandle(), sensorEvent);
            }
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchAdditionalInfoEvent(int i2, int i3, int i4, float[] fArr, int[] iArr) {
            Sensor sensor;
            if (!(this.mListener instanceof SensorEventCallback) || (sensor = (Sensor) this.mManager.mHandleToSensor.get(Integer.valueOf(i2))) == null) {
                return;
            }
            ((SensorEventCallback) this.mListener).onSensorAdditionalInfo(new SensorAdditionalInfo(sensor, i3, i4, iArr, fArr));
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchFlushCompleteEvent(int i2) {
            Sensor sensor;
            if (!(this.mListener instanceof SensorEventListener2) || (sensor = (Sensor) this.mManager.mHandleToSensor.get(Integer.valueOf(i2))) == null) {
                return;
            }
            ((SensorEventListener2) this.mListener).onFlushCompleted(sensor);
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchSensorEvent(int i2, float[] fArr, int i3, long j2) {
            SensorEvent sensorEvent;
            Sensor sensor = (Sensor) this.mManager.mHandleToSensor.get(Integer.valueOf(i2));
            if (sensor == null) {
                return;
            }
            synchronized (this.mSensorsEvents) {
                sensorEvent = this.mSensorsEvents.get(i2);
            }
            if (sensorEvent == null) {
                return;
            }
            float[] fArr2 = sensorEvent.values;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            sensorEvent.timestamp = j2;
            sensorEvent.accuracy = i3;
            sensorEvent.sensor = sensor;
            int i4 = this.mSensorAccuracies.get(i2);
            int i5 = sensorEvent.accuracy;
            if (i5 >= 0 && i4 != i5) {
                this.mSensorAccuracies.put(i2, i5);
                this.mListener.onAccuracyChanged(sensorEvent.sensor, sensorEvent.accuracy);
            }
            this.mListener.onSensorChanged(sensorEvent);
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void removeSensorEvent(Sensor sensor) {
            synchronized (this.mSensorsEvents) {
                this.mSensorsEvents.delete(sensor.getHandle());
            }
        }
    }

    public static final class TriggerEventQueue extends BaseEventQueue {
        private final TriggerEventListener mListener;
        private final SparseArray<TriggerEvent> mTriggerEvents;

        public TriggerEventQueue(TriggerEventListener triggerEventListener, Looper looper, SystemSensorManager systemSensorManager, String str) {
            super(looper, systemSensorManager, 0, str);
            this.mTriggerEvents = new SparseArray<>();
            this.mListener = triggerEventListener;
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void addSensorEvent(Sensor sensor) {
            TriggerEvent triggerEvent = new TriggerEvent(Sensor.getMaxLengthValuesArray(sensor, this.mManager.mTargetSdkLevel));
            synchronized (this.mTriggerEvents) {
                this.mTriggerEvents.put(sensor.getHandle(), triggerEvent);
            }
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchFlushCompleteEvent(int i2) {
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void dispatchSensorEvent(int i2, float[] fArr, int i3, long j2) {
            TriggerEvent triggerEvent;
            Sensor sensor = (Sensor) this.mManager.mHandleToSensor.get(Integer.valueOf(i2));
            if (sensor == null) {
                return;
            }
            synchronized (this.mTriggerEvents) {
                triggerEvent = this.mTriggerEvents.get(i2);
            }
            if (triggerEvent == null) {
                Log.e("SensorManager", "Error: Trigger Event is null for Sensor: " + sensor);
            } else {
                float[] fArr2 = triggerEvent.values;
                System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
                triggerEvent.timestamp = j2;
                triggerEvent.sensor = sensor;
                this.mManager.cancelTriggerSensorImpl(this.mListener, sensor, false);
                this.mListener.onTrigger(triggerEvent);
            }
        }

        @Override // android.hardware.SystemSensorManager.BaseEventQueue
        public void removeSensorEvent(Sensor sensor) {
            synchronized (this.mTriggerEvents) {
                this.mTriggerEvents.delete(sensor.getHandle());
            }
        }
    }

    public SystemSensorManager(Context context, Looper looper) {
        synchronized (sLock) {
            if (!sNativeClassInited) {
                sNativeClassInited = true;
                nativeClassInit();
            }
        }
        this.mMainLooper = looper;
        this.mTargetSdkLevel = context.getApplicationInfo().targetSdkVersion;
        this.mContext = context;
        this.mNativeInstance = nativeCreate(context.getOpPackageName());
        int i2 = 0;
        while (true) {
            Sensor sensor = new Sensor();
            if (!nativeGetSensorAtIndex(this.mNativeInstance, sensor, i2)) {
                return;
            }
            this.mFullSensorsList.add(sensor);
            this.mHandleToSensor.put(Integer.valueOf(sensor.getHandle()), sensor);
            i2++;
        }
    }

    private void cleanupSensorConnection(Sensor sensor) {
        this.mHandleToSensor.remove(Integer.valueOf(sensor.getHandle()));
        if (sensor.getReportingMode() == 2) {
            synchronized (this.mTriggerListeners) {
                for (TriggerEventListener triggerEventListener : new HashMap(this.mTriggerListeners).keySet()) {
                    Log.i("SensorManager", "removed trigger listener" + triggerEventListener.toString() + " due to sensor disconnection");
                    cancelTriggerSensorImpl(triggerEventListener, sensor, true);
                }
            }
            return;
        }
        synchronized (this.mSensorListeners) {
            for (SensorEventListener sensorEventListener : new HashMap(this.mSensorListeners).keySet()) {
                Log.i("SensorManager", "removed event listener" + sensorEventListener.toString() + " due to sensor disconnection");
                unregisterListenerImpl(sensorEventListener, sensor);
            }
        }
    }

    private static boolean diffSortedSensorList(List<Sensor> list, List<Sensor> list2, List<Sensor> list3, List<Sensor> list4, List<Sensor> list5) {
        int i2 = 0;
        int i3 = 0;
        boolean z2 = false;
        while (true) {
            if (i2 < list.size() && (i3 >= list2.size() || list2.get(i3).getHandle() > list.get(i2).getHandle())) {
                if (list5 != null) {
                    list5.add(list.get(i2));
                }
                i2++;
                z2 = true;
            } else if (i3 < list2.size() && (i2 >= list.size() || list2.get(i3).getHandle() < list.get(i2).getHandle())) {
                if (list4 != null) {
                    list4.add(list2.get(i3));
                }
                if (list3 != null) {
                    list3.add(list2.get(i3));
                }
                i3++;
                z2 = true;
            } else {
                if (i3 >= list2.size() || i2 >= list.size() || list2.get(i3).getHandle() != list.get(i2).getHandle()) {
                    break;
                }
                if (list3 != null) {
                    list3.add(list.get(i2));
                }
                i3++;
                i2++;
            }
        }
        return z2;
    }

    private static native void nativeClassInit();

    private static native int nativeConfigDirectChannel(long j2, int i2, int i3, int i4);

    private static native long nativeCreate(String str);

    private static native int nativeCreateDirectChannel(long j2, long j3, int i2, int i3, HardwareBuffer hardwareBuffer);

    private static native void nativeDestroyDirectChannel(long j2, int i2);

    private static native void nativeGetDynamicSensors(long j2, List<Sensor> list);

    private static native boolean nativeGetSensorAtIndex(long j2, Sensor sensor, int i2);

    private static native boolean nativeIsDataInjectionEnabled(long j2);

    private static native int nativeSetOperationParameter(long j2, int i2, int i3, float[] fArr, int[] iArr);

    private void setupDynamicSensorBroadcastReceiver() {
        if (this.mDynamicSensorBroadcastReceiver == null) {
            this.mDynamicSensorBroadcastReceiver = new BroadcastReceiver() { // from class: android.hardware.SystemSensorManager.2
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    if (intent.getAction() == Intent.ACTION_DYNAMIC_SENSOR_CHANGED) {
                        Log.i("SensorManager", "DYNS received DYNAMIC_SENSOR_CHANED broadcast");
                        SystemSensorManager.this.mDynamicSensorListDirty = true;
                        SystemSensorManager.this.updateDynamicSensorList();
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter("dynamic_sensor_change");
            intentFilter.addAction(Intent.ACTION_DYNAMIC_SENSOR_CHANGED);
            this.mContext.registerReceiver(this.mDynamicSensorBroadcastReceiver, intentFilter);
        }
    }

    private void teardownDynamicSensorBroadcastReceiver() {
        this.mDynamicSensorCallbacks.clear();
        this.mContext.unregisterReceiver(this.mDynamicSensorBroadcastReceiver);
        this.mDynamicSensorBroadcastReceiver = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDynamicSensorList() {
        synchronized (this.mFullDynamicSensorsList) {
            if (this.mDynamicSensorListDirty) {
                ArrayList arrayList = new ArrayList();
                nativeGetDynamicSensors(this.mNativeInstance, arrayList);
                ArrayList arrayList2 = new ArrayList();
                final ArrayList<Sensor> arrayList3 = new ArrayList();
                final ArrayList arrayList4 = new ArrayList();
                if (diffSortedSensorList(this.mFullDynamicSensorsList, arrayList, arrayList2, arrayList3, arrayList4)) {
                    Log.i("SensorManager", "DYNS dynamic sensor list cached should be updated");
                    this.mFullDynamicSensorsList = arrayList2;
                    for (Sensor sensor : arrayList3) {
                        this.mHandleToSensor.put(Integer.valueOf(sensor.getHandle()), sensor);
                    }
                    Handler handler = new Handler(this.mContext.getMainLooper());
                    for (Map.Entry<SensorManager.DynamicSensorCallback, Handler> entry : this.mDynamicSensorCallbacks.entrySet()) {
                        final SensorManager.DynamicSensorCallback key = entry.getKey();
                        (entry.getValue() == null ? handler : entry.getValue()).post(new Runnable() { // from class: android.hardware.SystemSensorManager.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Iterator it = arrayList3.iterator();
                                while (it.hasNext()) {
                                    key.onDynamicSensorConnected((Sensor) it.next());
                                }
                                Iterator it2 = arrayList4.iterator();
                                while (it2.hasNext()) {
                                    key.onDynamicSensorDisconnected((Sensor) it2.next());
                                }
                            }
                        });
                    }
                    Iterator it = arrayList4.iterator();
                    while (it.hasNext()) {
                        cleanupSensorConnection((Sensor) it.next());
                    }
                }
                this.mDynamicSensorListDirty = false;
            }
        }
    }

    @Override // android.hardware.SensorManager
    public boolean cancelTriggerSensorImpl(TriggerEventListener triggerEventListener, Sensor sensor, boolean z2) {
        if (sensor != null && sensor.getReportingMode() != 2) {
            return false;
        }
        synchronized (this.mTriggerListeners) {
            TriggerEventQueue triggerEventQueue = this.mTriggerListeners.get(triggerEventListener);
            if (triggerEventQueue == null) {
                return false;
            }
            boolean zRemoveAllSensors = sensor == null ? triggerEventQueue.removeAllSensors() : triggerEventQueue.removeSensor(sensor, z2);
            if (zRemoveAllSensors && !triggerEventQueue.hasSensors()) {
                this.mTriggerListeners.remove(triggerEventListener);
                triggerEventQueue.dispose();
            }
            return zRemoveAllSensors;
        }
    }

    @Override // android.hardware.SensorManager
    public int configureDirectChannelImpl(SensorDirectChannel sensorDirectChannel, Sensor sensor, int i2) {
        if (!sensorDirectChannel.isOpen()) {
            throw new IllegalStateException("channel is closed");
        }
        if (i2 < 0 || i2 > 3) {
            throw new IllegalArgumentException("rate parameter invalid");
        }
        if (sensor == null && i2 != 0) {
            throw new IllegalArgumentException("when sensor is null, rate can only be DIRECT_RATE_STOP");
        }
        int iNativeConfigDirectChannel = nativeConfigDirectChannel(this.mNativeInstance, sensorDirectChannel.getNativeHandle(), sensor == null ? -1 : sensor.getHandle(), i2);
        if (i2 == 0) {
            return iNativeConfigDirectChannel == 0 ? 1 : 0;
        }
        if (iNativeConfigDirectChannel > 0) {
            return iNativeConfigDirectChannel;
        }
        return 0;
    }

    @Override // android.hardware.SensorManager
    public SensorDirectChannel createDirectChannelImpl(MemoryFile memoryFile, HardwareBuffer hardwareBuffer) {
        long j2;
        int iNativeCreateDirectChannel;
        int i2;
        if (memoryFile != null) {
            try {
                int int$ = memoryFile.getFileDescriptor().getInt$();
                if (memoryFile.length() < 104) {
                    throw new IllegalArgumentException("Size of MemoryFile has to be greater than 104");
                }
                long length = memoryFile.length();
                int iNativeCreateDirectChannel2 = nativeCreateDirectChannel(this.mNativeInstance, length, 1, int$, null);
                if (iNativeCreateDirectChannel2 <= 0) {
                    b.u();
                    throw b.e(new IOException(c.d("create MemoryFile direct channel failed ", iNativeCreateDirectChannel2)));
                }
                j2 = length;
                iNativeCreateDirectChannel = iNativeCreateDirectChannel2;
                i2 = 1;
            } catch (IOException unused) {
                throw new IllegalArgumentException("MemoryFile object is not valid");
            }
        } else {
            if (hardwareBuffer == null) {
                throw new NullPointerException("shared memory object cannot be null");
            }
            if (hardwareBuffer.getFormat() != 33) {
                throw new IllegalArgumentException("Format of HardwareBuffer must be BLOB");
            }
            if (hardwareBuffer.getHeight() != 1) {
                throw new IllegalArgumentException("Height of HardwareBuffer must be 1");
            }
            if (hardwareBuffer.getWidth() < 104) {
                throw new IllegalArgumentException("Width if HaradwareBuffer must be greater than 104");
            }
            if ((hardwareBuffer.getUsage() & HardwareBuffer.USAGE_SENSOR_DIRECT_DATA) == 0) {
                throw new IllegalArgumentException("HardwareBuffer must set usage flag USAGE_SENSOR_DIRECT_DATA");
            }
            long width = hardwareBuffer.getWidth();
            iNativeCreateDirectChannel = nativeCreateDirectChannel(this.mNativeInstance, width, 2, -1, hardwareBuffer);
            if (iNativeCreateDirectChannel <= 0) {
                b.u();
                throw b.e(new IOException(c.d("create HardwareBuffer direct channel failed ", iNativeCreateDirectChannel)));
            }
            i2 = 2;
            j2 = width;
        }
        return new SensorDirectChannel(this, iNativeCreateDirectChannel, i2, j2);
    }

    @Override // android.hardware.SensorManager
    public void destroyDirectChannelImpl(SensorDirectChannel sensorDirectChannel) {
        if (sensorDirectChannel != null) {
            nativeDestroyDirectChannel(this.mNativeInstance, sensorDirectChannel.getNativeHandle());
        }
    }

    @Override // android.hardware.SensorManager
    public boolean flushImpl(SensorEventListener sensorEventListener) {
        if (sensorEventListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        synchronized (this.mSensorListeners) {
            SensorEventQueue sensorEventQueue = this.mSensorListeners.get(sensorEventListener);
            if (sensorEventQueue == null) {
                return false;
            }
            return sensorEventQueue.flush() == 0;
        }
    }

    @Override // android.hardware.SensorManager
    public List<Sensor> getFullDynamicSensorList() {
        setupDynamicSensorBroadcastReceiver();
        updateDynamicSensorList();
        return this.mFullDynamicSensorsList;
    }

    @Override // android.hardware.SensorManager
    public List<Sensor> getFullSensorList() {
        return this.mFullSensorsList;
    }

    @Override // android.hardware.SensorManager
    public boolean initDataInjectionImpl(boolean z2) {
        synchronized (sLock) {
            boolean z3 = true;
            if (!z2) {
                InjectEventQueue injectEventQueue = sInjectEventQueue;
                if (injectEventQueue != null) {
                    injectEventQueue.dispose();
                    sInjectEventQueue = null;
                }
                return true;
            }
            if (!nativeIsDataInjectionEnabled(this.mNativeInstance)) {
                Log.e("SensorManager", "Data Injection mode not enabled");
                return false;
            }
            if (sInjectEventQueue == null) {
                try {
                    sInjectEventQueue = new InjectEventQueue(this.mMainLooper, this, this.mContext.getPackageName());
                } catch (RuntimeException e2) {
                    Log.e("SensorManager", "Cannot create InjectEventQueue: " + e2);
                }
            }
            if (sInjectEventQueue == null) {
                z3 = false;
            }
            return z3;
        }
    }

    @Override // android.hardware.SensorManager
    public boolean injectSensorDataImpl(Sensor sensor, float[] fArr, int i2, long j2) {
        synchronized (sLock) {
            InjectEventQueue injectEventQueue = sInjectEventQueue;
            if (injectEventQueue == null) {
                Log.e("SensorManager", "Data injection mode not activated before calling injectSensorData");
                return false;
            }
            int iInjectSensorData = injectEventQueue.injectSensorData(sensor.getHandle(), fArr, i2, j2);
            if (iInjectSensorData != 0) {
                sInjectEventQueue.dispose();
                sInjectEventQueue = null;
            }
            return iInjectSensorData == 0;
        }
    }

    @Override // android.hardware.SensorManager
    public void registerDynamicSensorCallbackImpl(SensorManager.DynamicSensorCallback dynamicSensorCallback, Handler handler) {
        Log.i("SensorManager", "DYNS Register dynamic sensor callback");
        if (dynamicSensorCallback == null) {
            throw new IllegalArgumentException("callback cannot be null");
        }
        if (this.mDynamicSensorCallbacks.containsKey(dynamicSensorCallback)) {
            return;
        }
        setupDynamicSensorBroadcastReceiver();
        this.mDynamicSensorCallbacks.put(dynamicSensorCallback, handler);
    }

    @Override // android.hardware.SensorManager
    public boolean registerListenerImpl(SensorEventListener sensorEventListener, Sensor sensor, int i2, Handler handler, int i3, int i4) {
        if (sensorEventListener == null || sensor == null) {
            Log.e("SensorManager", "sensor or listener is null");
            return false;
        }
        if (sensor.getReportingMode() == 2) {
            Log.e("SensorManager", "Trigger Sensors should use the requestTriggerSensor.");
            return false;
        }
        if (i3 < 0 || i2 < 0) {
            Log.e("SensorManager", "maxBatchReportLatencyUs and delayUs should be non-negative");
            return false;
        }
        if (this.mSensorListeners.size() >= 128) {
            throw new IllegalStateException("register failed, the sensor listeners size has exceeded the maximum limit 128");
        }
        try {
            int type = sensor.getType();
            if ("com.antutu.ABenchMark".equals(ActivityThread.currentOpPackageName()) && (2 == type || 3 == type || 20 == type)) {
                PackageInfo packageInfo = this.mContext.getPackageManager().getPackageInfo("com.antutu.ABenchMark", 0);
                Log.d("SensorManager", "versionName = " + packageInfo.versionName + ",  sensorType = " + type + ",  packageName = " + packageInfo.packageName);
                if ("6.3.3".equals(packageInfo.versionName)) {
                    Log.w("SensorManager", "registerListenerImpl for MAGNETIC_FIELD by antutu v6.3.3, ignore !!");
                    return false;
                }
            }
        } catch (Exception e2) {
            Log.w("SensorManager", "Exception happened: ", e2);
        }
        synchronized (this.mSensorListeners) {
            SensorEventQueue sensorEventQueue = this.mSensorListeners.get(sensorEventListener);
            if (sensorEventQueue != null) {
                return sensorEventQueue.addSensor(sensor, i2, i3);
            }
            SensorEventQueue sensorEventQueue2 = new SensorEventQueue(sensorEventListener, handler != null ? handler.getLooper() : this.mMainLooper, this, sensorEventListener.getClass().getEnclosingClass() != null ? sensorEventListener.getClass().getEnclosingClass().getName() : sensorEventListener.getClass().getName());
            if (sensorEventQueue2.addSensor(sensor, i2, i3)) {
                this.mSensorListeners.put(sensorEventListener, sensorEventQueue2);
                return true;
            }
            sensorEventQueue2.dispose();
            return false;
        }
    }

    @Override // android.hardware.SensorManager
    public boolean requestTriggerSensorImpl(TriggerEventListener triggerEventListener, Sensor sensor) {
        if (sensor == null) {
            throw new IllegalArgumentException("sensor cannot be null");
        }
        if (triggerEventListener == null) {
            throw new IllegalArgumentException("listener cannot be null");
        }
        if (sensor.getReportingMode() != 2) {
            return false;
        }
        if (this.mTriggerListeners.size() >= 128) {
            throw new IllegalStateException("request failed, the trigger listeners size has exceeded the maximum limit 128");
        }
        synchronized (this.mTriggerListeners) {
            TriggerEventQueue triggerEventQueue = this.mTriggerListeners.get(triggerEventListener);
            if (triggerEventQueue != null) {
                return triggerEventQueue.addSensor(sensor, 0, 0);
            }
            TriggerEventQueue triggerEventQueue2 = new TriggerEventQueue(triggerEventListener, this.mMainLooper, this, triggerEventListener.getClass().getEnclosingClass() != null ? triggerEventListener.getClass().getEnclosingClass().getName() : triggerEventListener.getClass().getName());
            if (triggerEventQueue2.addSensor(sensor, 0, 0)) {
                this.mTriggerListeners.put(triggerEventListener, triggerEventQueue2);
                return true;
            }
            triggerEventQueue2.dispose();
            return false;
        }
    }

    @Override // android.hardware.SensorManager
    public boolean setOperationParameterImpl(SensorAdditionalInfo sensorAdditionalInfo) {
        Sensor sensor = sensorAdditionalInfo.sensor;
        return nativeSetOperationParameter(this.mNativeInstance, sensor != null ? sensor.getHandle() : -1, sensorAdditionalInfo.type, sensorAdditionalInfo.floatValues, sensorAdditionalInfo.intValues) == 0;
    }

    @Override // android.hardware.SensorManager
    public void unregisterDynamicSensorCallbackImpl(SensorManager.DynamicSensorCallback dynamicSensorCallback) {
        Log.i("SensorManager", "Removing dynamic sensor listerner");
        this.mDynamicSensorCallbacks.remove(dynamicSensorCallback);
    }

    @Override // android.hardware.SensorManager
    public void unregisterListenerImpl(SensorEventListener sensorEventListener, Sensor sensor) {
        if (sensor == null || sensor.getReportingMode() != 2) {
            synchronized (this.mSensorListeners) {
                SensorEventQueue sensorEventQueue = this.mSensorListeners.get(sensorEventListener);
                if (sensorEventQueue != null) {
                    if ((sensor == null ? sensorEventQueue.removeAllSensors() : sensorEventQueue.removeSensor(sensor, true)) && !sensorEventQueue.hasSensors()) {
                        this.mSensorListeners.remove(sensorEventListener);
                        sensorEventQueue.dispose();
                    }
                }
            }
        }
    }
}
