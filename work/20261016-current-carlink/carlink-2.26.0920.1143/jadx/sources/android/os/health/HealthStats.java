package android.os.health;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArrayMap;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HealthStats {
    private String mDataType;
    private int[] mMeasurementKeys;
    private long[] mMeasurementValues;
    private int[] mMeasurementsKeys;
    private ArrayMap<String, Long>[] mMeasurementsValues;
    private int[] mStatsKeys;
    private ArrayMap<String, HealthStats>[] mStatsValues;
    private int[] mTimerCounts;
    private int[] mTimerKeys;
    private long[] mTimerTimes;
    private int[] mTimersKeys;
    private ArrayMap<String, TimerStat>[] mTimersValues;

    private HealthStats() {
        throw new RuntimeException("unsupported");
    }

    private static ArrayMap<String, HealthStats> createHealthStatsMap(Parcel parcel) {
        int i2 = parcel.readInt();
        ArrayMap<String, HealthStats> arrayMap = new ArrayMap<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayMap.put(parcel.readString(), new HealthStats(parcel));
        }
        return arrayMap;
    }

    private static ArrayMap<String, Long> createLongsMap(Parcel parcel) {
        int i2 = parcel.readInt();
        ArrayMap<String, Long> arrayMap = new ArrayMap<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayMap.put(parcel.readString(), Long.valueOf(parcel.readLong()));
        }
        return arrayMap;
    }

    private static <T extends Parcelable> ArrayMap<String, T> createParcelableMap(Parcel parcel, Parcelable.Creator<T> creator) {
        int i2 = parcel.readInt();
        ArrayMap<String, T> arrayMap = new ArrayMap<>(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            arrayMap.put(parcel.readString(), creator.createFromParcel(parcel));
        }
        return arrayMap;
    }

    private static int getIndex(int[] iArr, int i2) {
        return Arrays.binarySearch(iArr, i2);
    }

    public String getDataType() {
        return this.mDataType;
    }

    public long getMeasurement(int i2) {
        int index = getIndex(this.mMeasurementKeys, i2);
        if (index >= 0) {
            return this.mMeasurementValues[index];
        }
        throw new IndexOutOfBoundsException("Bad measurement key dataType=" + this.mDataType + " key=" + i2);
    }

    public int getMeasurementKeyAt(int i2) {
        return this.mMeasurementKeys[i2];
    }

    public int getMeasurementKeyCount() {
        return this.mMeasurementKeys.length;
    }

    public Map<String, Long> getMeasurements(int i2) {
        int index = getIndex(this.mMeasurementsKeys, i2);
        if (index >= 0) {
            return this.mMeasurementsValues[index];
        }
        throw new IndexOutOfBoundsException("Bad measurements key dataType=" + this.mDataType + " key=" + i2);
    }

    public int getMeasurementsKeyAt(int i2) {
        return this.mMeasurementsKeys[i2];
    }

    public int getMeasurementsKeyCount() {
        return this.mMeasurementsKeys.length;
    }

    public Map<String, HealthStats> getStats(int i2) {
        int index = getIndex(this.mStatsKeys, i2);
        if (index >= 0) {
            return this.mStatsValues[index];
        }
        throw new IndexOutOfBoundsException("Bad stats key dataType=" + this.mDataType + " key=" + i2);
    }

    public int getStatsKeyAt(int i2) {
        return this.mStatsKeys[i2];
    }

    public int getStatsKeyCount() {
        return this.mStatsKeys.length;
    }

    public TimerStat getTimer(int i2) {
        int index = getIndex(this.mTimerKeys, i2);
        if (index >= 0) {
            return new TimerStat(this.mTimerCounts[index], this.mTimerTimes[index]);
        }
        throw new IndexOutOfBoundsException("Bad timer key dataType=" + this.mDataType + " key=" + i2);
    }

    public int getTimerCount(int i2) {
        int index = getIndex(this.mTimerKeys, i2);
        if (index >= 0) {
            return this.mTimerCounts[index];
        }
        throw new IndexOutOfBoundsException("Bad timer key dataType=" + this.mDataType + " key=" + i2);
    }

    public int getTimerKeyAt(int i2) {
        return this.mTimerKeys[i2];
    }

    public int getTimerKeyCount() {
        return this.mTimerKeys.length;
    }

    public long getTimerTime(int i2) {
        int index = getIndex(this.mTimerKeys, i2);
        if (index >= 0) {
            return this.mTimerTimes[index];
        }
        throw new IndexOutOfBoundsException("Bad timer key dataType=" + this.mDataType + " key=" + i2);
    }

    public Map<String, TimerStat> getTimers(int i2) {
        int index = getIndex(this.mTimersKeys, i2);
        if (index >= 0) {
            return this.mTimersValues[index];
        }
        throw new IndexOutOfBoundsException("Bad timers key dataType=" + this.mDataType + " key=" + i2);
    }

    public int getTimersKeyAt(int i2) {
        return this.mTimersKeys[i2];
    }

    public int getTimersKeyCount() {
        return this.mTimersKeys.length;
    }

    public boolean hasMeasurement(int i2) {
        return getIndex(this.mMeasurementKeys, i2) >= 0;
    }

    public boolean hasMeasurements(int i2) {
        return getIndex(this.mMeasurementsKeys, i2) >= 0;
    }

    public boolean hasStats(int i2) {
        return getIndex(this.mStatsKeys, i2) >= 0;
    }

    public boolean hasTimer(int i2) {
        return getIndex(this.mTimerKeys, i2) >= 0;
    }

    public boolean hasTimers(int i2) {
        return getIndex(this.mTimersKeys, i2) >= 0;
    }

    public HealthStats(Parcel parcel) {
        this.mDataType = parcel.readString();
        int i2 = parcel.readInt();
        this.mTimerKeys = new int[i2];
        this.mTimerCounts = new int[i2];
        this.mTimerTimes = new long[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            this.mTimerKeys[i3] = parcel.readInt();
            this.mTimerCounts[i3] = parcel.readInt();
            this.mTimerTimes[i3] = parcel.readLong();
        }
        int i4 = parcel.readInt();
        this.mMeasurementKeys = new int[i4];
        this.mMeasurementValues = new long[i4];
        for (int i5 = 0; i5 < i4; i5++) {
            this.mMeasurementKeys[i5] = parcel.readInt();
            this.mMeasurementValues[i5] = parcel.readLong();
        }
        int i6 = parcel.readInt();
        this.mStatsKeys = new int[i6];
        this.mStatsValues = new ArrayMap[i6];
        for (int i7 = 0; i7 < i6; i7++) {
            this.mStatsKeys[i7] = parcel.readInt();
            this.mStatsValues[i7] = createHealthStatsMap(parcel);
        }
        int i8 = parcel.readInt();
        this.mTimersKeys = new int[i8];
        this.mTimersValues = new ArrayMap[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            this.mTimersKeys[i9] = parcel.readInt();
            this.mTimersValues[i9] = createParcelableMap(parcel, TimerStat.CREATOR);
        }
        int i10 = parcel.readInt();
        this.mMeasurementsKeys = new int[i10];
        this.mMeasurementsValues = new ArrayMap[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            this.mMeasurementsKeys[i11] = parcel.readInt();
            this.mMeasurementsValues[i11] = createLongsMap(parcel);
        }
    }
}
