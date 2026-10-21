package android.mtp;

import android.content.ContentValues;
import android.content.Context;
import android.content.IContentProvider;
import android.content.Intent;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.media.MediaScanner;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.MediaStore;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ExpandableListView;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class MtpDatabase {
    public static final int[] ALL_PROPERTIES;
    public static final int[] AUDIO_PROPERTIES;
    private static final int DEVICE_PROPERTIES_DATABASE_VERSION = 1;
    public static final int[] FILE_PROPERTIES;
    private static final String FORMAT_PARENT_WHERE = "format=? AND parent=?";
    private static final String FORMAT_WHERE = "format=?";
    private static final String ID_WHERE = "_id=?";
    public static final int[] IMAGE_PROPERTIES;
    private static final String PARENT_WHERE = "parent=?";
    private static final String PATH_WHERE = "_data=?";
    private static final String STORAGE_FORMAT_PARENT_WHERE = "storage_id=? AND format=? AND parent=?";
    private static final String STORAGE_FORMAT_WHERE = "storage_id=? AND format=?";
    private static final String STORAGE_PARENT_WHERE = "storage_id=? AND parent=?";
    private static final String STORAGE_WHERE = "storage_id=?";
    private static final String TAG = "MtpDatabase";
    public static final int[] VIDEO_PROPERTIES;
    private final Context mContext;
    private boolean mDatabaseModified;
    private SharedPreferences mDeviceProperties;
    private final IContentProvider mMediaProvider;
    private final MediaScanner mMediaScanner;
    private final String mMediaStoragePath;
    private int mNativeContext;
    private final Uri mObjectsUri;
    private final String mPackageName;
    private final String[] mSubDirectories;
    private String mSubDirectoriesWhere;
    private String[] mSubDirectoriesWhereArgs;
    private final String mVolumeName;
    private static final String[] ID_PROJECTION = {"_id"};
    private static final String[] PATH_PROJECTION = {"_id", "_data"};
    private static final String[] PATH_FORMAT_PROJECTION = {"_id", "_data", MediaStore.Files.FileColumns.FORMAT};
    private static final String[] OBJECT_INFO_PROJECTION = {"_id", MediaStore.Files.FileColumns.STORAGE_ID, MediaStore.Files.FileColumns.FORMAT, "parent", "_data", "date_added", "date_modified"};
    private final HashMap<String, MtpStorage> mStorageMap = new HashMap<>();
    private final HashMap<Integer, MtpPropertyGroup> mPropertyGroupsByProperty = new HashMap<>();
    private final HashMap<Integer, MtpPropertyGroup> mPropertyGroupsByFormat = new HashMap<>();

    static {
        System.loadLibrary("media_jni");
        FILE_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DATE_ADDED};
        AUDIO_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED, MtpConstants.PROPERTY_ARTIST, MtpConstants.PROPERTY_ALBUM_NAME, MtpConstants.PROPERTY_ALBUM_ARTIST, MtpConstants.PROPERTY_TRACK, MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE, MtpConstants.PROPERTY_DURATION, MtpConstants.PROPERTY_GENRE, MtpConstants.PROPERTY_COMPOSER};
        VIDEO_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED, MtpConstants.PROPERTY_ARTIST, MtpConstants.PROPERTY_ALBUM_NAME, MtpConstants.PROPERTY_DURATION, MtpConstants.PROPERTY_DESCRIPTION};
        IMAGE_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED, MtpConstants.PROPERTY_DESCRIPTION};
        ALL_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED, MtpConstants.PROPERTY_DESCRIPTION, MtpConstants.PROPERTY_ARTIST, MtpConstants.PROPERTY_ALBUM_NAME, MtpConstants.PROPERTY_ALBUM_ARTIST, MtpConstants.PROPERTY_TRACK, MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE, MtpConstants.PROPERTY_DURATION, MtpConstants.PROPERTY_GENRE, MtpConstants.PROPERTY_COMPOSER, MtpConstants.PROPERTY_ARTIST, MtpConstants.PROPERTY_ALBUM_NAME, MtpConstants.PROPERTY_DURATION, MtpConstants.PROPERTY_DESCRIPTION, MtpConstants.PROPERTY_DESCRIPTION};
    }

    public MtpDatabase(Context context, String str, String str2, String[] strArr) throws Throwable {
        native_setup();
        this.mContext = context;
        this.mPackageName = context.getPackageName();
        this.mMediaProvider = context.getContentResolver().acquireProvider(MediaStore.AUTHORITY);
        this.mVolumeName = str;
        this.mMediaStoragePath = str2;
        this.mObjectsUri = MediaStore.Files.getMtpObjectsUri(str);
        this.mMediaScanner = new MediaScanner(context);
        this.mSubDirectories = strArr;
        if (strArr != null) {
            StringBuilder sb = new StringBuilder();
            sb.append("(");
            int length = strArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                sb.append("_data=? OR _data LIKE ?");
                if (i2 != length - 1) {
                    sb.append(" OR ");
                }
            }
            sb.append(")");
            this.mSubDirectoriesWhere = sb.toString();
            this.mSubDirectoriesWhereArgs = new String[length * 2];
            int i3 = 0;
            for (String str3 : strArr) {
                String[] strArr2 = this.mSubDirectoriesWhereArgs;
                int i4 = i3 + 1;
                strArr2[i3] = str3;
                i3 = i4 + 1;
                strArr2[i4] = str3 + "/%";
            }
        }
        Locale locale = context.getResources().getConfiguration().locale;
        if (locale != null) {
            String language = locale.getLanguage();
            String country = locale.getCountry();
            if (language != null) {
                if (country != null) {
                    this.mMediaScanner.setLocale(language + "_" + country);
                } else {
                    this.mMediaScanner.setLocale(language);
                }
            }
        }
        initDeviceProperties(context);
    }

    private int beginSendObject(String str, int i2, int i3, int i4, long j2, long j3) {
        if (!inStorageSubDirectory(str)) {
            return -1;
        }
        if (str != null) {
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mObjectsUri, ID_PROJECTION, PATH_WHERE, new String[]{str}, null, null);
                    if (cursorQuery != null && cursorQuery.getCount() > 0) {
                        Log.w(TAG, "file already exists in beginSendObject: " + str);
                        cursorQuery.close();
                        return -1;
                    }
                    if (cursorQuery != null) {
                    }
                } catch (RemoteException e2) {
                    Log.e(TAG, "RemoteException in beginSendObject", e2);
                    if (cursorQuery != null) {
                    }
                }
                cursorQuery.close();
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        }
        this.mDatabaseModified = true;
        ContentValues contentValues = new ContentValues();
        contentValues.put("_data", str);
        contentValues.put(MediaStore.Files.FileColumns.FORMAT, Integer.valueOf(i2));
        contentValues.put("parent", Integer.valueOf(i3));
        contentValues.put(MediaStore.Files.FileColumns.STORAGE_ID, Integer.valueOf(i4));
        contentValues.put("_size", Long.valueOf(j2));
        contentValues.put("date_modified", Long.valueOf(j3));
        try {
            Uri uriInsert = this.mMediaProvider.insert(this.mPackageName, this.mObjectsUri, contentValues);
            if (uriInsert != null) {
                return Integer.parseInt(uriInsert.getPathSegments().get(2));
            }
            return -1;
        } catch (RemoteException e3) {
            Log.e(TAG, "RemoteException in beginSendObject", e3);
            return -1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:34:0x00c7 A[LOOP:0: B:32:0x00c4->B:34:0x00c7, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d3 A[LOOP:1: B:35:0x00ce->B:37:0x00d3, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x00de  */
    /* JADX WARN: Code duplicated, block: B:43:0x00db A[EDGE_INSN: B:43:0x00db->B:38:0x00db BREAK  A[LOOP:1: B:35:0x00ce->B:37:0x00d3], SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:31:0x00a6, please report this as an issue */
    private Cursor createObjectQuery(int i2, int i3, int i4) {
        String[] strArr;
        String str;
        String[] strArr2;
        String str2;
        String[] strArr3;
        String str3;
        String[] strArr4;
        int i5;
        String[] strArr5;
        int i6 = i4;
        String str4 = null;
        int i7 = 0;
        if (i2 == -1) {
            if (i3 == 0) {
                if (i6 == 0) {
                    strArr2 = null;
                } else {
                    if (i6 == -1) {
                        i6 = 0;
                    }
                    strArr = new String[]{Integer.toString(i6)};
                    str = PARENT_WHERE;
                }
                str2 = this.mSubDirectoriesWhere;
                if (str2 != null) {
                    strArr3 = strArr2;
                    str3 = str4;
                } else if (str4 == null) {
                    strArr3 = this.mSubDirectoriesWhereArgs;
                    str3 = str2;
                } else {
                    String str5 = str4 + " AND " + this.mSubDirectoriesWhere;
                    strArr4 = new String[strArr2.length + this.mSubDirectoriesWhereArgs.length];
                    i5 = 0;
                    while (i5 < strArr2.length) {
                        strArr4[i5] = strArr2[i5];
                        i5++;
                    }
                    while (true) {
                        strArr5 = this.mSubDirectoriesWhereArgs;
                        if (i7 < strArr5.length) {
                            break;
                        }
                        strArr4[i5] = strArr5[i7];
                        i5++;
                        i7++;
                    }
                    str3 = str5;
                    strArr3 = strArr4;
                }
                return this.mMediaProvider.query(this.mPackageName, this.mObjectsUri, ID_PROJECTION, str3, strArr3, null, null);
            }
            if (i6 == 0) {
                strArr = new String[]{Integer.toString(i3)};
                str = FORMAT_WHERE;
            } else {
                if (i6 == -1) {
                    i6 = 0;
                }
                strArr = new String[]{Integer.toString(i3), Integer.toString(i6)};
                str = FORMAT_PARENT_WHERE;
            }
        } else if (i3 == 0) {
            if (i6 == 0) {
                strArr = new String[]{Integer.toString(i2)};
                str = STORAGE_WHERE;
            } else {
                if (i6 == -1) {
                    i6 = 0;
                }
                strArr = new String[]{Integer.toString(i2), Integer.toString(i6)};
                str = STORAGE_PARENT_WHERE;
            }
        } else if (i6 == 0) {
            strArr = new String[]{Integer.toString(i2), Integer.toString(i3)};
            str = STORAGE_FORMAT_WHERE;
        } else {
            if (i6 == -1) {
                i6 = 0;
            }
            strArr = new String[]{Integer.toString(i2), Integer.toString(i3), Integer.toString(i6)};
            str = STORAGE_FORMAT_PARENT_WHERE;
        }
        String[] strArr6 = strArr;
        str4 = str;
        strArr2 = strArr6;
        str2 = this.mSubDirectoriesWhere;
        if (str2 != null) {
            strArr3 = strArr2;
            str3 = str4;
        } else if (str4 == null) {
            strArr3 = this.mSubDirectoriesWhereArgs;
            str3 = str2;
        } else {
            String str6 = str4 + " AND " + this.mSubDirectoriesWhere;
            strArr4 = new String[strArr2.length + this.mSubDirectoriesWhereArgs.length];
            i5 = 0;
            while (i5 < strArr2.length) {
                strArr4[i5] = strArr2[i5];
                i5++;
            }
            while (true) {
                strArr5 = this.mSubDirectoriesWhereArgs;
                if (i7 < strArr5.length) {
                    break;
                    break;
                }
                strArr4[i5] = strArr5[i7];
                i5++;
                i7++;
            }
            str3 = str6;
            strArr3 = strArr4;
        }
        return this.mMediaProvider.query(this.mPackageName, this.mObjectsUri, ID_PROJECTION, str3, strArr3, null, null);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x010f  */
    private int deleteFile(int i2) throws Throwable {
        Cursor cursor;
        this.mDatabaseModified = true;
        try {
            Cursor cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mObjectsUri, PATH_FORMAT_PROJECTION, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
            if (cursorQuery != null) {
                try {
                    try {
                        if (cursorQuery.moveToNext()) {
                            String string = cursorQuery.getString(1);
                            int i3 = cursorQuery.getInt(2);
                            if (string != null && i3 != 0) {
                                if (isStorageSubDirectory(string)) {
                                    cursorQuery.close();
                                    return MtpConstants.RESPONSE_OBJECT_WRITE_PROTECTED;
                                }
                                if (i3 == 12289) {
                                    Uri mtpObjectsUri = MediaStore.Files.getMtpObjectsUri(this.mVolumeName);
                                    this.mMediaProvider.delete(this.mPackageName, mtpObjectsUri, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)", new String[]{string + "/%", Integer.toString(string.length() + 1), string + "/"});
                                }
                                if (this.mMediaProvider.delete(this.mPackageName, MediaStore.Files.getMtpObjectsUri(this.mVolumeName, i2), null, null) <= 0) {
                                    cursorQuery.close();
                                    return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
                                }
                                if (i3 != 12289 && string.toLowerCase(Locale.US).endsWith("/.nomedia")) {
                                    try {
                                        this.mMediaProvider.call(this.mPackageName, MediaStore.UNHIDE_CALL, string.substring(0, string.lastIndexOf("/")), null);
                                    } catch (RemoteException unused) {
                                        Log.e(TAG, "failed to unhide/rescan for " + string);
                                    }
                                }
                                cursorQuery.close();
                                return MtpConstants.RESPONSE_OK;
                            }
                            cursorQuery.close();
                            return 8194;
                        }
                    } catch (RemoteException e2) {
                        e = e2;
                        cursor = cursorQuery;
                        try {
                            Log.e(TAG, "RemoteException in deleteFile", e);
                            if (cursor == null) {
                                return 8194;
                            }
                            cursor.close();
                            return 8194;
                        } catch (Throwable th) {
                            th = th;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery == null) {
                return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
            }
            cursorQuery.close();
            return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
        } catch (RemoteException e3) {
            e = e3;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private void endSendObject(String str, int i2, int i3, boolean z2) throws Throwable {
        if (!z2) {
            deleteFile(i2);
            return;
        }
        if (i3 != 47621) {
            this.mMediaScanner.scanMtpFile(str, this.mVolumeName, i2, i3);
            return;
        }
        int iLastIndexOf = str.lastIndexOf(47);
        String strSubstring = iLastIndexOf >= 0 ? str.substring(iLastIndexOf + 1) : str;
        if (strSubstring.endsWith(".pla")) {
            strSubstring = strSubstring.substring(0, strSubstring.length() - 4);
        }
        ContentValues contentValues = new ContentValues(1);
        contentValues.put("_data", str);
        contentValues.put("name", strSubstring);
        contentValues.put(MediaStore.Files.FileColumns.FORMAT, Integer.valueOf(i3));
        contentValues.put("date_modified", Long.valueOf(System.currentTimeMillis() / 1000));
        contentValues.put(MediaStore.MediaColumns.MEDIA_SCANNER_NEW_OBJECT_ID, Integer.valueOf(i2));
        try {
            this.mMediaProvider.insert(this.mPackageName, MediaStore.Audio.Playlists.EXTERNAL_CONTENT_URI, contentValues);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in endSendObject", e2);
        }
    }

    private int getDeviceProperty(int i2, long[] jArr, char[] cArr) {
        if (i2 != 20483) {
            switch (i2) {
                case MtpConstants.DEVICE_PROPERTY_SYNCHRONIZATION_PARTNER /* 54273 */:
                case MtpConstants.DEVICE_PROPERTY_DEVICE_FRIENDLY_NAME /* 54274 */:
                    String string = this.mDeviceProperties.getString(Integer.toString(i2), ProxyProperties.LOCAL_EXCL_LIST);
                    int length = string.length();
                    if (length > 255) {
                        length = 255;
                    }
                    string.getChars(0, length, cArr, 0);
                    cArr[length] = 0;
                    return MtpConstants.RESPONSE_OK;
                default:
                    return MtpConstants.RESPONSE_DEVICE_PROP_NOT_SUPPORTED;
            }
        }
        Display defaultDisplay = ((WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
        String str = Integer.toString(defaultDisplay.getMaximumSizeDimension()) + "x" + Integer.toString(defaultDisplay.getMaximumSizeDimension());
        str.getChars(0, str.length(), cArr, 0);
        cArr[str.length()] = 0;
        return MtpConstants.RESPONSE_OK;
    }

    private int getNumObjects(int i2, int i3, int i4) {
        Cursor cursorCreateObjectQuery = null;
        try {
            try {
                cursorCreateObjectQuery = createObjectQuery(i2, i3, i4);
                if (cursorCreateObjectQuery != null) {
                    int count = cursorCreateObjectQuery.getCount();
                    cursorCreateObjectQuery.close();
                    return count;
                }
                if (cursorCreateObjectQuery == null) {
                    return -1;
                }
                cursorCreateObjectQuery.close();
                return -1;
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException in getNumObjects", e2);
                if (cursorCreateObjectQuery == null) {
                    return -1;
                }
            }
        } catch (Throwable th) {
            if (cursorCreateObjectQuery != null) {
                cursorCreateObjectQuery.close();
            }
            throw th;
        }
    }

    private int getObjectFilePath(int i2, char[] cArr, long[] jArr) {
        if (i2 == 0) {
            String str = this.mMediaStoragePath;
            str.getChars(0, str.length(), cArr, 0);
            cArr[this.mMediaStoragePath.length()] = 0;
            jArr[0] = 0;
            jArr[1] = 12289;
            return MtpConstants.RESPONSE_OK;
        }
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mObjectsUri, PATH_FORMAT_PROJECTION, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
                if (cursorQuery == null || !cursorQuery.moveToNext()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
                }
                String string = cursorQuery.getString(1);
                string.getChars(0, string.length(), cArr, 0);
                cArr[string.length()] = 0;
                jArr[0] = new File(string).length();
                jArr[1] = cursorQuery.getLong(2);
                cursorQuery.close();
                return MtpConstants.RESPONSE_OK;
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException in getObjectFilePath", e2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return 8194;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0086 A[PHI: r1
  0x0086: PHI (r1v3 android.database.Cursor) = (r1v2 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:25:0x0084, B:19:0x0077] A[DONT_GENERATE, DONT_INLINE]] */
    private boolean getObjectInfo(int i2, int[] iArr, char[] cArr, long[] jArr) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mObjectsUri, OBJECT_INFO_PROJECTION, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
                if (cursorQuery != null && cursorQuery.moveToNext()) {
                    iArr[0] = cursorQuery.getInt(1);
                    iArr[1] = cursorQuery.getInt(2);
                    iArr[2] = cursorQuery.getInt(3);
                    String string = cursorQuery.getString(4);
                    int iLastIndexOf = string.lastIndexOf(47);
                    int i3 = iLastIndexOf >= 0 ? iLastIndexOf + 1 : 0;
                    int length = string.length();
                    if (length - i3 > 255) {
                        length = i3 + 255;
                    }
                    string.getChars(i3, length, cArr, 0);
                    cArr[length - i3] = 0;
                    jArr[0] = cursorQuery.getLong(5);
                    jArr[1] = cursorQuery.getLong(6);
                    if (jArr[0] == 0) {
                        jArr[0] = jArr[1];
                    }
                    cursorQuery.close();
                    return true;
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException in getObjectInfo", e2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
            return false;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0042  */
    private int[] getObjectList(int i2, int i3, int i4) throws Throwable {
        Cursor cursorCreateObjectQuery;
        Cursor cursor = null;
        try {
            cursorCreateObjectQuery = createObjectQuery(i2, i3, i4);
            if (cursorCreateObjectQuery == null) {
                if (cursorCreateObjectQuery != null) {
                    cursorCreateObjectQuery.close();
                }
                return null;
            }
            try {
                try {
                    int count = cursorCreateObjectQuery.getCount();
                    if (count > 0) {
                        int[] iArr = new int[count];
                        for (int i5 = 0; i5 < count; i5++) {
                            cursorCreateObjectQuery.moveToNext();
                            iArr[i5] = cursorCreateObjectQuery.getInt(0);
                        }
                        cursorCreateObjectQuery.close();
                        return iArr;
                    }
                } catch (RemoteException e2) {
                    e = e2;
                    Log.e(TAG, "RemoteException in getObjectList", e);
                    if (cursorCreateObjectQuery != null) {
                    }
                    return null;
                }
                cursorCreateObjectQuery.close();
                return null;
            } catch (Throwable th) {
                th = th;
                cursor = cursorCreateObjectQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            cursorCreateObjectQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    private MtpPropertyList getObjectPropertyList(long j2, int i2, long j3, int i3, int i4) {
        MtpPropertyGroup mtpPropertyGroup;
        if (i3 != 0) {
            return new MtpPropertyList(0, MtpConstants.RESPONSE_SPECIFICATION_BY_GROUP_UNSUPPORTED);
        }
        if (j3 == ExpandableListView.PACKED_POSITION_VALUE_NULL) {
            mtpPropertyGroup = this.mPropertyGroupsByFormat.get(Integer.valueOf(i2));
            if (mtpPropertyGroup == null) {
                mtpPropertyGroup = new MtpPropertyGroup(this, this.mMediaProvider, this.mPackageName, this.mVolumeName, getSupportedObjectProperties(i2));
                this.mPropertyGroupsByFormat.put(new Integer(i2), mtpPropertyGroup);
            }
        } else {
            MtpPropertyGroup mtpPropertyGroup2 = this.mPropertyGroupsByProperty.get(Long.valueOf(j3));
            if (mtpPropertyGroup2 == null) {
                int i5 = (int) j3;
                MtpPropertyGroup mtpPropertyGroup3 = new MtpPropertyGroup(this, this.mMediaProvider, this.mPackageName, this.mVolumeName, new int[]{i5});
                this.mPropertyGroupsByProperty.put(new Integer(i5), mtpPropertyGroup3);
                mtpPropertyGroup = mtpPropertyGroup3;
            } else {
                mtpPropertyGroup = mtpPropertyGroup2;
            }
        }
        return mtpPropertyGroup.getPropertyList((int) j2, i2, i4);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0053  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.database.Cursor] */
    private int[] getObjectReferences(int i2) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        ?? r1 = this.mVolumeName;
        try {
            try {
                cursorQuery = this.mMediaProvider.query(this.mPackageName, MediaStore.Files.getMtpReferencesUri(r1, i2), ID_PROJECTION, null, null, null, null);
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
                try {
                    int count = cursorQuery.getCount();
                    if (count > 0) {
                        int[] iArr = new int[count];
                        for (int i3 = 0; i3 < count; i3++) {
                            cursorQuery.moveToNext();
                            iArr[i3] = cursorQuery.getInt(0);
                        }
                        cursorQuery.close();
                        return iArr;
                    }
                } catch (RemoteException e2) {
                    e = e2;
                    Log.e(TAG, "RemoteException in getObjectList", e);
                    if (cursorQuery != null) {
                    }
                    return null;
                }
                cursorQuery.close();
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (r1 != 0) {
                    r1.close();
                }
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            r1 = 0;
            th = th3;
            if (r1 != 0) {
                r1.close();
            }
            throw th;
        }
    }

    private int[] getSupportedCaptureFormats() {
        return null;
    }

    private int[] getSupportedDeviceProperties() {
        return new int[]{MtpConstants.DEVICE_PROPERTY_SYNCHRONIZATION_PARTNER, MtpConstants.DEVICE_PROPERTY_DEVICE_FRIENDLY_NAME, MtpConstants.DEVICE_PROPERTY_IMAGE_SIZE};
    }

    private int[] getSupportedObjectProperties(int i2) {
        if (i2 == 0) {
            return ALL_PROPERTIES;
        }
        if (i2 != 12299) {
            if (i2 == 14337 || i2 == 14340 || i2 == 14343 || i2 == 14347) {
                return IMAGE_PROPERTIES;
            }
            if (i2 != 47489 && i2 != 47492) {
                if (i2 != 12296 && i2 != 12297) {
                    switch (i2) {
                        case MtpConstants.FORMAT_WMA /* 47361 */:
                        case MtpConstants.FORMAT_OGG /* 47362 */:
                        case MtpConstants.FORMAT_AAC /* 47363 */:
                            break;
                        default:
                            return FILE_PROPERTIES;
                    }
                }
                return AUDIO_PROPERTIES;
            }
        }
        return VIDEO_PROPERTIES;
    }

    private int[] getSupportedPlaybackFormats() {
        return new int[]{12288, 12289, 12292, 12293, 12296, 12297, 12299, MtpConstants.FORMAT_EXIF_JPEG, MtpConstants.FORMAT_TIFF_EP, MtpConstants.FORMAT_BMP, MtpConstants.FORMAT_GIF, MtpConstants.FORMAT_JFIF, MtpConstants.FORMAT_PNG, MtpConstants.FORMAT_TIFF, MtpConstants.FORMAT_WMA, MtpConstants.FORMAT_OGG, MtpConstants.FORMAT_AAC, MtpConstants.FORMAT_MP4_CONTAINER, MtpConstants.FORMAT_MP2, MtpConstants.FORMAT_3GP_CONTAINER, MtpConstants.FORMAT_ABSTRACT_AV_PLAYLIST, MtpConstants.FORMAT_WPL_PLAYLIST, MtpConstants.FORMAT_M3U_PLAYLIST, MtpConstants.FORMAT_PLS_PLAYLIST, MtpConstants.FORMAT_XML_DOCUMENT, MtpConstants.FORMAT_FLAC};
    }

    private boolean inStorageSubDirectory(String str) {
        if (this.mSubDirectories == null) {
            return true;
        }
        int i2 = 0;
        if (str == null) {
            return false;
        }
        int length = str.length();
        boolean z2 = false;
        while (true) {
            String[] strArr = this.mSubDirectories;
            if (i2 >= strArr.length || z2) {
                break;
            }
            String str2 = strArr[i2];
            int length2 = str2.length();
            if (length2 < length && str.charAt(length2) == '/' && str.startsWith(str2)) {
                z2 = true;
            }
            i2++;
        }
        return z2;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0079  */
    /* JADX WARN: Code duplicated, block: B:35:0x007e  */
    private void initDeviceProperties(Context context) throws Throwable {
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase;
        AutoCloseable autoCloseable = null;
        this.mDeviceProperties = context.getSharedPreferences("device-properties", 0);
        if (context.getDatabasePath("device-properties").exists()) {
            Cursor cursorQuery = null;
            try {
                try {
                    sQLiteDatabaseOpenOrCreateDatabase = context.openOrCreateDatabase("device-properties", 0, null);
                    if (sQLiteDatabaseOpenOrCreateDatabase != null) {
                        try {
                            cursorQuery = sQLiteDatabaseOpenOrCreateDatabase.query("properties", new String[]{"_id", "code", "value"}, null, null, null, null, null);
                            if (cursorQuery != null) {
                                SharedPreferences.Editor editorEdit = this.mDeviceProperties.edit();
                                while (cursorQuery.moveToNext()) {
                                    editorEdit.putString(cursorQuery.getString(1), cursorQuery.getString(2));
                                }
                                editorEdit.commit();
                            }
                        } catch (Exception e2) {
                            e = e2;
                            Log.e(TAG, "failed to migrate device properties", e);
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            if (sQLiteDatabaseOpenOrCreateDatabase != null) {
                            }
                            context.deleteDatabase("device-properties");
                        }
                    }
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    if (sQLiteDatabaseOpenOrCreateDatabase != null) {
                        sQLiteDatabaseOpenOrCreateDatabase.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        cursorQuery.close();
                    }
                    if (autoCloseable != null) {
                        autoCloseable.close();
                    }
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
                sQLiteDatabaseOpenOrCreateDatabase = null;
            } catch (Throwable th2) {
                th = th2;
                autoCloseable = null;
                if (0 != 0) {
                    cursorQuery.close();
                }
                if (autoCloseable != null) {
                    autoCloseable.close();
                }
                throw th;
            }
            context.deleteDatabase("device-properties");
        }
    }

    private boolean isStorageSubDirectory(String str) {
        if (this.mSubDirectories == null) {
            return false;
        }
        int i2 = 0;
        while (true) {
            String[] strArr = this.mSubDirectories;
            if (i2 >= strArr.length) {
                return false;
            }
            if (str.equals(strArr[i2])) {
                return true;
            }
            i2++;
        }
    }

    private final native void native_finalize();

    private final native void native_setup();

    /* JADX WARN: Code duplicated, block: B:13:0x0037  */
    /* JADX WARN: Code duplicated, block: B:71:0x016f  */
    private int renameFile(int i2, String str) throws Throwable {
        Cursor cursor;
        String string;
        String str2;
        File file;
        int iUpdate;
        String[] strArr = {Integer.toString(i2)};
        try {
            Cursor cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mObjectsUri, PATH_PROJECTION, ID_WHERE, strArr, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToNext()) {
                        string = cursorQuery.getString(1);
                    } else {
                        string = null;
                    }
                } catch (RemoteException e2) {
                    e = e2;
                    cursor = cursorQuery;
                    try {
                        Log.e(TAG, "RemoteException in getObjectFilePath", e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return 8194;
                    } catch (Throwable th) {
                        th = th;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } else {
                string = null;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            if (string == null) {
                return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
            }
            if (isStorageSubDirectory(string)) {
                return MtpConstants.RESPONSE_OBJECT_WRITE_PROTECTED;
            }
            File file2 = new File(string);
            int iLastIndexOf = string.lastIndexOf(47);
            if (iLastIndexOf <= 1) {
                return 8194;
            }
            String str3 = string.substring(0, iLastIndexOf + 1) + str;
            File file3 = new File(str3);
            if (!file2.renameTo(file3)) {
                Log.w(TAG, "renaming " + string + " to " + str3 + " failed");
                return 8194;
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", str3);
            try {
                str2 = " to ";
                file = file3;
                try {
                    iUpdate = this.mMediaProvider.update(this.mPackageName, this.mObjectsUri, contentValues, ID_WHERE, strArr);
                } catch (RemoteException e3) {
                    e = e3;
                    Log.e(TAG, "RemoteException in mMediaProvider.update", e);
                    iUpdate = 0;
                }
            } catch (RemoteException e4) {
                e = e4;
                str2 = " to ";
                file = file3;
            }
            if (iUpdate == 0) {
                Log.e(TAG, "Unable to update path for " + string + str2 + str3);
                file.renameTo(file2);
                return 8194;
            }
            if (file.isDirectory()) {
                if (!file2.getName().startsWith(".") || str3.startsWith(".")) {
                    return MtpConstants.RESPONSE_OK;
                }
                try {
                    this.mMediaProvider.call(this.mPackageName, MediaStore.UNHIDE_CALL, str3, null);
                    return MtpConstants.RESPONSE_OK;
                } catch (RemoteException unused) {
                    Log.e(TAG, "failed to unhide/rescan for " + str3);
                    return MtpConstants.RESPONSE_OK;
                }
            }
            String name = file2.getName();
            Locale locale = Locale.US;
            if (!name.toLowerCase(locale).equals(MediaStore.MEDIA_IGNORE_FILENAME) || str3.toLowerCase(locale).equals(MediaStore.MEDIA_IGNORE_FILENAME)) {
                return MtpConstants.RESPONSE_OK;
            }
            try {
                this.mMediaProvider.call(this.mPackageName, MediaStore.UNHIDE_CALL, file2.getParent(), null);
                return MtpConstants.RESPONSE_OK;
            } catch (RemoteException unused2) {
                Log.e(TAG, "failed to unhide/rescan for " + str3);
                return MtpConstants.RESPONSE_OK;
            }
        } catch (RemoteException e5) {
            e = e5;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    private void sessionEnded() {
        if (this.mDatabaseModified) {
            this.mContext.sendBroadcast(new Intent(MediaStore.ACTION_MTP_SESSION_END));
            this.mDatabaseModified = false;
        }
    }

    private void sessionStarted() {
        this.mDatabaseModified = false;
    }

    private int setDeviceProperty(int i2, long j2, String str) {
        switch (i2) {
            case MtpConstants.DEVICE_PROPERTY_SYNCHRONIZATION_PARTNER /* 54273 */:
            case MtpConstants.DEVICE_PROPERTY_DEVICE_FRIENDLY_NAME /* 54274 */:
                SharedPreferences.Editor editorEdit = this.mDeviceProperties.edit();
                editorEdit.putString(Integer.toString(i2), str);
                if (editorEdit.commit()) {
                    return MtpConstants.RESPONSE_OK;
                }
                return 8194;
            default:
                return MtpConstants.RESPONSE_DEVICE_PROP_NOT_SUPPORTED;
        }
    }

    private int setObjectProperty(int i2, int i3, long j2, String str) {
        return i3 != 56327 ? MtpConstants.RESPONSE_OBJECT_PROP_NOT_SUPPORTED : renameFile(i2, str);
    }

    private int setObjectReferences(int i2, int[] iArr) {
        this.mDatabaseModified = true;
        Uri mtpReferencesUri = MediaStore.Files.getMtpReferencesUri(this.mVolumeName, i2);
        int length = iArr.length;
        ContentValues[] contentValuesArr = new ContentValues[length];
        for (int i3 = 0; i3 < length; i3++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", Integer.valueOf(iArr[i3]));
            contentValuesArr[i3] = contentValues;
        }
        try {
            if (this.mMediaProvider.bulkInsert(this.mPackageName, mtpReferencesUri, contentValuesArr) > 0) {
                return MtpConstants.RESPONSE_OK;
            }
            return 8194;
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in setObjectReferences", e2);
            return 8194;
        }
    }

    public void addStorage(MtpStorage mtpStorage) {
        this.mStorageMap.put(mtpStorage.getPath(), mtpStorage);
    }

    public void finalize() throws Throwable {
        try {
            native_finalize();
        } finally {
            super.finalize();
        }
    }

    public void removeStorage(MtpStorage mtpStorage) {
        this.mStorageMap.remove(mtpStorage.getPath());
    }
}
