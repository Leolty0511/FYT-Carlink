package android.mtp;

import android.content.IContentProvider;
import android.database.Cursor;
import android.net.ProxyProperties;
import android.net.Uri;
import android.os.RemoteException;
import android.provider.MediaStore;
import android.util.Log;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class MtpPropertyGroup {
    private static final String FORMAT_WHERE = "format=?";
    private static final String ID_FORMAT_WHERE = "_id=? AND format=?";
    private static final String ID_WHERE = "_id=?";
    private static final String PARENT_FORMAT_WHERE = "parent=? AND format=?";
    private static final String PARENT_WHERE = "parent=?";
    private static final String TAG = "MtpPropertyGroup";
    private String[] mColumns;
    private final MtpDatabase mDatabase;
    private final String mPackageName;
    private final Property[] mProperties;
    private final IContentProvider mProvider;
    private final Uri mUri;
    private final String mVolumeName;

    public class Property {
        public int code;
        public int column;
        public int type;

        public Property(int i2, int i3, int i4) {
            this.code = i2;
            this.type = i3;
            this.column = i4;
        }
    }

    public MtpPropertyGroup(MtpDatabase mtpDatabase, IContentProvider iContentProvider, String str, String str2, int[] iArr) {
        this.mDatabase = mtpDatabase;
        this.mProvider = iContentProvider;
        this.mPackageName = str;
        this.mVolumeName = str2;
        this.mUri = MediaStore.Files.getMtpObjectsUri(str2);
        int length = iArr.length;
        ArrayList<String> arrayList = new ArrayList<>(length);
        arrayList.add("_id");
        this.mProperties = new Property[length];
        for (int i2 = 0; i2 < length; i2++) {
            this.mProperties[i2] = createProperty(iArr[i2], arrayList);
        }
        int size = arrayList.size();
        this.mColumns = new String[size];
        for (int i3 = 0; i3 < size; i3++) {
            this.mColumns[i3] = arrayList.get(i3);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Property createProperty(int i2, ArrayList<String> arrayList) {
        String str = MediaStore.Files.FileColumns.STORAGE_ID;
        int i3 = 4;
        switch (i2) {
            case MtpConstants.PROPERTY_STORAGE_ID /* 56321 */:
                i3 = 6;
                break;
            case MtpConstants.PROPERTY_OBJECT_FORMAT /* 56322 */:
                str = MediaStore.Files.FileColumns.FORMAT;
                break;
            case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
                str = null;
                break;
            case MtpConstants.PROPERTY_OBJECT_SIZE /* 56324 */:
                i3 = 8;
                str = "_size";
                break;
            case MtpConstants.PROPERTY_OBJECT_FILE_NAME /* 56327 */:
                str = "_data";
                i3 = 65535;
                break;
            case MtpConstants.PROPERTY_DATE_MODIFIED /* 56329 */:
                str = "date_modified";
                i3 = 65535;
                break;
            case MtpConstants.PROPERTY_PARENT_OBJECT /* 56331 */:
                str = "parent";
                i3 = 6;
                break;
            case MtpConstants.PROPERTY_PERSISTENT_UID /* 56385 */:
                i3 = 10;
                break;
            case MtpConstants.PROPERTY_NAME /* 56388 */:
                str = "title";
                i3 = 65535;
                break;
            case MtpConstants.PROPERTY_ARTIST /* 56390 */:
            case MtpConstants.PROPERTY_GENRE /* 56460 */:
            case MtpConstants.PROPERTY_ALBUM_NAME /* 56474 */:
                i3 = 65535;
                str = null;
                break;
            case MtpConstants.PROPERTY_DESCRIPTION /* 56392 */:
                str = "description";
                i3 = 65535;
                break;
            case MtpConstants.PROPERTY_DATE_ADDED /* 56398 */:
                str = "date_added";
                i3 = 65535;
                break;
            case MtpConstants.PROPERTY_DURATION /* 56457 */:
                str = "duration";
                i3 = 6;
                break;
            case MtpConstants.PROPERTY_TRACK /* 56459 */:
                str = MediaStore.Audio.AudioColumns.TRACK;
                break;
            case MtpConstants.PROPERTY_COMPOSER /* 56470 */:
                str = MediaStore.Audio.AudioColumns.COMPOSER;
                i3 = 65535;
                break;
            case MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE /* 56473 */:
                str = MediaStore.Audio.AudioColumns.YEAR;
                i3 = 65535;
                break;
            case MtpConstants.PROPERTY_ALBUM_ARTIST /* 56475 */:
                str = MediaStore.Audio.AudioColumns.ALBUM_ARTIST;
                i3 = 65535;
                break;
            case MtpConstants.PROPERTY_DISPLAY_NAME /* 56544 */:
                str = "_display_name";
                i3 = 65535;
                break;
            default:
                i3 = 0;
                Log.e(TAG, "unsupported property " + i2);
                str = null;
                break;
        }
        if (str == null) {
            return new Property(i2, i3, -1);
        }
        arrayList.add(str);
        return new Property(i2, i3, arrayList.size() - 1);
    }

    private native String format_date_time(long j2);

    private static String nameFromPath(String str) {
        int iLastIndexOf = str.lastIndexOf(47);
        int i2 = iLastIndexOf >= 0 ? iLastIndexOf + 1 : 0;
        int length = str.length();
        if (length - i2 > 255) {
            length = i2 + 255;
        }
        return str.substring(i2, length);
    }

    private String queryAudio(int i2, String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = this.mProvider.query(this.mPackageName, MediaStore.Audio.Media.getContentUri(this.mVolumeName), new String[]{"_id", str}, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(1);
                        cursorQuery.close();
                        return string;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return ProxyProperties.LOCAL_EXCL_LIST;
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v0, types: [int] */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r12v4, types: [android.database.Cursor] */
    private String queryGenre(int i2) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        try {
            try {
                cursorQuery = this.mProvider.query(this.mPackageName, MediaStore.Audio.Genres.getContentUriForAudioId(this.mVolumeName, i2), new String[]{"_id", "name"}, null, null, null, null);
                if (cursorQuery != null) {
                    try {
                        if (cursorQuery.moveToNext()) {
                            String string = cursorQuery.getString(1);
                            cursorQuery.close();
                            return string;
                        }
                    } catch (Exception e2) {
                        e = e2;
                        Log.e(TAG, "queryGenre exception", e);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return null;
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return ProxyProperties.LOCAL_EXCL_LIST;
            } catch (Throwable th2) {
                th = th2;
                if (i2 != 0) {
                    i2.close();
                }
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
            i2 = 0;
            if (i2 != 0) {
                i2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0048 A[PHI: r11
  0x0048: PHI (r11v3 android.database.Cursor) = (r11v2 android.database.Cursor), (r11v5 android.database.Cursor) binds: [B:19:0x0046, B:12:0x003b] A[DONT_GENERATE, DONT_INLINE]] */
    private Long queryLong(int i2, String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = this.mProvider.query(this.mPackageName, this.mUri, new String[]{"_id", str}, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToNext()) {
                        Long l2 = new Long(cursorQuery.getLong(1));
                        cursorQuery.close();
                        return l2;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return null;
    }

    private String queryString(int i2, String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = this.mProvider.query(this.mPackageName, this.mUri, new String[]{"_id", str}, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToNext()) {
                        String string = cursorQuery.getString(1);
                        cursorQuery.close();
                        return string;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return ProxyProperties.LOCAL_EXCL_LIST;
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x005d A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x006e A[Catch: all -> 0x018b, RemoteException -> 0x018d, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0075  */
    /* JADX WARN: Code duplicated, block: B:34:0x007c A[Catch: all -> 0x018b, RemoteException -> 0x018d, TRY_ENTER, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x008e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x0090 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:42:0x009e A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a7 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00ab A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:46:0x00b6 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:47:0x00d4 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:49:0x00da A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x00df A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:51:0x00e4 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x00f3 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00fe A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0104 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x011a A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:62:0x011f A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0123 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:64:0x0135 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0142 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x0148 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0150 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0154 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:72:0x0162 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x016a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x016c A[Catch: all -> 0x018b, RemoteException -> 0x018d, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x0174 A[Catch: all -> 0x018b, RemoteException -> 0x018d, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x018d, blocks: (B:24:0x0058, B:34:0x007c, B:35:0x0080, B:38:0x0090, B:40:0x0099, B:42:0x009e, B:43:0x00a4, B:44:0x00a7, B:72:0x0162, B:74:0x016c, B:75:0x0174, B:45:0x00ab, B:46:0x00b6, B:47:0x00d4, B:49:0x00da, B:50:0x00df, B:51:0x00e4, B:52:0x00f3, B:53:0x00fe, B:55:0x0104, B:57:0x010c, B:59:0x0114, B:61:0x011a, B:62:0x011f, B:63:0x0123, B:64:0x0135, B:65:0x0142, B:67:0x0148, B:68:0x0150, B:69:0x0154, B:26:0x005d, B:28:0x006e), top: B:90:0x0058, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x0187  */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x00b6, please report this as an issue */
    public MtpPropertyList getPropertyList(int i2, int i3, int i4) {
        String[] strArr;
        String str;
        String[] strArr2;
        String str2;
        int count;
        MtpPropertyList mtpPropertyList;
        int i5;
        int i6;
        Property[] propertyArr;
        Property property;
        int i7;
        int i8;
        String string;
        String string2;
        String strQueryGenre;
        int i9;
        int i10 = i2;
        if (i4 > 1) {
            return new MtpPropertyList(0, MtpConstants.RESPONSE_SPECIFICATION_BY_DEPTH_UNSUPPORTED);
        }
        Cursor cursorQuery = null;
        try {
            if (i3 == 0) {
                if (i10 == -1) {
                    str2 = null;
                    strArr2 = null;
                } else {
                    strArr = new String[]{Integer.toString(i2)};
                    str = i4 == 1 ? PARENT_WHERE : ID_WHERE;
                }
                if (i4 <= 0 || i10 == -1) {
                    cursorQuery = this.mProvider.query(this.mPackageName, this.mUri, this.mColumns, str2, strArr2, null, null);
                    if (cursorQuery == null) {
                        MtpPropertyList mtpPropertyList2 = new MtpPropertyList(0, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        return mtpPropertyList2;
                    }
                } else {
                    try {
                        if (this.mColumns.length > 1) {
                            cursorQuery = this.mProvider.query(this.mPackageName, this.mUri, this.mColumns, str2, strArr2, null, null);
                            if (cursorQuery == null) {
                                MtpPropertyList mtpPropertyList3 = new MtpPropertyList(0, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                if (cursorQuery != null) {
                                    cursorQuery.close();
                                }
                                return mtpPropertyList3;
                            }
                        }
                    } catch (RemoteException unused) {
                        MtpPropertyList mtpPropertyList4 = new MtpPropertyList(0, 8194);
                        if (0 != 0) {
                            cursorQuery.close();
                        }
                        return mtpPropertyList4;
                    }
                }
                count = cursorQuery != null ? cursorQuery.getCount() : 1;
                mtpPropertyList = new MtpPropertyList(this.mProperties.length * count, MtpConstants.RESPONSE_OK);
                for (i5 = 0; i5 < count; i5++) {
                    if (cursorQuery != null) {
                        cursorQuery.moveToNext();
                        i10 = (int) cursorQuery.getLong(0);
                    }
                    i6 = 0;
                    while (true) {
                        propertyArr = this.mProperties;
                        if (i6 < propertyArr.length) {
                            property = propertyArr[i6];
                            i7 = property.code;
                            i8 = property.column;
                            switch (i7) {
                                case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
                                    mtpPropertyList.append(i10, i7, 4, 0L);
                                    break;
                                case MtpConstants.PROPERTY_OBJECT_FILE_NAME /* 56327 */:
                                    string = cursorQuery.getString(i8);
                                    if (string != null) {
                                        mtpPropertyList.append(i10, i7, nameFromPath(string));
                                    } else {
                                        mtpPropertyList.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                    }
                                    break;
                                case MtpConstants.PROPERTY_DATE_MODIFIED /* 56329 */:
                                case MtpConstants.PROPERTY_DATE_ADDED /* 56398 */:
                                    mtpPropertyList.append(i10, i7, format_date_time(cursorQuery.getInt(i8)));
                                    break;
                                case MtpConstants.PROPERTY_PERSISTENT_UID /* 56385 */:
                                    mtpPropertyList.append(i10, i7, 10, (cursorQuery.getLong(i8) << 32) + ((long) i10));
                                    break;
                                case MtpConstants.PROPERTY_NAME /* 56388 */:
                                    string2 = cursorQuery.getString(i8);
                                    if (string2 == null) {
                                        string2 = queryString(i10, "name");
                                    }
                                    if (string2 == null && (string2 = queryString(i10, "_data")) != null) {
                                        string2 = nameFromPath(string2);
                                    }
                                    if (string2 != null) {
                                        mtpPropertyList.append(i10, i7, string2);
                                    } else {
                                        mtpPropertyList.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                    }
                                    break;
                                case MtpConstants.PROPERTY_ARTIST /* 56390 */:
                                    mtpPropertyList.append(i10, i7, queryAudio(i10, "artist"));
                                    break;
                                case MtpConstants.PROPERTY_TRACK /* 56459 */:
                                    mtpPropertyList.append(i10, i7, 4, cursorQuery.getInt(i8) % 1000);
                                    break;
                                case MtpConstants.PROPERTY_GENRE /* 56460 */:
                                    strQueryGenre = queryGenre(i10);
                                    if (strQueryGenre != null) {
                                        mtpPropertyList.append(i10, i7, strQueryGenre);
                                    } else {
                                        mtpPropertyList.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                    }
                                    break;
                                case MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE /* 56473 */:
                                    mtpPropertyList.append(i10, i7, Integer.toString(cursorQuery.getInt(i8)) + "0101T000000");
                                    break;
                                case MtpConstants.PROPERTY_ALBUM_NAME /* 56474 */:
                                    mtpPropertyList.append(i10, i7, queryAudio(i10, "album"));
                                    break;
                                default:
                                    i9 = property.type;
                                    if (i9 == 65535) {
                                        mtpPropertyList.append(i10, i7, cursorQuery.getString(i8));
                                    } else if (i9 == 0) {
                                        mtpPropertyList.append(i10, i7, i9, 0L);
                                    } else {
                                        mtpPropertyList.append(i10, i7, i9, cursorQuery.getLong(i8));
                                    }
                                    break;
                            }
                            i6++;
                        }
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return mtpPropertyList;
            }
            if (i10 == -1) {
                strArr = new String[]{Integer.toString(i3)};
                str = FORMAT_WHERE;
            } else {
                strArr = new String[]{Integer.toString(i2), Integer.toString(i3)};
                str = i4 == 1 ? PARENT_FORMAT_WHERE : ID_FORMAT_WHERE;
            }
            if (i4 <= 0) {
                cursorQuery = this.mProvider.query(this.mPackageName, this.mUri, this.mColumns, str2, strArr2, null, null);
                if (cursorQuery == null) {
                    MtpPropertyList mtpPropertyList5 = new MtpPropertyList(0, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mtpPropertyList5;
                }
            } else {
                cursorQuery = this.mProvider.query(this.mPackageName, this.mUri, this.mColumns, str2, strArr2, null, null);
                if (cursorQuery == null) {
                    MtpPropertyList mtpPropertyList6 = new MtpPropertyList(0, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mtpPropertyList6;
                }
            }
            if (cursorQuery != null) {
            }
            mtpPropertyList = new MtpPropertyList(this.mProperties.length * count, MtpConstants.RESPONSE_OK);
            while (i5 < count) {
                if (cursorQuery != null) {
                    cursorQuery.moveToNext();
                    i10 = (int) cursorQuery.getLong(0);
                }
                i6 = 0;
                while (true) {
                    propertyArr = this.mProperties;
                    if (i6 < propertyArr.length) {
                        property = propertyArr[i6];
                        i7 = property.code;
                        i8 = property.column;
                        switch (i7) {
                            case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
                                mtpPropertyList.append(i10, i7, 4, 0L);
                                break;
                            case MtpConstants.PROPERTY_OBJECT_FILE_NAME /* 56327 */:
                                string = cursorQuery.getString(i8);
                                if (string != null) {
                                    mtpPropertyList.append(i10, i7, nameFromPath(string));
                                } else {
                                    mtpPropertyList.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                }
                                break;
                            case MtpConstants.PROPERTY_DATE_MODIFIED /* 56329 */:
                            case MtpConstants.PROPERTY_DATE_ADDED /* 56398 */:
                                mtpPropertyList.append(i10, i7, format_date_time(cursorQuery.getInt(i8)));
                                break;
                            case MtpConstants.PROPERTY_PERSISTENT_UID /* 56385 */:
                                mtpPropertyList.append(i10, i7, 10, (cursorQuery.getLong(i8) << 32) + ((long) i10));
                                break;
                            case MtpConstants.PROPERTY_NAME /* 56388 */:
                                string2 = cursorQuery.getString(i8);
                                if (string2 == null) {
                                    string2 = queryString(i10, "name");
                                }
                                if (string2 == null) {
                                    string2 = nameFromPath(string2);
                                }
                                if (string2 != null) {
                                    mtpPropertyList.append(i10, i7, string2);
                                } else {
                                    mtpPropertyList.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                }
                                break;
                            case MtpConstants.PROPERTY_ARTIST /* 56390 */:
                                mtpPropertyList.append(i10, i7, queryAudio(i10, "artist"));
                                break;
                            case MtpConstants.PROPERTY_TRACK /* 56459 */:
                                mtpPropertyList.append(i10, i7, 4, cursorQuery.getInt(i8) % 1000);
                                break;
                            case MtpConstants.PROPERTY_GENRE /* 56460 */:
                                strQueryGenre = queryGenre(i10);
                                if (strQueryGenre != null) {
                                    mtpPropertyList.append(i10, i7, strQueryGenre);
                                } else {
                                    mtpPropertyList.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                }
                                break;
                            case MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE /* 56473 */:
                                mtpPropertyList.append(i10, i7, Integer.toString(cursorQuery.getInt(i8)) + "0101T000000");
                                break;
                            case MtpConstants.PROPERTY_ALBUM_NAME /* 56474 */:
                                mtpPropertyList.append(i10, i7, queryAudio(i10, "album"));
                                break;
                            default:
                                i9 = property.type;
                                if (i9 == 65535) {
                                    mtpPropertyList.append(i10, i7, cursorQuery.getString(i8));
                                } else if (i9 == 0) {
                                    mtpPropertyList.append(i10, i7, i9, 0L);
                                } else {
                                    mtpPropertyList.append(i10, i7, i9, cursorQuery.getLong(i8));
                                }
                                break;
                        }
                        i6++;
                    }
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return mtpPropertyList;
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            throw th;
        }
        strArr2 = strArr;
        str2 = str;
    }
}
