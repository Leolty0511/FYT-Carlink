package android.mtp;

import android.app.m;
import android.content.ContentProviderClient;
import android.database.Cursor;
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
    private final Property[] mProperties;
    private final ContentProviderClient mProvider;
    private final Uri mUri;
    private final String mVolumeName;

    public class Property {
        int code;
        int column;
        int type;

        public Property(int i2, int i3, int i4) {
            this.code = i2;
            this.type = i3;
            this.column = i4;
        }
    }

    public MtpPropertyGroup(MtpDatabase mtpDatabase, ContentProviderClient contentProviderClient, String str, int[] iArr) {
        this.mDatabase = mtpDatabase;
        this.mProvider = contentProviderClient;
        this.mVolumeName = str;
        this.mUri = MediaStore.Files.getMtpObjectsUri(str);
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
                str = "format";
                break;
            case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
            case MtpConstants.PROPERTY_BITRATE_TYPE /* 56978 */:
            case MtpConstants.PROPERTY_NUMBER_OF_CHANNELS /* 56980 */:
                str = null;
                break;
            case MtpConstants.PROPERTY_OBJECT_SIZE /* 56324 */:
                str = "_size";
                i3 = 8;
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
            case MtpConstants.PROPERTY_SAMPLE_RATE /* 56979 */:
            case MtpConstants.PROPERTY_AUDIO_WAVE_CODEC /* 56985 */:
            case MtpConstants.PROPERTY_AUDIO_BITRATE /* 56986 */:
                i3 = 6;
                str = null;
                break;
            default:
                m.p("unsupported property ", i2, TAG);
                i3 = 0;
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
            cursorQuery = this.mProvider.query(MediaStore.Audio.Media.getContentUri(this.mVolumeName), new String[]{"_id", str}, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
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
            return "";
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [int] */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v4, types: [android.database.Cursor] */
    private String queryGenre(int i2) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        try {
            try {
                cursorQuery = this.mProvider.query(MediaStore.Audio.Genres.getContentUriForAudioId(this.mVolumeName, i2), new String[]{"_id", "name"}, null, null, null, null);
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
                return "";
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

    /* JADX WARN: Code duplicated, block: B:20:0x0046 A[PHI: r10
  0x0046: PHI (r10v3 android.database.Cursor) = (r10v2 android.database.Cursor), (r10v5 android.database.Cursor) binds: [B:19:0x0044, B:12:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    private Long queryLong(int i2, String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = this.mProvider.query(this.mUri, new String[]{"_id", str}, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
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
            cursorQuery = this.mProvider.query(this.mUri, new String[]{"_id", str}, ID_WHERE, new String[]{Integer.toString(i2)}, null, null);
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
            return "";
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x005b A[Catch: all -> 0x019b, RemoteException -> 0x019d, TryCatch #0 {RemoteException -> 0x019d, blocks: (B:25:0x0056, B:35:0x0077, B:36:0x007b, B:39:0x008b, B:41:0x0094, B:43:0x0099, B:44:0x009f, B:45:0x00a2, B:75:0x0172, B:77:0x017c, B:78:0x0184, B:46:0x00a6, B:47:0x00b0, B:48:0x00ba, B:49:0x00c5, B:50:0x00e3, B:52:0x00e9, B:53:0x00ee, B:54:0x00f3, B:55:0x0102, B:56:0x010d, B:58:0x0113, B:60:0x011c, B:62:0x0124, B:64:0x012a, B:65:0x012f, B:66:0x0133, B:67:0x0145, B:68:0x0152, B:70:0x0158, B:71:0x0160, B:72:0x0164, B:27:0x005b, B:29:0x0069), top: B:93:0x0056, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0069 A[Catch: all -> 0x019b, RemoteException -> 0x019d, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x019d, blocks: (B:25:0x0056, B:35:0x0077, B:36:0x007b, B:39:0x008b, B:41:0x0094, B:43:0x0099, B:44:0x009f, B:45:0x00a2, B:75:0x0172, B:77:0x017c, B:78:0x0184, B:46:0x00a6, B:47:0x00b0, B:48:0x00ba, B:49:0x00c5, B:50:0x00e3, B:52:0x00e9, B:53:0x00ee, B:54:0x00f3, B:55:0x0102, B:56:0x010d, B:58:0x0113, B:60:0x011c, B:62:0x0124, B:64:0x012a, B:65:0x012f, B:66:0x0133, B:67:0x0145, B:68:0x0152, B:70:0x0158, B:71:0x0160, B:72:0x0164, B:27:0x005b, B:29:0x0069), top: B:93:0x0056, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0070  */
    public MtpPropertyList getPropertyList(int i2, int i3, int i4) {
        String[] strArr;
        String str;
        String str2;
        String[] strArr2;
        if (i4 > 1) {
            return new MtpPropertyList(0, MtpConstants.RESPONSE_SPECIFICATION_BY_DEPTH_UNSUPPORTED);
        }
        Cursor cursorQuery = null;
        if (i3 != 0) {
            if (i2 == -1) {
                strArr = new String[]{Integer.toString(i3)};
                str = FORMAT_WHERE;
            } else {
                strArr = new String[]{Integer.toString(i2), Integer.toString(i3)};
                str = i4 == 1 ? PARENT_FORMAT_WHERE : ID_FORMAT_WHERE;
            }
            str2 = str;
            strArr2 = strArr;
        } else if (i2 == -1) {
            str2 = null;
            strArr2 = null;
        } else {
            strArr2 = new String[]{Integer.toString(i2)};
            str2 = i4 == 1 ? PARENT_WHERE : ID_WHERE;
        }
        try {
            if (i4 > 0 || i2 == -1) {
                cursorQuery = this.mProvider.query(this.mUri, this.mColumns, str2, strArr2, null, null);
                if (cursorQuery == null) {
                    MtpPropertyList mtpPropertyList = new MtpPropertyList(0, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return mtpPropertyList;
                }
            } else {
                try {
                    if (this.mColumns.length > 1) {
                        cursorQuery = this.mProvider.query(this.mUri, this.mColumns, str2, strArr2, null, null);
                        if (cursorQuery == null) {
                            MtpPropertyList mtpPropertyList2 = new MtpPropertyList(0, MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                            if (cursorQuery != null) {
                                cursorQuery.close();
                            }
                            return mtpPropertyList2;
                        }
                    }
                } catch (RemoteException unused) {
                    MtpPropertyList mtpPropertyList3 = new MtpPropertyList(0, 8194);
                    if (0 != 0) {
                        cursorQuery.close();
                    }
                    return mtpPropertyList3;
                }
            }
            int count = cursorQuery != null ? cursorQuery.getCount() : 1;
            MtpPropertyList mtpPropertyList4 = new MtpPropertyList(this.mProperties.length * count, MtpConstants.RESPONSE_OK);
            for (int i5 = 0; i5 < count; i5++) {
                if (cursorQuery != null) {
                    cursorQuery.moveToNext();
                    i2 = (int) cursorQuery.getLong(0);
                }
                int i6 = 0;
                while (true) {
                    Property[] propertyArr = this.mProperties;
                    if (i6 < propertyArr.length) {
                        Property property = propertyArr[i6];
                        int i7 = property.code;
                        int i8 = property.column;
                        switch (i7) {
                            case MtpConstants.PROPERTY_PROTECTION_STATUS /* 56323 */:
                                mtpPropertyList4.append(i2, i7, 4, 0L);
                                break;
                            case MtpConstants.PROPERTY_OBJECT_FILE_NAME /* 56327 */:
                                String string = cursorQuery.getString(i8);
                                if (string != null) {
                                    mtpPropertyList4.append(i2, i7, nameFromPath(string));
                                } else {
                                    mtpPropertyList4.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                }
                                break;
                            case MtpConstants.PROPERTY_DATE_MODIFIED /* 56329 */:
                            case MtpConstants.PROPERTY_DATE_ADDED /* 56398 */:
                                mtpPropertyList4.append(i2, i7, format_date_time(cursorQuery.getInt(i8)));
                                break;
                            case MtpConstants.PROPERTY_PERSISTENT_UID /* 56385 */:
                                mtpPropertyList4.append(i2, i7, 10, (cursorQuery.getLong(i8) << 32) + ((long) i2));
                                break;
                            case MtpConstants.PROPERTY_NAME /* 56388 */:
                                String string2 = cursorQuery.getString(i8);
                                if (string2 == null) {
                                    string2 = queryString(i2, "name");
                                }
                                if (string2 == null && (string2 = queryString(i2, "_data")) != null) {
                                    string2 = nameFromPath(string2);
                                }
                                if (string2 != null) {
                                    mtpPropertyList4.append(i2, i7, string2);
                                } else {
                                    mtpPropertyList4.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                }
                                break;
                            case MtpConstants.PROPERTY_ARTIST /* 56390 */:
                                mtpPropertyList4.append(i2, i7, queryAudio(i2, "artist"));
                                break;
                            case MtpConstants.PROPERTY_TRACK /* 56459 */:
                                mtpPropertyList4.append(i2, i7, 4, cursorQuery.getInt(i8) % 1000);
                                break;
                            case MtpConstants.PROPERTY_GENRE /* 56460 */:
                                String strQueryGenre = queryGenre(i2);
                                if (strQueryGenre != null) {
                                    mtpPropertyList4.append(i2, i7, strQueryGenre);
                                } else {
                                    mtpPropertyList4.setResult(MtpConstants.RESPONSE_INVALID_OBJECT_HANDLE);
                                }
                                break;
                            case MtpConstants.PROPERTY_ORIGINAL_RELEASE_DATE /* 56473 */:
                                mtpPropertyList4.append(i2, i7, Integer.toString(cursorQuery.getInt(i8)) + "0101T000000");
                                break;
                            case MtpConstants.PROPERTY_ALBUM_NAME /* 56474 */:
                                mtpPropertyList4.append(i2, i7, queryAudio(i2, "album"));
                                break;
                            case MtpConstants.PROPERTY_BITRATE_TYPE /* 56978 */:
                            case MtpConstants.PROPERTY_NUMBER_OF_CHANNELS /* 56980 */:
                                mtpPropertyList4.append(i2, i7, 4, 0L);
                                break;
                            case MtpConstants.PROPERTY_SAMPLE_RATE /* 56979 */:
                            case MtpConstants.PROPERTY_AUDIO_WAVE_CODEC /* 56985 */:
                            case MtpConstants.PROPERTY_AUDIO_BITRATE /* 56986 */:
                                mtpPropertyList4.append(i2, i7, 6, 0L);
                                break;
                            default:
                                int i9 = property.type;
                                if (i9 == 65535) {
                                    mtpPropertyList4.append(i2, i7, cursorQuery.getString(i8));
                                } else if (i9 == 0) {
                                    mtpPropertyList4.append(i2, i7, i9, 0L);
                                } else {
                                    mtpPropertyList4.append(i2, i7, i9, cursorQuery.getLong(i8));
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
            return mtpPropertyList4;
        } catch (Throwable th) {
            if (0 != 0) {
                cursorQuery.close();
            }
            throw th;
        }
    }
}
