package com.google.android.projection.sink.debug;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import com.google.android.projection.sink.debug.simulation.LocationSimulator;
import com.google.android.projection.sink.debug.simulation.SimulationRoutePoint;
import com.google.android.projection.sink.debug.simulation.WebSimulationRouteProvider;
import com.google.android.projection.sink.settings.Settings;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class SimulatedLocationProvider {
    private static final int ROUTE_SPEED_FACTOR_MAX = 1000;
    private static final int ROUTE_SPEED_FACTOR_MIN = 0;
    private static final String TAG = "SimulatedLocationProvider";
    private final LocationSimulator mLocationSimulator;
    private final LocationSimulator.Listener mLocationSimulatorListener;
    private boolean mLocationSimulatorStarted;
    private final Settings mSettings;
    private final Handler mHandler = new Handler();
    private final Object mLocationSimulatorLock = new Object();
    private final Set<LocationListener> mLocationClients = new HashSet();
    private final Set<UiListener> mUiClients = new HashSet();

    public interface UiListener {
        void onSpeedChanged(int i2);
    }

    public SimulatedLocationProvider(Context context) {
        LocationSimulator.Listener listener = new LocationSimulator.Listener() { // from class: com.google.android.projection.sink.debug.SimulatedLocationProvider.2
            @Override // com.google.android.projection.sink.debug.simulation.LocationSimulator.Listener
            public void onSimulationUpdate(final Location location, double d2) {
                if (location != null) {
                    SimulatedLocationProvider.this.mHandler.post(new Runnable() { // from class: com.google.android.projection.sink.debug.SimulatedLocationProvider.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            Iterator it = SimulatedLocationProvider.this.mLocationClients.iterator();
                            while (it.hasNext()) {
                                ((LocationListener) it.next()).onLocationChanged(location);
                            }
                        }
                    });
                }
            }
        };
        this.mLocationSimulatorListener = listener;
        this.mSettings = new Settings(context);
        LocationSimulator locationSimulator = new LocationSimulator(listener);
        this.mLocationSimulator = locationSimulator;
        locationSimulator.setRouteSpeedFactor(0);
    }

    public void decreaseSimulationSpeed() {
        int iMax;
        synchronized (this.mLocationSimulatorLock) {
            iMax = Math.max(this.mLocationSimulator.getRouteSpeedFactor() - 1, 0);
            this.mLocationSimulator.setRouteSpeedFactor(iMax);
        }
        Iterator<UiListener> it = this.mUiClients.iterator();
        while (it.hasNext()) {
            it.next().onSpeedChanged(iMax);
        }
    }

    public void increaseSimulationSpeed() {
        int iMin;
        synchronized (this.mLocationSimulatorLock) {
            iMin = Math.min(this.mLocationSimulator.getRouteSpeedFactor() + 1, 1000);
            this.mLocationSimulator.setRouteSpeedFactor(iMin);
        }
        Iterator<UiListener> it = this.mUiClients.iterator();
        while (it.hasNext()) {
            it.next().onSpeedChanged(iMin);
        }
    }

    public void registerUiListener(UiListener uiListener) {
        int routeSpeedFactor;
        synchronized (this.mLocationSimulatorLock) {
            routeSpeedFactor = this.mLocationSimulator.getRouteSpeedFactor();
        }
        uiListener.onSpeedChanged(routeSpeedFactor);
        this.mUiClients.add(uiListener);
    }

    public void removeUpdates(LocationListener locationListener) {
        this.mLocationClients.remove(locationListener);
    }

    public void requestUpdates(LocationListener locationListener) {
        if (!this.mLocationSimulatorStarted) {
            this.mLocationSimulatorStarted = true;
            final String simulationStart = this.mSettings.getSimulationStart();
            final String simulationFinish = this.mSettings.getSimulationFinish();
            AsyncTask.execute(new Runnable() { // from class: com.google.android.projection.sink.debug.SimulatedLocationProvider.1
                @Override // java.lang.Runnable
                public void run() {
                    Log.d(SimulatedLocationProvider.TAG, String.format("Route from '%s' to '%s'.", simulationStart, simulationFinish));
                    List<SimulationRoutePoint> listCreatePoints = WebSimulationRouteProvider.createPoints(simulationStart, simulationFinish, "driving");
                    if (listCreatePoints == null || listCreatePoints.isEmpty()) {
                        Log.w(SimulatedLocationProvider.TAG, "Can't get directions");
                    }
                    synchronized (SimulatedLocationProvider.this.mLocationSimulatorLock) {
                        SimulatedLocationProvider.this.mLocationSimulator.setRoute(listCreatePoints);
                        SimulatedLocationProvider.this.mLocationSimulator.startUpdates(1000);
                        SimulatedLocationProvider.this.mLocationSimulator.setRouteResumed(true);
                    }
                }
            });
        }
        this.mLocationClients.add(locationListener);
    }

    public void resetSimulation() {
        synchronized (this.mLocationSimulatorLock) {
            this.mLocationSimulator.setRouteSpeedFactor(0);
            this.mLocationSimulator.resetRoute();
        }
        Iterator<UiListener> it = this.mUiClients.iterator();
        while (it.hasNext()) {
            it.next().onSpeedChanged(0);
        }
    }

    public void shutdown() {
        synchronized (this.mLocationSimulatorLock) {
            this.mLocationSimulator.stopUpdates();
        }
    }

    public void unregisterUiListener(UiListener uiListener) {
        this.mUiClients.remove(uiListener);
    }
}
