package android.location;

import android.util.SparseArray;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class GpsStatus {
    private static final int BEIDOU_SVID_OFFSET = 200;
    private static final int GLONASS_SVID_OFFSET = 64;
    public static final int GPS_EVENT_FIRST_FIX = 3;
    public static final int GPS_EVENT_SATELLITE_STATUS = 4;
    public static final int GPS_EVENT_STARTED = 1;
    public static final int GPS_EVENT_STOPPED = 2;
    private static final int NUM_SATELLITES = 255;
    private static final int SBAS_SVID_OFFSET = -87;
    private int mTimeToFirstFix;
    private final SparseArray<GpsSatellite> mSatellites = new SparseArray<>();
    private Iterable<GpsSatellite> mSatelliteList = new Iterable<GpsSatellite>() { // from class: android.location.GpsStatus.1
        @Override // java.lang.Iterable
        public Iterator<GpsSatellite> iterator() {
            return GpsStatus.this.new SatelliteIterator();
        }
    };

    @Deprecated
    public interface Listener {
        void onGpsStatusChanged(int i2);
    }

    @Deprecated
    public interface NmeaListener {
        void onNmeaReceived(long j2, String str);
    }

    public final class SatelliteIterator implements Iterator<GpsSatellite> {
        private int mIndex = 0;
        private final int mSatellitesCount;

        public SatelliteIterator() {
            this.mSatellitesCount = GpsStatus.this.mSatellites.size();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            while (this.mIndex < this.mSatellitesCount) {
                if (((GpsSatellite) GpsStatus.this.mSatellites.valueAt(this.mIndex)).mValid) {
                    return true;
                }
                this.mIndex++;
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.Iterator
        public GpsSatellite next() {
            while (this.mIndex < this.mSatellitesCount) {
                GpsSatellite gpsSatellite = (GpsSatellite) GpsStatus.this.mSatellites.valueAt(this.mIndex);
                this.mIndex++;
                if (gpsSatellite.mValid) {
                    return gpsSatellite;
                }
            }
            throw new NoSuchElementException();
        }
    }

    private void clearSatellites() {
        int size = this.mSatellites.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mSatellites.valueAt(i2).mValid = false;
        }
    }

    private void setStatus(int i2, int[] iArr, float[] fArr, float[] fArr2, float[] fArr3) {
        clearSatellites();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = iArr[i3];
            int i5 = (i4 >> 4) & 15;
            int i6 = i4 >> 8;
            if (i5 == 3) {
                i6 += 64;
            } else if (i5 == 5) {
                i6 += 200;
            } else if (i5 == 2) {
                i6 += SBAS_SVID_OFFSET;
            } else {
                if (i5 == 1 || i5 == 4) {
                }
            }
            if (i6 > 0 && i6 <= 255) {
                GpsSatellite gpsSatellite = this.mSatellites.get(i6);
                if (gpsSatellite == null) {
                    gpsSatellite = new GpsSatellite(i6);
                    this.mSatellites.put(i6, gpsSatellite);
                }
                gpsSatellite.mValid = true;
                gpsSatellite.mSnr = fArr[i3];
                gpsSatellite.mElevation = fArr2[i3];
                gpsSatellite.mAzimuth = fArr3[i3];
                int i7 = iArr[i3];
                gpsSatellite.mHasEphemeris = (i7 & 1) != 0;
                gpsSatellite.mHasAlmanac = (i7 & 2) != 0;
                gpsSatellite.mUsedInFix = (i7 & 4) != 0;
            }
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

    public void setTimeToFirstFix(int i2) {
        this.mTimeToFirstFix = i2;
    }

    public void setStatus(GnssStatus gnssStatus, int i2) {
        this.mTimeToFirstFix = i2;
        setStatus(gnssStatus.mSvCount, gnssStatus.mSvidWithFlags, gnssStatus.mCn0DbHz, gnssStatus.mElevations, gnssStatus.mAzimuths);
    }
}
