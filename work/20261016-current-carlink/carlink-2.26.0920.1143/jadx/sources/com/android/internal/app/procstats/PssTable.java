package com.android.internal.app.procstats;

/* JADX INFO: loaded from: classes2.dex */
public class PssTable extends SparseMappingTable.Table {
    public PssTable(SparseMappingTable sparseMappingTable) {
        super(sparseMappingTable);
    }

    public void mergeStats(PssTable pssTable) {
        int keyCount = pssTable.getKeyCount();
        for (int i2 = 0; i2 < keyCount; i2++) {
            int keyAt = pssTable.getKeyAt(i2);
            mergeStats(SparseMappingTable.getIdFromKey(keyAt), (int) pssTable.getValue(keyAt, 0), pssTable.getValue(keyAt, 1), pssTable.getValue(keyAt, 2), pssTable.getValue(keyAt, 3), pssTable.getValue(keyAt, 4), pssTable.getValue(keyAt, 5), pssTable.getValue(keyAt, 6));
        }
    }

    public void mergeStats(int i2, int i3, long j2, long j3, long j4, long j5, long j6, long j7) {
        int orAddKey = getOrAddKey((byte) i2, 7);
        long value = getValue(orAddKey, 0);
        if (value == 0) {
            setValue(orAddKey, 0, i3);
            setValue(orAddKey, 1, j2);
            setValue(orAddKey, 2, j3);
            setValue(orAddKey, 3, j4);
            setValue(orAddKey, 4, j5);
            setValue(orAddKey, 5, j6);
            setValue(orAddKey, 6, j7);
            return;
        }
        long j8 = ((long) i3) + value;
        setValue(orAddKey, 0, j8);
        if (getValue(orAddKey, 1) > j2) {
            setValue(orAddKey, 1, j2);
        }
        double d2 = value;
        double value2 = getValue(orAddKey, 2) * d2;
        double d3 = i3;
        double d4 = (j3 * d3) + value2;
        double d5 = j8;
        setValue(orAddKey, 2, (long) (d4 / d5));
        if (getValue(orAddKey, 3) < j4) {
            setValue(orAddKey, 3, j4);
        }
        if (getValue(orAddKey, 4) > j5) {
            setValue(orAddKey, 4, j5);
        }
        setValue(orAddKey, 5, (long) (((j6 * d3) + (getValue(orAddKey, 5) * d2)) / d5));
        if (getValue(orAddKey, 6) < j7) {
            setValue(orAddKey, 6, j7);
        }
    }
}
