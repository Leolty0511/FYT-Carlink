package android.database.sqlite;

import android.database.CursorWindow;
import android.os.CancellationSignal;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class SQLiteQuery extends SQLiteProgram {
    private static final String TAG = "SQLiteQuery";
    private final CancellationSignal mCancellationSignal;

    public SQLiteQuery(SQLiteDatabase sQLiteDatabase, String str, CancellationSignal cancellationSignal) {
        super(sQLiteDatabase, str, null, cancellationSignal);
        this.mCancellationSignal = cancellationSignal;
    }

    public int fillWindow(CursorWindow cursorWindow, int i2, int i3, boolean z2) {
        acquireReference();
        try {
            cursorWindow.acquireReference();
            try {
                try {
                    int iExecuteForCursorWindow = getSession().executeForCursorWindow(getSql(), getBindArgs(), cursorWindow, i2, i3, z2, getConnectionFlags(), this.mCancellationSignal);
                    cursorWindow.releaseReference();
                    releaseReference();
                    return iExecuteForCursorWindow;
                } catch (Throwable th) {
                    cursorWindow.releaseReference();
                    throw th;
                }
            } catch (SQLiteDatabaseCorruptException e2) {
                onCorruption();
                throw e2;
            } catch (SQLiteException e3) {
                Log.e(TAG, "exception: " + e3.getMessage() + "; query: " + getSql());
                throw e3;
            }
        } catch (Throwable th2) {
            releaseReference();
            throw th2;
        }
    }

    public String toString() {
        return "SQLiteQuery: " + getSql();
    }
}
