package com.android.internal.app.procstats;

import android.util.DebugUtils;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes2.dex */
public class SysMemUsageTable extends SparseMappingTable.Table {
    public SysMemUsageTable(SparseMappingTable sparseMappingTable) {
        super(sparseMappingTable);
    }

    private void dumpCategory(PrintWriter printWriter, String str, String str2, int i2, int i3) {
        printWriter.print(str);
        printWriter.print(str2);
        printWriter.print(": ");
        byte b2 = (byte) i2;
        DebugUtils.printSizeValue(printWriter, getValueForId(b2, i3) * 1024);
        printWriter.print(" min, ");
        DebugUtils.printSizeValue(printWriter, getValueForId(b2, i3 + 1) * 1024);
        printWriter.print(" avg, ");
        DebugUtils.printSizeValue(printWriter, getValueForId(b2, i3 + 2) * 1024);
        printWriter.println(" max");
    }

    public static void mergeSysMemUsage(long[] jArr, int i2, long[] jArr2, int i3) {
        int i4 = i2 + 0;
        long j2 = jArr[i4];
        long j3 = jArr2[i3 + 0];
        int i5 = 1;
        if (j2 == 0) {
            jArr[i4] = j3;
            while (i5 < 16) {
                jArr[i2 + i5] = jArr2[i3 + i5];
                i5++;
            }
            return;
        }
        if (j3 > 0) {
            long j4 = j2 + j3;
            jArr[i4] = j4;
            for (int i6 = 16; i5 < i6; i6 = 16) {
                int i7 = i2 + i5;
                long j5 = jArr[i7];
                int i8 = i3 + i5;
                long j6 = jArr2[i8];
                if (j5 > j6) {
                    jArr[i7] = j6;
                }
                int i9 = i7 + 1;
                int i10 = i5;
                jArr[i9] = (long) (((jArr2[i8 + 1] * j3) + (jArr[i9] * j2)) / j4);
                int i11 = i7 + 2;
                long j7 = jArr[i11];
                long j8 = jArr2[i8 + 2];
                if (j7 < j8) {
                    jArr[i11] = j8;
                }
                i5 = i10 + 3;
            }
        }
    }

    public void dump(PrintWriter printWriter, String str, int[] iArr, int[] iArr2) {
        int i2;
        int i3;
        int i4 = -1;
        for (int i5 = 0; i5 < iArr.length; i5++) {
            int i6 = -1;
            for (int i7 = 0; i7 < iArr2.length; i7++) {
                int i8 = iArr[i5];
                int i9 = iArr2[i7];
                int i10 = (i8 + i9) * 14;
                long valueForId = getValueForId((byte) i10, 0);
                if (valueForId > 0) {
                    printWriter.print(str);
                    if (iArr.length > 1) {
                        DumpUtils.printScreenLabel(printWriter, i4 != i8 ? i8 : -1);
                        i2 = i8;
                    } else {
                        i2 = i4;
                    }
                    if (iArr2.length > 1) {
                        DumpUtils.printMemLabel(printWriter, i6 != i9 ? i9 : -1, (char) 0);
                        i3 = i9;
                    } else {
                        i3 = i6;
                    }
                    printWriter.print(": ");
                    printWriter.print(valueForId);
                    printWriter.println(" samples:");
                    dumpCategory(printWriter, str, "  Cached", i10, 1);
                    dumpCategory(printWriter, str, "  Free", i10, 4);
                    dumpCategory(printWriter, str, "  ZRam", i10, 7);
                    dumpCategory(printWriter, str, "  Kernel", i10, 10);
                    dumpCategory(printWriter, str, "  Native", i10, 13);
                    i6 = i3;
                    i4 = i2;
                }
            }
        }
    }

    public long[] getTotalMemUsage() {
        long[] jArr = new long[16];
        int keyCount = getKeyCount();
        for (int i2 = 0; i2 < keyCount; i2++) {
            int keyAt = getKeyAt(i2);
            mergeSysMemUsage(jArr, 0, getArrayForKey(keyAt), SparseMappingTable.getIndexFromKey(keyAt));
        }
        return jArr;
    }

    public void mergeStats(SysMemUsageTable sysMemUsageTable) {
        int keyCount = sysMemUsageTable.getKeyCount();
        for (int i2 = 0; i2 < keyCount; i2++) {
            int keyAt = sysMemUsageTable.getKeyAt(i2);
            mergeStats(SparseMappingTable.getIdFromKey(keyAt), sysMemUsageTable.getArrayForKey(keyAt), SparseMappingTable.getIndexFromKey(keyAt));
        }
    }

    public void mergeStats(int i2, long[] jArr, int i3) {
        int orAddKey = getOrAddKey((byte) i2, 16);
        mergeSysMemUsage(getArrayForKey(orAddKey), SparseMappingTable.getIndexFromKey(orAddKey), jArr, i3);
    }
}
