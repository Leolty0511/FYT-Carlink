package android.database.sqlite;

import android.database.DatabaseUtils;
import android.os.CancellationSignal;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public abstract class SQLiteProgram extends SQLiteClosable {
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private final Object[] mBindArgs;
    private final String[] mColumnNames;
    private final SQLiteDatabase mDatabase;
    private final int mNumParameters;
    private final boolean mReadOnly;
    private final String mSql;

    public SQLiteProgram(SQLiteDatabase sQLiteDatabase, String str, Object[] objArr, CancellationSignal cancellationSignal) {
        this.mDatabase = sQLiteDatabase;
        String strTrim = str.trim();
        this.mSql = strTrim;
        int sqlStatementType = DatabaseUtils.getSqlStatementType(strTrim);
        if (sqlStatementType == 4 || sqlStatementType == 5 || sqlStatementType == 6) {
            this.mReadOnly = false;
            this.mColumnNames = EMPTY_STRING_ARRAY;
            this.mNumParameters = 0;
        } else {
            boolean z2 = sqlStatementType == 1;
            SQLiteStatementInfo sQLiteStatementInfo = new SQLiteStatementInfo();
            sQLiteDatabase.getThreadSession().prepare(strTrim, sQLiteDatabase.getThreadDefaultConnectionFlags(z2), cancellationSignal, sQLiteStatementInfo);
            this.mReadOnly = sQLiteStatementInfo.readOnly;
            this.mColumnNames = sQLiteStatementInfo.columnNames;
            this.mNumParameters = sQLiteStatementInfo.numParameters;
        }
        if (objArr != null && objArr.length > this.mNumParameters) {
            throw new IllegalArgumentException("Too many bind arguments.  " + objArr.length + " arguments were provided but the statement needs " + this.mNumParameters + " arguments.");
        }
        int i2 = this.mNumParameters;
        if (i2 == 0) {
            this.mBindArgs = null;
            return;
        }
        Object[] objArr2 = new Object[i2];
        this.mBindArgs = objArr2;
        if (objArr != null) {
            System.arraycopy(objArr, 0, objArr2, 0, objArr.length);
        }
    }

    private void bind(int i2, Object obj) {
        if (i2 >= 1 && i2 <= this.mNumParameters) {
            this.mBindArgs[i2 - 1] = obj;
            return;
        }
        throw new IllegalArgumentException("Cannot bind argument at index " + i2 + " because the index is out of range.  The statement has " + this.mNumParameters + " parameters.");
    }

    public void bindAllArgsAsStrings(String[] strArr) {
        if (strArr != null) {
            for (int length = strArr.length; length != 0; length--) {
                bindString(length, strArr[length - 1]);
            }
        }
    }

    public void bindBlob(int i2, byte[] bArr) {
        if (bArr != null) {
            bind(i2, bArr);
            return;
        }
        throw new IllegalArgumentException("the bind value at index " + i2 + " is null");
    }

    public void bindDouble(int i2, double d2) {
        bind(i2, Double.valueOf(d2));
    }

    public void bindLong(int i2, long j2) {
        bind(i2, Long.valueOf(j2));
    }

    public void bindNull(int i2) {
        bind(i2, null);
    }

    public void bindString(int i2, String str) {
        if (str != null) {
            bind(i2, str);
            return;
        }
        throw new IllegalArgumentException("the bind value at index " + i2 + " is null");
    }

    public void clearBindings() {
        Object[] objArr = this.mBindArgs;
        if (objArr != null) {
            Arrays.fill(objArr, (Object) null);
        }
    }

    public final Object[] getBindArgs() {
        return this.mBindArgs;
    }

    public final String[] getColumnNames() {
        return this.mColumnNames;
    }

    public final int getConnectionFlags() {
        return this.mDatabase.getThreadDefaultConnectionFlags(this.mReadOnly);
    }

    public final SQLiteDatabase getDatabase() {
        return this.mDatabase;
    }

    public final SQLiteSession getSession() {
        return this.mDatabase.getThreadSession();
    }

    public final String getSql() {
        return this.mSql;
    }

    @Deprecated
    public final int getUniqueId() {
        return -1;
    }

    @Override // android.database.sqlite.SQLiteClosable
    public void onAllReferencesReleased() {
        clearBindings();
    }

    public final void onCorruption() {
        this.mDatabase.onCorruption();
    }
}
