package m;

import android.database.AbstractCursor;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.net.ProxyProperties;
import android.util.Log;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public class a extends AbstractCursor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Cursor f13144a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Cursor[] f13145b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int[] f13146c;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[][] f13150g;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f13147d = 64;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f13148e = new int[64];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f13149f = new int[64];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13151h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DataSetObserver f13152i = new C0071a();

    /* JADX INFO: renamed from: m.a$a, reason: collision with other inner class name */
    public class C0071a extends DataSetObserver {
        public C0071a() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a.this.mPos = -1;
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a.this.mPos = -1;
        }
    }

    public a(Cursor[] cursorArr, String str) {
        this.f13145b = cursorArr;
        int length = cursorArr.length;
        this.f13146c = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            Cursor[] cursorArr2 = this.f13145b;
            if (cursorArr2[i2] != null) {
                cursorArr2[i2].registerDataSetObserver(this.f13152i);
                this.f13145b[i2].moveToFirst();
                this.f13146c[i2] = this.f13145b[i2].getColumnIndexOrThrow(str);
            }
        }
        this.f13144a = null;
        String str2 = ProxyProperties.LOCAL_EXCL_LIST;
        for (int i3 = 0; i3 < length; i3++) {
            Cursor[] cursorArr3 = this.f13145b;
            if (cursorArr3[i3] != null && !cursorArr3[i3].isAfterLast()) {
                String string = this.f13145b[i3].getString(this.f13146c[i3]);
                if (this.f13144a == null || string.compareToIgnoreCase(str2) < 0) {
                    this.f13144a = this.f13145b[i3];
                    str2 = string;
                }
            }
        }
        for (int length2 = this.f13148e.length - 1; length2 >= 0; length2--) {
            this.f13148e[length2] = -2;
        }
        this.f13150g = (int[][]) Array.newInstance((Class<?>) int.class, 64, length);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        int length = this.f13145b.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor[] cursorArr = this.f13145b;
            if (cursorArr[i2] != null) {
                cursorArr[i2].close();
            }
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void deactivate() {
        int length = this.f13145b.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor[] cursorArr = this.f13145b;
            if (cursorArr[i2] != null) {
                cursorArr[i2].deactivate();
            }
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public byte[] getBlob(int i2) {
        return this.f13144a.getBlob(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        Cursor cursor = this.f13144a;
        if (cursor != null) {
            return cursor.getColumnNames();
        }
        int length = this.f13145b.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor[] cursorArr = this.f13145b;
            if (cursorArr[i2] != null) {
                return cursorArr[i2].getColumnNames();
            }
        }
        throw new IllegalStateException("No cursor that can return names");
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        int length = this.f13145b.length;
        int count = 0;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor[] cursorArr = this.f13145b;
            if (cursorArr[i2] != null) {
                count += cursorArr[i2].getCount();
            }
        }
        return count;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public double getDouble(int i2) {
        return this.f13144a.getDouble(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public float getFloat(int i2) {
        return this.f13144a.getFloat(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getInt(int i2) {
        return this.f13144a.getInt(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public long getLong(int i2) {
        return this.f13144a.getLong(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public short getShort(int i2) {
        return this.f13144a.getShort(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String getString(int i2) {
        return this.f13144a.getString(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getType(int i2) {
        return this.f13144a.getType(i2);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean isNull(int i2) {
        return this.f13144a.isNull(i2);
    }

    @Override // android.database.AbstractCursor, android.database.CrossProcessCursor
    public boolean onMove(int i2, int i3) {
        if (i2 == i3) {
            return true;
        }
        int i4 = i3 % 64;
        if (this.f13148e[i4] == i3) {
            int i5 = this.f13149f[i4];
            Cursor cursor = this.f13145b[i5];
            this.f13144a = cursor;
            if (cursor == null) {
                Log.w("SortCursor", "onMove: cache results in a null cursor.");
                return false;
            }
            cursor.moveToPosition(this.f13150g[i4][i5]);
            this.f13151h = i4;
            return true;
        }
        this.f13144a = null;
        int length = this.f13145b.length;
        if (this.f13151h >= 0) {
            for (int i6 = 0; i6 < length; i6++) {
                Cursor[] cursorArr = this.f13145b;
                if (cursorArr[i6] != null) {
                    cursorArr[i6].moveToPosition(this.f13150g[this.f13151h][i6]);
                }
            }
        }
        if (i3 < i2 || i2 == -1) {
            for (int i7 = 0; i7 < length; i7++) {
                Cursor[] cursorArr2 = this.f13145b;
                if (cursorArr2[i7] != null) {
                    cursorArr2[i7].moveToFirst();
                }
            }
            i2 = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        int i8 = -1;
        while (i2 <= i3) {
            String str = ProxyProperties.LOCAL_EXCL_LIST;
            i8 = -1;
            for (int i9 = 0; i9 < length; i9++) {
                Cursor[] cursorArr3 = this.f13145b;
                if (cursorArr3[i9] != null && !cursorArr3[i9].isAfterLast()) {
                    String string = this.f13145b[i9].getString(this.f13146c[i9]);
                    if (i8 < 0 || string.compareToIgnoreCase(str) < 0) {
                        i8 = i9;
                        str = string;
                    }
                }
            }
            if (i2 == i3) {
                break;
            }
            Cursor[] cursorArr4 = this.f13145b;
            if (cursorArr4[i8] != null) {
                cursorArr4[i8].moveToNext();
            }
            i2++;
        }
        this.f13144a = this.f13145b[i8];
        this.f13148e[i4] = i3;
        this.f13149f[i4] = i8;
        for (int i10 = 0; i10 < length; i10++) {
            Cursor[] cursorArr5 = this.f13145b;
            if (cursorArr5[i10] != null) {
                this.f13150g[i4][i10] = cursorArr5[i10].getPosition();
            }
        }
        this.f13151h = -1;
        return true;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        int length = this.f13145b.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor[] cursorArr = this.f13145b;
            if (cursorArr[i2] != null) {
                cursorArr[i2].registerDataSetObserver(dataSetObserver);
            }
        }
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean requery() {
        int length = this.f13145b.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor[] cursorArr = this.f13145b;
            if (cursorArr[i2] != null && !cursorArr[i2].requery()) {
                return false;
            }
        }
        return true;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
        int length = this.f13145b.length;
        for (int i2 = 0; i2 < length; i2++) {
            Cursor[] cursorArr = this.f13145b;
            if (cursorArr[i2] != null) {
                cursorArr[i2].unregisterDataSetObserver(dataSetObserver);
            }
        }
    }
}
