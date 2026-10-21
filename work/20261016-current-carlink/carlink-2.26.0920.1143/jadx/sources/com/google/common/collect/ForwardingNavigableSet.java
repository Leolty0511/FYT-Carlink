package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes4.dex */
@GwtIncompatible
@ElementTypesAreNonnullByDefault
public abstract class ForwardingNavigableSet<E> extends ForwardingSortedSet<E> implements NavigableSet<E> {

    public class StandardDescendingSet extends Sets.DescendingSet<E> {
        public StandardDescendingSet(ForwardingNavigableSet forwardingNavigableSet) {
            super(forwardingNavigableSet);
        }
    }

    @Override // java.util.NavigableSet
    public E ceiling(@ParametricNullness E e2) {
        return delegate().ceiling(e2);
    }

    @Override // com.google.common.collect.ForwardingSortedSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract NavigableSet<E> delegate();

    @Override // java.util.NavigableSet
    public Iterator<E> descendingIterator() {
        return delegate().descendingIterator();
    }

    @Override // java.util.NavigableSet
    public NavigableSet<E> descendingSet() {
        return delegate().descendingSet();
    }

    @Override // java.util.NavigableSet
    public E floor(@ParametricNullness E e2) {
        return delegate().floor(e2);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<E> headSet(@ParametricNullness E e2, boolean z2) {
        return delegate().headSet(e2, z2);
    }

    @Override // java.util.NavigableSet
    public E higher(@ParametricNullness E e2) {
        return delegate().higher(e2);
    }

    @Override // java.util.NavigableSet
    public E lower(@ParametricNullness E e2) {
        return delegate().lower(e2);
    }

    @Override // java.util.NavigableSet
    public E pollFirst() {
        return delegate().pollFirst();
    }

    @Override // java.util.NavigableSet
    public E pollLast() {
        return delegate().pollLast();
    }

    public E standardCeiling(@ParametricNullness E e2) {
        return (E) Iterators.getNext(tailSet(e2, true).iterator(), null);
    }

    @ParametricNullness
    public E standardFirst() {
        return iterator().next();
    }

    public E standardFloor(@ParametricNullness E e2) {
        return (E) Iterators.getNext(headSet(e2, true).descendingIterator(), null);
    }

    public SortedSet<E> standardHeadSet(@ParametricNullness E e2) {
        return headSet(e2, false);
    }

    public E standardHigher(@ParametricNullness E e2) {
        return (E) Iterators.getNext(tailSet(e2, false).iterator(), null);
    }

    @ParametricNullness
    public E standardLast() {
        return descendingIterator().next();
    }

    public E standardLower(@ParametricNullness E e2) {
        return (E) Iterators.getNext(headSet(e2, false).descendingIterator(), null);
    }

    public E standardPollFirst() {
        return (E) Iterators.pollNext(iterator());
    }

    public E standardPollLast() {
        return (E) Iterators.pollNext(descendingIterator());
    }

    public NavigableSet<E> standardSubSet(@ParametricNullness E e2, boolean z2, @ParametricNullness E e3, boolean z3) {
        return tailSet(e2, z2).headSet(e3, z3);
    }

    public SortedSet<E> standardTailSet(@ParametricNullness E e2) {
        return tailSet(e2, true);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<E> subSet(@ParametricNullness E e2, boolean z2, @ParametricNullness E e3, boolean z3) {
        return delegate().subSet(e2, z2, e3, z3);
    }

    @Override // java.util.NavigableSet
    public NavigableSet<E> tailSet(@ParametricNullness E e2, boolean z2) {
        return delegate().tailSet(e2, z2);
    }

    @Override // com.google.common.collect.ForwardingSortedSet
    public SortedSet<E> standardSubSet(@ParametricNullness E e2, @ParametricNullness E e3) {
        return subSet(e2, true, e3, false);
    }
}
