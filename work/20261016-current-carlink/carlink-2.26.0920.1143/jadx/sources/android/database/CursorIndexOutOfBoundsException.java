package android.database;

import android.app.m;

/* JADX INFO: loaded from: classes.dex */
public class CursorIndexOutOfBoundsException extends IndexOutOfBoundsException {
    public CursorIndexOutOfBoundsException(int i2, int i3) {
        super(m.e("Index ", i2, " requested, with a size of ", i3));
    }

    public CursorIndexOutOfBoundsException(String str) {
        super(str);
    }
}
