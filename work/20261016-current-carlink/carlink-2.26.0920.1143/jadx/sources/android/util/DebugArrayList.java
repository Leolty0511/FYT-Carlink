package android.util;

import android.accessibilityservice.c;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes2.dex */
public class DebugArrayList<T> extends ArrayList<T> {
    private static final String TAG = "DebugArrayList";
    Throwable mThrowable;

    public DebugArrayList() {
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        this.mThrowable = new Throwable("Instance " + hashCode() + " clear");
        super.clear();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T get(int i2) {
        try {
            return (T) super.get(i2);
        } catch (IndexOutOfBoundsException e2) {
            Slog.d(TAG, c.e("Getting index ", i2, " failed"), this.mThrowable);
            throw e2;
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public T remove(int i2) {
        this.mThrowable = new Throwable("Instance " + hashCode() + " removing index=" + i2);
        return (T) super.remove(i2);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection<?> collection) {
        this.mThrowable = new Throwable("Instance " + hashCode() + " removeAll c=" + collection);
        return super.removeAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    public void removeRange(int i2, int i3) {
        this.mThrowable = new Throwable("Instance " + hashCode() + " removing fromIndex=" + i2 + " toIndex=" + i3);
        super.removeRange(i2, i3);
    }

    public DebugArrayList(int i2) {
        super(i2);
    }

    public DebugArrayList(Collection<? extends T> collection) {
        super(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        this.mThrowable = new Throwable("Instance " + hashCode() + " removing t=" + obj);
        return super.remove(obj);
    }
}
