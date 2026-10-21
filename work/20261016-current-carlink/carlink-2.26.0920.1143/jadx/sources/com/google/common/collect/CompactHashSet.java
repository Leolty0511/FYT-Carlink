package com.google.common.collect;

import android.view.View;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;
import java.util.Spliterator;
import java.util.Spliterators;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes4.dex */
@GwtIncompatible
@ElementTypesAreNonnullByDefault
class CompactHashSet<E> extends AbstractSet<E> implements Serializable {

    @VisibleForTesting
    static final double HASH_FLOODING_FPP = 0.001d;
    private static final int MAX_HASH_BUCKET_LENGTH = 9;

    @VisibleForTesting
    transient Object[] elements;
    private transient int[] entries;
    private transient int metadata;
    private transient int size;
    private transient Object table;

    public CompactHashSet() {
        init(3);
    }

    public static <E> CompactHashSet<E> create() {
        return new CompactHashSet<>();
    }

    private Set<E> createHashFloodingResistantDelegate(int i2) {
        return new LinkedHashSet(i2, 1.0f);
    }

    public static <E> CompactHashSet<E> createWithExpectedSize(int i2) {
        return new CompactHashSet<>(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public E element(int i2) {
        return (E) requireElements()[i2];
    }

    private int entry(int i2) {
        return requireEntries()[i2];
    }

    private int hashTableMask() {
        return (1 << (this.metadata & 31)) - 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @J2ktIncompatible
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i2 = objectInputStream.readInt();
        if (i2 < 0) {
            throw new InvalidObjectException(android.accessibilityservice.c.d("Invalid size: ", i2));
        }
        init(i2);
        for (int i3 = 0; i3 < i2; i3++) {
            add(objectInputStream.readObject());
        }
    }

    private Object[] requireElements() {
        Object[] objArr = this.elements;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    private int[] requireEntries() {
        int[] iArr = this.entries;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    private Object requireTable() {
        Object obj = this.table;
        Objects.requireNonNull(obj);
        return obj;
    }

    private void resizeMeMaybe(int i2) {
        int iMin;
        int length = requireEntries().length;
        if (i2 <= length || (iMin = Math.min(View.LAST_APP_AUTOFILL_ID, (Math.max(1, length >>> 1) + length) | 1)) == length) {
            return;
        }
        resizeEntries(iMin);
    }

    @CanIgnoreReturnValue
    private int resizeTable(int i2, int i3, int i4, int i5) {
        Object objCreateTable = CompactHashing.createTable(i3);
        int i6 = i3 - 1;
        if (i5 != 0) {
            CompactHashing.tableSet(objCreateTable, i4 & i6, i5 + 1);
        }
        Object objRequireTable = requireTable();
        int[] iArrRequireEntries = requireEntries();
        for (int i7 = 0; i7 <= i2; i7++) {
            int iTableGet = CompactHashing.tableGet(objRequireTable, i7);
            while (iTableGet != 0) {
                int i8 = iTableGet - 1;
                int i9 = iArrRequireEntries[i8];
                int hashPrefix = CompactHashing.getHashPrefix(i9, i2) | i7;
                int i10 = hashPrefix & i6;
                int iTableGet2 = CompactHashing.tableGet(objCreateTable, i10);
                CompactHashing.tableSet(objCreateTable, i10, iTableGet);
                iArrRequireEntries[i8] = CompactHashing.maskCombine(hashPrefix, iTableGet2, i6);
                iTableGet = CompactHashing.getNext(i9, i2);
            }
        }
        this.table = objCreateTable;
        setHashTableMask(i6);
        return i6;
    }

    private void setElement(int i2, E e2) {
        requireElements()[i2] = e2;
    }

    private void setEntry(int i2, int i3) {
        requireEntries()[i2] = i3;
    }

    private void setHashTableMask(int i2) {
        this.metadata = CompactHashing.maskCombine(this.metadata, 32 - Integer.numberOfLeadingZeros(i2), 31);
    }

    @J2ktIncompatible
    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            objectOutputStream.writeObject(it.next());
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean add(@ParametricNullness E e2) {
        if (needsAllocArrays()) {
            allocArrays();
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.add(e2);
        }
        int[] iArrRequireEntries = requireEntries();
        Object[] objArrRequireElements = requireElements();
        int i2 = this.size;
        int i3 = i2 + 1;
        int iSmearedHash = Hashing.smearedHash(e2);
        int iHashTableMask = hashTableMask();
        int i4 = iSmearedHash & iHashTableMask;
        int iTableGet = CompactHashing.tableGet(requireTable(), i4);
        if (iTableGet != 0) {
            int hashPrefix = CompactHashing.getHashPrefix(iSmearedHash, iHashTableMask);
            int i5 = 0;
            while (true) {
                int i6 = iTableGet - 1;
                int i7 = iArrRequireEntries[i6];
                if (CompactHashing.getHashPrefix(i7, iHashTableMask) == hashPrefix && com.google.common.base.Objects.equal(e2, objArrRequireElements[i6])) {
                    return false;
                }
                int next = CompactHashing.getNext(i7, iHashTableMask);
                i5++;
                if (next != 0) {
                    iTableGet = next;
                } else {
                    if (i5 >= 9) {
                        return convertToHashFloodingResistantImplementation().add(e2);
                    }
                    if (i3 > iHashTableMask) {
                        iHashTableMask = resizeTable(iHashTableMask, CompactHashing.newCapacity(iHashTableMask), iSmearedHash, i2);
                    } else {
                        iArrRequireEntries[i6] = CompactHashing.maskCombine(i7, i3, iHashTableMask);
                    }
                }
            }
        } else if (i3 > iHashTableMask) {
            iHashTableMask = resizeTable(iHashTableMask, CompactHashing.newCapacity(iHashTableMask), iSmearedHash, i2);
        } else {
            CompactHashing.tableSet(requireTable(), i4, i3);
        }
        resizeMeMaybe(i3);
        insertEntry(i2, e2, iSmearedHash, iHashTableMask);
        this.size = i3;
        incrementModCount();
        return true;
    }

    public int adjustAfterRemove(int i2, int i3) {
        return i2 - 1;
    }

    @CanIgnoreReturnValue
    public int allocArrays() {
        Preconditions.checkState(needsAllocArrays(), "Arrays already allocated");
        int i2 = this.metadata;
        int iTableSize = CompactHashing.tableSize(i2);
        this.table = CompactHashing.createTable(iTableSize);
        setHashTableMask(iTableSize - 1);
        this.entries = new int[i2];
        this.elements = new Object[i2];
        return i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        incrementModCount();
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            this.metadata = Ints.constrainToRange(size(), 3, View.LAST_APP_AUTOFILL_ID);
            setDelegateOrNull.clear();
            this.table = null;
            this.size = 0;
            return;
        }
        Arrays.fill(requireElements(), 0, this.size, (Object) null);
        CompactHashing.tableClear(requireTable());
        Arrays.fill(requireEntries(), 0, this.size, 0);
        this.size = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.contains(obj);
        }
        int iSmearedHash = Hashing.smearedHash(obj);
        int iHashTableMask = hashTableMask();
        int iTableGet = CompactHashing.tableGet(requireTable(), iSmearedHash & iHashTableMask);
        if (iTableGet == 0) {
            return false;
        }
        int hashPrefix = CompactHashing.getHashPrefix(iSmearedHash, iHashTableMask);
        do {
            int i2 = iTableGet - 1;
            int iEntry = entry(i2);
            if (CompactHashing.getHashPrefix(iEntry, iHashTableMask) == hashPrefix && com.google.common.base.Objects.equal(obj, element(i2))) {
                return true;
            }
            iTableGet = CompactHashing.getNext(iEntry, iHashTableMask);
        } while (iTableGet != 0);
        return false;
    }

    @VisibleForTesting
    @CanIgnoreReturnValue
    public Set<E> convertToHashFloodingResistantImplementation() {
        Set<E> setCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(hashTableMask() + 1);
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            setCreateHashFloodingResistantDelegate.add(element(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
        this.table = setCreateHashFloodingResistantDelegate;
        this.entries = null;
        this.elements = null;
        incrementModCount();
        return setCreateHashFloodingResistantDelegate;
    }

    @VisibleForTesting
    public Set<E> delegateOrNull() {
        Object obj = this.table;
        if (obj instanceof Set) {
            return (Set) obj;
        }
        return null;
    }

    public int firstEntryIndex() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.lang.Iterable
    public void forEach(Consumer<? super E> consumer) {
        Preconditions.checkNotNull(consumer);
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            setDelegateOrNull.forEach(consumer);
            return;
        }
        int iFirstEntryIndex = firstEntryIndex();
        while (iFirstEntryIndex >= 0) {
            consumer.accept(element(iFirstEntryIndex));
            iFirstEntryIndex = getSuccessor(iFirstEntryIndex);
        }
    }

    public int getSuccessor(int i2) {
        int i3 = i2 + 1;
        if (i3 < this.size) {
            return i3;
        }
        return -1;
    }

    public void incrementModCount() {
        this.metadata += 32;
    }

    public void init(int i2) {
        Preconditions.checkArgument(i2 >= 0, "Expected size must be >= 0");
        this.metadata = Ints.constrainToRange(i2, 1, View.LAST_APP_AUTOFILL_ID);
    }

    public void insertEntry(int i2, @ParametricNullness E e2, int i3, int i4) {
        setEntry(i2, CompactHashing.maskCombine(i3, 0, i4));
        setElement(i2, e2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return size() == 0;
    }

    @VisibleForTesting
    public boolean isUsingHashFloodingResistance() {
        return delegateOrNull() != null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.iterator() : new Iterator<E>() { // from class: com.google.common.collect.CompactHashSet.1
            int currentIndex;
            int expectedMetadata;
            int indexToRemove = -1;

            {
                this.expectedMetadata = CompactHashSet.this.metadata;
                this.currentIndex = CompactHashSet.this.firstEntryIndex();
            }

            private void checkForConcurrentModification() {
                if (CompactHashSet.this.metadata != this.expectedMetadata) {
                    throw new ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.currentIndex >= 0;
            }

            public void incrementExpectedModCount() {
                this.expectedMetadata += 32;
            }

            @Override // java.util.Iterator
            @ParametricNullness
            public E next() {
                checkForConcurrentModification();
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i2 = this.currentIndex;
                this.indexToRemove = i2;
                E e2 = (E) CompactHashSet.this.element(i2);
                this.currentIndex = CompactHashSet.this.getSuccessor(this.currentIndex);
                return e2;
            }

            @Override // java.util.Iterator
            public void remove() {
                checkForConcurrentModification();
                CollectPreconditions.checkRemove(this.indexToRemove >= 0);
                incrementExpectedModCount();
                CompactHashSet compactHashSet = CompactHashSet.this;
                compactHashSet.remove(compactHashSet.element(this.indexToRemove));
                this.currentIndex = CompactHashSet.this.adjustAfterRemove(this.currentIndex, this.indexToRemove);
                this.indexToRemove = -1;
            }
        };
    }

    public void moveLastEntry(int i2, int i3) {
        Object objRequireTable = requireTable();
        int[] iArrRequireEntries = requireEntries();
        Object[] objArrRequireElements = requireElements();
        int size = size() - 1;
        if (i2 >= size) {
            objArrRequireElements[i2] = null;
            iArrRequireEntries[i2] = 0;
            return;
        }
        Object obj = objArrRequireElements[size];
        objArrRequireElements[i2] = obj;
        objArrRequireElements[size] = null;
        iArrRequireEntries[i2] = iArrRequireEntries[size];
        iArrRequireEntries[size] = 0;
        int iSmearedHash = Hashing.smearedHash(obj) & i3;
        int iTableGet = CompactHashing.tableGet(objRequireTable, iSmearedHash);
        int i4 = size + 1;
        if (iTableGet == i4) {
            CompactHashing.tableSet(objRequireTable, iSmearedHash, i2 + 1);
            return;
        }
        while (true) {
            int i5 = iTableGet - 1;
            int i6 = iArrRequireEntries[i5];
            int next = CompactHashing.getNext(i6, i3);
            if (next == i4) {
                iArrRequireEntries[i5] = CompactHashing.maskCombine(i6, i2 + 1, i3);
                return;
            }
            iTableGet = next;
        }
    }

    @VisibleForTesting
    public boolean needsAllocArrays() {
        return this.table == null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public boolean remove(Object obj) {
        if (needsAllocArrays()) {
            return false;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return setDelegateOrNull.remove(obj);
        }
        int iHashTableMask = hashTableMask();
        int iRemove = CompactHashing.remove(obj, null, iHashTableMask, requireTable(), requireEntries(), requireElements(), null);
        if (iRemove == -1) {
            return false;
        }
        moveLastEntry(iRemove, iHashTableMask);
        this.size--;
        incrementModCount();
        return true;
    }

    public void resizeEntries(int i2) {
        this.entries = Arrays.copyOf(requireEntries(), i2);
        this.elements = Arrays.copyOf(requireElements(), i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.size() : this.size;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Spliterator<E> spliterator() {
        if (needsAllocArrays()) {
            return Spliterators.spliterator(new Object[0], 17);
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.spliterator() : Spliterators.spliterator(requireElements(), 0, this.size, 17);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        if (needsAllocArrays()) {
            return new Object[0];
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        return setDelegateOrNull != null ? setDelegateOrNull.toArray() : Arrays.copyOf(requireElements(), this.size);
    }

    public void trimToSize() {
        if (needsAllocArrays()) {
            return;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            Set<E> setCreateHashFloodingResistantDelegate = createHashFloodingResistantDelegate(size());
            setCreateHashFloodingResistantDelegate.addAll(setDelegateOrNull);
            this.table = setCreateHashFloodingResistantDelegate;
            return;
        }
        int i2 = this.size;
        if (i2 < requireEntries().length) {
            resizeEntries(i2);
        }
        int iTableSize = CompactHashing.tableSize(i2);
        int iHashTableMask = hashTableMask();
        if (iTableSize < iHashTableMask) {
            resizeTable(iHashTableMask, iTableSize, 0, 0);
        }
    }

    public static <E> CompactHashSet<E> create(Collection<? extends E> collection) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(collection.size());
        compactHashSetCreateWithExpectedSize.addAll(collection);
        return compactHashSetCreateWithExpectedSize;
    }

    public CompactHashSet(int i2) {
        init(i2);
    }

    @SafeVarargs
    public static <E> CompactHashSet<E> create(E... eArr) {
        CompactHashSet<E> compactHashSetCreateWithExpectedSize = createWithExpectedSize(eArr.length);
        Collections.addAll(compactHashSetCreateWithExpectedSize, eArr);
        return compactHashSetCreateWithExpectedSize;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    @CanIgnoreReturnValue
    public <T> T[] toArray(T[] tArr) {
        if (needsAllocArrays()) {
            if (tArr.length > 0) {
                tArr[0] = null;
            }
            return tArr;
        }
        Set<E> setDelegateOrNull = delegateOrNull();
        if (setDelegateOrNull != null) {
            return (T[]) setDelegateOrNull.toArray(tArr);
        }
        return (T[]) ObjectArrays.toArrayImpl(requireElements(), 0, this.size, tArr);
    }
}
