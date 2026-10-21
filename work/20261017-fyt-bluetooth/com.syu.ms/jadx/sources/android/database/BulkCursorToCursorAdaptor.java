package android.database;

import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public final class BulkCursorToCursorAdaptor extends AbstractWindowedCursor {
    private static final String TAG = "BulkCursor";
    private IBulkCursor mBulkCursor;
    private String[] mColumns;
    private int mCount;
    private AbstractCursor.SelfContentObserver mObserverBridge = new AbstractCursor.SelfContentObserver(this);
    private boolean mWantsAllOnMoveCalls;

    private void throwIfCursorIsClosed() {
        if (this.mBulkCursor == null) {
            throw new StaleDataException("Attempted to access a cursor after it has been closed.");
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        IBulkCursor iBulkCursor = this.mBulkCursor;
        if (iBulkCursor != null) {
            try {
                try {
                    iBulkCursor.close();
                } catch (RemoteException unused) {
                    Log.w(TAG, "Remote process exception when closing");
                }
            } finally {
                this.mBulkCursor = null;
            }
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void deactivate() {
        super.deactivate();
        IBulkCursor iBulkCursor = this.mBulkCursor;
        if (iBulkCursor != null) {
            try {
                iBulkCursor.deactivate();
            } catch (RemoteException unused) {
                Log.w(TAG, "Remote process exception when deactivating");
            }
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        throwIfCursorIsClosed();
        return this.mColumns;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        throwIfCursorIsClosed();
        return this.mCount;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public Bundle getExtras() {
        throwIfCursorIsClosed();
        try {
            return this.mBulkCursor.getExtras();
        } catch (RemoteException e2) {
            throw new RuntimeException(e2);
        }
    }

    public IContentObserver getObserver() {
        return this.mObserverBridge.getContentObserver();
    }

    public void initialize(BulkCursorDescriptor bulkCursorDescriptor) {
        this.mBulkCursor = bulkCursorDescriptor.cursor;
        String[] strArr = bulkCursorDescriptor.columnNames;
        this.mColumns = strArr;
        this.mRowIdColumnIndex = DatabaseUtils.findRowIdColumnIndex(strArr);
        this.mWantsAllOnMoveCalls = bulkCursorDescriptor.wantsAllOnMoveCalls;
        this.mCount = bulkCursorDescriptor.count;
        CursorWindow cursorWindow = bulkCursorDescriptor.window;
        if (cursorWindow != null) {
            setWindow(cursorWindow);
        }
    }

    @Override // android.database.AbstractCursor, android.database.CrossProcessCursor
    public boolean onMove(int i2, int i3) {
        throwIfCursorIsClosed();
        try {
            CursorWindow cursorWindow = this.mWindow;
            if (cursorWindow == null || i3 < cursorWindow.getStartPosition() || i3 >= this.mWindow.getStartPosition() + this.mWindow.getNumRows()) {
                setWindow(this.mBulkCursor.getWindow(i3));
            } else if (this.mWantsAllOnMoveCalls) {
                this.mBulkCursor.onMove(i3);
            }
            return this.mWindow != null;
        } catch (RemoteException unused) {
            Log.e(TAG, "Unable to get window because the remote process is dead");
            return false;
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean requery() {
        throwIfCursorIsClosed();
        try {
            int iRequery = this.mBulkCursor.requery(getObserver());
            this.mCount = iRequery;
            if (iRequery == -1) {
                deactivate();
                return false;
            }
            this.mPos = -1;
            closeWindow();
            super.requery();
            return true;
        } catch (Exception e2) {
            Log.e(TAG, "Unable to requery because the remote process exception " + e2.getMessage());
            deactivate();
            return false;
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public Bundle respond(Bundle bundle) {
        throwIfCursorIsClosed();
        try {
            return this.mBulkCursor.respond(bundle);
        } catch (RemoteException e2) {
            Log.w(TAG, "respond() threw RemoteException, returning an empty bundle.", e2);
            return Bundle.EMPTY;
        }
    }
}
