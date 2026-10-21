package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.ImmutableLongArray;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleUnaryOperator;

/* JADX INFO: loaded from: classes4.dex */
@J2ktIncompatible
@ElementTypesAreNonnullByDefault
@GwtIncompatible
public class AtomicDoubleArray implements Serializable {
    private static final long serialVersionUID = 0;
    private transient AtomicLongArray longs;

    public AtomicDoubleArray(int i2) {
        this.longs = new AtomicLongArray(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$accumulateAndGet$1(DoubleBinaryOperator doubleBinaryOperator, double d2, double d3) {
        return doubleBinaryOperator.applyAsDouble(d3, d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$getAndAccumulate$0(DoubleBinaryOperator doubleBinaryOperator, double d2, double d3) {
        return doubleBinaryOperator.applyAsDouble(d3, d2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i2 = objectInputStream.readInt();
        ImmutableLongArray.Builder builder = ImmutableLongArray.builder();
        for (int i3 = 0; i3 < i2; i3++) {
            builder.add(Double.doubleToRawLongBits(objectInputStream.readDouble()));
        }
        this.longs = new AtomicLongArray(builder.build().toArray());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int length = length();
        objectOutputStream.writeInt(length);
        for (int i2 = 0; i2 < length; i2++) {
            objectOutputStream.writeDouble(get(i2));
        }
    }

    @CanIgnoreReturnValue
    public final double accumulateAndGet(int i2, double d2, DoubleBinaryOperator doubleBinaryOperator) {
        Preconditions.checkNotNull(doubleBinaryOperator);
        return updateAndGet(i2, new i(3, d2, doubleBinaryOperator));
    }

    @CanIgnoreReturnValue
    public double addAndGet(int i2, double d2) {
        return accumulateAndGet(i2, d2, new j(2));
    }

    public final boolean compareAndSet(int i2, double d2, double d3) {
        return this.longs.compareAndSet(i2, Double.doubleToRawLongBits(d2), Double.doubleToRawLongBits(d3));
    }

    public final double get(int i2) {
        return Double.longBitsToDouble(this.longs.get(i2));
    }

    @CanIgnoreReturnValue
    public final double getAndAccumulate(int i2, double d2, DoubleBinaryOperator doubleBinaryOperator) {
        Preconditions.checkNotNull(doubleBinaryOperator);
        return getAndUpdate(i2, new i(2, d2, doubleBinaryOperator));
    }

    @CanIgnoreReturnValue
    public final double getAndAdd(int i2, double d2) {
        return getAndAccumulate(i2, d2, new j(3));
    }

    public final double getAndSet(int i2, double d2) {
        return Double.longBitsToDouble(this.longs.getAndSet(i2, Double.doubleToRawLongBits(d2)));
    }

    @CanIgnoreReturnValue
    public final double getAndUpdate(int i2, DoubleUnaryOperator doubleUnaryOperator) {
        long j2;
        double dLongBitsToDouble;
        do {
            j2 = this.longs.get(i2);
            dLongBitsToDouble = Double.longBitsToDouble(j2);
        } while (!this.longs.compareAndSet(i2, j2, Double.doubleToRawLongBits(doubleUnaryOperator.applyAsDouble(dLongBitsToDouble))));
        return dLongBitsToDouble;
    }

    public final void lazySet(int i2, double d2) {
        this.longs.lazySet(i2, Double.doubleToRawLongBits(d2));
    }

    public final int length() {
        return this.longs.length();
    }

    public final void set(int i2, double d2) {
        this.longs.set(i2, Double.doubleToRawLongBits(d2));
    }

    public String toString() {
        int length = length() - 1;
        if (length == -1) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder((length + 1) * 19);
        sb.append('[');
        int i2 = 0;
        while (true) {
            sb.append(Double.longBitsToDouble(this.longs.get(i2)));
            if (i2 == length) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            i2++;
        }
    }

    @CanIgnoreReturnValue
    public final double updateAndGet(int i2, DoubleUnaryOperator doubleUnaryOperator) {
        long j2;
        double dApplyAsDouble;
        do {
            j2 = this.longs.get(i2);
            dApplyAsDouble = doubleUnaryOperator.applyAsDouble(Double.longBitsToDouble(j2));
        } while (!this.longs.compareAndSet(i2, j2, Double.doubleToRawLongBits(dApplyAsDouble)));
        return dApplyAsDouble;
    }

    public final boolean weakCompareAndSet(int i2, double d2, double d3) {
        return this.longs.weakCompareAndSet(i2, Double.doubleToRawLongBits(d2), Double.doubleToRawLongBits(d3));
    }

    public AtomicDoubleArray(double[] dArr) {
        int length = dArr.length;
        long[] jArr = new long[length];
        for (int i2 = 0; i2 < length; i2++) {
            jArr[i2] = Double.doubleToRawLongBits(dArr[i2]);
        }
        this.longs = new AtomicLongArray(jArr);
    }
}
