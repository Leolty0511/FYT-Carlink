package android.os.health;

import android.app.m;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class HealthKeys {
    public static final int BASE_PACKAGE = 40000;
    public static final int BASE_PID = 20000;
    public static final int BASE_PROCESS = 30000;
    public static final int BASE_SERVICE = 50000;
    public static final int BASE_UID = 10000;
    public static final int TYPE_COUNT = 5;
    public static final int TYPE_MEASUREMENT = 1;
    public static final int TYPE_MEASUREMENTS = 4;
    public static final int TYPE_STATS = 2;
    public static final int TYPE_TIMER = 0;
    public static final int TYPE_TIMERS = 3;
    public static final int UNKNOWN_KEY = 0;

    @Target({ElementType.FIELD})
    @Retention(RetentionPolicy.RUNTIME)
    public @interface Constant {
        int type();
    }

    public static class Constants {
        private final String mDataType;
        private final int[][] mKeys;

        public Constants(Class cls) {
            int[][] iArr = new int[5][];
            this.mKeys = iArr;
            this.mDataType = cls.getSimpleName();
            Field[] declaredFields = cls.getDeclaredFields();
            int length = declaredFields.length;
            int length2 = iArr.length;
            SortedIntArray[] sortedIntArrayArr = new SortedIntArray[length2];
            for (int i2 = 0; i2 < length2; i2++) {
                sortedIntArrayArr[i2] = new SortedIntArray(length);
            }
            for (Field field : declaredFields) {
                Constant constant = (Constant) field.getAnnotation(Constant.class);
                if (constant != null) {
                    int iType = constant.type();
                    if (iType >= length2) {
                        throw new RuntimeException("Unknown Constant type " + iType + " on " + field);
                    }
                    try {
                        sortedIntArrayArr[iType].addValue(field.getInt(null));
                    } catch (IllegalAccessException e2) {
                        throw new RuntimeException("Can't read constant value type=" + iType + " field=" + field, e2);
                    }
                }
            }
            for (int i3 = 0; i3 < length2; i3++) {
                this.mKeys[i3] = sortedIntArrayArr[i3].getArray();
            }
        }

        public String getDataType() {
            return this.mDataType;
        }

        public int getIndex(int i2, int i3) {
            int iBinarySearch = Arrays.binarySearch(this.mKeys[i2], i3);
            if (iBinarySearch >= 0) {
                return iBinarySearch;
            }
            throw new RuntimeException(m.f("Unknown Constant ", i3, " (of type ", i2, " )"));
        }

        public int[] getKeys(int i2) {
            return this.mKeys[i2];
        }

        public int getSize(int i2) {
            return this.mKeys[i2].length;
        }
    }

    public static class SortedIntArray {
        int[] mArray;
        int mCount;

        public SortedIntArray(int i2) {
            this.mArray = new int[i2];
        }

        public void addValue(int i2) {
            int[] iArr = this.mArray;
            int i3 = this.mCount;
            this.mCount = i3 + 1;
            iArr[i3] = i2;
        }

        public int[] getArray() {
            int i2 = this.mCount;
            int[] iArr = this.mArray;
            if (i2 == iArr.length) {
                Arrays.sort(iArr);
                return this.mArray;
            }
            int[] iArr2 = new int[i2];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            Arrays.sort(iArr2);
            return iArr2;
        }
    }
}
