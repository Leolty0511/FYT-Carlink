package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.j2objc.annotations.ReflectionSupport;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.function.DoubleBinaryOperator;
import java.util.function.DoubleUnaryOperator;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@GwtIncompatible
@ReflectionSupport(ReflectionSupport.Level.FULL)
@J2ktIncompatible
public class AtomicDouble extends Number implements Serializable {
    private static final long serialVersionUID = 0;
    private static final AtomicLongFieldUpdater<AtomicDouble> updater = AtomicLongFieldUpdater.newUpdater(AtomicDouble.class, "value");
    private volatile transient long value;

    public AtomicDouble(double d2) {
        this.value = Double.doubleToRawLongBits(d2);
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
        set(objectInputStream.readDouble());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeDouble(get());
    }

    @CanIgnoreReturnValue
    public final double accumulateAndGet(double d2, DoubleBinaryOperator doubleBinaryOperator) {
        Preconditions.checkNotNull(doubleBinaryOperator);
        return updateAndGet(new i(0, d2, doubleBinaryOperator));
    }

    @CanIgnoreReturnValue
    public final double addAndGet(double d2) {
        return accumulateAndGet(d2, new j(1));
    }

    public final boolean compareAndSet(double d2, double d3) {
        return updater.compareAndSet(this, Double.doubleToRawLongBits(d2), Double.doubleToRawLongBits(d3));
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return get();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) get();
    }

    public final double get() {
        return Double.longBitsToDouble(this.value);
    }

    @CanIgnoreReturnValue
    public final double getAndAccumulate(double d2, DoubleBinaryOperator doubleBinaryOperator) {
        Preconditions.checkNotNull(doubleBinaryOperator);
        return getAndUpdate(new i(1, d2, doubleBinaryOperator));
    }

    @CanIgnoreReturnValue
    public final double getAndAdd(double d2) {
        return getAndAccumulate(d2, new j(0));
    }

    public final double getAndSet(double d2) {
        return Double.longBitsToDouble(updater.getAndSet(this, Double.doubleToRawLongBits(d2)));
    }

    @CanIgnoreReturnValue
    public final double getAndUpdate(DoubleUnaryOperator doubleUnaryOperator) {
        long j2;
        double dLongBitsToDouble;
        do {
            j2 = this.value;
            dLongBitsToDouble = Double.longBitsToDouble(j2);
        } while (!updater.compareAndSet(this, j2, Double.doubleToRawLongBits(doubleUnaryOperator.applyAsDouble(dLongBitsToDouble))));
        return dLongBitsToDouble;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) get();
    }

    public final void lazySet(double d2) {
        updater.lazySet(this, Double.doubleToRawLongBits(d2));
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) get();
    }

    public final void set(double d2) {
        this.value = Double.doubleToRawLongBits(d2);
    }

    public String toString() {
        return Double.toString(get());
    }

    @CanIgnoreReturnValue
    public final double updateAndGet(DoubleUnaryOperator doubleUnaryOperator) {
        long j2;
        double dApplyAsDouble;
        do {
            j2 = this.value;
            dApplyAsDouble = doubleUnaryOperator.applyAsDouble(Double.longBitsToDouble(j2));
        } while (!updater.compareAndSet(this, j2, Double.doubleToRawLongBits(dApplyAsDouble)));
        return dApplyAsDouble;
    }

    public final boolean weakCompareAndSet(double d2, double d3) {
        return updater.weakCompareAndSet(this, Double.doubleToRawLongBits(d2), Double.doubleToRawLongBits(d3));
    }

    public AtomicDouble() {
    }
}
