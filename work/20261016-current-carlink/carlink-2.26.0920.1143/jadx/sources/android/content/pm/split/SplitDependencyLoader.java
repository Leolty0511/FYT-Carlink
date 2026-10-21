package android.content.pm.split;

import android.accessibilityservice.c;
import android.content.pm.PackageParser;
import android.util.IntArray;
import android.util.SparseArray;
import java.lang.Exception;
import java.util.Arrays;
import java.util.BitSet;
import libcore.util.EmptyArray;

/* JADX INFO: loaded from: classes.dex */
public abstract class SplitDependencyLoader<E extends Exception> {
    private final SparseArray<int[]> mDependencies;

    public static class IllegalDependencyException extends Exception {
        private IllegalDependencyException(String str) {
            super(str);
        }
    }

    public SplitDependencyLoader(SparseArray<int[]> sparseArray) {
        this.mDependencies = sparseArray;
    }

    private static int[] append(int[] iArr, int i2) {
        if (iArr == null) {
            return new int[]{i2};
        }
        int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length + 1);
        iArrCopyOf[iArr.length] = i2;
        return iArrCopyOf;
    }

    private int[] collectConfigSplitIndices(int i2) {
        int[] iArr = this.mDependencies.get(i2);
        return (iArr == null || iArr.length <= 1) ? EmptyArray.INT : Arrays.copyOfRange(iArr, 1, iArr.length);
    }

    public static SparseArray<int[]> createDependenciesFromPackage(PackageParser.PackageLite packageLite) throws IllegalDependencyException {
        int i2;
        int i3;
        SparseArray<int[]> sparseArray = new SparseArray<>();
        sparseArray.put(0, new int[]{-1});
        int i4 = 0;
        while (true) {
            String[] strArr = packageLite.splitNames;
            if (i4 < strArr.length) {
                if (packageLite.isFeatureSplits[i4]) {
                    String str = packageLite.usesSplitNames[i4];
                    if (str != null) {
                        int iBinarySearch = Arrays.binarySearch(strArr, str);
                        if (iBinarySearch < 0) {
                            throw new IllegalDependencyException("Split '" + packageLite.splitNames[i4] + "' requires split '" + str + "', which is missing.");
                        }
                        i3 = iBinarySearch + 1;
                    } else {
                        i3 = 0;
                    }
                    sparseArray.put(i4 + 1, new int[]{i3});
                }
                i4++;
            } else {
                int i5 = 0;
                while (true) {
                    String[] strArr2 = packageLite.splitNames;
                    if (i5 >= strArr2.length) {
                        BitSet bitSet = new BitSet();
                        int size = sparseArray.size();
                        for (int i6 = 0; i6 < size; i6++) {
                            int iKeyAt = sparseArray.keyAt(i6);
                            bitSet.clear();
                            while (iKeyAt != -1) {
                                if (bitSet.get(iKeyAt)) {
                                    throw new IllegalDependencyException("Cycle detected in split dependencies.");
                                }
                                bitSet.set(iKeyAt);
                                int[] iArr = sparseArray.get(iKeyAt);
                                iKeyAt = iArr != null ? iArr[0] : -1;
                            }
                        }
                        return sparseArray;
                    }
                    if (!packageLite.isFeatureSplits[i5]) {
                        String str2 = packageLite.configForSplit[i5];
                        if (str2 != null) {
                            int iBinarySearch2 = Arrays.binarySearch(strArr2, str2);
                            if (iBinarySearch2 < 0) {
                                throw new IllegalDependencyException("Split '" + packageLite.splitNames[i5] + "' targets split '" + str2 + "', which is missing.");
                            }
                            if (!packageLite.isFeatureSplits[iBinarySearch2]) {
                                StringBuilder sb = new StringBuilder("Split '");
                                sb.append(packageLite.splitNames[i5]);
                                sb.append("' declares itself as configuration split for a non-feature split '");
                                throw new IllegalDependencyException(c.n(sb, packageLite.splitNames[iBinarySearch2], "'"));
                            }
                            i2 = iBinarySearch2 + 1;
                        } else {
                            i2 = 0;
                        }
                        sparseArray.put(i2, append(sparseArray.get(i2), i5 + 1));
                    }
                    i5++;
                }
            }
        }
    }

    public abstract void constructSplit(int i2, int[] iArr, int i3);

    public abstract boolean isSplitCached(int i2);

    public void loadDependenciesForSplit(int i2) {
        if (isSplitCached(i2)) {
            return;
        }
        if (i2 == 0) {
            constructSplit(0, collectConfigSplitIndices(0), -1);
            return;
        }
        IntArray intArray = new IntArray();
        intArray.add(i2);
        while (true) {
            int[] iArr = this.mDependencies.get(i2);
            i2 = (iArr == null || iArr.length <= 0) ? -1 : iArr[0];
            if (i2 < 0 || isSplitCached(i2)) {
                break;
            } else {
                intArray.add(i2);
            }
        }
        int size = intArray.size() - 1;
        while (size >= 0) {
            int i3 = intArray.get(size);
            constructSplit(i3, collectConfigSplitIndices(i3), i2);
            size--;
            i2 = i3;
        }
    }
}
