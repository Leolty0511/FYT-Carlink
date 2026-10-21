package com.android.internal.app.procstats;

/* JADX INFO: loaded from: classes2.dex */
public class DurationsTable extends SparseMappingTable.Table {
    public DurationsTable(SparseMappingTable sparseMappingTable) {
        super(sparseMappingTable);
    }

    public void addDuration(int i2, long j2) {
        int orAddKey = getOrAddKey((byte) i2, 1);
        setValue(orAddKey, getValue(orAddKey) + j2);
    }

    public void addDurations(DurationsTable durationsTable) {
        int keyCount = durationsTable.getKeyCount();
        for (int i2 = 0; i2 < keyCount; i2++) {
            int keyAt = durationsTable.getKeyAt(i2);
            addDuration(SparseMappingTable.getIdFromKey(keyAt), durationsTable.getValue(keyAt));
        }
    }
}
