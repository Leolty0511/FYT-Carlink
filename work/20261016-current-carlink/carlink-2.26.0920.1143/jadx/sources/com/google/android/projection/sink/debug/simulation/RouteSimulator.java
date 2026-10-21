package com.google.android.projection.sink.debug.simulation;

import android.location.Location;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class RouteSimulator {
    private static final int METRES_PER_LATITUDE_DEGREE = 111120;
    public static final String SINK_PROVIDER = "Sink";
    private boolean mFinished;
    private final boolean mLoop;
    private int mNextPointIndex;
    private final double[] mPointTimes;
    private final List<SimulationRoutePoint> mPoints;
    private double mTimeElapsed;
    private double mTimeToNextPoint;
    private final double mTotalTime;

    public RouteSimulator(List<SimulationRoutePoint> list, boolean z2) {
        this.mPoints = list;
        this.mLoop = z2;
        this.mPointTimes = new double[list.size()];
        int i2 = 0;
        while (i2 < list.size() - 1) {
            SimulationRoutePoint simulationRoutePoint = list.get(i2);
            int i3 = i2 + 1;
            SimulationRoutePoint simulationRoutePoint2 = list.get(i3);
            this.mPointTimes[i2] = getDistance(simulationRoutePoint.lat, simulationRoutePoint.lng, simulationRoutePoint2.lat, simulationRoutePoint2.lng) / simulationRoutePoint.speed;
            i2 = i3;
        }
        double d2 = 0.0d;
        this.mPointTimes[list.size() - 1] = 0.0d;
        for (double d3 : this.mPointTimes) {
            d2 += d3;
        }
        this.mTotalTime = d2;
    }

    private static double getDistance(double d2, double d3, double d4, double d5) {
        double dAbs = Math.abs(d4 - d2) * 111120.0d;
        double dAbs2 = Math.abs(d5 - d3) * Math.cos(Math.toRadians(d2)) * 111120.0d;
        return Math.sqrt((dAbs2 * dAbs2) + (dAbs * dAbs));
    }

    private static double getHeading(double d2, double d3, double d4, double d5) {
        return (Math.toDegrees(Math.atan2(Math.toRadians(d5 - d3), Math.toRadians(d4 - d2))) + 360.0d) % 360.0d;
    }

    public Location getLocation() {
        Location location = new Location(SINK_PROVIDER);
        int size = this.mNextPointIndex;
        if (size == 0) {
            SimulationRoutePoint simulationRoutePoint = this.mPoints.get(0);
            SimulationRoutePoint simulationRoutePoint2 = this.mPoints.get(1);
            location.setLatitude(simulationRoutePoint.lat);
            location.setLongitude(simulationRoutePoint.lng);
            location.setBearing((float) getHeading(simulationRoutePoint.lat, simulationRoutePoint.lng, simulationRoutePoint2.lat, simulationRoutePoint2.lng));
            location.setSpeed((float) simulationRoutePoint.speed);
        } else {
            if (size == 0) {
                size = this.mPoints.size();
            }
            int i2 = size - 1;
            SimulationRoutePoint simulationRoutePoint3 = this.mPoints.get(i2);
            SimulationRoutePoint simulationRoutePoint4 = this.mPoints.get(this.mNextPointIndex);
            double d2 = this.mPointTimes[i2];
            double d3 = (d2 - this.mTimeToNextPoint) / d2;
            double d4 = 1.0d - d3;
            location.setLatitude((simulationRoutePoint4.lat * d3) + (simulationRoutePoint3.lat * d4));
            location.setLongitude((simulationRoutePoint4.lng * d3) + (simulationRoutePoint3.lng * d4));
            location.setBearing((float) getHeading(simulationRoutePoint3.lat, simulationRoutePoint3.lng, simulationRoutePoint4.lat, simulationRoutePoint4.lng));
            location.setSpeed(this.mFinished ? 0.0f : (float) simulationRoutePoint3.speed);
        }
        location.setTime(System.currentTimeMillis());
        location.setAccuracy(5.0f);
        return location;
    }

    public double getProgress() {
        return this.mTimeElapsed / this.mTotalTime;
    }

    public void reset() {
        this.mNextPointIndex = 0;
        this.mTimeElapsed = 0.0d;
    }

    public void update(double d2) {
        this.mTimeElapsed += d2;
        this.mTimeToNextPoint -= d2;
        while (true) {
            double d3 = this.mTimeToNextPoint;
            if (d3 >= 0.0d) {
                return;
            }
            double[] dArr = this.mPointTimes;
            int i2 = this.mNextPointIndex;
            this.mTimeToNextPoint = d3 + dArr[i2];
            int i3 = i2 + 1;
            this.mNextPointIndex = i3;
            if (i3 == this.mPoints.size()) {
                if (this.mLoop) {
                    this.mNextPointIndex = 0;
                    this.mTimeElapsed -= this.mTotalTime;
                } else {
                    this.mTimeToNextPoint = 0.0d;
                    this.mNextPointIndex--;
                    this.mTimeElapsed = this.mTotalTime;
                    this.mFinished = true;
                }
            }
        }
    }
}
