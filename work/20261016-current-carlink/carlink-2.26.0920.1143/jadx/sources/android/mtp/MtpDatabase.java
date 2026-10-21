package android.mtp;

import android.accessibilityservice.c;
import android.app.m;
import android.content.BroadcastReceiver;
import android.content.ContentProviderClient;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.media.MediaScanner;
import android.net.Uri;
import android.os.BatteryManager;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.MediaStore;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import dalvik.system.CloseGuard;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class MtpDatabase implements AutoCloseable {
    static final int[] AUDIO_PROPERTIES;
    private static final int DEVICE_PROPERTIES_DATABASE_VERSION = 1;
    static final int[] FILE_PROPERTIES;
    private static final String FORMAT_PARENT_WHERE = "format=? AND parent=?";
    private static final String FORMAT_WHERE = "format=?";
    private static final String ID_WHERE = "_id=?";
    static final int[] IMAGE_PROPERTIES;
    private static final String PARENT_WHERE = "parent=?";
    private static final String PATH_WHERE = "_data=?";
    private static final String STORAGE_FORMAT_PARENT_WHERE = "storage_id=? AND format=? AND parent=?";
    private static final String STORAGE_FORMAT_WHERE = "storage_id=? AND format=?";
    private static final String STORAGE_PARENT_WHERE = "storage_id=? AND parent=?";
    private static final String STORAGE_WHERE = "storage_id=?";
    private static final String TAG = "MtpDatabase";
    static final int[] VIDEO_PROPERTIES;
    private int mBatteryLevel;
    private int mBatteryScale;
    private final Context mContext;
    private boolean mDatabaseModified;
    private SharedPreferences mDeviceProperties;
    private int mDeviceType;
    private final ContentProviderClient mMediaProvider;
    private final MediaScanner mMediaScanner;
    private final String mMediaStoragePath;
    private long mNativeContext;
    private final Uri mObjectsUri;
    private final String mPackageName;
    private MtpServer mServer;
    private final String[] mSubDirectories;
    private String mSubDirectoriesWhere;
    private String[] mSubDirectoriesWhereArgs;
    private final Context mUserContext;
    private final String mVolumeName;
    private static final String[] ID_PROJECTION = {"_id"};
    private static final String[] PATH_PROJECTION = {"_id", "_data", "title_key", "_display_name"};
    private static final String[] FORMAT_PROJECTION = {"_id", "format"};
    private static final String[] PATH_FORMAT_PROJECTION = {"_id", "_data", "format"};
    private static final String[] OBJECT_INFO_PROJECTION = {"_id", MediaStore.Files.FileColumns.STORAGE_ID, "format", "parent", "_data", "date_added", "date_modified"};
    private final AtomicBoolean mClosed = new AtomicBoolean();
    private final CloseGuard mCloseGuard = CloseGuard.get();
    private final HashMap<String, MtpStorage> mStorageMap = new HashMap<>();
    private final HashMap<Integer, MtpPropertyGroup> mPropertyGroupsByProperty = new HashMap<>();
    private final HashMap<Integer, MtpPropertyGroup> mPropertyGroupsByFormat = new HashMap<>();
    private BroadcastReceiver mBatteryReceiver = new BroadcastReceiver() { // from class: android.mtp.MtpDatabase.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(Intent.ACTION_BATTERY_CHANGED)) {
                MtpDatabase.this.mBatteryScale = intent.getIntExtra(BatteryManager.EXTRA_SCALE, 0);
                int intExtra = intent.getIntExtra("level", 0);
                if (intExtra != MtpDatabase.this.mBatteryLevel) {
                    MtpDatabase.this.mBatteryLevel = intExtra;
                    synchronized (MtpDatabase.class) {
                        if (MtpDatabase.this.mServer != null) {
                            MtpDatabase.this.mServer.sendDevicePropertyChanged(MtpConstants.DEVICE_PROPERTY_BATTERY_LEVEL);
                        }
                    }
                }
            }
        }
    };

    static {
        System.loadLibrary("media_jni");
        FILE_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED};
        AUDIO_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED, MtpConstants.PROPERTY_ARTIST, MtpConstants.PROPERTY_ALBUM_NAME, MtpConstants.PROPERTY_ALBUM_ARTIST, MtpConstants.PROPERTY_TRACK, MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE, MtpConstants.PROPERTY_DURATION, MtpConstants.PROPERTY_GENRE, MtpConstants.PROPERTY_COMPOSER, MtpConstants.PROPERTY_AUDIO_WAVE_CODEC, MtpConstants.PROPERTY_BITRATE_TYPE, MtpConstants.PROPERTY_AUDIO_BITRATE, MtpConstants.PROPERTY_NUMBER_OF_CHANNELS, MtpConstants.PROPERTY_SAMPLE_RATE};
        VIDEO_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED, MtpConstants.PROPERTY_ARTIST, MtpConstants.PROPERTY_ALBUM_NAME, MtpConstants.PROPERTY_DURATION, MtpConstants.PROPERTY_DESCRIPTION};
        IMAGE_PROPERTIES = new int[]{MtpConstants.PROPERTY_STORAGE_ID, MtpConstants.PROPERTY_OBJECT_FORMAT, MtpConstants.PROPERTY_PROTECTION_STATUS, MtpConstants.PROPERTY_OBJECT_SIZE, MtpConstants.PROPERTY_OBJECT_FILE_NAME, MtpConstants.PROPERTY_DATE_MODIFIED, MtpConstants.PROPERTY_PARENT_OBJECT, MtpConstants.PROPERTY_PERSISTENT_UID, MtpConstants.PROPERTY_NAME, MtpConstants.PROPERTY_DISPLAY_NAME, MtpConstants.PROPERTY_DATE_ADDED, MtpConstants.PROPERTY_DESCRIPTION};
    }

    public MtpDatabase(Context context, Context context2, String str, String str2, String[] strArr) throws Throwable {
        native_setup();
        this.mContext = context;
        this.mUserContext = context2;
        this.mPackageName = context.getPackageName();
        this.mMediaProvider = context2.getContentResolver().acquireContentProviderClient(MediaStore.AUTHORITY);
        this.mVolumeName = str;
        this.mMediaStoragePath = str2;
        this.mObjectsUri = MediaStore.Files.getMtpObjectsUri(str);
        this.mMediaScanner = new MediaScanner(context, str);
        this.mSubDirectories = strArr;
        if (strArr != null) {
            StringBuilder sb = new StringBuilder("(");
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
                strArr2[i4] = c.D(str3, "/%");
            }
        }
        initDeviceProperties(context);
        this.mDeviceType = SystemProperties.getInt("sys.usb.mtp.device_type", 0);
        this.mCloseGuard.open("close");
    }

    private int beginSendObject(String str, int i2, int i3, int i4, long j2, long j3) {
        if (!inStorageRoot(str)) {
            m.r("attempt to put file outside of storage area: ", str, TAG);
            return -1;
        }
        if (!inStorageSubDirectory(str)) {
            return -1;
        }
        if (str != null) {
            Cursor cursorQuery = null;
            try {
                try {
                    cursorQuery = this.mMediaProvider.query(this.mObjectsUri, ID_PROJECTION, PATH_WHERE, new String[]{str}, null, null);
                    if (cursorQuery != null && cursorQuery.getCount() > 0) {
                        Log.w(TAG, "file already exists in beginSendObject: ".concat(str));
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
        contentValues.put("format", Integer.valueOf(i2));
        contentValues.put("parent", Integer.valueOf(i3));
        contentValues.put(MediaStore.Files.FileColumns.STORAGE_ID, Integer.valueOf(i4));
        contentValues.put("_size", Long.valueOf(j2));
        contentValues.put("date_modified", Long.valueOf(j3));
        try {
            Uri uriInsert = this.mMediaProvider.insert(this.mObjectsUri, contentValues);
            if (uriInsert != null) {
                return Integer.parseInt(uriInsert.getPathSegments().get(2));
            }
            return -1;
        } catch (RemoteException e3) {
            Log.e(TAG, "RemoteException in beginSendObject", e3);
            return -1;
        }
    }

    private String computeFileTitle(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return iLastIndexOf > 0 ? str.substring(0, iLastIndexOf) : str;
    }

    private Cursor createObjectQuery(int i2, int i3, int i4) {
        String str;
        String[] strArr;
        String str2;
        String[] strArr2;
        String[] strArr3;
        String str3;
        int i5 = 0;
        if (i2 == -1) {
            if (i3 == 0) {
                if (i4 == 0) {
                    str = null;
                    strArr = null;
                } else {
                    if (i4 == -1) {
                        i4 = 0;
                    }
                    strArr3 = new String[]{Integer.toString(i4)};
                    str3 = PARENT_WHERE;
                }
            } else if (i4 == 0) {
                strArr3 = new String[]{Integer.toString(i3)};
                str3 = FORMAT_WHERE;
            } else {
                if (i4 == -1) {
                    i4 = 0;
                }
                strArr3 = new String[]{Integer.toString(i3), Integer.toString(i4)};
                str3 = FORMAT_PARENT_WHERE;
            }
            String str4 = str3;
            strArr = strArr3;
            str = str4;
        } else if (i3 == 0) {
            if (i4 == 0) {
                strArr = new String[]{Integer.toString(i2)};
                str = STORAGE_WHERE;
            } else {
                if (i4 == -1) {
                    i4 = 0;
                }
                strArr = new String[]{Integer.toString(i2), Integer.toString(i4)};
                str = STORAGE_PARENT_WHERE;
            }
        } else if (i4 == 0) {
            String[] strArr4 = {Integer.toString(i2), Integer.toString(i3)};
            str = STORAGE_FORMAT_WHERE;
            strArr = strArr4;
        } else {
            if (i4 == -1) {
                i4 = 0;
            }
            String[] strArr5 = {Integer.toString(i2), Integer.toString(i3), Integer.toString(i4)};
            str = STORAGE_FORMAT_PARENT_WHERE;
            strArr = strArr5;
        }
        String str5 = this.mSubDirectoriesWhere;
        if (str5 == null) {
            str2 = str;
            strArr2 = strArr;
        } else if (str == null) {
            strArr2 = this.mSubDirectoriesWhereArgs;
            str2 = str5;
        } else {
            StringBuilder sbU = c.u(str, " AND ");
            sbU.append(this.mSubDirectoriesWhere);
            String string = sbU.toString();
            String[] strArr6 = new String[strArr.length + this.mSubDirectoriesWhereArgs.length];
            int i6 = 0;
            while (i6 < strArr.length) {
                strArr6[i6] = strArr[i6];
                i6++;
            }
            while (true) {
                String[] strArr7 = this.mSubDirectoriesWhereArgs;
                if (i5 >= strArr7.length) {
                    break;
                }
                strArr6[i6] = strArr7[i5];
                i6++;
                i5++;
            }
            str2 = string;
            strArr2 = strArr6;
        }
        return this.mMediaProvider.query(this.mObjectsUri, ID_PROJECTION, str2, strArr2, null, null);
    }

    private int deleteFile(int i2) throws Throwable {
        this.mDatabaseModified = true;
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = this.mMediaProvider.query(this.mObjectsUri, PATH_FORMAT_PROJECTION, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
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
                                        this.mMediaProvider.delete(MediaStore.Files.getMtpObjectsUri(this.mVolumeName), "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)", new String[]{string.concat("/%"), Integer.toString(string.length() + 1), string.concat("/")});
                                    }
                                    if (this.mMediaProvider.delete(MediaStore.Files.getMtpObjectsUri(this.mVolumeName, i2), null, null) <= 0) {
                                        cursorQuery.close();
                                        return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
                                    }
                                    if (i3 != 12289 && string.toLowerCase(Locale.US).endsWith("/.nomedia")) {
                                        try {
                                            this.mMediaProvider.call(MediaStore.UNHIDE_CALL, string.substring(0, string.lastIndexOf("/")), null);
                                        } catch (RemoteException unused) {
                                            Log.e(TAG, "failed to unhide/rescan for ".concat(string));
                                        }
                                    }
                                    cursorQuery.close();
                                    return MtpConstants.RESPONSE_OK;
                                }
                                cursorQuery.close();
                                return 8194;
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    } catch (RemoteException e2) {
                        e = e2;
                        cursor = cursorQuery;
                        Log.e(TAG, "RemoteException in deleteFile", e);
                        if (cursor == null) {
                            return 8194;
                        }
                        cursor.close();
                        return 8194;
                    }
                }
                if (cursorQuery == null) {
                    return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
                }
                cursorQuery.close();
                return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
            } catch (RemoteException e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void endSendObject(String str, int i2, int i3, boolean z2) throws Throwable {
        if (!z2) {
            deleteFile(i2);
            return;
        }
        if (i3 != 47621) {
            this.mMediaScanner.scanMtpFile(str, i2, i3);
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
        contentValues.put("format", Integer.valueOf(i3));
        contentValues.put("date_modified", Long.valueOf(System.currentTimeMillis() / 1000));
        contentValues.put(MediaStore.MediaColumns.MEDIA_SCANNER_NEW_OBJECT_ID, Integer.valueOf(i2));
        try {
            this.mMediaProvider.insert(MediaStore.Audio.Playlists.EXTERNAL_CONTENT_URI, contentValues);
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in endSendObject", e2);
        }
    }

    private int getDeviceProperty(int i2, long[] jArr, char[] cArr) {
        switch (i2) {
            case MtpConstants.DEVICE_PROPERTY_IMAGE_SIZE /* 20483 */:
                Display defaultDisplay = ((WindowManager) this.mContext.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay();
                String str = Integer.toString(defaultDisplay.getMaximumSizeDimension()) + "x" + Integer.toString(defaultDisplay.getMaximumSizeDimension());
                str.getChars(0, str.length(), cArr, 0);
                cArr[str.length()] = 0;
                return MtpConstants.RESPONSE_OK;
            case MtpConstants.DEVICE_PROPERTY_SYNCHRONIZATION_PARTNER /* 54273 */:
            case MtpConstants.DEVICE_PROPERTY_DEVICE_FRIENDLY_NAME /* 54274 */:
                String string = this.mDeviceProperties.getString(Integer.toString(i2), "");
                int length = string.length();
                if (length > 255) {
                    length = 255;
                }
                string.getChars(0, length, cArr, 0);
                cArr[length] = 0;
                return MtpConstants.RESPONSE_OK;
            case MtpConstants.DEVICE_PROPERTY_PERCEIVED_DEVICE_TYPE /* 54279 */:
                jArr[0] = this.mDeviceType;
                return MtpConstants.RESPONSE_OK;
            default:
                return MtpConstants.RESPONSE_DEVICE_PROP_NOT_SUPPORTED;
        }
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

    /* JADX WARN: Code duplicated, block: B:27:0x0082  */
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
                cursorQuery = this.mMediaProvider.query(this.mObjectsUri, PATH_FORMAT_PROJECTION, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
                if (cursorQuery == null || !cursorQuery.moveToNext()) {
                    if (cursorQuery == null) {
                        return MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE;
                    }
                    cursorQuery.close();
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
                if (cursorQuery == null) {
                    return 8194;
                }
                cursorQuery.close();
                return 8194;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        if (cursorQuery != null) {
            cursorQuery.close();
        }
        throw th;
    }

    private int getObjectFormat(int i2) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.mMediaProvider.query(this.mObjectsUri, FORMAT_PROJECTION, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
                if (cursorQuery == null || !cursorQuery.moveToNext()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return -1;
                }
                int i3 = cursorQuery.getInt(1);
                cursorQuery.close();
                return i3;
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException in getObjectFilePath", e2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return -1;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0082 A[PHI: r1
  0x0082: PHI (r1v3 android.database.Cursor) = (r1v1 android.database.Cursor), (r1v4 android.database.Cursor) binds: [B:25:0x0080, B:19:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
    private boolean getObjectInfo(int i2, int[] iArr, char[] cArr, long[] jArr) {
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = this.mMediaProvider.query(this.mObjectsUri, OBJECT_INFO_PROJECTION, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
                if (cursorQuery == null || !cursorQuery.moveToNext()) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return false;
                }
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
                long j2 = cursorQuery.getLong(6);
                jArr[1] = j2;
                if (jArr[0] == 0) {
                    jArr[0] = j2;
                }
                cursorQuery.close();
                return true;
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException in getObjectInfo", e2);
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
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

    private MtpPropertyList getObjectPropertyList(int i2, int i3, int i4, int i5, int i6) {
        MtpPropertyGroup mtpPropertyGroup;
        MtpPropertyGroup mtpPropertyGroup2;
        if (i5 != 0) {
            return new MtpPropertyList(0, MtpConstants.RESPONSE_SPECIFICATION_BY_GROUP_UNSUPPORTED);
        }
        if (i4 == -1) {
            if (i3 == 0 && i2 != 0 && i2 != -1) {
                i3 = getObjectFormat(i2);
            }
            mtpPropertyGroup2 = this.mPropertyGroupsByFormat.get(Integer.valueOf(i3));
            if (mtpPropertyGroup2 == null) {
                mtpPropertyGroup = new MtpPropertyGroup(this, this.mMediaProvider, this.mVolumeName, getSupportedObjectProperties(i3));
                this.mPropertyGroupsByFormat.put(Integer.valueOf(i3), mtpPropertyGroup);
                mtpPropertyGroup2 = mtpPropertyGroup;
            }
        } else {
            mtpPropertyGroup = this.mPropertyGroupsByProperty.get(Integer.valueOf(i4));
            if (mtpPropertyGroup == null) {
                MtpPropertyGroup mtpPropertyGroup3 = new MtpPropertyGroup(this, this.mMediaProvider, this.mVolumeName, new int[]{i4});
                this.mPropertyGroupsByProperty.put(Integer.valueOf(i4), mtpPropertyGroup3);
                mtpPropertyGroup2 = mtpPropertyGroup3;
            } else {
                mtpPropertyGroup2 = mtpPropertyGroup;
            }
        }
        return mtpPropertyGroup2.getPropertyList(i2, i3, i6);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0051  */
    private int[] getObjectReferences(int i2) throws Throwable {
        Cursor cursorQuery;
        Throwable th;
        try {
            cursorQuery = this.mMediaProvider.query(MediaStore.Files.getMtpReferencesUri(this.mVolumeName, i2), ID_PROJECTION, null, null, null, null);
            if (cursorQuery == null) {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return null;
            }
            try {
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
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            cursorQuery = null;
            th = th3;
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    private int[] getSupportedCaptureFormats() {
        return null;
    }

    private int[] getSupportedDeviceProperties() {
        return new int[]{MtpConstants.DEVICE_PROPERTY_SYNCHRONIZATION_PARTNER, MtpConstants.DEVICE_PROPERTY_DEVICE_FRIENDLY_NAME, MtpConstants.DEVICE_PROPERTY_IMAGE_SIZE, MtpConstants.DEVICE_PROPERTY_BATTERY_LEVEL, MtpConstants.DEVICE_PROPERTY_PERCEIVED_DEVICE_TYPE};
    }

    private int[] getSupportedObjectProperties(int i2) {
        if (i2 != 12296 && i2 != 12297) {
            if (i2 != 12299) {
                if (i2 != 14337 && i2 != 14340 && i2 != 14343 && i2 != 14347) {
                    if (i2 != 47489 && i2 != 47492) {
                        if (i2 != 14353 && i2 != 14354) {
                            switch (i2) {
                                case MtpConstants.FORMAT_WMA /* 47361 */:
                                case MtpConstants.FORMAT_OGG /* 47362 */:
                                case MtpConstants.FORMAT_AAC /* 47363 */:
                                    break;
                                default:
                                    return FILE_PROPERTIES;
                            }
                        }
                    }
                }
                return IMAGE_PROPERTIES;
            }
            return VIDEO_PROPERTIES;
        }
        return AUDIO_PROPERTIES;
    }

    private int[] getSupportedPlaybackFormats() {
        return new int[]{12288, 12289, 12292, 12293, 12296, 12297, 12299, MtpConstants.FORMAT_EXIF_JPEG, MtpConstants.FORMAT_TIFF_EP, MtpConstants.FORMAT_BMP, MtpConstants.FORMAT_GIF, MtpConstants.FORMAT_JFIF, MtpConstants.FORMAT_PNG, MtpConstants.FORMAT_TIFF, MtpConstants.FORMAT_WMA, MtpConstants.FORMAT_OGG, MtpConstants.FORMAT_AAC, MtpConstants.FORMAT_MP4_CONTAINER, MtpConstants.FORMAT_MP2, MtpConstants.FORMAT_3GP_CONTAINER, MtpConstants.FORMAT_ABSTRACT_AV_PLAYLIST, MtpConstants.FORMAT_WPL_PLAYLIST, MtpConstants.FORMAT_M3U_PLAYLIST, MtpConstants.FORMAT_PLS_PLAYLIST, MtpConstants.FORMAT_XML_DOCUMENT, MtpConstants.FORMAT_FLAC, MtpConstants.FORMAT_DNG, MtpConstants.FORMAT_HEIF};
    }

    private boolean inStorageRoot(String str) {
        try {
            String canonicalPath = new File(str).getCanonicalPath();
            Iterator<String> it = this.mStorageMap.keySet().iterator();
            while (it.hasNext()) {
                if (canonicalPath.startsWith(it.next())) {
                    return true;
                }
            }
            return false;
        } catch (IOException unused) {
            return false;
        }
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

    /* JADX WARN: Code duplicated, block: B:33:0x007a  */
    /* JADX WARN: Code duplicated, block: B:35:0x007f  */
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

    /* JADX WARN: Code duplicated, block: B:13:0x005d  */
    private int renameFile(int i2, String str) throws Throwable {
        String string;
        String string2;
        String string3;
        int iUpdate;
        Log.d(TAG, "renameFile: handle=" + i2 + ", newName=" + str);
        String[] strArr = {Integer.toString(i2)};
        Cursor cursor = null;
        try {
            try {
                Cursor cursorQuery = this.mMediaProvider.query(this.mObjectsUri, PATH_PROJECTION, ID_WHERE, strArr, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToNext()) {
                            string = cursorQuery.getString(1);
                            string2 = cursorQuery.getString(2);
                            string3 = cursorQuery.getString(3);
                        } else {
                            string = null;
                            string2 = null;
                            string3 = null;
                        }
                    } catch (RemoteException e2) {
                        e = e2;
                        cursor = cursorQuery;
                        Log.e(TAG, "RemoteException in getObjectFilePath", e);
                        if (cursor != null) {
                            cursor.close();
                        }
                        return 8194;
                    } catch (Throwable th) {
                        th = th;
                        cursor = cursorQuery;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } else {
                    string = null;
                    string2 = null;
                    string3 = null;
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
                File file = new File(string);
                int iLastIndexOf = string.lastIndexOf(47);
                if (iLastIndexOf <= 1) {
                    return 8194;
                }
                String str2 = string.substring(0, iLastIndexOf + 1) + str;
                File file2 = new File(str2);
                if (!file.renameTo(file2)) {
                    Log.w(TAG, "renaming " + string + " to " + str2 + " failed");
                    return 8194;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("_data", str2);
                if (file2.isFile()) {
                    String strComputeFileTitle = computeFileTitle(str);
                    contentValues.put("title", strComputeFileTitle);
                    if (string3 != null) {
                        contentValues.put("_display_name", str);
                    }
                    if (string2 != null) {
                        contentValues.put("title_key", MediaStore.Audio.keyFor(strComputeFileTitle));
                    }
                    if (str != null && str.endsWith(".pla")) {
                        contentValues.put("name", strComputeFileTitle);
                    }
                }
                try {
                    iUpdate = this.mMediaProvider.update(this.mObjectsUri, contentValues, ID_WHERE, strArr);
                } catch (RemoteException e3) {
                    Log.e(TAG, "RemoteException in mMediaProvider.update", e3);
                    iUpdate = 0;
                }
                if (iUpdate == 0) {
                    Log.e(TAG, "Unable to update path for " + string + " to " + str2);
                    file2.renameTo(file);
                    return 8194;
                }
                if (file2.isDirectory()) {
                    if (!file.getName().startsWith(".") || str2.startsWith(".")) {
                        return MtpConstants.RESPONSE_OK;
                    }
                    try {
                        this.mMediaProvider.call(MediaStore.UNHIDE_CALL, str2, null);
                        return MtpConstants.RESPONSE_OK;
                    } catch (RemoteException unused) {
                        Log.e(TAG, "failed to unhide/rescan for ".concat(str2));
                        return MtpConstants.RESPONSE_OK;
                    }
                }
                String name = file.getName();
                Locale locale = Locale.US;
                if (!name.toLowerCase(locale).equals(MediaStore.MEDIA_IGNORE_FILENAME) || str2.toLowerCase(locale).equals(MediaStore.MEDIA_IGNORE_FILENAME)) {
                    return MtpConstants.RESPONSE_OK;
                }
                try {
                    this.mMediaProvider.call(MediaStore.UNHIDE_CALL, file.getParent(), null);
                    return MtpConstants.RESPONSE_OK;
                } catch (RemoteException unused2) {
                    Log.e(TAG, "failed to unhide/rescan for ".concat(str2));
                    return MtpConstants.RESPONSE_OK;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (RemoteException e4) {
            e = e4;
        }
    }

    private void sessionEnded() {
        if (this.mDatabaseModified) {
            this.mUserContext.sendBroadcast(new Intent(MediaStore.ACTION_MTP_SESSION_END));
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
            if (this.mMediaProvider.bulkInsert(mtpReferencesUri, contentValuesArr) > 0) {
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

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mCloseGuard.close();
        if (this.mClosed.compareAndSet(false, true)) {
            this.mMediaScanner.close();
            this.mMediaProvider.close();
            native_finalize();
        }
    }

    public void finalize() throws Throwable {
        try {
            CloseGuard closeGuard = this.mCloseGuard;
            if (closeGuard != null) {
                closeGuard.warnIfOpen();
            }
            close();
        } finally {
            super.finalize();
        }
    }

    public void removeStorage(MtpStorage mtpStorage) {
        this.mStorageMap.remove(mtpStorage.getPath());
    }

    public void setServer(MtpServer mtpServer) {
        this.mServer = mtpServer;
        try {
            this.mContext.unregisterReceiver(this.mBatteryReceiver);
        } catch (IllegalArgumentException unused) {
        }
        if (mtpServer != null) {
            this.mContext.registerReceiver(this.mBatteryReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        }
    }
}
