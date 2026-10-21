package android.content.res;

import android.util.ArrayMap;
import android.util.LongSparseArray;
import java.lang.ref.WeakReference;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public abstract class ThemedResourceCache<T> {
    private LongSparseArray<WeakReference<T>> mNullThemedEntries;
    private ArrayMap<Resources.ThemeKey, LongSparseArray<WeakReference<T>>> mThemedEntries;
    private LongSparseArray<WeakReference<T>> mUnthemedEntries;

    private LongSparseArray<WeakReference<T>> getThemedLocked(Resources.Theme theme, boolean z2) {
        if (theme == null) {
            if (this.mNullThemedEntries == null && z2) {
                this.mNullThemedEntries = new LongSparseArray<>(1);
            }
            return this.mNullThemedEntries;
        }
        if (this.mThemedEntries == null) {
            if (!z2) {
                return null;
            }
            this.mThemedEntries = new ArrayMap<>(1);
        }
        Resources.ThemeKey key = theme.getKey();
        LongSparseArray<WeakReference<T>> longSparseArray = this.mThemedEntries.get(key);
        if (longSparseArray != null || !z2) {
            return longSparseArray;
        }
        LongSparseArray<WeakReference<T>> longSparseArray2 = new LongSparseArray<>(1);
        this.mThemedEntries.put(key.m19clone(), longSparseArray2);
        return longSparseArray2;
    }

    private LongSparseArray<WeakReference<T>> getUnthemedLocked(boolean z2) {
        if (this.mUnthemedEntries == null && z2) {
            this.mUnthemedEntries = new LongSparseArray<>(1);
        }
        return this.mUnthemedEntries;
    }

    private boolean prune(int i2) {
        boolean z2;
        synchronized (this) {
            ArrayMap<Resources.ThemeKey, LongSparseArray<WeakReference<T>>> arrayMap = this.mThemedEntries;
            z2 = true;
            if (arrayMap != null) {
                for (int size = arrayMap.size() - 1; size >= 0; size--) {
                    if (pruneEntriesLocked(this.mThemedEntries.valueAt(size), i2)) {
                        this.mThemedEntries.removeAt(size);
                    }
                }
            }
            pruneEntriesLocked(this.mNullThemedEntries, i2);
            pruneEntriesLocked(this.mUnthemedEntries, i2);
            if (this.mThemedEntries != null || this.mNullThemedEntries != null || this.mUnthemedEntries != null) {
                z2 = false;
            }
        }
        return z2;
    }

    private boolean pruneEntriesLocked(LongSparseArray<WeakReference<T>> longSparseArray, int i2) {
        if (longSparseArray == null) {
            return true;
        }
        for (int size = longSparseArray.size() - 1; size >= 0; size--) {
            WeakReference<T> weakReferenceValueAt = longSparseArray.valueAt(size);
            if (weakReferenceValueAt == null || pruneEntryLocked(weakReferenceValueAt.get(), i2)) {
                longSparseArray.removeAt(size);
            }
        }
        return longSparseArray.size() == 0;
    }

    private boolean pruneEntryLocked(T t2, int i2) {
        return t2 == null || (i2 != 0 && shouldInvalidateEntry(t2, i2));
    }

    public T get(long j2, Resources.Theme theme) {
        WeakReference<T> weakReference;
        WeakReference<T> weakReference2;
        synchronized (this) {
            LongSparseArray<WeakReference<T>> themedLocked = getThemedLocked(theme, false);
            if (themedLocked != null && (weakReference2 = themedLocked.get(j2)) != null) {
                return weakReference2.get();
            }
            LongSparseArray<WeakReference<T>> unthemedLocked = getUnthemedLocked(false);
            if (unthemedLocked == null || (weakReference = unthemedLocked.get(j2)) == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    public void onConfigurationChange(int i2) {
        prune(i2);
    }

    public void put(long j2, Resources.Theme theme, T t2) {
        put(j2, theme, t2, true);
    }

    public abstract boolean shouldInvalidateEntry(T t2, int i2);

    public void put(long j2, Resources.Theme theme, T t2, boolean z2) {
        if (t2 == null) {
            return;
        }
        synchronized (this) {
            try {
                LongSparseArray<WeakReference<T>> unthemedLocked = !z2 ? getUnthemedLocked(true) : getThemedLocked(theme, true);
                if (unthemedLocked != null) {
                    unthemedLocked.put(j2, new WeakReference<>(t2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
