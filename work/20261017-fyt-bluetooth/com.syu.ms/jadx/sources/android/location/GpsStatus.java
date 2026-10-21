package android.location;

import android.util.Log;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public final class GpsStatus {
    public static final int GPS_EVENT_FIRST_FIX = 3;
    public static final int GPS_EVENT_SATELLITE_STATUS = 4;
    public static final int GPS_EVENT_STARTED = 1;
    public static final int GPS_EVENT_STOPPED = 2;
    private static final int NUM_SATELLITES = 255;
    private int mTimeToFirstFix;
    private GpsSatellite[] mSatellites = new GpsSatellite[255];
    private Iterable<GpsSatellite> mSatelliteList = new Iterable<GpsSatellite>() { // from class: android.location.GpsStatus.1
        @Override // java.lang.Iterable
        public Iterator<GpsSatellite> iterator() {
            GpsStatus gpsStatus = GpsStatus.this;
            return gpsStatus.new SatelliteIterator(gpsStatus.mSatellites);
        }
    };

    public interface Listener {
        void onGpsStatusChanged(int i2);
    }

    public interface NmeaListener {
        void onNmeaReceived(long j2, String str);
    }

    public final class SatelliteIterator implements Iterator<GpsSatellite> {
        public int mIndex = 0;
        private GpsSatellite[] mSatellites;

        public SatelliteIterator(GpsSatellite[] gpsSatelliteArr) {
            this.mSatellites = gpsSatelliteArr;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i2 = this.mIndex;
            while (true) {
                GpsSatellite[] gpsSatelliteArr = this.mSatellites;
                if (i2 >= gpsSatelliteArr.length) {
                    return false;
                }
                if (gpsSatelliteArr[i2].mValid) {
                    return true;
                }
                i2++;
            }
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public GpsSatellite next() {
            GpsSatellite gpsSatellite;
            do {
                int i2 = this.mIndex;
                GpsSatellite[] gpsSatelliteArr = this.mSatellites;
                if (i2 >= gpsSatelliteArr.length) {
                    throw new NoSuchElementException();
                }
                this.mIndex = i2 + 1;
                gpsSatellite = gpsSatelliteArr[i2];
            } while (!gpsSatellite.mValid);
            return gpsSatellite;
        }
    }

    public GpsStatus() {
        int i2 = 0;
        while (true) {
            GpsSatellite[] gpsSatelliteArr = this.mSatellites;
            if (i2 >= gpsSatelliteArr.length) {
                return;
            }
            int i3 = i2 + 1;
            gpsSatelliteArr[i2] = new GpsSatellite(i3);
            i2 = i3;
        }
    }

    public int getMaxSatellites() {
        return 255;
    }

    public Iterable<GpsSatellite> getSatellites() {
        return this.mSatelliteList;
    }

    public int getTimeToFirstFix() {
        return this.mTimeToFirstFix;
    }

    public synchronized void setStatus(int i2, int[] iArr, float[] fArr, float[] fArr2, float[] fArr3, int[] iArr2, int[] iArr3, int[] iArr4) {
        int i3 = 0;
        while (true) {
            GpsSatellite[] gpsSatelliteArr = this.mSatellites;
            if (i3 >= gpsSatelliteArr.length) {
                break;
            }
            gpsSatelliteArr[i3].mValid = false;
            i3++;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            boolean z2 = true;
            int i5 = iArr[i4] - 1;
            int i6 = i5 / 32;
            int i7 = i5 - (i6 * 32);
            int i8 = 1 << i7;
            if (i7 < 0 || i7 >= 32 || i6 < 0 || i6 >= 8) {
                Log.e("TD", "an error has been happened posInInt: " + i7 + "baseNum:" + i6);
            }
            if (i5 >= 0) {
                GpsSatellite[] gpsSatelliteArr2 = this.mSatellites;
                if (i5 < gpsSatelliteArr2.length) {
                    GpsSatellite gpsSatellite = gpsSatelliteArr2[i5];
                    gpsSatellite.mValid = true;
                    gpsSatellite.mSnr = fArr[i4];
                    gpsSatellite.mElevation = fArr2[i4];
                    gpsSatellite.mAzimuth = fArr3[i4];
                    gpsSatellite.mHasEphemeris = (iArr2[i6] & i8) != 0;
                    gpsSatellite.mHasAlmanac = (iArr3[i6] & i8) != 0;
                    if ((iArr4[i6] & i8) == 0) {
                        z2 = false;
                    }
                    gpsSatellite.mUsedInFix = z2;
                }
            }
        }
    }

    public void setTimeToFirstFix(int i2) {
        this.mTimeToFirstFix = i2;
    }

    public void setStatus(GpsStatus gpsStatus) {
        this.mTimeToFirstFix = gpsStatus.getTimeToFirstFix();
        int i2 = 0;
        while (true) {
            GpsSatellite[] gpsSatelliteArr = this.mSatellites;
            if (i2 >= gpsSatelliteArr.length) {
                return;
            }
            gpsSatelliteArr[i2].setStatus(gpsStatus.mSatellites[i2]);
            i2++;
        }
    }
}
