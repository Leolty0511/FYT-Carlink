package android.database.sqlite;

import android.accessibilityservice.c;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.os.CancellationSignal;
import android.provider.BaseColumns;
import android.text.TextUtils;
import android.util.Log;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class SQLiteQueryBuilder {
    private static final String TAG = "SQLiteQueryBuilder";
    private static final Pattern sLimitPattern = Pattern.compile("\\s*\\d+\\s*(,\\s*\\d+\\s*)?");
    private boolean mStrict;
    private Map<String, String> mProjectionMap = null;
    private String mTables = "";
    private StringBuilder mWhereClause = null;
    private boolean mDistinct = false;
    private SQLiteDatabase.CursorFactory mFactory = null;

    private static void appendClause(StringBuilder sb, String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        sb.append(str);
        sb.append(str2);
    }

    public static void appendColumns(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            String str = strArr[i2];
            if (str != null) {
                if (i2 > 0) {
                    sb.append(", ");
                }
                sb.append(str);
            }
        }
        sb.append(' ');
    }

    public static String buildQueryString(boolean z2, String str, String[] strArr, String str2, String str3, String str4, String str5, String str6) {
        if (TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
            throw new IllegalArgumentException("HAVING clauses are only permitted when using a groupBy clause");
        }
        if (!TextUtils.isEmpty(str6) && !sLimitPattern.matcher(str6).matches()) {
            throw new IllegalArgumentException(c.j("invalid LIMIT clauses:", str6));
        }
        StringBuilder sbQ = c.q(120, "SELECT ");
        if (z2) {
            sbQ.append("DISTINCT ");
        }
        if (strArr == null || strArr.length == 0) {
            sbQ.append("* ");
        } else {
            appendColumns(sbQ, strArr);
        }
        sbQ.append("FROM ");
        sbQ.append(str);
        appendClause(sbQ, " WHERE ", str2);
        appendClause(sbQ, " GROUP BY ", str3);
        appendClause(sbQ, " HAVING ", str4);
        appendClause(sbQ, " ORDER BY ", str5);
        appendClause(sbQ, " LIMIT ", str6);
        return sbQ.toString();
    }

    private String[] computeProjection(String[] strArr) {
        int i2 = 0;
        if (strArr == null || strArr.length <= 0) {
            Map<String, String> map = this.mProjectionMap;
            if (map == null) {
                return null;
            }
            Set<Map.Entry<String, String>> setEntrySet = map.entrySet();
            String[] strArr2 = new String[setEntrySet.size()];
            for (Map.Entry<String, String> entry : setEntrySet) {
                if (!entry.getKey().equals(BaseColumns._COUNT)) {
                    strArr2[i2] = entry.getValue();
                    i2++;
                }
            }
            return strArr2;
        }
        if (this.mProjectionMap == null) {
            return strArr;
        }
        String[] strArr3 = new String[strArr.length];
        int length = strArr.length;
        while (i2 < length) {
            String str = strArr[i2];
            String str2 = this.mProjectionMap.get(str);
            if (str2 != null) {
                strArr3[i2] = str2;
            } else {
                if (this.mStrict || !(str.contains(" AS ") || str.contains(" as "))) {
                    throw new IllegalArgumentException("Invalid column " + strArr[i2]);
                }
                strArr3[i2] = str;
            }
            i2++;
        }
        return strArr3;
    }

    public void appendWhere(CharSequence charSequence) {
        if (this.mWhereClause == null) {
            this.mWhereClause = new StringBuilder(charSequence.length() + 16);
        }
        if (this.mWhereClause.length() == 0) {
            this.mWhereClause.append('(');
        }
        this.mWhereClause.append(charSequence);
    }

    public void appendWhereEscapeString(String str) {
        if (this.mWhereClause == null) {
            this.mWhereClause = new StringBuilder(str.length() + 16);
        }
        if (this.mWhereClause.length() == 0) {
            this.mWhereClause.append('(');
        }
        DatabaseUtils.appendEscapedSQLString(this.mWhereClause, str);
    }

    public String buildQuery(String[] strArr, String str, String str2, String str3, String str4, String str5) {
        String[] strArrComputeProjection = computeProjection(strArr);
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = this.mWhereClause;
        boolean z2 = sb2 != null && sb2.length() > 0;
        if (z2) {
            sb.append(this.mWhereClause.toString());
            sb.append(')');
        }
        if (str != null && str.length() > 0) {
            if (z2) {
                sb.append(" AND ");
            }
            sb.append('(');
            sb.append(str);
            sb.append(')');
        }
        return buildQueryString(this.mDistinct, this.mTables, strArrComputeProjection, sb.toString(), str2, str3, str4, str5);
    }

    public String buildUnionQuery(String[] strArr, String str, String str2) {
        StringBuilder sb = new StringBuilder(128);
        int length = strArr.length;
        String str3 = this.mDistinct ? " UNION " : " UNION ALL ";
        for (int i2 = 0; i2 < length; i2++) {
            if (i2 > 0) {
                sb.append(str3);
            }
            sb.append(strArr[i2]);
        }
        appendClause(sb, " ORDER BY ", str);
        appendClause(sb, " LIMIT ", str2);
        return sb.toString();
    }

    public String buildUnionSubQuery(String str, String[] strArr, Set<String> set, int i2, String str2, String str3, String str4, String str5) {
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i3 = 0; i3 < length; i3++) {
            String str6 = strArr[i3];
            if (str6.equals(str)) {
                strArr2[i3] = c.l("'", str2, "' AS ", str);
            } else if (i3 <= i2 || set.contains(str6)) {
                strArr2[i3] = str6;
            } else {
                strArr2[i3] = "NULL AS ".concat(str6);
            }
        }
        return buildQuery(strArr2, str3, str4, str5, null, null);
    }

    public String getTables() {
        return this.mTables;
    }

    public Cursor query(SQLiteDatabase sQLiteDatabase, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4) {
        return query(sQLiteDatabase, strArr, str, strArr2, str2, str3, str4, null, null);
    }

    public void setCursorFactory(SQLiteDatabase.CursorFactory cursorFactory) {
        this.mFactory = cursorFactory;
    }

    public void setDistinct(boolean z2) {
        this.mDistinct = z2;
    }

    public void setProjectionMap(Map<String, String> map) {
        this.mProjectionMap = map;
    }

    public void setStrict(boolean z2) {
        this.mStrict = z2;
    }

    public void setTables(String str) {
        this.mTables = str;
    }

    public Cursor query(SQLiteDatabase sQLiteDatabase, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        return query(sQLiteDatabase, strArr, str, strArr2, str2, str3, str4, str5, null);
    }

    public Cursor query(SQLiteDatabase sQLiteDatabase, String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5, CancellationSignal cancellationSignal) {
        if (this.mTables == null) {
            return null;
        }
        if (this.mStrict && str != null && str.length() > 0) {
            sQLiteDatabase.validateSql(buildQuery(strArr, c.k("(", str, ")"), str2, str3, str4, str5), cancellationSignal);
        }
        String strBuildQuery = buildQuery(strArr, str, str2, str3, str4, str5);
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "Performing query: " + strBuildQuery);
        }
        return sQLiteDatabase.rawQueryWithFactory(this.mFactory, strBuildQuery, strArr2, SQLiteDatabase.findEditTable(this.mTables), cancellationSignal);
    }

    @Deprecated
    public String buildQuery(String[] strArr, String str, String[] strArr2, String str2, String str3, String str4, String str5) {
        return buildQuery(strArr, str, str2, str3, str4, str5);
    }

    @Deprecated
    public String buildUnionSubQuery(String str, String[] strArr, Set<String> set, int i2, String str2, String str3, String[] strArr2, String str4, String str5) {
        return buildUnionSubQuery(str, strArr, set, i2, str2, str3, str4, str5);
    }
}
