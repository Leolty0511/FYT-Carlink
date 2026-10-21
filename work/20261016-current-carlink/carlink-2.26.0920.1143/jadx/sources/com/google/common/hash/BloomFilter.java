package com.google.common.hash;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.math.DoubleMath;
import com.google.common.math.LongMath;
import com.google.common.primitives.SignedBytes;
import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.math.RoundingMode;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Supplier;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
@Beta
@ElementTypesAreNonnullByDefault
public final class BloomFilter<T> implements Predicate<T>, Serializable {
    private final BloomFilterStrategies.LockFreeBitArray bits;
    private final Funnel<? super T> funnel;
    private final int numHashFunctions;
    private final Strategy strategy;

    public static class SerialForm<T> implements Serializable {
        private static final long serialVersionUID = 1;
        final long[] data;
        final Funnel<? super T> funnel;
        final int numHashFunctions;
        final Strategy strategy;

        public SerialForm(BloomFilter<T> bloomFilter) {
            this.data = BloomFilterStrategies.LockFreeBitArray.toPlainArray(((BloomFilter) bloomFilter).bits.data);
            this.numHashFunctions = ((BloomFilter) bloomFilter).numHashFunctions;
            this.funnel = ((BloomFilter) bloomFilter).funnel;
            this.strategy = ((BloomFilter) bloomFilter).strategy;
        }

        public Object readResolve() {
            return new BloomFilter(new BloomFilterStrategies.LockFreeBitArray(this.data), this.numHashFunctions, this.funnel, this.strategy);
        }
    }

    public interface Strategy extends Serializable {
        <T> boolean mightContain(@ParametricNullness T t2, Funnel<? super T> funnel, int i2, BloomFilterStrategies.LockFreeBitArray lockFreeBitArray);

        int ordinal();

        <T> boolean put(@ParametricNullness T t2, Funnel<? super T> funnel, int i2, BloomFilterStrategies.LockFreeBitArray lockFreeBitArray);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i2, double d2) {
        return create(funnel, i2, d2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ BloomFilter lambda$toBloomFilter$1(BloomFilter bloomFilter, BloomFilter bloomFilter2) {
        bloomFilter.putAll(bloomFilter2);
        return bloomFilter;
    }

    @VisibleForTesting
    public static long optimalNumOfBits(long j2, double d2) {
        if (d2 == 0.0d) {
            d2 = Double.MIN_VALUE;
        }
        return (long) ((Math.log(d2) * (-j2)) / (Math.log(2.0d) * Math.log(2.0d)));
    }

    @VisibleForTesting
    public static int optimalNumOfHashFunctions(long j2, long j3) {
        return Math.max(1, (int) Math.round(Math.log(2.0d) * (j3 / j2)));
    }

    public static <T> BloomFilter<T> readFrom(InputStream inputStream, Funnel<? super T> funnel) throws IOException {
        RuntimeException e2;
        int i2;
        int i3;
        Preconditions.checkNotNull(inputStream, "InputStream");
        Preconditions.checkNotNull(funnel, "Funnel");
        int i4 = -1;
        try {
            DataInputStream dataInputStream = new DataInputStream(inputStream);
            byte b2 = dataInputStream.readByte();
            try {
                i3 = UnsignedBytes.toInt(dataInputStream.readByte());
                try {
                    i4 = dataInputStream.readInt();
                    BloomFilterStrategies bloomFilterStrategies = BloomFilterStrategies.values()[b2];
                    BloomFilterStrategies.LockFreeBitArray lockFreeBitArray = new BloomFilterStrategies.LockFreeBitArray(LongMath.checkedMultiply(i4, 64L));
                    for (int i5 = 0; i5 < i4; i5++) {
                        lockFreeBitArray.putData(i5, dataInputStream.readLong());
                    }
                    return new BloomFilter<>(lockFreeBitArray, i3, funnel, bloomFilterStrategies);
                } catch (RuntimeException e3) {
                    e2 = e3;
                    int i6 = i4;
                    i4 = b2;
                    i2 = i6;
                    StringBuilder sbT = android.accessibilityservice.c.t("Unable to deserialize BloomFilter from InputStream. strategyOrdinal: ", i4, " numHashFunctions: ", i3, " dataLength: ");
                    sbT.append(i2);
                    throw new IOException(sbT.toString(), e2);
                }
            } catch (RuntimeException e4) {
                e2 = e4;
                i3 = -1;
                i4 = b2;
                i2 = -1;
            }
        } catch (RuntimeException e5) {
            e2 = e5;
            i2 = -1;
            i3 = -1;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    public static <T> Collector<T, ?, BloomFilter<T>> toBloomFilter(Funnel<? super T> funnel, long j2) {
        return toBloomFilter(funnel, j2, 0.03d);
    }

    private Object writeReplace() {
        return new SerialForm(this);
    }

    @Override // com.google.common.base.Predicate
    @Deprecated
    public boolean apply(@ParametricNullness T t2) {
        return mightContain(t2);
    }

    public long approximateElementCount() {
        double dBitSize = this.bits.bitSize();
        return DoubleMath.roundToLong(((-Math.log1p(-(this.bits.bitCount() / dBitSize))) * dBitSize) / ((double) this.numHashFunctions), RoundingMode.HALF_UP);
    }

    @VisibleForTesting
    public long bitSize() {
        return this.bits.bitSize();
    }

    public BloomFilter<T> copy() {
        return new BloomFilter<>(this.bits.copy(), this.numHashFunctions, this.funnel, this.strategy);
    }

    @Override // com.google.common.base.Predicate
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BloomFilter)) {
            return false;
        }
        BloomFilter bloomFilter = (BloomFilter) obj;
        return this.numHashFunctions == bloomFilter.numHashFunctions && this.funnel.equals(bloomFilter.funnel) && this.bits.equals(bloomFilter.bits) && this.strategy.equals(bloomFilter.strategy);
    }

    public double expectedFpp() {
        return Math.pow(this.bits.bitCount() / bitSize(), this.numHashFunctions);
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.numHashFunctions), this.funnel, this.strategy, this.bits);
    }

    public boolean isCompatible(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        return this != bloomFilter && this.numHashFunctions == bloomFilter.numHashFunctions && bitSize() == bloomFilter.bitSize() && this.strategy.equals(bloomFilter.strategy) && this.funnel.equals(bloomFilter.funnel);
    }

    public boolean mightContain(@ParametricNullness T t2) {
        return this.strategy.mightContain(t2, this.funnel, this.numHashFunctions, this.bits);
    }

    @CanIgnoreReturnValue
    public boolean put(@ParametricNullness T t2) {
        return this.strategy.put(t2, this.funnel, this.numHashFunctions, this.bits);
    }

    public void putAll(BloomFilter<T> bloomFilter) {
        Preconditions.checkNotNull(bloomFilter);
        Preconditions.checkArgument(this != bloomFilter, "Cannot combine a BloomFilter with itself.");
        int i2 = this.numHashFunctions;
        int i3 = bloomFilter.numHashFunctions;
        Preconditions.checkArgument(i2 == i3, "BloomFilters must have the same number of hash functions (%s != %s)", i2, i3);
        Preconditions.checkArgument(bitSize() == bloomFilter.bitSize(), "BloomFilters must have the same size underlying bit arrays (%s != %s)", bitSize(), bloomFilter.bitSize());
        Preconditions.checkArgument(this.strategy.equals(bloomFilter.strategy), "BloomFilters must have equal strategies (%s != %s)", this.strategy, bloomFilter.strategy);
        Preconditions.checkArgument(this.funnel.equals(bloomFilter.funnel), "BloomFilters must have equal funnels (%s != %s)", this.funnel, bloomFilter.funnel);
        this.bits.putAll(bloomFilter.bits);
    }

    @Override // com.google.common.base.Predicate, java.util.function.Predicate
    public final /* synthetic */ boolean test(Object obj) {
        return com.google.common.base.b.a(this, obj);
    }

    public void writeTo(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        dataOutputStream.writeByte(SignedBytes.checkedCast(this.strategy.ordinal()));
        dataOutputStream.writeByte(UnsignedBytes.checkedCast(this.numHashFunctions));
        dataOutputStream.writeInt(this.bits.data.length());
        for (int i2 = 0; i2 < this.bits.data.length(); i2++) {
            dataOutputStream.writeLong(this.bits.data.get(i2));
        }
    }

    private BloomFilter(BloomFilterStrategies.LockFreeBitArray lockFreeBitArray, int i2, Funnel<? super T> funnel, Strategy strategy) {
        Preconditions.checkArgument(i2 > 0, "numHashFunctions (%s) must be > 0", i2);
        Preconditions.checkArgument(i2 <= 255, "numHashFunctions (%s) must be <= 255", i2);
        this.bits = (BloomFilterStrategies.LockFreeBitArray) Preconditions.checkNotNull(lockFreeBitArray);
        this.numHashFunctions = i2;
        this.funnel = (Funnel) Preconditions.checkNotNull(funnel);
        this.strategy = (Strategy) Preconditions.checkNotNull(strategy);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j2, double d2) {
        return create(funnel, j2, d2, BloomFilterStrategies.MURMUR128_MITZ_64);
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.common.hash.b] */
    /* JADX WARN: Type inference failed for: r11v1, types: [com.google.common.hash.c] */
    /* JADX WARN: Type inference failed for: r12v1, types: [com.google.common.hash.d] */
    public static <T> Collector<T, ?, BloomFilter<T>> toBloomFilter(final Funnel<? super T> funnel, final long j2, final double d2) {
        Preconditions.checkNotNull(funnel);
        Preconditions.checkArgument(j2 >= 0, "Expected insertions (%s) must be >= 0", j2);
        Preconditions.checkArgument(d2 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d2));
        Preconditions.checkArgument(d2 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d2));
        return Collector.of(new Supplier() { // from class: com.google.common.hash.b
            @Override // java.util.function.Supplier
            public final Object get() {
                return BloomFilter.create(funnel, j2, d2);
            }
        }, new BiConsumer() { // from class: com.google.common.hash.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((BloomFilter) obj).put(obj2);
            }
        }, new BinaryOperator() { // from class: com.google.common.hash.d
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return BloomFilter.lambda$toBloomFilter$1((BloomFilter) obj, (BloomFilter) obj2);
            }
        }, Collector.Characteristics.UNORDERED, Collector.Characteristics.CONCURRENT);
    }

    @VisibleForTesting
    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j2, double d2, Strategy strategy) {
        Preconditions.checkNotNull(funnel);
        Preconditions.checkArgument(j2 >= 0, "Expected insertions (%s) must be >= 0", j2);
        Preconditions.checkArgument(d2 > 0.0d, "False positive probability (%s) must be > 0.0", Double.valueOf(d2));
        Preconditions.checkArgument(d2 < 1.0d, "False positive probability (%s) must be < 1.0", Double.valueOf(d2));
        Preconditions.checkNotNull(strategy);
        if (j2 == 0) {
            j2 = 1;
        }
        long jOptimalNumOfBits = optimalNumOfBits(j2, d2);
        try {
            return new BloomFilter<>(new BloomFilterStrategies.LockFreeBitArray(jOptimalNumOfBits), optimalNumOfHashFunctions(j2, jOptimalNumOfBits), funnel, strategy);
        } catch (IllegalArgumentException e2) {
            throw new IllegalArgumentException("Could not create BloomFilter of " + jOptimalNumOfBits + " bits", e2);
        }
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, int i2) {
        return create(funnel, i2);
    }

    public static <T> BloomFilter<T> create(Funnel<? super T> funnel, long j2) {
        return create(funnel, j2, 0.03d);
    }
}
