package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.InvalidObjectException;
import java.io.Serializable;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.function.ObjIntConsumer;

/* JADX INFO: loaded from: classes4.dex */
@GwtCompatible(emulated = true)
@ElementTypesAreNonnullByDefault
abstract class AbstractMapBasedMultiset<E> extends AbstractMultiset<E> implements Serializable {

    @J2ktIncompatible
    @GwtIncompatible
    private static final long serialVersionUID = -2250766705698539974L;
    private transient Map<E, Count> backingMap;
    private transient long size;

    public class MapBasedMultisetIterator implements Iterator<E> {
        boolean canRemove;
        Map.Entry<E, Count> currentEntry;
        final Iterator<Map.Entry<E, Count>> entryIterator;
        int occurrencesLeft;

        public MapBasedMultisetIterator() {
            this.entryIterator = AbstractMapBasedMultiset.this.backingMap.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.occurrencesLeft > 0 || this.entryIterator.hasNext();
        }

        @Override // java.util.Iterator
        @ParametricNullness
        public E next() {
            if (this.occurrencesLeft == 0) {
                Map.Entry<E, Count> next = this.entryIterator.next();
                this.currentEntry = next;
                this.occurrencesLeft = next.getValue().get();
            }
            this.occurrencesLeft--;
            this.canRemove = true;
            Map.Entry<E, Count> entry = this.currentEntry;
            Objects.requireNonNull(entry);
            return entry.getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            CollectPreconditions.checkRemove(this.canRemove);
            Map.Entry<E, Count> entry = this.currentEntry;
            Objects.requireNonNull(entry);
            if (entry.getValue().get() <= 0) {
                throw new ConcurrentModificationException();
            }
            if (this.currentEntry.getValue().addAndGet(-1) == 0) {
                this.entryIterator.remove();
            }
            AbstractMapBasedMultiset.access$010(AbstractMapBasedMultiset.this);
            this.canRemove = false;
        }
    }

    public AbstractMapBasedMultiset(Map<E, Count> map) {
        Preconditions.checkArgument(map.isEmpty());
        this.backingMap = map;
    }

    public static /* synthetic */ long access$010(AbstractMapBasedMultiset abstractMapBasedMultiset) {
        long j2 = abstractMapBasedMultiset.size;
        abstractMapBasedMultiset.size = j2 - 1;
        return j2;
    }

    public static /* synthetic */ long access$022(AbstractMapBasedMultiset abstractMapBasedMultiset, long j2) {
        long j3 = abstractMapBasedMultiset.size - j2;
        abstractMapBasedMultiset.size = j3;
        return j3;
    }

    private static int getAndSet(Count count, int i2) {
        if (count == null) {
            return 0;
        }
        return count.getAndSet(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$forEachEntry$0(ObjIntConsumer objIntConsumer, Object obj, Count count) {
        objIntConsumer.accept(obj, count.get());
    }

    @J2ktIncompatible
    @GwtIncompatible
    private void readObjectNoData() throws InvalidObjectException {
        throw new InvalidObjectException("Stream data required");
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int add(@ParametricNullness E e2, int i2) {
        if (i2 == 0) {
            return count(e2);
        }
        int i3 = 0;
        Preconditions.checkArgument(i2 > 0, "occurrences cannot be negative: %s", i2);
        Count count = this.backingMap.get(e2);
        if (count == null) {
            this.backingMap.put(e2, new Count(i2));
        } else {
            int i4 = count.get();
            long j2 = ((long) i4) + ((long) i2);
            Preconditions.checkArgument(j2 <= 2147483647L, "too many occurrences: %s", j2);
            count.add(i2);
            i3 = i4;
        }
        this.size += (long) i2;
        return i3;
    }

    @Override // com.google.common.collect.AbstractMultiset, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Iterator<Count> it = this.backingMap.values().iterator();
        while (it.hasNext()) {
            it.next().set(0);
        }
        this.backingMap.clear();
        this.size = 0L;
    }

    @Override // com.google.common.collect.Multiset
    public int count(Object obj) {
        Count count = (Count) Maps.safeGet(this.backingMap, obj);
        if (count == null) {
            return 0;
        }
        return count.get();
    }

    @Override // com.google.common.collect.AbstractMultiset
    public int distinctElements() {
        return this.backingMap.size();
    }

    @Override // com.google.common.collect.AbstractMultiset
    public Iterator<E> elementIterator() {
        final Iterator<Map.Entry<E, Count>> it = this.backingMap.entrySet().iterator();
        return new Iterator<E>() { // from class: com.google.common.collect.AbstractMapBasedMultiset.1
            Map.Entry<E, Count> toRemove;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public E next() {
                Map.Entry<E, Count> entry = (Map.Entry) it.next();
                this.toRemove = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.toRemove != null, "no calls to next() since the last call to remove()");
                AbstractMapBasedMultiset.access$022(AbstractMapBasedMultiset.this, this.toRemove.getValue().getAndSet(0));
                it.remove();
                this.toRemove = null;
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultiset
    public Iterator<Multiset.Entry<E>> entryIterator() {
        final Iterator<Map.Entry<E, Count>> it = this.backingMap.entrySet().iterator();
        return new Iterator<Multiset.Entry<E>>() { // from class: com.google.common.collect.AbstractMapBasedMultiset.2
            Map.Entry<E, Count> toRemove;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return it.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                Preconditions.checkState(this.toRemove != null, "no calls to next() since the last call to remove()");
                AbstractMapBasedMultiset.access$022(AbstractMapBasedMultiset.this, this.toRemove.getValue().getAndSet(0));
                it.remove();
                this.toRemove = null;
            }

            @Override // java.util.Iterator
            public Multiset.Entry<E> next() {
                final Map.Entry<E, Count> entry = (Map.Entry) it.next();
                this.toRemove = entry;
                return new Multisets.AbstractEntry<E>() { // from class: com.google.common.collect.AbstractMapBasedMultiset.2.1
                    @Override // com.google.common.collect.Multiset.Entry
                    public int getCount() {
                        Count count;
                        Count count2 = (Count) entry.getValue();
                        if ((count2 == null || count2.get() == 0) && (count = (Count) AbstractMapBasedMultiset.this.backingMap.get(getElement())) != null) {
                            return count.get();
                        }
                        if (count2 == null) {
                            return 0;
                        }
                        return count2.get();
                    }

                    @Override // com.google.common.collect.Multiset.Entry
                    @ParametricNullness
                    public E getElement() {
                        return (E) entry.getKey();
                    }
                };
            }
        };
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public Set<Multiset.Entry<E>> entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    public void forEachEntry(ObjIntConsumer<? super E> objIntConsumer) {
        Preconditions.checkNotNull(objIntConsumer);
        this.backingMap.forEach(new f(objIntConsumer, 0));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
    public Iterator<E> iterator() {
        return new MapBasedMultisetIterator();
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int remove(Object obj, int i2) {
        if (i2 == 0) {
            return count(obj);
        }
        Preconditions.checkArgument(i2 > 0, "occurrences cannot be negative: %s", i2);
        Count count = this.backingMap.get(obj);
        if (count == null) {
            return 0;
        }
        int i3 = count.get();
        if (i3 <= i2) {
            this.backingMap.remove(obj);
            i2 = i3;
        }
        count.add(-i2);
        this.size -= (long) i2;
        return i3;
    }

    public void setBackingMap(Map<E, Count> map) {
        this.backingMap = map;
    }

    @Override // com.google.common.collect.AbstractMultiset, com.google.common.collect.Multiset
    @CanIgnoreReturnValue
    public int setCount(@ParametricNullness E e2, int i2) {
        int andSet;
        CollectPreconditions.checkNonnegative(i2, "count");
        if (i2 == 0) {
            andSet = getAndSet(this.backingMap.remove(e2), i2);
        } else {
            Count count = this.backingMap.get(e2);
            int andSet2 = getAndSet(count, i2);
            if (count == null) {
                this.backingMap.put(e2, new Count(i2));
            }
            andSet = andSet2;
        }
        this.size += (long) (i2 - andSet);
        return andSet;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
    public int size() {
        return Ints.saturatedCast(this.size);
    }
}
