package com.google.common.hash;

import com.google.common.annotations.GwtIncompatible;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Random;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
@GwtIncompatible
@ElementTypesAreNonnullByDefault
abstract class Striped64 extends Number {
    private static final Unsafe UNSAFE;
    private static final long baseOffset;
    private static final long busyOffset;
    volatile transient long base;
    volatile transient int busy;
    volatile transient Cell[] cells;
    static final ThreadLocal<int[]> threadHashCode = new ThreadLocal<>();
    static final Random rng = new Random();
    static final int NCPU = Runtime.getRuntime().availableProcessors();

    public static final class Cell {
        private static final Unsafe UNSAFE;
        private static final long valueOffset;
        volatile long p0;
        volatile long p1;
        volatile long p2;
        volatile long p3;
        volatile long p4;
        volatile long p5;
        volatile long p6;
        volatile long q0;
        volatile long q1;
        volatile long q2;
        volatile long q3;
        volatile long q4;
        volatile long q5;
        volatile long q6;
        volatile long value;

        static {
            try {
                Unsafe unsafe = Striped64.getUnsafe();
                UNSAFE = unsafe;
                valueOffset = unsafe.objectFieldOffset(Cell.class.getDeclaredField("value"));
            } catch (Exception e2) {
                throw new Error(e2);
            }
        }

        public Cell(long j2) {
            this.value = j2;
        }

        public final boolean cas(long j2, long j3) {
            return UNSAFE.compareAndSwapLong(this, valueOffset, j2, j3);
        }
    }

    static {
        try {
            Unsafe unsafe = getUnsafe();
            UNSAFE = unsafe;
            baseOffset = unsafe.objectFieldOffset(Striped64.class.getDeclaredField("base"));
            busyOffset = unsafe.objectFieldOffset(Striped64.class.getDeclaredField("busy"));
        } catch (Exception e2) {
            throw new Error(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Unsafe getUnsafe() {
        try {
            try {
                return Unsafe.getUnsafe();
            } catch (PrivilegedActionException e2) {
                throw new RuntimeException("Could not initialize intrinsics", e2.getCause());
            }
        } catch (SecurityException unused) {
            return (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.common.hash.Striped64.1
                @Override // java.security.PrivilegedExceptionAction
                public Unsafe run() throws IllegalAccessException {
                    for (Field field : Unsafe.class.getDeclaredFields()) {
                        field.setAccessible(true);
                        Object obj = field.get(null);
                        if (Unsafe.class.isInstance(obj)) {
                            return (Unsafe) Unsafe.class.cast(obj);
                        }
                    }
                    throw new NoSuchFieldError("the Unsafe");
                }
            });
        }
    }

    final boolean casBase(long j2, long j3) {
        return UNSAFE.compareAndSwapLong(this, baseOffset, j2, j3);
    }

    final boolean casBusy() {
        return UNSAFE.compareAndSwapInt(this, busyOffset, 0, 1);
    }

    abstract long fn(long j2, long j3);

    final void internalReset(long j2) {
        Cell[] cellArr = this.cells;
        this.base = j2;
        if (cellArr != null) {
            for (Cell cell : cellArr) {
                if (cell != null) {
                    cell.value = j2;
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0056  */
    final void retryUpdate(long j2, int[] iArr, boolean z2) {
        int iNextInt;
        int[] iArr2;
        boolean z3;
        int length;
        boolean z4;
        int length2;
        if (iArr == null) {
            iArr2 = new int[1];
            threadHashCode.set(iArr2);
            iNextInt = rng.nextInt();
            if (iNextInt == 0) {
                iNextInt = 1;
            }
            iArr2[0] = iNextInt;
        } else {
            iNextInt = iArr[0];
            iArr2 = iArr;
        }
        boolean z5 = false;
        int i2 = iNextInt;
        boolean z6 = z2;
        while (true) {
            Cell[] cellArr = this.cells;
            if (cellArr != null && (length = cellArr.length) > 0) {
                Cell cell = cellArr[(length - 1) & i2];
                if (cell == null) {
                    if (this.busy == 0) {
                        Cell cell2 = new Cell(j2);
                        if (this.busy == 0 && casBusy()) {
                            try {
                                Cell[] cellArr2 = this.cells;
                                if (cellArr2 == null || (length2 = cellArr2.length) <= 0) {
                                    z4 = false;
                                } else {
                                    int i3 = (length2 - 1) & i2;
                                    if (cellArr2[i3] == null) {
                                        cellArr2[i3] = cell2;
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                }
                                this.busy = 0;
                                if (z4) {
                                    return;
                                }
                            } catch (Throwable th) {
                                this.busy = 0;
                                throw th;
                            }
                        }
                    }
                    z5 = false;
                    int i4 = i2 ^ (i2 << 13);
                    int i5 = i4 ^ (i4 >>> 17);
                    i2 = i5 ^ (i5 << 5);
                    iArr2[0] = i2;
                } else {
                    if (z6) {
                        long j3 = cell.value;
                        if (cell.cas(j3, fn(j3, j2))) {
                            return;
                        }
                        if (length >= NCPU || this.cells != cellArr) {
                            z5 = false;
                        } else if (!z5) {
                            z5 = true;
                        } else if (this.busy == 0 && casBusy()) {
                            try {
                                if (this.cells == cellArr) {
                                    Cell[] cellArr3 = new Cell[length << 1];
                                    for (int i6 = 0; i6 < length; i6++) {
                                        cellArr3[i6] = cellArr[i6];
                                    }
                                    this.cells = cellArr3;
                                }
                                this.busy = 0;
                                z5 = false;
                            } catch (Throwable th2) {
                                this.busy = 0;
                                throw th2;
                            }
                        }
                    } else {
                        z6 = true;
                    }
                    int i7 = i2 ^ (i2 << 13);
                    int i8 = i7 ^ (i7 >>> 17);
                    i2 = i8 ^ (i8 << 5);
                    iArr2[0] = i2;
                }
            } else if (this.busy == 0 && this.cells == cellArr && casBusy()) {
                try {
                    if (this.cells == cellArr) {
                        Cell[] cellArr4 = new Cell[2];
                        cellArr4[i2 & 1] = new Cell(j2);
                        this.cells = cellArr4;
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    this.busy = 0;
                    if (z3) {
                        return;
                    }
                } catch (Throwable th3) {
                    this.busy = 0;
                    throw th3;
                }
            } else {
                long j4 = this.base;
                if (casBase(j4, fn(j4, j2))) {
                    return;
                }
            }
        }
    }
}
