package com.android.internal.database;

import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.util.Log;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes2.dex */
public class SortCursor extends AbstractCursor {
    private static final String TAG = "SortCursor";
    private int[][] mCurRowNumCache;
    private Cursor mCursor;
    private Cursor[] mCursors;
    private int[] mSortColumns;
    private final int ROWCACHESIZE = 64;
    private int[] mRowNumCache = new int[64];
    private int[] mCursorCache = new int[64];
    private int mLastCacheHit = -1;
    private DataSetObserver mObserver = new DataSetObserver() { // from class: com.android.internal.database.SortCursor.1
        @Override // android.database.DataSetObserver
        public void onChanged() {
            ((AbstractCursor) SortCursor.this).mPos = -1;
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            ((AbstractCursor) SortCursor.this).mPos = -1;
        }
    };

    public SortCursor(Cursor[] cursorArr, String str) {
        this.mCursors = cursorArr;
        int length = cursorArr.length;
        this.mSortColumns = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor = this.mCursors[i2];
            if (cursor != null) {
                cursor.registerDataSetObserver(this.mObserver);
                this.mCursors[i2].moveToFirst();
                this.mSortColumns[i2] = this.mCursors[i2].getColumnIndexOrThrow(str);
            }
        }
        this.mCursor = null;
        String str2 = "";
        for (int i3 = 0; i3 < length; i3++) {
            Cursor cursor2 = this.mCursors[i3];
            if (cursor2 != null && !cursor2.isAfterLast()) {
                String string = this.mCursors[i3].getString(this.mSortColumns[i3]);
                if (this.mCursor == null || string.compareToIgnoreCase(str2) < 0) {
                    this.mCursor = this.mCursors[i3];
                    str2 = string;
                }
            }
        }
        for (int length2 = this.mRowNumCache.length - 1; length2 >= 0; length2--) {
            this.mRowNumCache[length2] = -2;
        }
        this.mCurRowNumCache = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 64, length);
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
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public byte[] getBlob(int i2) {
        return this.mCursor.getBlob(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        Cursor cursor = this.mCursor;
        if (cursor != null) {
            return cursor.getColumnNames();
        }
        int length = this.mCursors.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor cursor2 = this.mCursors[i2];
            if (cursor2 != null) {
                return cursor2.getColumnNames();
            }
        }
        throw new IllegalStateException("No cursor that can return names");
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
        if (i2 == i3) {
            return true;
        }
        int i4 = i3 % 64;
        if (this.mRowNumCache[i4] == i3) {
            int i5 = this.mCursorCache[i4];
            Cursor cursor = this.mCursors[i5];
            this.mCursor = cursor;
            if (cursor == null) {
                Log.w(TAG, "onMove: cache results in a null cursor.");
                return false;
            }
            cursor.moveToPosition(this.mCurRowNumCache[i4][i5]);
            this.mLastCacheHit = i4;
            return true;
        }
        this.mCursor = null;
        int length = this.mCursors.length;
        if (this.mLastCacheHit >= 0) {
            for (int i6 = 0; i6 < length; i6++) {
                Cursor cursor2 = this.mCursors[i6];
                if (cursor2 != null) {
                    cursor2.moveToPosition(this.mCurRowNumCache[this.mLastCacheHit][i6]);
                }
            }
        }
        if (i3 < i2 || i2 == -1) {
            for (int i7 = 0; i7 < length; i7++) {
                Cursor cursor3 = this.mCursors[i7];
                if (cursor3 != null) {
                    cursor3.moveToFirst();
                }
            }
            i2 = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int i8 = -1;
        while (i2 <= i3) {
            String str = "";
            i8 = -1;
            for (int i9 = 0; i9 < length; i9++) {
                Cursor cursor4 = this.mCursors[i9];
                if (cursor4 != null && !cursor4.isAfterLast()) {
                    String string = this.mCursors[i9].getString(this.mSortColumns[i9]);
                    if (i8 < 0 || string.compareToIgnoreCase(str) < 0) {
                        i8 = i9;
                        str = string;
                    }
                }
            }
            if (i2 == i3) {
                break;
            }
            Cursor cursor5 = this.mCursors[i8];
            if (cursor5 != null) {
                cursor5.moveToNext();
            }
            i2++;
        }
        this.mCursor = this.mCursors[i8];
        this.mRowNumCache[i4] = i3;
        this.mCursorCache[i4] = i8;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor cursor6 = this.mCursors[i10];
            if (cursor6 != null) {
                this.mCurRowNumCache[i4][i10] = cursor6.getPosition();
            }
        }
        this.mLastCacheHit = -1;
        return true;
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
