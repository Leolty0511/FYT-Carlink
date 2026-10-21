package com.google.common.util.concurrent;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.Serializable;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.LongBinaryOperator;
import java.util.function.LongUnaryOperator;
import java.util.function.Predicate;
import java.util.function.ToLongFunction;

/* JADX INFO: loaded from: classes4.dex */
@J2ktIncompatible
@ElementTypesAreNonnullByDefault
@GwtCompatible
public final class AtomicLongMap<K> implements Serializable {
    private transient Map<K, Long> asMap;
    private final ConcurrentHashMap<K, Long> map;

    private AtomicLongMap(ConcurrentHashMap<K, Long> concurrentHashMap) {
        this.map = (ConcurrentHashMap) Preconditions.checkNotNull(concurrentHashMap);
    }

    public static <K> AtomicLongMap<K> create() {
        return new AtomicLongMap<>(new ConcurrentHashMap());
    }

    private Map<K, Long> createAsMap() {
        return Collections.unmodifiableMap(this.map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long lambda$accumulateAndGet$2(LongBinaryOperator longBinaryOperator, long j2, long j3) {
        return longBinaryOperator.applyAsLong(j3, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long lambda$getAndAccumulate$3(LongBinaryOperator longBinaryOperator, long j2, long j3) {
        return longBinaryOperator.applyAsLong(j3, j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$getAndUpdate$1(AtomicLong atomicLong, LongUnaryOperator longUnaryOperator, Object obj, Long l2) {
        long jLongValue = l2 == null ? 0L : l2.longValue();
        atomicLong.set(jLongValue);
        return Long.valueOf(longUnaryOperator.applyAsLong(jLongValue));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ long lambda$put$4(long j2, long j3) {
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$putIfAbsent$6(AtomicBoolean atomicBoolean, long j2, Object obj, Long l2) {
        if (l2 != null && l2.longValue() != 0) {
            return l2;
        }
        atomicBoolean.set(true);
        return Long.valueOf(j2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$removeAllZeros$5(Long l2) {
        return l2.longValue() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Long lambda$updateAndGet$0(LongUnaryOperator longUnaryOperator, Object obj, Long l2) {
        return Long.valueOf(longUnaryOperator.applyAsLong(l2 == null ? 0L : l2.longValue()));
    }

    @CanIgnoreReturnValue
    public long accumulateAndGet(K k2, long j2, LongBinaryOperator longBinaryOperator) {
        Preconditions.checkNotNull(longBinaryOperator);
        return updateAndGet(k2, new q(longBinaryOperator, j2, 0));
    }

    @CanIgnoreReturnValue
    public long addAndGet(K k2, long j2) {
        return accumulateAndGet(k2, j2, new o(0));
    }

    public Map<K, Long> asMap() {
        Map<K, Long> map = this.asMap;
        if (map != null) {
            return map;
        }
        Map<K, Long> mapCreateAsMap = createAsMap();
        this.asMap = mapCreateAsMap;
        return mapCreateAsMap;
    }

    public void clear() {
        this.map.clear();
    }

    public boolean containsKey(Object obj) {
        return this.map.containsKey(obj);
    }

    @CanIgnoreReturnValue
    public long decrementAndGet(K k2) {
        return addAndGet(k2, -1L);
    }

    public long get(K k2) {
        return ((Long) this.map.getOrDefault(k2, 0L)).longValue();
    }

    @CanIgnoreReturnValue
    public long getAndAccumulate(K k2, long j2, LongBinaryOperator longBinaryOperator) {
        Preconditions.checkNotNull(longBinaryOperator);
        return getAndUpdate(k2, new q(longBinaryOperator, j2, 1));
    }

    @CanIgnoreReturnValue
    public long getAndAdd(K k2, long j2) {
        return getAndAccumulate(k2, j2, new o(1));
    }

    @CanIgnoreReturnValue
    public long getAndDecrement(K k2) {
        return getAndAdd(k2, -1L);
    }

    @CanIgnoreReturnValue
    public long getAndIncrement(K k2) {
        return getAndAdd(k2, 1L);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.common.util.concurrent.n] */
    @CanIgnoreReturnValue
    public long getAndUpdate(K k2, final LongUnaryOperator longUnaryOperator) {
        Preconditions.checkNotNull(longUnaryOperator);
        final AtomicLong atomicLong = new AtomicLong();
        this.map.compute(k2, new BiFunction() { // from class: com.google.common.util.concurrent.n
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return AtomicLongMap.lambda$getAndUpdate$1(atomicLong, longUnaryOperator, obj, (Long) obj2);
            }
        });
        return atomicLong.get();
    }

    @CanIgnoreReturnValue
    public long incrementAndGet(K k2) {
        return addAndGet(k2, 1L);
    }

    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @CanIgnoreReturnValue
    public long put(K k2, final long j2) {
        return getAndUpdate(k2, new LongUnaryOperator() { // from class: com.google.common.util.concurrent.t
            @Override // java.util.function.LongUnaryOperator
            public final long applyAsLong(long j3) {
                return AtomicLongMap.lambda$put$4(j2, j3);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.util.concurrent.s] */
    public void putAll(Map<? extends K, ? extends Long> map) {
        map.forEach(new BiConsumer() { // from class: com.google.common.util.concurrent.s
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                this.f548a.put(obj, ((Long) obj2).longValue());
            }
        });
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.common.util.concurrent.m] */
    public long putIfAbsent(K k2, final long j2) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        Long l2 = (Long) this.map.compute(k2, new BiFunction() { // from class: com.google.common.util.concurrent.m
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return AtomicLongMap.lambda$putIfAbsent$6(atomicBoolean, j2, obj, (Long) obj2);
            }
        });
        if (atomicBoolean.get()) {
            return 0L;
        }
        return l2.longValue();
    }

    @CanIgnoreReturnValue
    public long remove(K k2) {
        Long lRemove = this.map.remove(k2);
        if (lRemove == null) {
            return 0L;
        }
        return lRemove.longValue();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.util.concurrent.r] */
    public void removeAllZeros() {
        this.map.values().removeIf(new Predicate() { // from class: com.google.common.util.concurrent.r
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return AtomicLongMap.lambda$removeAllZeros$5((Long) obj);
            }
        });
    }

    @CanIgnoreReturnValue
    public boolean removeIfZero(K k2) {
        return remove(k2, 0L);
    }

    public boolean replace(K k2, long j2, long j3) {
        if (j2 == 0) {
            return putIfAbsent(k2, j3) == 0;
        }
        return this.map.replace(k2, Long.valueOf(j2), Long.valueOf(j3));
    }

    public int size() {
        return this.map.size();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.util.concurrent.p] */
    public long sum() {
        return this.map.values().stream().mapToLong(new ToLongFunction() { // from class: com.google.common.util.concurrent.p
            @Override // java.util.function.ToLongFunction
            public final long applyAsLong(Object obj) {
                return ((Long) obj).longValue();
            }
        }).sum();
    }

    public String toString() {
        return this.map.toString();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.util.concurrent.l] */
    @CanIgnoreReturnValue
    public long updateAndGet(K k2, final LongUnaryOperator longUnaryOperator) {
        Preconditions.checkNotNull(longUnaryOperator);
        return ((Long) this.map.compute(k2, new BiFunction() { // from class: com.google.common.util.concurrent.l
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return AtomicLongMap.lambda$updateAndGet$0(longUnaryOperator, obj, (Long) obj2);
            }
        })).longValue();
    }

    public static <K> AtomicLongMap<K> create(Map<? extends K, ? extends Long> map) {
        AtomicLongMap<K> atomicLongMapCreate = create();
        atomicLongMapCreate.putAll(map);
        return atomicLongMapCreate;
    }

    public boolean remove(K k2, long j2) {
        return this.map.remove(k2, Long.valueOf(j2));
    }
}
