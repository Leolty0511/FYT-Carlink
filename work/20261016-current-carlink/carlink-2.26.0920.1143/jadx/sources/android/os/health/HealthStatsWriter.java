package android.os.health;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.ArrayMap;

/* JADX INFO: loaded from: classes.dex */
public class HealthStatsWriter {
    private final HealthKeys.Constants mConstants;
    private final boolean[] mMeasurementFields;
    private final long[] mMeasurementValues;
    private final ArrayMap<String, Long>[] mMeasurementsValues;
    private final ArrayMap<String, HealthStatsWriter>[] mStatsValues;
    private final int[] mTimerCounts;
    private final boolean[] mTimerFields;
    private final long[] mTimerTimes;
    private final ArrayMap<String, TimerStat>[] mTimersValues;

    public HealthStatsWriter(HealthKeys.Constants constants) {
        this.mConstants = constants;
        int size = constants.getSize(0);
        this.mTimerFields = new boolean[size];
        this.mTimerCounts = new int[size];
        this.mTimerTimes = new long[size];
        int size2 = constants.getSize(1);
        this.mMeasurementFields = new boolean[size2];
        this.mMeasurementValues = new long[size2];
        this.mStatsValues = new ArrayMap[constants.getSize(2)];
        this.mTimersValues = new ArrayMap[constants.getSize(3)];
        this.mMeasurementsValues = new ArrayMap[constants.getSize(4)];
    }

    private static int countBooleanArray(boolean[] zArr) {
        int i2 = 0;
        for (boolean z2 : zArr) {
            if (z2) {
                i2++;
            }
        }
        return i2;
    }

    private static <T> int countObjectArray(T[] tArr) {
        int i2 = 0;
        for (T t2 : tArr) {
            if (t2 != null) {
                i2++;
            }
        }
        return i2;
    }

    private static void writeHealthStatsWriterMap(Parcel parcel, ArrayMap<String, HealthStatsWriter> arrayMap) {
        int size = arrayMap.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeString(arrayMap.keyAt(i2));
            arrayMap.valueAt(i2).flattenToParcel(parcel);
        }
    }

    private static void writeLongsMap(Parcel parcel, ArrayMap<String, Long> arrayMap) {
        int size = arrayMap.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeString(arrayMap.keyAt(i2));
            parcel.writeLong(arrayMap.valueAt(i2).longValue());
        }
    }

    private static <T extends Parcelable> void writeParcelableMap(Parcel parcel, ArrayMap<String, T> arrayMap) {
        int size = arrayMap.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeString(arrayMap.keyAt(i2));
            arrayMap.valueAt(i2).writeToParcel(parcel, 0);
        }
    }

    public void addMeasurement(int i2, long j2) {
        int index = this.mConstants.getIndex(1, i2);
        this.mMeasurementFields[index] = true;
        this.mMeasurementValues[index] = j2;
    }

    public void addMeasurements(int i2, String str, long j2) {
        int index = this.mConstants.getIndex(4, i2);
        ArrayMap<String, Long>[] arrayMapArr = this.mMeasurementsValues;
        ArrayMap<String, Long> arrayMap = arrayMapArr[index];
        if (arrayMap == null) {
            arrayMap = new ArrayMap<>(1);
            arrayMapArr[index] = arrayMap;
        }
        arrayMap.put(str, Long.valueOf(j2));
    }

    public void addStats(int i2, String str, HealthStatsWriter healthStatsWriter) {
        int index = this.mConstants.getIndex(2, i2);
        ArrayMap<String, HealthStatsWriter>[] arrayMapArr = this.mStatsValues;
        ArrayMap<String, HealthStatsWriter> arrayMap = arrayMapArr[index];
        if (arrayMap == null) {
            arrayMap = new ArrayMap<>(1);
            arrayMapArr[index] = arrayMap;
        }
        arrayMap.put(str, healthStatsWriter);
    }

    public void addTimer(int i2, int i3, long j2) {
        int index = this.mConstants.getIndex(0, i2);
        this.mTimerFields[index] = true;
        this.mTimerCounts[index] = i3;
        this.mTimerTimes[index] = j2;
    }

    public void addTimers(int i2, String str, TimerStat timerStat) {
        int index = this.mConstants.getIndex(3, i2);
        ArrayMap<String, TimerStat>[] arrayMapArr = this.mTimersValues;
        ArrayMap<String, TimerStat> arrayMap = arrayMapArr[index];
        if (arrayMap == null) {
            arrayMap = new ArrayMap<>(1);
            arrayMapArr[index] = arrayMap;
        }
        arrayMap.put(str, timerStat);
    }

    public void flattenToParcel(Parcel parcel) {
        parcel.writeString(this.mConstants.getDataType());
        parcel.writeInt(countBooleanArray(this.mTimerFields));
        int[] keys = this.mConstants.getKeys(0);
        for (int i2 = 0; i2 < keys.length; i2++) {
            if (this.mTimerFields[i2]) {
                parcel.writeInt(keys[i2]);
                parcel.writeInt(this.mTimerCounts[i2]);
                parcel.writeLong(this.mTimerTimes[i2]);
            }
        }
        parcel.writeInt(countBooleanArray(this.mMeasurementFields));
        int[] keys2 = this.mConstants.getKeys(1);
        for (int i3 = 0; i3 < keys2.length; i3++) {
            if (this.mMeasurementFields[i3]) {
                parcel.writeInt(keys2[i3]);
                parcel.writeLong(this.mMeasurementValues[i3]);
            }
        }
        parcel.writeInt(countObjectArray(this.mStatsValues));
        int[] keys3 = this.mConstants.getKeys(2);
        for (int i4 = 0; i4 < keys3.length; i4++) {
            if (this.mStatsValues[i4] != null) {
                parcel.writeInt(keys3[i4]);
                writeHealthStatsWriterMap(parcel, this.mStatsValues[i4]);
            }
        }
        parcel.writeInt(countObjectArray(this.mTimersValues));
        int[] keys4 = this.mConstants.getKeys(3);
        for (int i5 = 0; i5 < keys4.length; i5++) {
            if (this.mTimersValues[i5] != null) {
                parcel.writeInt(keys4[i5]);
                writeParcelableMap(parcel, this.mTimersValues[i5]);
            }
        }
        parcel.writeInt(countObjectArray(this.mMeasurementsValues));
        int[] keys5 = this.mConstants.getKeys(4);
        for (int i6 = 0; i6 < keys5.length; i6++) {
            if (this.mMeasurementsValues[i6] != null) {
                parcel.writeInt(keys5[i6]);
                writeLongsMap(parcel, this.mMeasurementsValues[i6]);
            }
        }
    }
}
