package android.database.sqlite;

import java.io.Closeable;

/* JADX INFO: loaded from: classes.dex */
public abstract class SQLiteClosable implements Closeable {
    private int mReferenceCount = 1;

    public void acquireReference() {
        synchronized (this) {
            int i2 = this.mReferenceCount;
            if (i2 <= 0) {
                throw new IllegalStateException("attempt to re-open an already-closed object: " + this);
            }
            this.mReferenceCount = i2 + 1;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        releaseReference();
    }

    public abstract void onAllReferencesReleased();

    @Deprecated
    public void onAllReferencesReleasedFromContainer() {
        onAllReferencesReleased();
    }

    public void releaseReference() {
        boolean z2;
        synchronized (this) {
            z2 = true;
            int i2 = this.mReferenceCount - 1;
            this.mReferenceCount = i2;
            if (i2 != 0) {
                z2 = false;
            }
        }
        if (z2) {
            onAllReferencesReleased();
        }
    }

    @Deprecated
    public void releaseReferenceFromContainer() {
        boolean z2;
        synchronized (this) {
            z2 = true;
            int i2 = this.mReferenceCount - 1;
            this.mReferenceCount = i2;
            if (i2 != 0) {
                z2 = false;
            }
        }
        if (z2) {
            onAllReferencesReleasedFromContainer();
        }
    }
}
