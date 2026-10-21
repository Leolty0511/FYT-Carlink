package com.google.common.math;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.MoreObjects;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Doubles;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;

/* JADX INFO: loaded from: classes4.dex */
@ElementTypesAreNonnullByDefault
@J2ktIncompatible
@GwtIncompatible
public final class Stats implements Serializable {
    static final int BYTES = 40;
    private static final long serialVersionUID = 0;
    private final long count;
    private final double max;
    private final double mean;
    private final double min;
    private final double sumOfSquaresOfDeltas;

    public Stats(long j2, double d2, double d3, double d4, double d5) {
        this.count = j2;
        this.mean = d2;
        this.sumOfSquaresOfDeltas = d3;
        this.min = d4;
        this.max = d5;
    }

    public static Stats fromByteArray(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkArgument(bArr.length == 40, "Expected Stats.BYTES = %s remaining , got %s", 40, bArr.length);
        return readFrom(ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$toStats$0(StatsAccumulator statsAccumulator, Number number) {
        statsAccumulator.add(number.doubleValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StatsAccumulator lambda$toStats$1(StatsAccumulator statsAccumulator, StatsAccumulator statsAccumulator2) {
        statsAccumulator.addAll(statsAccumulator2);
        return statsAccumulator;
    }

    public static double meanOf(Iterable<? extends Number> iterable) {
        return meanOf(iterable.iterator());
    }

    public static Stats of(Iterable<? extends Number> iterable) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iterable);
        return statsAccumulator.snapshot();
    }

    public static Stats readFrom(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        return new Stats(byteBuffer.getLong(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble(), byteBuffer.getDouble());
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.common.math.c] */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.common.math.d] */
    public static Collector<Number, StatsAccumulator, Stats> toStats() {
        return Collector.of(new android.content.res.a(4), new b(1), new BinaryOperator() { // from class: com.google.common.math.c
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return Stats.lambda$toStats$1((StatsAccumulator) obj, (StatsAccumulator) obj2);
            }
        }, new Function() { // from class: com.google.common.math.d
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((StatsAccumulator) obj).snapshot();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public long count() {
        return this.count;
    }

    public boolean equals(Object obj) {
        if (obj == null || Stats.class != obj.getClass()) {
            return false;
        }
        Stats stats = (Stats) obj;
        return this.count == stats.count && Double.doubleToLongBits(this.mean) == Double.doubleToLongBits(stats.mean) && Double.doubleToLongBits(this.sumOfSquaresOfDeltas) == Double.doubleToLongBits(stats.sumOfSquaresOfDeltas) && Double.doubleToLongBits(this.min) == Double.doubleToLongBits(stats.min) && Double.doubleToLongBits(this.max) == Double.doubleToLongBits(stats.max);
    }

    public int hashCode() {
        return Objects.hashCode(Long.valueOf(this.count), Double.valueOf(this.mean), Double.valueOf(this.sumOfSquaresOfDeltas), Double.valueOf(this.min), Double.valueOf(this.max));
    }

    public double max() {
        Preconditions.checkState(this.count != 0);
        return this.max;
    }

    public double mean() {
        Preconditions.checkState(this.count != 0);
        return this.mean;
    }

    public double min() {
        Preconditions.checkState(this.count != 0);
        return this.min;
    }

    public double populationStandardDeviation() {
        return Math.sqrt(populationVariance());
    }

    public double populationVariance() {
        Preconditions.checkState(this.count > 0);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        if (this.count == 1) {
            return 0.0d;
        }
        return DoubleUtils.ensureNonNegative(this.sumOfSquaresOfDeltas) / count();
    }

    public double sampleStandardDeviation() {
        return Math.sqrt(sampleVariance());
    }

    public double sampleVariance() {
        Preconditions.checkState(this.count > 1);
        if (Double.isNaN(this.sumOfSquaresOfDeltas)) {
            return Double.NaN;
        }
        return DoubleUtils.ensureNonNegative(this.sumOfSquaresOfDeltas) / (this.count - 1);
    }

    public double sum() {
        return this.mean * this.count;
    }

    public double sumOfSquaresOfDeltas() {
        return this.sumOfSquaresOfDeltas;
    }

    public byte[] toByteArray() {
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(40).order(ByteOrder.LITTLE_ENDIAN);
        writeTo(byteBufferOrder);
        return byteBufferOrder.array();
    }

    public String toString() {
        return count() > 0 ? MoreObjects.toStringHelper(this).add("count", this.count).add("mean", this.mean).add("populationStandardDeviation", populationStandardDeviation()).add("min", this.min).add("max", this.max).toString() : MoreObjects.toStringHelper(this).add("count", this.count).toString();
    }

    public void writeTo(ByteBuffer byteBuffer) {
        Preconditions.checkNotNull(byteBuffer);
        Preconditions.checkArgument(byteBuffer.remaining() >= 40, "Expected at least Stats.BYTES = %s remaining , got %s", 40, byteBuffer.remaining());
        byteBuffer.putLong(this.count).putDouble(this.mean).putDouble(this.sumOfSquaresOfDeltas).putDouble(this.min).putDouble(this.max);
    }

    public static double meanOf(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext());
        double dDoubleValue = it.next().doubleValue();
        long j2 = 1;
        while (it.hasNext()) {
            double dDoubleValue2 = it.next().doubleValue();
            j2++;
            dDoubleValue = (Doubles.isFinite(dDoubleValue2) && Doubles.isFinite(dDoubleValue)) ? ((dDoubleValue2 - dDoubleValue) / j2) + dDoubleValue : StatsAccumulator.calculateNewMeanNonFinite(dDoubleValue, dDoubleValue2);
        }
        return dDoubleValue;
    }

    public static Stats of(Iterator<? extends Number> it) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(it);
        return statsAccumulator.snapshot();
    }

    public static Stats of(double... dArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(dArr);
        return statsAccumulator.snapshot();
    }

    public static double meanOf(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0);
        double dCalculateNewMeanNonFinite = dArr[0];
        for (int i2 = 1; i2 < dArr.length; i2++) {
            double d2 = dArr[i2];
            dCalculateNewMeanNonFinite = (Doubles.isFinite(d2) && Doubles.isFinite(dCalculateNewMeanNonFinite)) ? ((d2 - dCalculateNewMeanNonFinite) / ((double) (i2 + 1))) + dCalculateNewMeanNonFinite : StatsAccumulator.calculateNewMeanNonFinite(dCalculateNewMeanNonFinite, d2);
        }
        return dCalculateNewMeanNonFinite;
    }

    public static Stats of(int... iArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(iArr);
        return statsAccumulator.snapshot();
    }

    public static Stats of(long... jArr) {
        StatsAccumulator statsAccumulator = new StatsAccumulator();
        statsAccumulator.addAll(jArr);
        return statsAccumulator.snapshot();
    }

    public static double meanOf(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0);
        double dCalculateNewMeanNonFinite = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            double d2 = iArr[i2];
            dCalculateNewMeanNonFinite = (Doubles.isFinite(d2) && Doubles.isFinite(dCalculateNewMeanNonFinite)) ? ((d2 - dCalculateNewMeanNonFinite) / ((double) (i2 + 1))) + dCalculateNewMeanNonFinite : StatsAccumulator.calculateNewMeanNonFinite(dCalculateNewMeanNonFinite, d2);
        }
        return dCalculateNewMeanNonFinite;
    }

    public static Stats of(DoubleStream doubleStream) {
        return ((StatsAccumulator) doubleStream.collect(new android.content.res.a(5), new e(0), new b(2))).snapshot();
    }

    public static Stats of(IntStream intStream) {
        return ((StatsAccumulator) intStream.collect(new android.content.res.a(6), new f(0), new b(3))).snapshot();
    }

    public static double meanOf(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0);
        double dCalculateNewMeanNonFinite = jArr[0];
        for (int i2 = 1; i2 < jArr.length; i2++) {
            double d2 = jArr[i2];
            dCalculateNewMeanNonFinite = (Doubles.isFinite(d2) && Doubles.isFinite(dCalculateNewMeanNonFinite)) ? ((d2 - dCalculateNewMeanNonFinite) / ((double) (i2 + 1))) + dCalculateNewMeanNonFinite : StatsAccumulator.calculateNewMeanNonFinite(dCalculateNewMeanNonFinite, d2);
        }
        return dCalculateNewMeanNonFinite;
    }

    public static Stats of(LongStream longStream) {
        int i2 = 0;
        return ((StatsAccumulator) longStream.collect(new android.content.res.a(3), new a(i2), new b(i2))).snapshot();
    }
}
