package com.android.internal.app.procstats;

import android.accessibilityservice.c;
import android.app.m;
import android.os.Build;
import android.os.Parcel;
import android.util.EventLog;
import android.util.Slog;
import com.android.internal.util.GrowingArrayUtils;
import java.util.ArrayList;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes2.dex */
public class SparseMappingTable {
    private static final int ARRAY_MASK = 255;
    private static final int ARRAY_SHIFT = 8;
    public static final int ARRAY_SIZE = 4096;
    private static final int ID_MASK = 255;
    private static final int ID_SHIFT = 0;
    private static final int INDEX_MASK = 65535;
    private static final int INDEX_SHIFT = 16;
    public static final int INVALID_KEY = -1;
    private static final String TAG = "SparseMappingTable";
    private final ArrayList<long[]> mLongs;
    private int mNextIndex;
    private int mSequence;

    public static class Table {
        private SparseMappingTable mParent;
        private int mSequence;
        private int mSize;
        private int[] mTable;

        public Table(SparseMappingTable sparseMappingTable) {
            this.mSequence = 1;
            this.mParent = sparseMappingTable;
            this.mSequence = sparseMappingTable.mSequence;
        }

        private void assertConsistency() {
        }

        private int binarySearch(byte b2) {
            int i2 = this.mSize - 1;
            int i3 = 0;
            while (i3 <= i2) {
                int i4 = (i3 + i2) >>> 1;
                byte b3 = (byte) ((this.mTable[i4] >> 0) & 255);
                if (b3 < b2) {
                    i3 = i4 + 1;
                } else {
                    if (b3 <= b2) {
                        return i4;
                    }
                    i2 = i4 - 1;
                }
            }
            return ~i3;
        }

        private boolean validateKeys(boolean z2) {
            ArrayList arrayList = this.mParent.mLongs;
            int size = arrayList.size();
            int i2 = this.mSize;
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = this.mTable[i3];
                int arrayFromKey = SparseMappingTable.getArrayFromKey(i4);
                int indexFromKey = SparseMappingTable.getIndexFromKey(i4);
                if (arrayFromKey >= size || indexFromKey >= ((long[]) arrayList.get(arrayFromKey)).length) {
                    if (z2) {
                        StringBuilder sbS = c.s("Invalid stats at index ", i3, " -- ");
                        sbS.append(dumpInternalState());
                        Slog.w(SparseMappingTable.TAG, sbS.toString());
                    }
                    return false;
                }
            }
            return true;
        }

        public void copyFrom(Table table, int i2) {
            this.mTable = null;
            this.mSize = 0;
            int keyCount = table.getKeyCount();
            for (int i3 = 0; i3 < keyCount; i3++) {
                int keyAt = table.getKeyAt(i3);
                long[] jArr = (long[]) table.mParent.mLongs.get(SparseMappingTable.getArrayFromKey(keyAt));
                int orAddKey = getOrAddKey(SparseMappingTable.getIdFromKey(keyAt), i2);
                System.arraycopy(jArr, SparseMappingTable.getIndexFromKey(keyAt), (long[]) this.mParent.mLongs.get(SparseMappingTable.getArrayFromKey(orAddKey)), SparseMappingTable.getIndexFromKey(orAddKey), i2);
            }
        }

        public String dumpInternalState() {
            StringBuilder sb = new StringBuilder("SparseMappingTable.Table{mSequence=");
            sb.append(this.mSequence);
            sb.append(" mParent.mSequence=");
            sb.append(this.mParent.mSequence);
            sb.append(" mParent.mLongs.size()=");
            sb.append(this.mParent.mLongs.size());
            sb.append(" mSize=");
            sb.append(this.mSize);
            sb.append(" mTable=");
            int[] iArr = this.mTable;
            if (iArr == null) {
                sb.append("null");
            } else {
                int length = iArr.length;
                sb.append('[');
                for (int i2 = 0; i2 < length; i2++) {
                    int i3 = this.mTable[i2];
                    sb.append("0x");
                    c.x((i3 >> 0) & 255, sb, "/0x");
                    c.x((i3 >> 8) & 255, sb, "/0x");
                    sb.append(Integer.toHexString((i3 >> 16) & 65535));
                    if (i2 != length - 1) {
                        sb.append(", ");
                    }
                }
                sb.append(']');
            }
            sb.append(" clazz=");
            sb.append(getClass().getName());
            sb.append('}');
            return sb.toString();
        }

        public long[] getArrayForKey(int i2) {
            assertConsistency();
            return (long[]) this.mParent.mLongs.get(SparseMappingTable.getArrayFromKey(i2));
        }

        public int getKey(byte b2) {
            assertConsistency();
            int iBinarySearch = binarySearch(b2);
            if (iBinarySearch >= 0) {
                return this.mTable[iBinarySearch];
            }
            return -1;
        }

        public int getKeyAt(int i2) {
            return this.mTable[i2];
        }

        public int getKeyCount() {
            return this.mSize;
        }

        public int getOrAddKey(byte b2, int i2) {
            assertConsistency();
            int iBinarySearch = binarySearch(b2);
            if (iBinarySearch >= 0) {
                return this.mTable[iBinarySearch];
            }
            ArrayList arrayList = this.mParent.mLongs;
            int size = arrayList.size() - 1;
            if (this.mParent.mNextIndex + i2 > ((long[]) arrayList.get(size)).length) {
                arrayList.add(new long[4096]);
                size++;
                this.mParent.mNextIndex = 0;
            }
            int i3 = (b2 << 0) | (size << 8) | (this.mParent.mNextIndex << 16);
            this.mParent.mNextIndex += i2;
            int[] iArr = this.mTable;
            if (iArr == null) {
                iArr = EmptyArray.INT;
            }
            this.mTable = GrowingArrayUtils.insert(iArr, this.mSize, ~iBinarySearch, i3);
            this.mSize++;
            return i3;
        }

        public long getValue(int i2) {
            return getValue(i2, 0);
        }

        public long getValueForId(byte b2) {
            return getValueForId(b2, 0);
        }

        public boolean readFromParcel(Parcel parcel) {
            this.mSequence = parcel.readInt();
            int i2 = parcel.readInt();
            this.mSize = i2;
            if (i2 != 0) {
                this.mTable = new int[i2];
                for (int i3 = 0; i3 < this.mSize; i3++) {
                    this.mTable[i3] = parcel.readInt();
                }
            } else {
                this.mTable = null;
            }
            if (validateKeys(true)) {
                return true;
            }
            this.mSize = 0;
            this.mTable = null;
            return false;
        }

        public void resetTable() {
            this.mTable = null;
            this.mSize = 0;
            this.mSequence = this.mParent.mSequence;
        }

        public void setValue(int i2, long j2) {
            setValue(i2, 0, j2);
        }

        public void writeToParcel(Parcel parcel) {
            parcel.writeInt(this.mSequence);
            parcel.writeInt(this.mSize);
            for (int i2 = 0; i2 < this.mSize; i2++) {
                parcel.writeInt(this.mTable[i2]);
            }
        }

        public long getValue(int i2, int i3) {
            assertConsistency();
            try {
                return ((long[]) this.mParent.mLongs.get(SparseMappingTable.getArrayFromKey(i2)))[SparseMappingTable.getIndexFromKey(i2) + i3];
            } catch (IndexOutOfBoundsException e2) {
                SparseMappingTable.logOrThrow("key=0x" + Integer.toHexString(i2) + " index=" + i3 + " -- " + dumpInternalState(), e2);
                return 0L;
            }
        }

        public long getValueForId(byte b2, int i2) {
            assertConsistency();
            int iBinarySearch = binarySearch(b2);
            if (iBinarySearch >= 0) {
                int i3 = this.mTable[iBinarySearch];
                try {
                    return ((long[]) this.mParent.mLongs.get(SparseMappingTable.getArrayFromKey(i3)))[SparseMappingTable.getIndexFromKey(i3) + i2];
                } catch (IndexOutOfBoundsException e2) {
                    SparseMappingTable.logOrThrow("id=0x" + Integer.toHexString(b2) + " idx=" + iBinarySearch + " key=0x" + Integer.toHexString(i3) + " index=" + i2 + " -- " + dumpInternalState(), e2);
                }
            }
            return 0L;
        }

        public void setValue(int i2, int i3, long j2) {
            assertConsistency();
            if (j2 < 0) {
                SparseMappingTable.logOrThrow("can't store negative values key=0x" + Integer.toHexString(i2) + " index=" + i3 + " value=" + j2 + " -- " + dumpInternalState());
                return;
            }
            try {
                ((long[]) this.mParent.mLongs.get(SparseMappingTable.getArrayFromKey(i2)))[SparseMappingTable.getIndexFromKey(i2) + i3] = j2;
            } catch (IndexOutOfBoundsException e2) {
                SparseMappingTable.logOrThrow("key=0x" + Integer.toHexString(i2) + " index=" + i3 + " value=" + j2 + " -- " + dumpInternalState(), e2);
            }
        }
    }

    public SparseMappingTable() {
        ArrayList<long[]> arrayList = new ArrayList<>();
        this.mLongs = arrayList;
        arrayList.add(new long[4096]);
    }

    public static int getArrayFromKey(int i2) {
        return (i2 >> 8) & 255;
    }

    public static byte getIdFromKey(int i2) {
        return (byte) ((i2 >> 0) & 255);
    }

    public static int getIndexFromKey(int i2) {
        return (i2 >> 16) & 65535;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logOrThrow(String str) {
        logOrThrow(str, new RuntimeException("Stack trace"));
    }

    private static void readCompactedLongArray(Parcel parcel, long[] jArr, int i2) {
        int length = jArr.length;
        if (i2 > length) {
            logOrThrow(m.e("bad array lengths: got ", i2, " array is ", length));
            return;
        }
        int i3 = 0;
        while (i3 < i2) {
            int i4 = parcel.readInt();
            if (i4 >= 0) {
                jArr[i3] = i4;
            } else {
                jArr[i3] = ((long) parcel.readInt()) | (((long) (~i4)) << 32);
            }
            i3++;
        }
        while (i3 < length) {
            jArr[i3] = 0;
            i3++;
        }
    }

    private static void writeCompactedLongArray(Parcel parcel, long[] jArr, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            long j2 = jArr[i3];
            if (j2 < 0) {
                Slog.w(TAG, "Time val negative: " + j2);
                j2 = 0L;
            }
            if (j2 <= 2147483647L) {
                parcel.writeInt((int) j2);
            } else {
                parcel.writeInt(~((int) (2147483647L & (j2 >> 32))));
                parcel.writeInt((int) (j2 & 4294967295L));
            }
        }
    }

    public String dumpInternalState(boolean z2) {
        StringBuilder sb = new StringBuilder("SparseMappingTable{mSequence=");
        sb.append(this.mSequence);
        sb.append(" mNextIndex=");
        sb.append(this.mNextIndex);
        sb.append(" mLongs.size=");
        int size = this.mLongs.size();
        sb.append(size);
        sb.append("\n");
        if (z2) {
            for (int i2 = 0; i2 < size; i2++) {
                long[] jArr = this.mLongs.get(i2);
                for (int i3 = 0; i3 < jArr.length && (i2 != size - 1 || i3 != this.mNextIndex); i3++) {
                    sb.append(String.format(" %4d %d 0x%016x %-19d\n", Integer.valueOf(i2), Integer.valueOf(i3), Long.valueOf(jArr[i3]), Long.valueOf(jArr[i3])));
                }
            }
        }
        sb.append("}");
        return sb.toString();
    }

    public void readFromParcel(Parcel parcel) {
        this.mSequence = parcel.readInt();
        this.mNextIndex = parcel.readInt();
        this.mLongs.clear();
        int i2 = parcel.readInt();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = parcel.readInt();
            long[] jArr = new long[i4];
            readCompactedLongArray(parcel, jArr, i4);
            this.mLongs.add(jArr);
        }
        if (i2 > 0) {
            int i5 = i2 - 1;
            if (this.mLongs.get(i5).length == this.mNextIndex) {
                return;
            }
            EventLog.writeEvent(1397638484, "73252178", -1, "");
            throw new IllegalStateException("Expected array of length " + this.mNextIndex + " but was " + this.mLongs.get(i5).length);
        }
    }

    public void reset() {
        this.mLongs.clear();
        this.mLongs.add(new long[4096]);
        this.mNextIndex = 0;
        this.mSequence++;
    }

    public void writeToParcel(Parcel parcel) {
        parcel.writeInt(this.mSequence);
        parcel.writeInt(this.mNextIndex);
        int size = this.mLongs.size();
        parcel.writeInt(size);
        int i2 = 0;
        while (true) {
            int i3 = size - 1;
            if (i2 >= i3) {
                long[] jArr = this.mLongs.get(i3);
                parcel.writeInt(this.mNextIndex);
                writeCompactedLongArray(parcel, jArr, this.mNextIndex);
                return;
            } else {
                long[] jArr2 = this.mLongs.get(i2);
                parcel.writeInt(jArr2.length);
                writeCompactedLongArray(parcel, jArr2, jArr2.length);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void logOrThrow(String str, Throwable th) {
        Slog.e(TAG, str, th);
        if (Build.IS_ENG) {
            throw new RuntimeException(str, th);
        }
    }
}
