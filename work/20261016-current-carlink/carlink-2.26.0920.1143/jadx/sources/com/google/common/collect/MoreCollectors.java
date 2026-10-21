package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;
import java.util.stream.Collector;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible
@ElementTypesAreNonnullByDefault
public final class MoreCollectors {
    private static final Object NULL_PLACEHOLDER = new Object();
    private static final Collector<Object, ?, Object> ONLY_ELEMENT;
    private static final Collector<Object, ?, Optional<Object>> TO_OPTIONAL;

    public static final class ToOptionalState {
        static final int MAX_EXTRAS = 4;
        Object element = null;
        List<Object> extras = Collections.emptyList();

        public void add(Object obj) {
            Preconditions.checkNotNull(obj);
            if (this.element == null) {
                this.element = obj;
                return;
            }
            if (this.extras.isEmpty()) {
                ArrayList arrayList = new ArrayList(4);
                this.extras = arrayList;
                arrayList.add(obj);
            } else {
                if (this.extras.size() >= 4) {
                    throw multiples(true);
                }
                this.extras.add(obj);
            }
        }

        public ToOptionalState combine(ToOptionalState toOptionalState) {
            if (this.element == null) {
                return toOptionalState;
            }
            if (toOptionalState.element == null) {
                return this;
            }
            if (this.extras.isEmpty()) {
                this.extras = new ArrayList();
            }
            this.extras.add(toOptionalState.element);
            this.extras.addAll(toOptionalState.extras);
            if (this.extras.size() <= 4) {
                return this;
            }
            List<Object> list = this.extras;
            list.subList(4, list.size()).clear();
            throw multiples(true);
        }

        public Object getElement() {
            if (this.element == null) {
                throw new NoSuchElementException();
            }
            if (this.extras.isEmpty()) {
                return this.element;
            }
            throw multiples(false);
        }

        public Optional<Object> getOptional() {
            if (this.extras.isEmpty()) {
                return Optional.ofNullable(this.element);
            }
            throw multiples(false);
        }

        public IllegalArgumentException multiples(boolean z2) {
            StringBuilder sb = new StringBuilder("expected one element but was: <");
            sb.append(this.element);
            for (Object obj : this.extras) {
                sb.append(", ");
                sb.append(obj);
            }
            if (z2) {
                sb.append(", ...");
            }
            sb.append('>');
            throw new IllegalArgumentException(sb.toString());
        }
    }

    static {
        int i2 = 2;
        TO_OPTIONAL = Collector.of(new p(i2), new r(i2), new l(9), new c(6), Collector.Characteristics.UNORDERED);
        int i3 = 3;
        ONLY_ELEMENT = Collector.of(new p(i3), new r(i3), new l(10), new c(7), Collector.Characteristics.UNORDERED);
    }

    private MoreCollectors() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0(ToOptionalState toOptionalState, Object obj) {
        if (obj == null) {
            obj = NULL_PLACEHOLDER;
        }
        toOptionalState.add(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object lambda$static$1(ToOptionalState toOptionalState) {
        Object element = toOptionalState.getElement();
        if (element == NULL_PLACEHOLDER) {
            return null;
        }
        return element;
    }

    public static <T> Collector<T, ?, T> onlyElement() {
        return (Collector<T, ?, T>) ONLY_ELEMENT;
    }

    public static <T> Collector<T, ?, Optional<T>> toOptional() {
        return (Collector<T, ?, Optional<T>>) TO_OPTIONAL;
    }
}
