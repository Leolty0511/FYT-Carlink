package com.google.android.projection.sink.sensors;

import android.os.Handler;
import android.os.Message;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SensorCollectorBase {
    private Handler mHandler;
    private final Set<Integer> mRegisterdSensors = new HashSet();

    public final Set<Integer> discoverSensors() {
        HashSet hashSet = new HashSet();
        discoverSensorsImpl(hashSet);
        return hashSet;
    }

    public abstract void discoverSensorsImpl(Set<Integer> set);

    public boolean isHandled(int i2) {
        return this.mRegisterdSensors.contains(Integer.valueOf(i2));
    }

    public void post(Runnable runnable) {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    public void postDelayed(Runnable runnable, long j2) {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.postDelayed(runnable, j2);
        }
    }

    public final void registerSensors(Set<Integer> set, Handler handler) {
        this.mHandler = handler;
        this.mRegisterdSensors.addAll(set);
        registerSensorsImpl();
    }

    public abstract void registerSensorsImpl();

    public void removeCallbacks(Runnable runnable) {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.removeCallbacks(runnable);
        }
    }

    public void reportAvailable(int i2) {
        Handler handler = this.mHandler;
        if (handler != null) {
            handler.sendMessage(Message.obtain(handler, i2));
        }
    }

    public final boolean sendUpdate(SensorSinkWrapper sensorSinkWrapper, int i2) {
        if (isHandled(i2)) {
            return sendUpdateImpl(sensorSinkWrapper, i2);
        }
        return false;
    }

    public abstract boolean sendUpdateImpl(SensorSinkWrapper sensorSinkWrapper, int i2);

    public void shutdown() {
    }

    public final void unregisterSensors() {
        unregisterSensorsImpl();
        this.mRegisterdSensors.clear();
        this.mHandler = null;
    }

    public abstract void unregisterSensorsImpl();
}
