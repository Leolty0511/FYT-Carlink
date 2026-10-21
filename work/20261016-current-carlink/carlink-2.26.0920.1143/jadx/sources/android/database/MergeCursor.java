package android.database;

/* JADX INFO: loaded from: classes.dex */
public class MergeCursor extends AbstractCursor {
    private Cursor mCursor;
    private Cursor[] mCursors;
    private DataSetObserver mObserver = new DataSetObserver() { // from class: android.database.MergeCursor.1
        @Override // android.database.DataSetObserver
        public void onChanged() {
            MergeCursor.this.mPos = -1;
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            MergeCursor.this.mPos = -1;
        }
    };

    public MergeCursor(Cursor[] cursorArr) {
        this.mCursors = cursorArr;
        int i2 = 0;
        this.mCursor = cursorArr[0];
        while (true) {
            Cursor[] cursorArr2 = this.mCursors;
            if (i2 >= cursorArr2.length) {
                return;
            }
            Cursor cursor = cursorArr2[i2];
            if (cursor != null) {
                cursor.registerDataSetObserver(this.mObserver);
            }
            i2++;
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        int length = this.mCursors.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null) {
                cursor.close();
            }
        }
        super.close();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void deactivate() {
        int length = this.mCursors.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null) {
                cursor.deactivate();
            }
        }
        super.deactivate();
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public byte[] getBlob(int i2) {
        return this.mCursor.getBlob(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        Cursor cursor = this.mCursor;
        return cursor != null ? cursor.getColumnNames() : new String[0];
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        int length = this.mCursors.length;
        int count = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null) {
                count = cursor.getCount() + count;
            }
        }
        return count;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public double getDouble(int i2) {
        return this.mCursor.getDouble(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public float getFloat(int i2) {
        return this.mCursor.getFloat(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getInt(int i2) {
        return this.mCursor.getInt(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public long getLong(int i2) {
        return this.mCursor.getLong(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public short getShort(int i2) {
        return this.mCursor.getShort(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String getString(int i2) {
        return this.mCursor.getString(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getType(int i2) {
        return this.mCursor.getType(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean isNull(int i2) {
        return this.mCursor.isNull(i2);
    }

    @Override // android.database.AbstractCursor, android.database.CrossProcessCursor
    public boolean onMove(int i2, int i3) {
        this.mCursor = null;
        int length = this.mCursors.length;
        int count = 0;
        for (int i4 = 0; i4 < length; i4++) {
            Cursor cursor = this.mCursors[i4];
            if (cursor != null) {
                if (i3 < cursor.getCount() + count) {
                    this.mCursor = this.mCursors[i4];
                    break;
                }
                count += this.mCursors[i4].getCount();
            }
        }
        Cursor cursor2 = this.mCursor;
        if (cursor2 != null) {
            return cursor2.moveToPosition(i3 - count);
        }
        return false;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void registerContentObserver(ContentObserver contentObserver) {
        int length = this.mCursors.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null) {
                cursor.registerContentObserver(contentObserver);
            }
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        int length = this.mCursors.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean requery() {
        int length = this.mCursors.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null && !cursor.requery()) {
                return false;
            }
        }
        return true;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void unregisterContentObserver(ContentObserver contentObserver) {
        int length = this.mCursors.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null) {
                cursor.unregisterContentObserver(contentObserver);
            }
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        int length = this.mCursors.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null) {
                cursor.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }
}
