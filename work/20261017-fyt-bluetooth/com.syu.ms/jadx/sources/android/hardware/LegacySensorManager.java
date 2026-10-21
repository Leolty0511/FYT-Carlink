package android.hardware;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.IRotationWatcher;
import android.view.IWindowManager;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class LegacySensorManager {
    private static boolean sInitialized;
    private static int sRotation;
    private static IWindowManager sWindowManager;
    private final HashMap<SensorListener, LegacyListener> mLegacyListenersMap = new HashMap<>();
    private final SensorManager mSensorManager;

    public static final class LegacyListener implements SensorEventListener {
        private SensorListener mTarget;
        private float[] mValues = new float[6];
        private final LmsFilter mYawfilter = new LmsFilter();
        private int mSensors = 0;

        public LegacyListener(SensorListener sensorListener) {
            this.mTarget = sensorListener;
        }

        private static int getLegacySensorType(int i2) {
            if (i2 == 1) {
                return 2;
            }
            if (i2 == 2) {
                return 8;
            }
            if (i2 != 3) {
                return i2 != 7 ? 0 : 4;
            }
            return 128;
        }

        private static boolean hasOrientationSensor(int i2) {
            return (i2 & 129) != 0;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0040  */
        /* JADX WARN: Code duplicated, block: B:21:0x0046  */
        /* JADX WARN: Code duplicated, block: B:22:0x0049  */
        private void mapSensorDataToWindow(int i2, float[] fArr, int i3) {
            int i4;
            float f2 = fArr[0];
            float f3 = fArr[1];
            float f4 = fArr[2];
            if (i2 == 1) {
                f4 = -f4;
            } else {
                if (i2 == 2) {
                    f2 = -f2;
                    f3 = -f3;
                } else if (i2 == 8) {
                    f2 = -f2;
                    f3 = -f3;
                } else if (i2 == 128) {
                }
                f4 = -f4;
            }
            fArr[0] = f2;
            fArr[1] = f3;
            fArr[2] = f4;
            fArr[3] = f2;
            fArr[4] = f3;
            fArr[5] = f4;
            if ((i3 & 1) != 0) {
                if (i2 == 1) {
                    if (f2 < 270.0f) {
                        i4 = 90;
                    } else {
                        i4 = -270;
                    }
                    fArr[0] = f2 + i4;
                    fArr[1] = f4;
                    fArr[2] = f3;
                } else if (i2 == 2 || i2 == 8) {
                    fArr[0] = -f3;
                    fArr[1] = f2;
                    fArr[2] = f4;
                } else if (i2 == 128) {
                    if (f2 < 270.0f) {
                        i4 = 90;
                    } else {
                        i4 = -270;
                    }
                    fArr[0] = f2 + i4;
                    fArr[1] = f4;
                    fArr[2] = f3;
                }
            }
            if ((i3 & 2) != 0) {
                float f5 = fArr[0];
                float f6 = fArr[1];
                float f7 = fArr[2];
                if (i2 != 1) {
                    if (i2 == 2 || i2 == 8) {
                        fArr[0] = -f5;
                        fArr[1] = -f6;
                        fArr[2] = f7;
                        return;
                    } else if (i2 != 128) {
                        return;
                    }
                }
                fArr[0] = f5 >= 180.0f ? f5 - 180.0f : f5 + 180.0f;
                fArr[1] = -f6;
                fArr[2] = -f7;
            }
        }

        public boolean hasSensors() {
            return this.mSensors != 0;
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i2) {
            try {
                this.mTarget.onAccuracyChanged(getLegacySensorType(sensor.getType()), i2);
            } catch (AbstractMethodError unused) {
            }
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            float[] fArr = this.mValues;
            float[] fArr2 = sensorEvent.values;
            fArr[0] = fArr2[0];
            fArr[1] = fArr2[1];
            fArr[2] = fArr2[2];
            int type = sensorEvent.sensor.getType();
            int legacySensorType = getLegacySensorType(type);
            mapSensorDataToWindow(legacySensorType, fArr, LegacySensorManager.getRotation());
            if (type != 3) {
                this.mTarget.onSensorChanged(legacySensorType, fArr);
                return;
            }
            if ((this.mSensors & 128) != 0) {
                this.mTarget.onSensorChanged(128, fArr);
            }
            if ((this.mSensors & 1) != 0) {
                fArr[0] = this.mYawfilter.filter(sensorEvent.timestamp, fArr[0]);
                this.mTarget.onSensorChanged(1, fArr);
            }
        }

        public boolean registerSensor(int i2) {
            int i3 = this.mSensors;
            if ((i3 & i2) != 0) {
                return false;
            }
            boolean zHasOrientationSensor = hasOrientationSensor(i3);
            this.mSensors |= i2;
            return (zHasOrientationSensor && hasOrientationSensor(i2)) ? false : true;
        }

        public boolean unregisterSensor(int i2) {
            int i3 = this.mSensors;
            if ((i3 & i2) == 0) {
                return false;
            }
            this.mSensors = i3 & (~i2);
            return (hasOrientationSensor(i2) && hasOrientationSensor(this.mSensors)) ? false : true;
        }
    }

    public static final class LmsFilter {
        private static final int COUNT = 12;
        private static final float PREDICTION_RATIO = 0.33333334f;
        private static final float PREDICTION_TIME = 0.08f;
        private static final int SENSORS_RATE_MS = 20;
        private float[] mV = new float[24];
        private long[] mT = new long[24];
        private int mIndex = 12;

        public float filter(long j2, float f2) {
            float[] fArr = this.mV;
            int i2 = this.mIndex;
            float f3 = fArr[i2];
            float f4 = f2 - f3 > 180.0f ? f2 - 360.0f : f3 - f2 > 180.0f ? f2 + 360.0f : f2;
            int i3 = i2 + 1;
            this.mIndex = i3;
            if (i3 >= 24) {
                this.mIndex = 12;
            }
            int i4 = this.mIndex;
            fArr[i4] = f4;
            long[] jArr = this.mT;
            jArr[i4] = j2;
            fArr[i4 - 12] = f4;
            jArr[i4 - 12] = j2;
            float f5 = 0.0f;
            float f6 = 0.0f;
            float f7 = 0.0f;
            float f8 = 0.0f;
            float f9 = 0.0f;
            for (int i5 = 0; i5 < 11; i5++) {
                int i6 = (this.mIndex - 1) - i5;
                float f10 = this.mV[i6];
                long[] jArr2 = this.mT;
                int i7 = i6 + 1;
                float f11 = (((jArr2[i6] / 2) + (jArr2[i7] / 2)) - j2) * 1.0E-9f;
                float f12 = (jArr2[i6] - jArr2[i7]) * 1.0E-9f;
                float f13 = f12 * f12;
                f5 += f10 * f13;
                float f14 = f11 * f13;
                f6 += f11 * f14;
                f7 += f14;
                f8 += f10 * f14;
                f9 += f13;
            }
            float f15 = ((f5 * f6) + (f8 * f7)) / ((f6 * f9) + (f7 * f7));
            float fCeil = (f15 + ((((f9 * f15) - f5) / f7) * PREDICTION_TIME)) * 0.0027777778f;
            if ((fCeil >= 0.0f ? fCeil : -fCeil) >= 0.5f) {
                fCeil = (fCeil - ((float) Math.ceil(0.5f + fCeil))) + 1.0f;
            }
            if (fCeil < 0.0f) {
                fCeil += 1.0f;
            }
            return fCeil * 360.0f;
        }
    }

    public LegacySensorManager(SensorManager sensorManager) {
        this.mSensorManager = sensorManager;
        synchronized (SensorManager.class) {
            if (!sInitialized) {
                IWindowManager iWindowManagerAsInterface = IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE));
                sWindowManager = iWindowManagerAsInterface;
                if (iWindowManagerAsInterface != null) {
                    try {
                        sRotation = iWindowManagerAsInterface.watchRotation(new IRotationWatcher.Stub() { // from class: android.hardware.LegacySensorManager.1
                            @Override // android.view.IRotationWatcher
                            public void onRotationChanged(int i2) {
                                LegacySensorManager.onRotationChanged(i2);
                            }
                        });
                    } catch (RemoteException unused) {
                    }
                }
            }
        }
    }

    public static int getRotation() {
        int i2;
        synchronized (SensorManager.class) {
            i2 = sRotation;
        }
        return i2;
    }

    public static void onRotationChanged(int i2) {
        synchronized (SensorManager.class) {
            sRotation = i2;
        }
    }

    private boolean registerLegacyListener(int i2, int i3, SensorListener sensorListener, int i4, int i5) {
        Sensor defaultSensor;
        boolean zRegisterListener;
        if ((i4 & i2) == 0 || (defaultSensor = this.mSensorManager.getDefaultSensor(i3)) == null) {
            return false;
        }
        synchronized (this.mLegacyListenersMap) {
            LegacyListener legacyListener = this.mLegacyListenersMap.get(sensorListener);
            if (legacyListener == null) {
                legacyListener = new LegacyListener(sensorListener);
                this.mLegacyListenersMap.put(sensorListener, legacyListener);
            }
            zRegisterListener = legacyListener.registerSensor(i2) ? this.mSensorManager.registerListener(legacyListener, defaultSensor, i5) : true;
        }
        return zRegisterListener;
    }

    private void unregisterLegacyListener(int i2, int i3, SensorListener sensorListener, int i4) {
        Sensor defaultSensor;
        if ((i4 & i2) == 0 || (defaultSensor = this.mSensorManager.getDefaultSensor(i3)) == null) {
            return;
        }
        synchronized (this.mLegacyListenersMap) {
            LegacyListener legacyListener = this.mLegacyListenersMap.get(sensorListener);
            if (legacyListener != null && legacyListener.unregisterSensor(i2)) {
                this.mSensorManager.unregisterListener(legacyListener, defaultSensor);
                if (!legacyListener.hasSensors()) {
                    this.mLegacyListenersMap.remove(sensorListener);
                }
            }
        }
    }

    public int getSensors() {
        Iterator<Sensor> it = this.mSensorManager.getFullSensorList().iterator();
        int i2 = 0;
        while (it.hasNext()) {
            int type = it.next().getType();
            if (type == 1) {
                i2 |= 2;
            } else if (type == 2) {
                i2 |= 8;
            } else if (type == 3) {
                i2 |= 129;
            }
        }
        return i2;
    }

    public boolean registerListener(SensorListener sensorListener, int i2, int i3) {
        if (sensorListener == null) {
            return false;
        }
        return registerLegacyListener(4, 7, sensorListener, i2, i3) || (registerLegacyListener(1, 3, sensorListener, i2, i3) || (registerLegacyListener(128, 3, sensorListener, i2, i3) || (registerLegacyListener(8, 2, sensorListener, i2, i3) || (registerLegacyListener(2, 1, sensorListener, i2, i3)))));
    }

    public void unregisterListener(SensorListener sensorListener, int i2) {
        if (sensorListener == null) {
            return;
        }
        unregisterLegacyListener(2, 1, sensorListener, i2);
        unregisterLegacyListener(8, 2, sensorListener, i2);
        unregisterLegacyListener(128, 3, sensorListener, i2);
        unregisterLegacyListener(1, 3, sensorListener, i2);
        unregisterLegacyListener(4, 7, sensorListener, i2);
    }
}
