package com.google.android.projection.sink.debug.simulation;

import android.location.Location;
import android.os.Handler;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class LocationSimulator {
    private static final boolean DBG = false;
    private static final String TAG = "AHU.LOCATION";
    private Location mFixedLocation;
    private final Listener mListener;
    private boolean mRouteResumed;
    private RouteSimulator mRouteSimulator;
    private int mUpdatePeriodMillis;
    private int mRouteSpeedFactor = 1;
    private final Handler mHandler = new Handler();
    private final Runnable mUpdateRunnable = new Runnable() { // from class: com.google.android.projection.sink.debug.simulation.LocationSimulator.1
        @Override // java.lang.Runnable
        public void run() {
            LocationSimulator.this.mHandler.postDelayed(this, LocationSimulator.this.mUpdatePeriodMillis);
            if (LocationSimulator.this.mRouteSimulator != null) {
                LocationSimulator.this.mListener.onSimulationUpdate(LocationSimulator.this.getLocation(), LocationSimulator.this.getProgress());
                if (LocationSimulator.this.mRouteResumed) {
                    LocationSimulator.this.mRouteSimulator.update(((double) (LocationSimulator.this.mUpdatePeriodMillis * LocationSimulator.this.mRouteSpeedFactor)) / 1000.0d);
                }
            }
        }
    };

    public interface Listener {
        void onSimulationUpdate(Location location, double d2);
    }

    public LocationSimulator(Listener listener) {
        this.mListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Location getLocation() {
        RouteSimulator routeSimulator = this.mRouteSimulator;
        if (routeSimulator == null) {
            return this.mFixedLocation;
        }
        Location location = routeSimulator.getLocation();
        location.setSpeed(this.mRouteResumed ? location.getSpeed() * this.mRouteSpeedFactor : 0.0f);
        return location;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double getProgress() {
        RouteSimulator routeSimulator = this.mRouteSimulator;
        if (routeSimulator != null) {
            return routeSimulator.getProgress();
        }
        return Double.NaN;
    }

    public int getRouteSpeedFactor() {
        return this.mRouteSpeedFactor;
    }

    public void resetRoute() {
        this.mRouteSimulator.reset();
    }

    public void setFixedLocation(Location location) {
        this.mFixedLocation = location;
    }

    public void setRoute(List<SimulationRoutePoint> list) {
        if (this.mRouteSimulator != null) {
            this.mFixedLocation = getLocation();
        }
        if (list != null) {
            this.mRouteSimulator = new RouteSimulator(list, false);
        } else {
            this.mRouteSimulator = null;
        }
    }

    public void setRouteResumed(boolean z2) {
        this.mRouteResumed = z2;
    }

    public void setRouteSpeedFactor(int i2) {
        this.mRouteSpeedFactor = i2;
    }

    public void startUpdates(int i2) {
        this.mUpdatePeriodMillis = i2;
        stopUpdates();
        if (this.mRouteSimulator != null) {
            this.mUpdateRunnable.run();
        }
    }

    public void stopUpdates() {
        this.mHandler.removeCallbacks(this.mUpdateRunnable);
    }
}
