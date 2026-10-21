package com.android.server.wifi.util;

import android.util.SparseIntArray;
import com.android.server.wifi.ScoringParams;
import com.android.server.wifi.nano.WifiMetricsProto;
import java.lang.reflect.Array;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class IntCounter extends SparseIntArray implements Iterable<KeyCount> {
    public final int keyLowerBound;
    public final int keyUpperBound;

    public interface ProtobufConverter<T> {
        T convert(int i, int i2);
    }

    public static class KeyCount {
        public int count;
        public int key;

        public KeyCount(int key, int count) {
            this.key = key;
            this.count = count;
        }
    }

    public IntCounter() {
        this(Integer.MIN_VALUE, ScoringParams.Values.MAX_EXPID);
    }

    public IntCounter(int keyLowerBound, int keyUpperBound) {
        this.keyLowerBound = keyLowerBound;
        this.keyUpperBound = keyUpperBound;
    }

    public void increment(int key) {
        add(key, 1);
    }

    public void add(int key, int count) {
        int key2 = Math.max(this.keyLowerBound, Math.min(key, this.keyUpperBound));
        int curCount = get(key2);
        put(key2, curCount + count);
    }

    @Override // java.lang.Iterable
    public Iterator<KeyCount> iterator() {
        return new Iterator<KeyCount>() { // from class: com.android.server.wifi.util.IntCounter.1
            private int mIndex = 0;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.mIndex < IntCounter.this.size();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public KeyCount next() {
                KeyCount kc = new KeyCount(IntCounter.this.keyAt(this.mIndex), IntCounter.this.valueAt(this.mIndex));
                this.mIndex++;
                return kc;
            }
        };
    }

    public <T> T[] toProto(Class<T> cls, ProtobufConverter<T> protobufConverter) {
        T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, size()));
        int i = 0;
        for (KeyCount keyCount : this) {
            tArr[i] = protobufConverter.convert(keyCount.key, keyCount.count);
            i++;
        }
        return tArr;
    }

    public WifiMetricsProto.Int32Count[] toProto() {
        return (WifiMetricsProto.Int32Count[]) toProto(WifiMetricsProto.Int32Count.class, new ProtobufConverter() { // from class: com.android.server.wifi.util.-$$Lambda$IntCounter$Vt2HJ0mJPxz65XXZd8VF8OJUwS8
            @Override // com.android.server.wifi.util.IntCounter.ProtobufConverter
            public final Object convert(int i, int i2) {
                return IntCounter.lambda$toProto$0(i, i2);
            }
        });
    }

    static /* synthetic */ WifiMetricsProto.Int32Count lambda$toProto$0(int key, int count) {
        WifiMetricsProto.Int32Count entry = new WifiMetricsProto.Int32Count();
        entry.key = key;
        entry.count = count;
        return entry;
    }
}
