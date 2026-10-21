package android.app;

import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorWrapper;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.CalendarContract;
import android.provider.Downloads;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class DownloadManager {
    public static final String ACTION_DOWNLOAD_COMPLETE = "android.intent.action.DOWNLOAD_COMPLETE";
    public static final String ACTION_NOTIFICATION_CLICKED = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED";
    public static final String ACTION_VIEW_DOWNLOADS = "android.intent.action.VIEW_DOWNLOADS";
    public static final String COLUMN_ALLOW_WRITE = "allow_write";
    public static final String COLUMN_BYTES_DOWNLOADED_SO_FAR = "bytes_so_far";
    public static final String COLUMN_DESCRIPTION = "description";
    public static final String COLUMN_ID = "_id";
    public static final String COLUMN_LAST_MODIFIED_TIMESTAMP = "last_modified_timestamp";
    public static final String COLUMN_LOCAL_FILENAME = "local_filename";
    public static final String COLUMN_LOCAL_URI = "local_uri";
    public static final String COLUMN_MEDIAPROVIDER_URI = "mediaprovider_uri";
    public static final String COLUMN_MEDIA_TYPE = "media_type";
    public static final String COLUMN_REASON = "reason";
    public static final String COLUMN_STATUS = "status";
    public static final String COLUMN_TITLE = "title";
    public static final String COLUMN_TOTAL_SIZE_BYTES = "total_size";
    public static final String COLUMN_URI = "uri";
    public static final int ERROR_BLOCKED = 1010;
    public static final int ERROR_CANNOT_RESUME = 1008;
    public static final int ERROR_DEVICE_NOT_FOUND = 1007;
    public static final int ERROR_FILE_ALREADY_EXISTS = 1009;
    public static final int ERROR_FILE_ERROR = 1001;
    public static final int ERROR_HTTP_DATA_ERROR = 1004;
    public static final int ERROR_INSUFFICIENT_SPACE = 1006;
    public static final int ERROR_TOO_MANY_REDIRECTS = 1005;
    public static final int ERROR_UNHANDLED_HTTP_CODE = 1002;
    public static final int ERROR_UNKNOWN = 1000;
    public static final String EXTRA_DOWNLOAD_ID = "extra_download_id";
    public static final String EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS = "extra_click_download_ids";
    public static final String INTENT_EXTRAS_SORT_BY_SIZE = "android.app.DownloadManager.extra_sortBySize";
    private static final String NON_DOWNLOADMANAGER_DOWNLOAD = "non-dwnldmngr-download-dont-retry2download";
    public static final int PAUSED_QUEUED_FOR_WIFI = 3;
    public static final int PAUSED_UNKNOWN = 4;
    public static final int PAUSED_WAITING_FOR_NETWORK = 2;
    public static final int PAUSED_WAITING_TO_RETRY = 1;
    public static final int STATUS_FAILED = 16;
    public static final int STATUS_PAUSED = 4;
    public static final int STATUS_PENDING = 1;
    public static final int STATUS_RUNNING = 2;
    public static final int STATUS_SUCCESSFUL = 8;
    public static final String[] UNDERLYING_COLUMNS = {"_id", "_data AS local_filename", "mediaprovider_uri", Downloads.Impl.COLUMN_DESTINATION, "title", "description", "uri", "status", Downloads.Impl.COLUMN_FILE_NAME_HINT, "mimetype AS media_type", "total_bytes AS total_size", "lastmod AS last_modified_timestamp", "current_bytes AS bytes_so_far", "allow_write", "'placeholder' AS local_uri", "'placeholder' AS reason"};
    private Uri mBaseUri = Downloads.Impl.CONTENT_URI;
    private String mPackageName;
    private ContentResolver mResolver;

    public static class CursorTranslator extends CursorWrapper {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        private Uri mBaseUri;

        public CursorTranslator(Cursor cursor, Uri uri) {
            super(cursor);
            this.mBaseUri = uri;
        }

        private long getErrorCode(int i2) {
            if ((400 <= i2 && i2 < 488) || (500 <= i2 && i2 < 600)) {
                return i2;
            }
            if (i2 == 198) {
                return 1006L;
            }
            if (i2 == 199) {
                return 1007L;
            }
            if (i2 == 488) {
                return 1009L;
            }
            if (i2 == 489) {
                return 1008L;
            }
            if (i2 == 497) {
                return 1005L;
            }
            switch (i2) {
                case Downloads.Impl.STATUS_FILE_ERROR /* 492 */:
                    return 1001L;
                case Downloads.Impl.STATUS_UNHANDLED_REDIRECT /* 493 */:
                case Downloads.Impl.STATUS_UNHANDLED_HTTP_CODE /* 494 */:
                    return 1002L;
                case Downloads.Impl.STATUS_HTTP_DATA_ERROR /* 495 */:
                    return 1004L;
                default:
                    return 1000L;
            }
        }

        private String getLocalUri() {
            long j2 = getLong(getColumnIndex(Downloads.Impl.COLUMN_DESTINATION));
            if (j2 != 4 && j2 != 0 && j2 != 6) {
                return ContentUris.withAppendedId(this.mBaseUri, getLong(getColumnIndex("_id"))).toString();
            }
            String string = getString(getColumnIndex(DownloadManager.COLUMN_LOCAL_FILENAME));
            if (string == null) {
                return null;
            }
            return Uri.fromFile(new File(string)).toString();
        }

        private long getPausedReason(int i2) {
            switch (i2) {
                case 194:
                    return 1L;
                case 195:
                    return 2L;
                case 196:
                    return 3L;
                default:
                    return 4L;
            }
        }

        private long getReason(int i2) {
            int iTranslateStatus = translateStatus(i2);
            if (iTranslateStatus == 4) {
                return getPausedReason(i2);
            }
            if (iTranslateStatus != 16) {
                return 0L;
            }
            return getErrorCode(i2);
        }

        private int translateStatus(int i2) {
            if (i2 == 190) {
                return 1;
            }
            if (i2 == 200) {
                return 8;
            }
            switch (i2) {
                case 192:
                    return 2;
                case 193:
                case 194:
                case 195:
                case 196:
                    return 4;
                default:
                    return 16;
            }
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public int getInt(int i2) {
            return (int) getLong(i2);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public long getLong(int i2) {
            if (getColumnName(i2).equals("reason")) {
                return getReason(super.getInt(getColumnIndex("status")));
            }
            return getColumnName(i2).equals("status") ? translateStatus(super.getInt(getColumnIndex("status"))) : super.getLong(i2);
        }

        @Override // android.database.CursorWrapper, android.database.Cursor
        public String getString(int i2) {
            return getColumnName(i2).equals(DownloadManager.COLUMN_LOCAL_URI) ? getLocalUri() : super.getString(i2);
        }
    }

    public static class Query {
        public static final int ORDER_ASCENDING = 1;
        public static final int ORDER_DESCENDING = 2;
        private long[] mIds = null;
        private Integer mStatusFlags = null;
        private String mOrderByColumn = Downloads.Impl.COLUMN_LAST_MODIFICATION;
        private int mOrderDirection = 2;
        private boolean mOnlyIncludeVisibleInDownloadsUi = false;

        private String joinStrings(String str, Iterable<String> iterable) {
            StringBuilder sb = new StringBuilder();
            boolean z2 = true;
            for (String str2 : iterable) {
                if (!z2) {
                    sb.append(str);
                }
                sb.append(str2);
                z2 = false;
            }
            return sb.toString();
        }

        private String statusClause(String str, int i2) {
            return "status" + str + "'" + i2 + "'";
        }

        public Query orderBy(String str, int i2) {
            if (i2 != 1 && i2 != 2) {
                throw new IllegalArgumentException("Invalid direction: " + i2);
            }
            if (str.equals(DownloadManager.COLUMN_LAST_MODIFIED_TIMESTAMP)) {
                this.mOrderByColumn = Downloads.Impl.COLUMN_LAST_MODIFICATION;
            } else {
                if (!str.equals(DownloadManager.COLUMN_TOTAL_SIZE_BYTES)) {
                    throw new IllegalArgumentException("Cannot order by " + str);
                }
                this.mOrderByColumn = Downloads.Impl.COLUMN_TOTAL_BYTES;
            }
            this.mOrderDirection = i2;
            return this;
        }

        public Cursor runQuery(ContentResolver contentResolver, String[] strArr, Uri uri) {
            String[] whereArgsForIds;
            ArrayList arrayList = new ArrayList();
            long[] jArr = this.mIds;
            if (jArr != null) {
                arrayList.add(DownloadManager.getWhereClauseForIds(jArr));
                whereArgsForIds = DownloadManager.getWhereArgsForIds(this.mIds);
            } else {
                whereArgsForIds = null;
            }
            String[] strArr2 = whereArgsForIds;
            if (this.mStatusFlags != null) {
                ArrayList arrayList2 = new ArrayList();
                if ((this.mStatusFlags.intValue() & 1) != 0) {
                    arrayList2.add(statusClause("=", 190));
                }
                if ((this.mStatusFlags.intValue() & 2) != 0) {
                    arrayList2.add(statusClause("=", 192));
                }
                if ((this.mStatusFlags.intValue() & 4) != 0) {
                    arrayList2.add(statusClause("=", 193));
                    arrayList2.add(statusClause("=", 194));
                    arrayList2.add(statusClause("=", 195));
                    arrayList2.add(statusClause("=", 196));
                }
                if ((this.mStatusFlags.intValue() & 8) != 0) {
                    arrayList2.add(statusClause("=", 200));
                }
                if ((this.mStatusFlags.intValue() & 16) != 0) {
                    arrayList2.add("(" + statusClause(">=", 400) + " AND " + statusClause("<", CalendarContract.CalendarColumns.CAL_ACCESS_EDITOR) + ")");
                }
                arrayList.add(joinStrings(" OR ", arrayList2));
            }
            if (this.mOnlyIncludeVisibleInDownloadsUi) {
                arrayList.add("is_visible_in_downloads_ui != '0'");
            }
            arrayList.add("deleted != '1'");
            return contentResolver.query(uri, strArr, joinStrings(" AND ", arrayList), strArr2, this.mOrderByColumn + " " + (this.mOrderDirection == 1 ? "ASC" : "DESC"));
        }

        public Query setFilterById(long... jArr) {
            this.mIds = jArr;
            return this;
        }

        public Query setFilterByStatus(int i2) {
            this.mStatusFlags = Integer.valueOf(i2);
            return this;
        }

        public Query setOnlyIncludeVisibleInDownloadsUi(boolean z2) {
            this.mOnlyIncludeVisibleInDownloadsUi = z2;
            return this;
        }
    }

    public DownloadManager(ContentResolver contentResolver, String str) {
        this.mResolver = contentResolver;
        this.mPackageName = str;
    }

    public static long getActiveNetworkWarningBytes(Context context) {
        return -1L;
    }

    public static Long getMaxBytesOverMobile(Context context) {
        try {
            return Long.valueOf(Settings.Global.getLong(context.getContentResolver(), Settings.Global.DOWNLOAD_MAX_BYTES_OVER_MOBILE));
        } catch (Settings.SettingNotFoundException unused) {
            return null;
        }
    }

    public static Long getRecommendedMaxBytesOverMobile(Context context) {
        try {
            return Long.valueOf(Settings.Global.getLong(context.getContentResolver(), Settings.Global.DOWNLOAD_RECOMMENDED_MAX_BYTES_OVER_MOBILE));
        } catch (Settings.SettingNotFoundException unused) {
            return null;
        }
    }

    public static String[] getWhereArgsForIds(long[] jArr) {
        String[] strArr = new String[jArr.length];
        for (int i2 = 0; i2 < jArr.length; i2++) {
            strArr[i2] = Long.toString(jArr[i2]);
        }
        return strArr;
    }

    public static String getWhereClauseForIds(long[] jArr) {
        StringBuilder sb = new StringBuilder();
        sb.append("(");
        for (int i2 = 0; i2 < jArr.length; i2++) {
            if (i2 > 0) {
                sb.append("OR ");
            }
            sb.append("_id");
            sb.append(" = ? ");
        }
        sb.append(")");
        return sb.toString();
    }

    public static boolean isActiveNetworkExpensive(Context context) {
        return false;
    }

    private static void validateArgumentIsNonEmpty(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException(str + " can't be null");
        }
    }

    public long addCompletedDownload(String str, String str2, boolean z2, String str3, String str4, long j2, boolean z3) {
        return addCompletedDownload(str, str2, z2, str3, str4, j2, z3, false);
    }

    public long enqueue(Request request) {
        return Long.parseLong(this.mResolver.insert(Downloads.Impl.CONTENT_URI, request.toContentValues(this.mPackageName)).getLastPathSegment());
    }

    public Uri getDownloadUri(long j2) {
        return ContentUris.withAppendedId(this.mBaseUri, j2);
    }

    public String getMimeTypeForDownloadedFile(long j2) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        try {
            cursorQuery = query(new Query().setFilterById(j2));
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return null;
                }
                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("media_type"));
                cursorQuery.close();
                return string;
            } catch (Throwable th2) {
                th = th2;
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursorQuery = null;
        }
    }

    public Uri getUriForDownloadedFile(long j2) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorQuery = query(new Query().setFilterById(j2));
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
                if (!cursorQuery.moveToFirst() || 8 != cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow("status"))) {
                    cursorQuery.close();
                    return null;
                }
                int i2 = cursorQuery.getInt(cursorQuery.getColumnIndexOrThrow(Downloads.Impl.COLUMN_DESTINATION));
                if (i2 != 1 && i2 != 5 && i2 != 3 && i2 != 2) {
                    Uri uriFromFile = Uri.fromFile(new File(cursorQuery.getString(cursorQuery.getColumnIndexOrThrow(COLUMN_LOCAL_FILENAME))));
                    cursorQuery.close();
                    return uriFromFile;
                }
                Uri uriWithAppendedId = ContentUris.withAppendedId(Downloads.Impl.CONTENT_URI, j2);
                cursorQuery.close();
                return uriWithAppendedId;
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public int markRowDeleted(long... jArr) {
        if (jArr == null || jArr.length == 0) {
            throw new IllegalArgumentException("input param 'ids' can't be null");
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("deleted", (Integer) 1);
        return jArr.length == 1 ? this.mResolver.update(ContentUris.withAppendedId(this.mBaseUri, jArr[0]), contentValues, null, null) : this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
    }

    public ParcelFileDescriptor openDownloadedFile(long j2) {
        return this.mResolver.openFileDescriptor(getDownloadUri(j2), FullBackup.ROOT_TREE_TOKEN);
    }

    public Cursor query(Query query) {
        Cursor cursorRunQuery = query.runQuery(this.mResolver, UNDERLYING_COLUMNS, this.mBaseUri);
        if (cursorRunQuery == null) {
            return null;
        }
        return new CursorTranslator(cursorRunQuery, this.mBaseUri);
    }

    public int remove(long... jArr) {
        return markRowDeleted(jArr);
    }

    public void restartDownload(long... jArr) {
        Cursor cursorQuery = query(new Query().setFilterById(jArr));
        try {
            cursorQuery.moveToFirst();
            while (!cursorQuery.isAfterLast()) {
                int i2 = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                if (i2 != 8 && i2 != 16) {
                    throw new IllegalArgumentException("Cannot restart incomplete download: " + cursorQuery.getLong(cursorQuery.getColumnIndex("_id")));
                }
                cursorQuery.moveToNext();
            }
            cursorQuery.close();
            ContentValues contentValues = new ContentValues();
            contentValues.put(Downloads.Impl.COLUMN_CURRENT_BYTES, (Integer) 0);
            contentValues.put(Downloads.Impl.COLUMN_TOTAL_BYTES, (Integer) (-1));
            contentValues.putNull("_data");
            contentValues.put("status", (Integer) 190);
            contentValues.put(Downloads.Impl.COLUMN_FAILED_CONNECTIONS, (Integer) 0);
            this.mResolver.update(this.mBaseUri, contentValues, getWhereClauseForIds(jArr), getWhereArgsForIds(jArr));
        } catch (Throwable th) {
            cursorQuery.close();
            throw th;
        }
    }

    public void setAccessAllDownloads(boolean z2) {
        if (z2) {
            this.mBaseUri = Downloads.Impl.ALL_DOWNLOADS_CONTENT_URI;
        } else {
            this.mBaseUri = Downloads.Impl.CONTENT_URI;
        }
    }

    public long addCompletedDownload(String str, String str2, boolean z2, String str3, String str4, long j2, boolean z3, boolean z4) {
        validateArgumentIsNonEmpty("title", str);
        validateArgumentIsNonEmpty("description", str2);
        validateArgumentIsNonEmpty("path", str4);
        validateArgumentIsNonEmpty("mimeType", str3);
        if (j2 < 0) {
            throw new IllegalArgumentException(" invalid value for param: totalBytes");
        }
        ContentValues contentValues = new Request(NON_DOWNLOADMANAGER_DOWNLOAD).setTitle(str).setDescription(str2).setMimeType(str3).toContentValues(null);
        contentValues.put(Downloads.Impl.COLUMN_DESTINATION, (Integer) 6);
        contentValues.put("_data", str4);
        contentValues.put("status", (Integer) 200);
        contentValues.put(Downloads.Impl.COLUMN_TOTAL_BYTES, Long.valueOf(j2));
        contentValues.put(Downloads.Impl.COLUMN_MEDIA_SCANNED, Integer.valueOf(z2 ? 0 : 2));
        contentValues.put(Downloads.Impl.COLUMN_VISIBILITY, Integer.valueOf(z3 ? 3 : 2));
        contentValues.put("allow_write", Integer.valueOf(z4 ? 1 : 0));
        Uri uriInsert = this.mResolver.insert(Downloads.Impl.CONTENT_URI, contentValues);
        if (uriInsert == null) {
            return -1L;
        }
        return Long.parseLong(uriInsert.getLastPathSegment());
    }

    public static class Request {
        public static final /* synthetic */ boolean $assertionsDisabled = false;
        public static final int NETWORK_BLUETOOTH = 4;
        public static final int NETWORK_MOBILE = 1;
        public static final int NETWORK_WIFI = 2;
        private static final int SCANNABLE_VALUE_NO = 2;
        private static final int SCANNABLE_VALUE_YES = 0;
        public static final int VISIBILITY_HIDDEN = 2;
        public static final int VISIBILITY_VISIBLE = 0;
        public static final int VISIBILITY_VISIBLE_NOTIFY_COMPLETED = 1;
        public static final int VISIBILITY_VISIBLE_NOTIFY_ONLY_COMPLETION = 3;
        private CharSequence mDescription;
        private Uri mDestinationUri;
        private String mMimeType;
        private CharSequence mTitle;
        private Uri mUri;
        private List<Pair<String, String>> mRequestHeaders = new ArrayList();
        private int mAllowedNetworkTypes = -1;
        private boolean mRoamingAllowed = true;
        private boolean mMeteredAllowed = true;
        private boolean mIsVisibleInDownloadsUi = true;
        private boolean mScannable = false;
        private boolean mUseSystemCache = false;
        private int mNotificationVisibility = 0;

        public Request(Uri uri) {
            Objects.requireNonNull(uri);
            String scheme = uri.getScheme();
            if (scheme != null && (scheme.equals("http") || scheme.equals("https"))) {
                this.mUri = uri;
                return;
            }
            throw new IllegalArgumentException("Can only download HTTP/HTTPS URIs: " + uri);
        }

        private void encodeHttpHeaders(ContentValues contentValues) {
            int i2 = 0;
            for (Pair<String, String> pair : this.mRequestHeaders) {
                contentValues.put(Downloads.Impl.RequestHeaders.INSERT_KEY_PREFIX + i2, pair.first + ": " + pair.second);
                i2++;
            }
        }

        private void putIfNonNull(ContentValues contentValues, String str, Object obj) {
            if (obj != null) {
                contentValues.put(str, obj.toString());
            }
        }

        private void setDestinationFromBase(File file, String str) {
            Objects.requireNonNull(str, "subPath cannot be null");
            this.mDestinationUri = Uri.withAppendedPath(Uri.fromFile(file), str);
        }

        public Request addRequestHeader(String str, String str2) {
            Objects.requireNonNull(str, "header cannot be null");
            if (str.contains(":")) {
                throw new IllegalArgumentException("header may not contain ':'");
            }
            if (str2 == null) {
                str2 = ProxyProperties.LOCAL_EXCL_LIST;
            }
            this.mRequestHeaders.add(Pair.create(str, str2));
            return this;
        }

        public void allowScanningByMediaScanner() {
            this.mScannable = true;
        }

        public Request setAllowedNetworkTypes(int i2) {
            this.mAllowedNetworkTypes = i2;
            return this;
        }

        public Request setAllowedOverMetered(boolean z2) {
            this.mMeteredAllowed = z2;
            return this;
        }

        public Request setAllowedOverRoaming(boolean z2) {
            this.mRoamingAllowed = z2;
            return this;
        }

        public Request setDescription(CharSequence charSequence) {
            this.mDescription = charSequence;
            return this;
        }

        public Request setDestinationInExternalFilesDir(Context context, String str, String str2) {
            File externalFilesDir = context.getExternalFilesDir(str);
            if (externalFilesDir == null) {
                throw new IllegalStateException("Failed to get external storage files directory");
            }
            if (externalFilesDir.exists()) {
                if (!externalFilesDir.isDirectory()) {
                    throw new IllegalStateException(externalFilesDir.getAbsolutePath() + " already exists and is not a directory");
                }
            } else if (!externalFilesDir.mkdirs()) {
                throw new IllegalStateException("Unable to create directory: " + externalFilesDir.getAbsolutePath());
            }
            setDestinationFromBase(externalFilesDir, str2);
            return this;
        }

        public Request setDestinationInExternalPublicDir(String str, String str2) {
            File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(str);
            if (externalStoragePublicDirectory == null) {
                throw new IllegalStateException("Failed to get external storage public directory");
            }
            if (externalStoragePublicDirectory.exists()) {
                if (!externalStoragePublicDirectory.isDirectory()) {
                    throw new IllegalStateException(externalStoragePublicDirectory.getAbsolutePath() + " already exists and is not a directory");
                }
            } else if (!externalStoragePublicDirectory.mkdirs()) {
                throw new IllegalStateException("Unable to create directory: " + externalStoragePublicDirectory.getAbsolutePath());
            }
            setDestinationFromBase(externalStoragePublicDirectory, str2);
            return this;
        }

        public Request setDestinationToSystemCache() {
            this.mUseSystemCache = true;
            return this;
        }

        public Request setDestinationUri(Uri uri) {
            this.mDestinationUri = uri;
            return this;
        }

        public Request setMimeType(String str) {
            this.mMimeType = str;
            return this;
        }

        public Request setNotificationVisibility(int i2) {
            this.mNotificationVisibility = i2;
            return this;
        }

        @Deprecated
        public Request setShowRunningNotification(boolean z2) {
            return setNotificationVisibility(z2 ? 0 : 2);
        }

        public Request setTitle(CharSequence charSequence) {
            this.mTitle = charSequence;
            return this;
        }

        public Request setVisibleInDownloadsUi(boolean z2) {
            this.mIsVisibleInDownloadsUi = z2;
            return this;
        }

        public ContentValues toContentValues(String str) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("uri", this.mUri.toString());
            contentValues.put(Downloads.Impl.COLUMN_IS_PUBLIC_API, Boolean.TRUE);
            contentValues.put(Downloads.Impl.COLUMN_NOTIFICATION_PACKAGE, str);
            if (this.mDestinationUri != null) {
                contentValues.put(Downloads.Impl.COLUMN_DESTINATION, (Integer) 4);
                contentValues.put(Downloads.Impl.COLUMN_FILE_NAME_HINT, this.mDestinationUri.toString());
            } else {
                contentValues.put(Downloads.Impl.COLUMN_DESTINATION, Integer.valueOf(this.mUseSystemCache ? 5 : 2));
            }
            contentValues.put(Downloads.Impl.COLUMN_MEDIA_SCANNED, Integer.valueOf(this.mScannable ? 0 : 2));
            if (!this.mRequestHeaders.isEmpty()) {
                encodeHttpHeaders(contentValues);
            }
            putIfNonNull(contentValues, "title", this.mTitle);
            putIfNonNull(contentValues, "description", this.mDescription);
            putIfNonNull(contentValues, "mimetype", this.mMimeType);
            contentValues.put(Downloads.Impl.COLUMN_VISIBILITY, Integer.valueOf(this.mNotificationVisibility));
            contentValues.put(Downloads.Impl.COLUMN_ALLOWED_NETWORK_TYPES, Integer.valueOf(this.mAllowedNetworkTypes));
            contentValues.put(Downloads.Impl.COLUMN_ALLOW_ROAMING, Boolean.valueOf(this.mRoamingAllowed));
            contentValues.put(Downloads.Impl.COLUMN_ALLOW_METERED, Boolean.valueOf(this.mMeteredAllowed));
            contentValues.put(Downloads.Impl.COLUMN_IS_VISIBLE_IN_DOWNLOADS_UI, Boolean.valueOf(this.mIsVisibleInDownloadsUi));
            return contentValues;
        }

        public Request(String str) {
            this.mUri = Uri.parse(str);
        }
    }
}
