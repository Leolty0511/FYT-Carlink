package l1;

import android.database.AbstractCursor;

/* JADX INFO: loaded from: classes2.dex */
public class a extends AbstractCursor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String[] f13142b = {"_id"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13143a;

    public a(int i2) {
        this.f13143a = 0;
        this.f13143a = i2;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String[] getColumnNames() {
        return f13142b;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getCount() {
        return 1;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public double getDouble(int i2) {
        return 0.0d;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public float getFloat(int i2) {
        return 0.0f;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public int getInt(int i2) {
        return 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public long getLong(int i2) {
        return 0L;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public short getShort(int i2) {
        return (short) 0;
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public String getString(int i2) {
        return Integer.toString(this.f13143a);
    }

    @Override // android.database.AbstractCursor, android.database.Cursor
    public boolean isNull(int i2) {
        return false;
    }
}
