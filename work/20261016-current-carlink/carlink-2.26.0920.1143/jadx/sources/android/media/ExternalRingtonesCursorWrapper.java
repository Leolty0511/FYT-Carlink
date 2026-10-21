package android.media;

import android.content.ContentProvider;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.Uri;

/* JADX INFO: loaded from: classes.dex */
public class ExternalRingtonesCursorWrapper extends CursorWrapper {
    private int mUserId;

    public ExternalRingtonesCursorWrapper(Cursor cursor, int i2) {
        super(cursor);
        this.mUserId = i2;
    }

    @Override // android.database.CursorWrapper, android.database.Cursor
    public String getString(int i2) {
        String string = super.getString(i2);
        return i2 == 2 ? ContentProvider.maybeAddUserId(Uri.parse(string), this.mUserId).toString() : string;
    }
}
