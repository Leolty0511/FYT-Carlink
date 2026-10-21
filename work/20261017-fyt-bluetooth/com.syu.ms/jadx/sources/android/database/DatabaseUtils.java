package android.database;

import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.sqlite.SQLiteAbortException;
import android.database.sqlite.SQLiteConstraintException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseCorruptException;
import android.database.sqlite.SQLiteDiskIOException;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.database.sqlite.SQLiteProgram;
import android.database.sqlite.SQLiteStatement;
import android.net.ProxyProperties;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.OperationCanceledException;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import java.io.FileNotFoundException;
import java.io.PrintStream;
import java.text.Collator;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.codec.binary.Hex;

/* JADX INFO: loaded from: classes.dex */
public class DatabaseUtils {
    private static final boolean DEBUG = false;
    public static final int STATEMENT_ABORT = 6;
    public static final int STATEMENT_ATTACH = 3;
    public static final int STATEMENT_BEGIN = 4;
    public static final int STATEMENT_COMMIT = 5;
    public static final int STATEMENT_DDL = 8;
    public static final int STATEMENT_OTHER = 99;
    public static final int STATEMENT_PRAGMA = 7;
    public static final int STATEMENT_SELECT = 1;
    public static final int STATEMENT_UNPREPARED = 9;
    public static final int STATEMENT_UPDATE = 2;
    private static final String TAG = "DatabaseUtils";
    private static Collator mColl;

    @Deprecated
    public static class InsertHelper {
        public static final int TABLE_INFO_PRAGMA_COLUMNNAME_INDEX = 1;
        public static final int TABLE_INFO_PRAGMA_DEFAULT_INDEX = 4;
        private HashMap<String, Integer> mColumns;
        private final SQLiteDatabase mDb;
        private final String mTableName;
        private String mInsertSQL = null;
        private SQLiteStatement mInsertStatement = null;
        private SQLiteStatement mReplaceStatement = null;
        private SQLiteStatement mPreparedStatement = null;

        public InsertHelper(SQLiteDatabase sQLiteDatabase, String str) {
            this.mDb = sQLiteDatabase;
            this.mTableName = str;
        }

        private void buildSQL() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("INSERT INTO ");
            sb.append(this.mTableName);
            sb.append(" (");
            StringBuilder sb2 = new StringBuilder(128);
            sb2.append("VALUES (");
            Cursor cursorRawQuery = null;
            try {
                cursorRawQuery = this.mDb.rawQuery("PRAGMA table_info(" + this.mTableName + ")", null);
                this.mColumns = new HashMap<>(cursorRawQuery.getCount());
                int i2 = 1;
                while (cursorRawQuery.moveToNext()) {
                    String string = cursorRawQuery.getString(1);
                    String string2 = cursorRawQuery.getString(4);
                    this.mColumns.put(string, Integer.valueOf(i2));
                    sb.append("'");
                    sb.append(string);
                    sb.append("'");
                    if (string2 == null) {
                        sb2.append("?");
                    } else {
                        sb2.append("COALESCE(?, ");
                        sb2.append(string2);
                        sb2.append(")");
                    }
                    sb.append(i2 == cursorRawQuery.getCount() ? ") " : ", ");
                    sb2.append(i2 == cursorRawQuery.getCount() ? ");" : ", ");
                    i2++;
                }
                cursorRawQuery.close();
                sb.append((CharSequence) sb2);
                this.mInsertSQL = sb.toString();
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                throw th;
            }
        }

        private SQLiteStatement getStatement(boolean z2) {
            if (!z2) {
                if (this.mInsertStatement == null) {
                    if (this.mInsertSQL == null) {
                        buildSQL();
                    }
                    this.mInsertStatement = this.mDb.compileStatement(this.mInsertSQL);
                }
                return this.mInsertStatement;
            }
            if (this.mReplaceStatement == null) {
                if (this.mInsertSQL == null) {
                    buildSQL();
                }
                this.mReplaceStatement = this.mDb.compileStatement("INSERT OR REPLACE" + this.mInsertSQL.substring(6));
            }
            return this.mReplaceStatement;
        }

        private long insertInternal(ContentValues contentValues, boolean z2) {
            this.mDb.beginTransactionNonExclusive();
            try {
                SQLiteStatement statement = getStatement(z2);
                statement.clearBindings();
                for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                    DatabaseUtils.bindObjectToProgram(statement, getColumnIndex(entry.getKey()), entry.getValue());
                }
                long jExecuteInsert = statement.executeInsert();
                this.mDb.setTransactionSuccessful();
                return jExecuteInsert;
            } catch (SQLException e2) {
                Log.e(DatabaseUtils.TAG, "Error inserting " + contentValues + " into table  " + this.mTableName, e2);
                return -1L;
            } finally {
                this.mDb.endTransaction();
            }
        }

        public void bind(int i2, double d2) {
            this.mPreparedStatement.bindDouble(i2, d2);
        }

        public void bindNull(int i2) {
            this.mPreparedStatement.bindNull(i2);
        }

        public void close() {
            SQLiteStatement sQLiteStatement = this.mInsertStatement;
            if (sQLiteStatement != null) {
                sQLiteStatement.close();
                this.mInsertStatement = null;
            }
            SQLiteStatement sQLiteStatement2 = this.mReplaceStatement;
            if (sQLiteStatement2 != null) {
                sQLiteStatement2.close();
                this.mReplaceStatement = null;
            }
            this.mInsertSQL = null;
            this.mColumns = null;
        }

        public long execute() {
            SQLiteStatement sQLiteStatement = this.mPreparedStatement;
            if (sQLiteStatement == null) {
                throw new IllegalStateException("you must prepare this inserter before calling execute");
            }
            try {
                return sQLiteStatement.executeInsert();
            } catch (SQLException e2) {
                Log.e(DatabaseUtils.TAG, "Error executing InsertHelper with table " + this.mTableName, e2);
                return -1L;
            } finally {
                this.mPreparedStatement = null;
            }
        }

        public int getColumnIndex(String str) {
            getStatement(false);
            Integer num = this.mColumns.get(str);
            if (num != null) {
                return num.intValue();
            }
            throw new IllegalArgumentException("column '" + str + "' is invalid");
        }

        public long insert(ContentValues contentValues) {
            return insertInternal(contentValues, false);
        }

        public void prepareForInsert() {
            SQLiteStatement statement = getStatement(false);
            this.mPreparedStatement = statement;
            statement.clearBindings();
        }

        public void prepareForReplace() {
            SQLiteStatement statement = getStatement(true);
            this.mPreparedStatement = statement;
            statement.clearBindings();
        }

        public long replace(ContentValues contentValues) {
            return insertInternal(contentValues, true);
        }

        public void bind(int i2, float f2) {
            this.mPreparedStatement.bindDouble(i2, f2);
        }

        public void bind(int i2, long j2) {
            this.mPreparedStatement.bindLong(i2, j2);
        }

        public void bind(int i2, int i3) {
            this.mPreparedStatement.bindLong(i2, i3);
        }

        public void bind(int i2, boolean z2) {
            this.mPreparedStatement.bindLong(i2, z2 ? 1L : 0L);
        }

        public void bind(int i2, byte[] bArr) {
            if (bArr == null) {
                this.mPreparedStatement.bindNull(i2);
            } else {
                this.mPreparedStatement.bindBlob(i2, bArr);
            }
        }

        public void bind(int i2, String str) {
            if (str == null) {
                this.mPreparedStatement.bindNull(i2);
            } else {
                this.mPreparedStatement.bindString(i2, str);
            }
        }
    }

    public static void appendEscapedSQLString(StringBuilder sb, String str) {
        sb.append(DateFormat.QUOTE);
        if (str.indexOf(39) != -1) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                char cCharAt = str.charAt(i2);
                if (cCharAt == '\'') {
                    sb.append(DateFormat.QUOTE);
                }
                sb.append(cCharAt);
            }
        } else {
            sb.append(str);
        }
        sb.append(DateFormat.QUOTE);
    }

    public static String[] appendSelectionArgs(String[] strArr, String[] strArr2) {
        if (strArr == null || strArr.length == 0) {
            return strArr2;
        }
        String[] strArr3 = new String[strArr.length + strArr2.length];
        System.arraycopy(strArr, 0, strArr3, 0, strArr.length);
        System.arraycopy(strArr2, 0, strArr3, strArr.length, strArr2.length);
        return strArr3;
    }

    public static final void appendValueToSql(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append(WifiEnterpriseConfig.EMPTY_VALUE);
            return;
        }
        if (!(obj instanceof Boolean)) {
            appendEscapedSQLString(sb, obj.toString());
        } else if (((Boolean) obj).booleanValue()) {
            sb.append('1');
        } else {
            sb.append('0');
        }
    }

    public static void bindObjectToProgram(SQLiteProgram sQLiteProgram, int i2, Object obj) {
        if (obj == null) {
            sQLiteProgram.bindNull(i2);
            return;
        }
        if ((obj instanceof Double) || (obj instanceof Float)) {
            sQLiteProgram.bindDouble(i2, ((Number) obj).doubleValue());
            return;
        }
        if (obj instanceof Number) {
            sQLiteProgram.bindLong(i2, ((Number) obj).longValue());
            return;
        }
        if (obj instanceof Boolean) {
            if (((Boolean) obj).booleanValue()) {
                sQLiteProgram.bindLong(i2, 1L);
                return;
            } else {
                sQLiteProgram.bindLong(i2, 0L);
                return;
            }
        }
        if (obj instanceof byte[]) {
            sQLiteProgram.bindBlob(i2, (byte[]) obj);
        } else {
            sQLiteProgram.bindString(i2, obj.toString());
        }
    }

    public static ParcelFileDescriptor blobFileDescriptorForQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        SQLiteStatement sQLiteStatementCompileStatement = sQLiteDatabase.compileStatement(str);
        try {
            return blobFileDescriptorForQuery(sQLiteStatementCompileStatement, strArr);
        } finally {
            sQLiteStatementCompileStatement.close();
        }
    }

    public static String concatenateWhere(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return str2;
        }
        if (TextUtils.isEmpty(str2)) {
            return str;
        }
        return "(" + str + ") AND (" + str2 + ")";
    }

    public static void createDbFromSqlStatements(Context context, String str, int i2, String str2) {
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase(str, 0, null);
        for (String str3 : TextUtils.split(str2, ";\n")) {
            if (!TextUtils.isEmpty(str3)) {
                sQLiteDatabaseOpenOrCreateDatabase.execSQL(str3);
            }
        }
        sQLiteDatabaseOpenOrCreateDatabase.setVersion(i2);
        sQLiteDatabaseOpenOrCreateDatabase.close();
    }

    public static void cursorDoubleToContentValues(Cursor cursor, String str, ContentValues contentValues, String str2) {
        int columnIndex = cursor.getColumnIndex(str);
        if (cursor.isNull(columnIndex)) {
            contentValues.put(str2, (Double) null);
        } else {
            contentValues.put(str2, Double.valueOf(cursor.getDouble(columnIndex)));
        }
    }

    public static void cursorDoubleToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return;
        }
        contentValues.put(str, Double.valueOf(cursor.getDouble(columnIndex)));
    }

    public static void cursorDoubleToCursorValues(Cursor cursor, String str, ContentValues contentValues) {
        cursorDoubleToContentValues(cursor, str, contentValues, str);
    }

    public static void cursorFillWindow(Cursor cursor, int i2, CursorWindow cursorWindow) {
        boolean zPutNull;
        if (i2 < 0 || i2 >= cursor.getCount()) {
            return;
        }
        int position = cursor.getPosition();
        int columnCount = cursor.getColumnCount();
        cursorWindow.clear();
        cursorWindow.setStartPosition(i2);
        cursorWindow.setNumColumns(columnCount);
        if (cursor.moveToPosition(i2)) {
            while (cursorWindow.allocRow()) {
                for (int i3 = 0; i3 < columnCount; i3++) {
                    int type = cursor.getType(i3);
                    if (type == 0) {
                        zPutNull = cursorWindow.putNull(i2, i3);
                    } else if (type == 1) {
                        zPutNull = cursorWindow.putLong(cursor.getLong(i3), i2, i3);
                    } else if (type == 2) {
                        zPutNull = cursorWindow.putDouble(cursor.getDouble(i3), i2, i3);
                    } else if (type != 4) {
                        String string = cursor.getString(i3);
                        zPutNull = string != null ? cursorWindow.putString(string, i2, i3) : cursorWindow.putNull(i2, i3);
                    } else {
                        byte[] blob = cursor.getBlob(i3);
                        zPutNull = blob != null ? cursorWindow.putBlob(blob, i2, i3) : cursorWindow.putNull(i2, i3);
                    }
                    if (!zPutNull) {
                        cursorWindow.freeLastRow();
                        break;
                    }
                }
                i2++;
                if (!cursor.moveToNext()) {
                    break;
                }
            }
        }
        cursor.moveToPosition(position);
    }

    public static void cursorFloatToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return;
        }
        contentValues.put(str, Float.valueOf(cursor.getFloat(columnIndex)));
    }

    public static void cursorIntToContentValues(Cursor cursor, String str, ContentValues contentValues) {
        cursorIntToContentValues(cursor, str, contentValues, str);
    }

    public static void cursorIntToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return;
        }
        contentValues.put(str, Integer.valueOf(cursor.getInt(columnIndex)));
    }

    public static void cursorLongToContentValues(Cursor cursor, String str, ContentValues contentValues) {
        cursorLongToContentValues(cursor, str, contentValues, str);
    }

    public static void cursorLongToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return;
        }
        contentValues.put(str, Long.valueOf(cursor.getLong(columnIndex)));
    }

    public static int cursorPickFillWindowStartPosition(int i2, int i3) {
        return Math.max(i2 - (i3 / 3), 0);
    }

    public static void cursorRowToContentValues(Cursor cursor, ContentValues contentValues) {
        AbstractWindowedCursor abstractWindowedCursor = cursor instanceof AbstractWindowedCursor ? (AbstractWindowedCursor) cursor : null;
        String[] columnNames = cursor.getColumnNames();
        int length = columnNames.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (abstractWindowedCursor == null || !abstractWindowedCursor.isBlob(i2)) {
                contentValues.put(columnNames[i2], cursor.getString(i2));
            } else {
                contentValues.put(columnNames[i2], cursor.getBlob(i2));
            }
        }
    }

    public static void cursorShortToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return;
        }
        contentValues.put(str, Short.valueOf(cursor.getShort(columnIndex)));
    }

    public static void cursorStringToContentValues(Cursor cursor, String str, ContentValues contentValues) {
        cursorStringToContentValues(cursor, str, contentValues, str);
    }

    public static void cursorStringToContentValuesIfPresent(Cursor cursor, ContentValues contentValues, String str) {
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex == -1 || cursor.isNull(columnIndex)) {
            return;
        }
        contentValues.put(str, cursor.getString(columnIndex));
    }

    public static void cursorStringToInsertHelper(Cursor cursor, String str, InsertHelper insertHelper, int i2) {
        insertHelper.bind(i2, cursor.getString(cursor.getColumnIndexOrThrow(str)));
    }

    public static void dumpCurrentRow(Cursor cursor) {
        dumpCurrentRow(cursor, System.out);
    }

    public static String dumpCurrentRowToString(Cursor cursor) {
        StringBuilder sb = new StringBuilder();
        dumpCurrentRow(cursor, sb);
        return sb.toString();
    }

    public static void dumpCursor(Cursor cursor) {
        dumpCursor(cursor, System.out);
    }

    public static String dumpCursorToString(Cursor cursor) {
        StringBuilder sb = new StringBuilder();
        dumpCursor(cursor, sb);
        return sb.toString();
    }

    public static int findRowIdColumnIndex(String[] strArr) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (strArr[i2].equals("_id")) {
                return i2;
            }
        }
        return -1;
    }

    public static String getCollationKey(String str) {
        byte[] collationKeyInBytes = getCollationKeyInBytes(str);
        try {
            return new String(collationKeyInBytes, 0, getKeyLen(collationKeyInBytes), "ISO8859_1");
        } catch (Exception unused) {
            return ProxyProperties.LOCAL_EXCL_LIST;
        }
    }

    private static byte[] getCollationKeyInBytes(String str) {
        if (mColl == null) {
            Collator collator = Collator.getInstance();
            mColl = collator;
            collator.setStrength(0);
        }
        return mColl.getCollationKey(str).toByteArray();
    }

    public static String getHexCollationKey(String str) {
        byte[] collationKeyInBytes = getCollationKeyInBytes(str);
        return new String(Hex.encodeHex(collationKeyInBytes), 0, getKeyLen(collationKeyInBytes) * 2);
    }

    private static int getKeyLen(byte[] bArr) {
        return bArr[bArr.length + (-1)] != 0 ? bArr.length : bArr.length - 1;
    }

    public static int getSqlStatementType(String str) {
        String strTrim = str.trim();
        if (strTrim.length() < 3) {
            return 99;
        }
        String upperCase = strTrim.substring(0, 3).toUpperCase(Locale.ROOT);
        if (upperCase.equals("SEL")) {
            return 1;
        }
        if (upperCase.equals("INS") || upperCase.equals("UPD") || upperCase.equals("REP") || upperCase.equals("DEL")) {
            return 2;
        }
        if (upperCase.equals("ATT")) {
            return 3;
        }
        if (upperCase.equals("COM") || upperCase.equals("END")) {
            return 5;
        }
        if (upperCase.equals("ROL")) {
            return 6;
        }
        if (upperCase.equals("BEG")) {
            return 4;
        }
        if (upperCase.equals("PRA")) {
            return 7;
        }
        if (upperCase.equals("CRE") || upperCase.equals("DRO") || upperCase.equals("ALT")) {
            return 8;
        }
        return (upperCase.equals("ANA") || upperCase.equals("DET")) ? 9 : 99;
    }

    public static int getTypeOfObject(Object obj) {
        if (obj == null) {
            return 0;
        }
        if (obj instanceof byte[]) {
            return 4;
        }
        if ((obj instanceof Float) || (obj instanceof Double)) {
            return 2;
        }
        return ((obj instanceof Long) || (obj instanceof Integer) || (obj instanceof Short) || (obj instanceof Byte)) ? 1 : 3;
    }

    public static long longForQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        SQLiteStatement sQLiteStatementCompileStatement = sQLiteDatabase.compileStatement(str);
        try {
            return longForQuery(sQLiteStatementCompileStatement, strArr);
        } finally {
            sQLiteStatementCompileStatement.close();
        }
    }

    public static boolean queryIsEmpty(SQLiteDatabase sQLiteDatabase, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("select exists(select 1 from ");
        sb.append(str);
        sb.append(")");
        return longForQuery(sQLiteDatabase, sb.toString(), null) == 0;
    }

    public static long queryNumEntries(SQLiteDatabase sQLiteDatabase, String str) {
        return queryNumEntries(sQLiteDatabase, str, null, null);
    }

    public static final void readExceptionFromParcel(Parcel parcel) {
        int exceptionCode = parcel.readExceptionCode();
        if (exceptionCode == 0) {
            return;
        }
        readExceptionFromParcel(parcel, parcel.readString(), exceptionCode);
    }

    public static void readExceptionWithFileNotFoundExceptionFromParcel(Parcel parcel) throws FileNotFoundException {
        int exceptionCode = parcel.readExceptionCode();
        if (exceptionCode == 0) {
            return;
        }
        String string = parcel.readString();
        if (exceptionCode == 1) {
            throw new FileNotFoundException(string);
        }
        readExceptionFromParcel(parcel, string, exceptionCode);
    }

    public static void readExceptionWithOperationApplicationExceptionFromParcel(Parcel parcel) throws OperationApplicationException {
        int exceptionCode = parcel.readExceptionCode();
        if (exceptionCode == 0) {
            return;
        }
        String string = parcel.readString();
        if (exceptionCode == 10) {
            throw new OperationApplicationException(string);
        }
        readExceptionFromParcel(parcel, string, exceptionCode);
    }

    public static String sqlEscapeString(String str) {
        StringBuilder sb = new StringBuilder();
        appendEscapedSQLString(sb, str);
        return sb.toString();
    }

    public static String stringForQuery(SQLiteDatabase sQLiteDatabase, String str, String[] strArr) {
        SQLiteStatement sQLiteStatementCompileStatement = sQLiteDatabase.compileStatement(str);
        try {
            return stringForQuery(sQLiteStatementCompileStatement, strArr);
        } finally {
            sQLiteStatementCompileStatement.close();
        }
    }

    public static final void writeExceptionToParcel(Parcel parcel, Exception exc) {
        int i2;
        boolean z2 = false;
        int i3 = 1;
        if (!(exc instanceof FileNotFoundException)) {
            if (exc instanceof IllegalArgumentException) {
                i2 = 2;
            } else if (exc instanceof UnsupportedOperationException) {
                i2 = 3;
            } else if (exc instanceof SQLiteAbortException) {
                i2 = 4;
            } else if (exc instanceof SQLiteConstraintException) {
                i2 = 5;
            } else if (exc instanceof SQLiteDatabaseCorruptException) {
                i2 = 6;
            } else if (exc instanceof SQLiteFullException) {
                i2 = 7;
            } else if (exc instanceof SQLiteDiskIOException) {
                i2 = 8;
            } else if (exc instanceof SQLiteException) {
                i2 = 9;
            } else if (exc instanceof OperationApplicationException) {
                i2 = 10;
            } else {
                if (!(exc instanceof OperationCanceledException)) {
                    parcel.writeException(exc);
                    Log.e(TAG, "Writing exception to parcel", exc);
                    return;
                }
                i3 = 11;
            }
            z2 = true;
            i3 = i2;
        }
        parcel.writeInt(i3);
        parcel.writeString(exc.getMessage());
        if (z2) {
            Log.e(TAG, "Writing exception to parcel", exc);
        }
    }

    public static void cursorIntToContentValues(Cursor cursor, String str, ContentValues contentValues, String str2) {
        int columnIndex = cursor.getColumnIndex(str);
        if (cursor.isNull(columnIndex)) {
            contentValues.put(str2, (Integer) null);
        } else {
            contentValues.put(str2, Integer.valueOf(cursor.getInt(columnIndex)));
        }
    }

    public static void cursorLongToContentValues(Cursor cursor, String str, ContentValues contentValues, String str2) {
        int columnIndex = cursor.getColumnIndex(str);
        if (cursor.isNull(columnIndex)) {
            contentValues.put(str2, (Long) null);
        } else {
            contentValues.put(str2, Long.valueOf(cursor.getLong(columnIndex)));
        }
    }

    public static void cursorStringToContentValues(Cursor cursor, String str, ContentValues contentValues, String str2) {
        contentValues.put(str2, cursor.getString(cursor.getColumnIndexOrThrow(str)));
    }

    public static void dumpCurrentRow(Cursor cursor, PrintStream printStream) {
        String string;
        String[] columnNames = cursor.getColumnNames();
        printStream.println(ProxyProperties.LOCAL_EXCL_LIST + cursor.getPosition() + " {");
        int length = columnNames.length;
        for (int i2 = 0; i2 < length; i2++) {
            try {
                string = cursor.getString(i2);
            } catch (SQLiteException unused) {
                string = "<unprintable>";
            }
            printStream.println("   " + columnNames[i2] + '=' + string);
        }
        printStream.println("}");
    }

    public static void dumpCursor(Cursor cursor, PrintStream printStream) {
        printStream.println(">>>>> Dumping cursor " + cursor);
        if (cursor != null) {
            int position = cursor.getPosition();
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                dumpCurrentRow(cursor, printStream);
            }
            cursor.moveToPosition(position);
        }
        printStream.println("<<<<<");
    }

    public static long queryNumEntries(SQLiteDatabase sQLiteDatabase, String str, String str2) {
        return queryNumEntries(sQLiteDatabase, str, str2, null);
    }

    public static long queryNumEntries(SQLiteDatabase sQLiteDatabase, String str, String str2, String[] strArr) {
        String str3;
        if (TextUtils.isEmpty(str2)) {
            str3 = ProxyProperties.LOCAL_EXCL_LIST;
        } else {
            str3 = " where " + str2;
        }
        return longForQuery(sQLiteDatabase, "select count(*) from " + str + str3, strArr);
    }

    public static ParcelFileDescriptor blobFileDescriptorForQuery(SQLiteStatement sQLiteStatement, String[] strArr) {
        sQLiteStatement.bindAllArgsAsStrings(strArr);
        return sQLiteStatement.simpleQueryForBlobFileDescriptor();
    }

    public static long longForQuery(SQLiteStatement sQLiteStatement, String[] strArr) {
        sQLiteStatement.bindAllArgsAsStrings(strArr);
        return sQLiteStatement.simpleQueryForLong();
    }

    private static final void readExceptionFromParcel(Parcel parcel, String str, int i2) {
        switch (i2) {
            case 2:
                throw new IllegalArgumentException(str);
            case 3:
                throw new UnsupportedOperationException(str);
            case 4:
                throw new SQLiteAbortException(str);
            case 5:
                throw new SQLiteConstraintException(str);
            case 6:
                throw new SQLiteDatabaseCorruptException(str);
            case 7:
                throw new SQLiteFullException(str);
            case 8:
                throw new SQLiteDiskIOException(str);
            case 9:
                throw new SQLiteException(str);
            case 10:
            default:
                parcel.readException(i2, str);
                return;
            case 11:
                throw new OperationCanceledException(str);
        }
    }

    public static String stringForQuery(SQLiteStatement sQLiteStatement, String[] strArr) {
        sQLiteStatement.bindAllArgsAsStrings(strArr);
        return sQLiteStatement.simpleQueryForString();
    }

    public static void dumpCurrentRow(Cursor cursor, StringBuilder sb) {
        String string;
        String[] columnNames = cursor.getColumnNames();
        sb.append(ProxyProperties.LOCAL_EXCL_LIST + cursor.getPosition() + " {\n");
        int length = columnNames.length;
        for (int i2 = 0; i2 < length; i2++) {
            try {
                string = cursor.getString(i2);
            } catch (SQLiteException unused) {
                string = "<unprintable>";
            }
            sb.append("   " + columnNames[i2] + '=' + string + "\n");
        }
        sb.append("}\n");
    }

    public static void dumpCursor(Cursor cursor, StringBuilder sb) {
        sb.append(">>>>> Dumping cursor " + cursor + "\n");
        if (cursor != null) {
            int position = cursor.getPosition();
            cursor.moveToPosition(-1);
            while (cursor.moveToNext()) {
                dumpCurrentRow(cursor, sb);
            }
            cursor.moveToPosition(position);
        }
        sb.append("<<<<<\n");
    }
}
