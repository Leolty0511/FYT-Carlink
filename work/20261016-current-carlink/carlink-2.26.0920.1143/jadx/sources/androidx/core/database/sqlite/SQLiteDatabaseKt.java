package androidx.core.database.sqlite;

import android.database.sqlite.SQLiteDatabase;
import t.b;
import z.l;

/* JADX INFO: loaded from: classes2.dex */
public final class SQLiteDatabaseKt {
    public static final <T> T transaction(SQLiteDatabase sQLiteDatabase, boolean z2, l lVar) {
        b.h(sQLiteDatabase, "<this>");
        b.h(lVar, "body");
        if (z2) {
            sQLiteDatabase.beginTransaction();
        } else {
            sQLiteDatabase.beginTransactionNonExclusive();
        }
        try {
            T t2 = (T) lVar.invoke(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
            return t2;
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public static /* synthetic */ Object transaction$default(SQLiteDatabase sQLiteDatabase, boolean z2, l lVar, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z2 = true;
        }
        b.h(sQLiteDatabase, "<this>");
        b.h(lVar, "body");
        if (z2) {
            sQLiteDatabase.beginTransaction();
        } else {
            sQLiteDatabase.beginTransactionNonExclusive();
        }
        try {
            Object objInvoke = lVar.invoke(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
            return objInvoke;
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }
}
