package com.google.common.collect;

import java.util.Map;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
import java.util.Spliterator;
import java.util.function.Function;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class f0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f440b;

    public /* synthetic */ f0(int i2) {
        this.f440b = i2;
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f440b) {
            case 0:
                return ((Map.Entry) obj).getKey();
            case 1:
                return ((Map.Entry) obj).getValue();
            case 2:
                return ImmutableMultimap.lambda$entrySpliterator$1((Map.Entry) obj);
            case 3:
                return Streams.stream((Iterable) obj);
            case 4:
                return ((Map.Entry) obj).getValue();
            case 5:
                return ((Map.Entry) obj).getKey();
            case 6:
                return Multisets.lambda$spliteratorImpl$0((Multiset.Entry) obj);
            case 7:
                return OptionalDouble.of(((Double) obj).doubleValue());
            case 8:
                return Streams.lambda$concat$4((Spliterator.OfLong) obj);
            case 9:
                return OptionalInt.of(((Integer) obj).intValue());
            case 10:
                return Streams.lambda$concat$0((Spliterator) obj);
            case 11:
                return Streams.lambda$concat$6((Spliterator.OfDouble) obj);
            case 12:
                return OptionalLong.of(((Long) obj).longValue());
            case 13:
                return Streams.lambda$concat$2((Spliterator.OfInt) obj);
            default:
                return ((ImmutableTable.Builder) obj).build();
        }
    }
}
