package android.database;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class Observable<T> {
    protected final ArrayList<T> mObservers = new ArrayList<>();

    public void registerObserver(T t2) {
        if (t2 == null) {
            throw new IllegalArgumentException("The observer is null.");
        }
        synchronized (this.mObservers) {
            if (this.mObservers.contains(t2)) {
                throw new IllegalStateException("Observer " + t2 + " is already registered.");
            }
            this.mObservers.add(t2);
        }
    }

    public void unregisterAll() {
        synchronized (this.mObservers) {
            this.mObservers.clear();
        }
    }

    public void unregisterObserver(T t2) {
        if (t2 == null) {
            throw new IllegalArgumentException("The observer is null.");
        }
        synchronized (this.mObservers) {
            int iIndexOf = this.mObservers.indexOf(t2);
            if (iIndexOf == -1) {
                throw new IllegalStateException("Observer " + t2 + " was not registered.");
            }
            this.mObservers.remove(iIndexOf);
        }
    }
}
