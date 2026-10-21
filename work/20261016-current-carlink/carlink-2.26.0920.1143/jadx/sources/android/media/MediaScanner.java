package android.media;

import android.accessibilityservice.c;
import android.app.m;
import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.drm.DecryptHandle;
import android.drm.DrmManagerClientEx;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactoryEx;
import android.mtp.MtpConstants;
import android.net.Uri;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Build;
import android.os.Environment;
import android.os.EnvironmentEx;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.MediaStore;
import android.provider.Settings;
import android.provider.SettingsEx;
import android.sax.ElementListener;
import android.sax.RootElement;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.telecom.Logging.Session;
import android.text.TextUtils;
import android.text.format.Time;
import android.util.Log;
import android.util.Xml;
import com.google.common.net.HttpHeaders;
import dalvik.system.CloseGuard;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicBoolean;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class MediaScanner implements AutoCloseable {
    private static final String ALARMS_DIR = "/alarms/";
    private static final int DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX = 2;
    protected static final String DEFAULT_RINGTONE_PROPERTY_PREFIX = "ro.config.";
    private static final boolean ENABLE_BULK_INSERTS = true;
    private static final int FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX = 3;
    private static final int FILES_PRESCAN_FORMAT_COLUMN_INDEX = 2;
    private static final int FILES_PRESCAN_ID_COLUMN_INDEX = 0;
    private static final int FILES_PRESCAN_PATH_COLUMN_INDEX = 1;
    private static final String[] FILES_PRESCAN_PROJECTION;
    private static final String[] ID3_GENRES;
    private static final int ID_PLAYLISTS_COLUMN_INDEX = 0;
    private static final String[] ID_PROJECTION;
    public static final int IMG_TYPE_MODE_3D_CAPTURE = 7;
    public static final int IMG_TYPE_MODE_AUDIO_CAPTURE = 53;
    public static final int IMG_TYPE_MODE_BLUR_HAS_BOKEH = 12;
    public static final int IMG_TYPE_MODE_BLUR_NO_BOKEH = 268;
    public static final int IMG_TYPE_MODE_BURST = 51;
    public static final int IMG_TYPE_MODE_BURST_COVER = 55;
    public static final int IMG_TYPE_MODE_HDR = 52;
    public static final int IMG_TYPE_MODE_HDR_AUDIO_CAPTURE = 54;
    public static final int IMG_TYPE_MODE_NORMAL = 0;
    public static final int IMG_TYPE_MODE_REAL_BOKEH_HAS_BOKEH = 16;
    public static final int IMG_TYPE_MODE_REAL_BOKEH_NO_BOKEH = 272;
    public static final int IMG_TYPE_MODE_SOFY_OPTICAL_ZOOM = 11;
    public static final int IMG_TYPE_MODE_THUMBNAIL = 56;
    public static final String LAST_INTERNAL_SCAN_FINGERPRINT = "lastScanFingerprint";
    private static final String MUSIC_DIR = "/music/";
    private static final String NOTIFICATIONS_DIR = "/notifications/";
    private static final int PATH_PLAYLISTS_COLUMN_INDEX = 1;
    private static final String[] PLAYLIST_MEMBERS_PROJECTION;
    private static final String PODCAST_DIR = "/podcasts/";
    private static final String RINGTONES_DIR = "/ringtones/";
    public static final String SCANNED_BUILD_PREFS_NAME = "MediaScanBuild";
    private static final String SYSTEM_SOUNDS_DIR = "/system/media/audio";
    private static final String TAG = "MediaScanner";
    private static HashMap<String, String> mMediaPaths;
    private static HashMap<String, String> mNoMediaPaths;
    private static String sLastInternalScanFingerprint;
    private final Uri mAudioUri;
    private final BitmapFactory.Options mBitmapOptions;
    protected final MyMediaScannerClient mClient;
    private final CloseGuard mCloseGuard;
    private final AtomicBoolean mClosed = new AtomicBoolean();
    private final Context mContext;
    private String mDefaultAlarmAlertFilename;
    private boolean mDefaultAlarmSet;
    protected String[] mDefaultMessageFilename;
    protected boolean[] mDefaultMessageSet;
    private String mDefaultNotificationFilename;
    private boolean mDefaultNotificationSet;
    protected String[] mDefaultRingtoneFilename;
    protected boolean[] mDefaultRingtoneSet;
    private DrmManagerClientEx mDrmManagerClient;
    private final Uri mFilesUri;
    private final Uri mFilesUriNoNotify;
    private final Uri mImagesUri;
    private MediaInserter mMediaInserter;
    private final ContentProviderClient mMediaProvider;
    private final MediaScannerExUtils mMediaScannerExUtils;
    private int mMtpObjectHandle;
    private long mNativeContext;
    private int mOriginalCount;
    private final String mPackageName;
    private String mPathInDatabase;
    protected int mPhoneCount;
    private final ArrayList<FileEntry> mPlayLists;
    private final ArrayList<PlaylistEntry> mPlaylistEntries;
    private final Uri mPlaylistsUri;
    private final boolean mProcessGenres;
    private final boolean mProcessPlaylists;
    private final Uri mThumbsUri;
    private final Uri mVideoUri;
    private final String mVolumeName;

    public static class FileEntry {
        int mFormat;
        long mLastModified;
        boolean mLastModifiedChanged = false;
        String mPath;
        long mRowId;

        public FileEntry(long j2, String str, long j3, int i2) {
            this.mRowId = j2;
            this.mPath = str;
            this.mLastModified = j3;
            this.mFormat = i2;
        }

        public String toString() {
            return this.mPath + " mRowId: " + this.mRowId;
        }
    }

    public static class MediaBulkDeleter {
        final Uri mBaseUri;
        final ContentProviderClient mProvider;
        StringBuilder whereClause = new StringBuilder();
        ArrayList<String> whereArgs = new ArrayList<>(100);

        public MediaBulkDeleter(ContentProviderClient contentProviderClient, Uri uri) {
            this.mProvider = contentProviderClient;
            this.mBaseUri = uri;
        }

        public void delete(long j2) {
            if (this.whereClause.length() != 0) {
                this.whereClause.append(",");
            }
            this.whereClause.append("?");
            this.whereArgs.add("" + j2);
            if (this.whereArgs.size() > 100) {
                flush();
            }
        }

        public void flush() {
            int size = this.whereArgs.size();
            if (size > 0) {
                String[] strArr = (String[]) this.whereArgs.toArray(new String[size]);
                this.mProvider.delete(this.mBaseUri, "_id IN (" + this.whereClause.toString() + ")", strArr);
                this.whereClause.setLength(0);
                this.whereArgs.clear();
            }
        }
    }

    public class MyMediaScannerClient implements MediaScannerClient {
        private String mAlbum;
        private String mAlbumArtist;
        private String mArtist;
        private int mCompilation;
        private String mComposer;
        private long mDate;
        private final SimpleDateFormat mDateFormatter;
        private int mDuration;
        private long mFileSize;
        private int mFileType;
        private String mGenre;
        private int mHeight;
        private boolean mIsDrm;
        private long mLastModified;
        private String mMimeType;
        private boolean mNoMedia;
        private String mPath;
        private String mTitle;
        private int mTrack;
        private int mWidth;
        private String mWriter;
        private int mYear;

        public MyMediaScannerClient() {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
            this.mDateFormatter = simpleDateFormat;
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(Time.TIMEZONE_UTC));
        }

        private boolean convertGenreCode(String str, String str2) {
            String genreName = getGenreName(str);
            if (genreName.equals(str2)) {
                return true;
            }
            StringBuilder sbW = c.w("'", str, "' -> '", genreName, "', expected '");
            sbW.append(str2);
            sbW.append("'");
            Log.d(MediaScanner.TAG, sbW.toString());
            return false;
        }

        private Uri endFile(FileEntry fileEntry, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
            ExifInterface exifInterface;
            int i2;
            boolean z7;
            boolean z8;
            boolean z9;
            boolean z10;
            boolean z11;
            long j2;
            Uri uriInsert;
            int i3;
            boolean z12;
            String asString;
            int iLastIndexOf;
            int i4;
            String str = this.mArtist;
            if (str == null || str.length() == 0) {
                this.mArtist = this.mAlbumArtist;
            }
            ContentValues values = toValues();
            String asString2 = values.getAsString("title");
            if (asString2 == null || TextUtils.isEmpty(asString2.trim())) {
                values.put("title", MediaFile.getFileTitle(values.getAsString("_data")));
            }
            if (MediaStore.UNKNOWN_STRING.equals(values.getAsString("album")) && (iLastIndexOf = (asString = values.getAsString("_data")).lastIndexOf(47)) >= 0) {
                int i5 = 0;
                while (true) {
                    i4 = i5 + 1;
                    int iIndexOf = asString.indexOf(47, i4);
                    if (iIndexOf < 0 || iIndexOf >= iLastIndexOf) {
                        break;
                    }
                    i5 = iIndexOf;
                }
                if (i5 != 0) {
                    values.put("album", asString.substring(i4, iLastIndexOf));
                }
            }
            long id = fileEntry.mRowId;
            if (!MediaFile.isAudioFileType(this.mFileType) || (id != 0 && MediaScanner.this.mMtpObjectHandle == 0)) {
                int i6 = this.mFileType;
                if ((i6 == 31 || MediaFile.isRawImageFileType(i6)) && !this.mNoMedia) {
                    try {
                        exifInterface = new ExifInterface(fileEntry.mPath);
                    } catch (IOException unused) {
                        exifInterface = null;
                    }
                    if (exifInterface != null) {
                        float[] fArr = new float[2];
                        if (exifInterface.getLatLong(fArr)) {
                            values.put("latitude", Float.valueOf(fArr[0]));
                            values.put("longitude", Float.valueOf(fArr[1]));
                        }
                        long gpsDateTime = exifInterface.getGpsDateTime();
                        if (gpsDateTime != -1) {
                            values.put("datetaken", Long.valueOf(gpsDateTime));
                        } else {
                            long dateTime = exifInterface.getDateTime();
                            if (dateTime != -1 && Math.abs((this.mLastModified * 1000) - dateTime) >= 86400000) {
                                values.put("datetaken", Long.valueOf(dateTime));
                            }
                        }
                        if (this.mFileType == 31) {
                            updateContentValuesForSpecialPictures(exifInterface, values);
                        }
                        int attributeInt = exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1);
                        if (attributeInt != -1) {
                            if (attributeInt == 3) {
                                i2 = 180;
                            } else if (attributeInt != 6) {
                                i2 = attributeInt != 8 ? 0 : 270;
                            } else {
                                i2 = 90;
                            }
                            values.put(MediaStore.Images.ImageColumns.ORIENTATION, Integer.valueOf(i2));
                        }
                    }
                }
            } else {
                values.put(MediaStore.Audio.AudioColumns.IS_RINGTONE, Boolean.valueOf(z2));
                values.put(MediaStore.Audio.AudioColumns.IS_NOTIFICATION, Boolean.valueOf(z3));
                values.put(MediaStore.Audio.AudioColumns.IS_ALARM, Boolean.valueOf(z4));
                values.put(MediaStore.Audio.AudioColumns.IS_MUSIC, Boolean.valueOf(z5));
                values.put(MediaStore.Audio.AudioColumns.IS_PODCAST, Boolean.valueOf(z6));
            }
            Uri uri = MediaScanner.this.mFilesUri;
            MediaInserter mediaInserter = MediaScanner.this.mMediaInserter;
            if (!this.mNoMedia) {
                if (MediaFile.isVideoFileType(this.mFileType)) {
                    uri = MediaScanner.this.mVideoUri;
                } else if (MediaFile.isImageFileType(this.mFileType)) {
                    uri = MediaScanner.this.mImagesUri;
                } else if (MediaFile.isAudioFileType(this.mFileType)) {
                    uri = MediaScanner.this.mAudioUri;
                }
            }
            if (z3) {
                if (MediaScanner.this.mDefaultNotificationSet || !(TextUtils.isEmpty(MediaScanner.this.mDefaultNotificationFilename) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultNotificationFilename))) {
                    z10 = false;
                    z12 = false;
                } else {
                    z10 = true;
                    z12 = true;
                }
                int i7 = 0;
                while (true) {
                    MediaScanner mediaScanner = MediaScanner.this;
                    if (i7 >= mediaScanner.mPhoneCount) {
                        j2 = 0;
                        z11 = z12;
                        z9 = false;
                        break;
                    }
                    if ((!mediaScanner.mDefaultMessageSet[i7] && TextUtils.isEmpty(mediaScanner.mDefaultMessageFilename[i7])) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultMessageFilename[i7])) {
                        j2 = 0;
                        boolean z13 = z12;
                        z9 = true;
                        z10 = true;
                        z11 = z13;
                        break;
                    }
                    i7++;
                }
            } else {
                if (z2) {
                    int i8 = 0;
                    while (true) {
                        MediaScanner mediaScanner2 = MediaScanner.this;
                        if (i8 >= mediaScanner2.mPhoneCount) {
                            z10 = false;
                            break;
                        }
                        if (!mediaScanner2.mDefaultRingtoneSet[i8] && (TextUtils.isEmpty(mediaScanner2.mDefaultRingtoneFilename[i8]) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultRingtoneFilename[i8]))) {
                            z10 = true;
                            break;
                        }
                        i8++;
                    }
                    z9 = false;
                } else {
                    if (z4 && !MediaScanner.this.mDefaultAlarmSet && (TextUtils.isEmpty(MediaScanner.this.mDefaultAlarmAlertFilename) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultAlarmAlertFilename))) {
                        z7 = false;
                        z8 = true;
                    } else {
                        z7 = false;
                        z8 = false;
                    }
                    boolean z14 = z8;
                    z9 = z7;
                    z10 = z14;
                }
                z11 = false;
                j2 = 0;
            }
            if (id == j2) {
                if (MediaScanner.this.mMtpObjectHandle != 0) {
                    values.put(MediaStore.MediaColumns.MEDIA_SCANNER_NEW_OBJECT_ID, Integer.valueOf(MediaScanner.this.mMtpObjectHandle));
                }
                if (uri == MediaScanner.this.mFilesUri) {
                    int formatCode = fileEntry.mFormat;
                    if (formatCode == 0) {
                        formatCode = MediaFile.getFormatCode(fileEntry.mPath, this.mMimeType);
                    }
                    values.put("format", Integer.valueOf(formatCode));
                }
                if (mediaInserter == null || z10) {
                    if (mediaInserter != null) {
                        mediaInserter.flushAll();
                    }
                    uriInsert = MediaScanner.this.mMediaProvider.insert(uri, values);
                } else {
                    if (fileEntry.mFormat == 12289) {
                        mediaInserter.insertwithPriority(uri, values);
                    } else {
                        mediaInserter.insert(uri, values);
                    }
                    uriInsert = null;
                }
                if (uriInsert != null) {
                    id = ContentUris.parseId(uriInsert);
                    fileEntry.mRowId = id;
                }
            } else {
                Uri uriWithAppendedId = ContentUris.withAppendedId(uri, id);
                values.remove("_data");
                MediaScannerExUtils unused2 = MediaScanner.this.mMediaScannerExUtils;
                MediaScannerExUtils.updateNewPathValues(MediaScanner.this.mContext, values, MediaScanner.this.mPathInDatabase);
                if (!MediaScanner.isNoMediaPath(fileEntry.mPath)) {
                    int fileTypeForMimeType = MediaFile.getFileTypeForMimeType(this.mMimeType);
                    if (MediaFile.isAudioFileType(fileTypeForMimeType)) {
                        i3 = 2;
                    } else if (MediaFile.isVideoFileType(fileTypeForMimeType)) {
                        i3 = 3;
                    } else if (MediaFile.isImageFileType(fileTypeForMimeType)) {
                        i3 = 1;
                    } else {
                        i3 = MediaFile.isPlayListFileType(fileTypeForMimeType) ? 4 : 0;
                    }
                    values.put("media_type", Integer.valueOf(i3));
                }
                MediaScanner.this.mMediaProvider.update(uriWithAppendedId, values, null, null);
                uriInsert = uriWithAppendedId;
            }
            if (z10) {
                if (z3) {
                    if (z11 && !MediaScanner.this.mDefaultNotificationSet) {
                        setRingtoneIfNotSet(Settings.System.NOTIFICATION_SOUND, uri, id);
                        MediaScannerExUtils.saveUriToSettingsDB(MediaScanner.this.mContext.getContentResolver(), SettingsEx.SystemEx.DEFAULT_NOTIFICATION, uri, id);
                        MediaScanner.this.mDefaultNotificationSet = true;
                    }
                    if (z9) {
                        int i9 = 0;
                        while (true) {
                            MediaScanner mediaScanner3 = MediaScanner.this;
                            if (i9 >= mediaScanner3.mPhoneCount) {
                                break;
                            }
                            if (!mediaScanner3.mDefaultMessageSet[i9] && (TextUtils.isEmpty(mediaScanner3.mDefaultMessageFilename[i9]) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultMessageFilename[i9]))) {
                                MediaScannerExUtils.saveUriToSettingsDB(MediaScanner.this.mContext.getContentResolver(), c.d(SettingsEx.SystemEx.DEFAULT_MESSAGE, i9), uri, id);
                                MediaScannerExUtils.saveUriToSettingsDB(MediaScanner.this.mContext.getContentResolver(), c.d(SettingsEx.SystemEx.MESSAGE_TONE, i9), uri, id);
                                MediaScanner.this.mDefaultMessageSet[i9] = true;
                            }
                            i9++;
                        }
                    }
                } else if (z2) {
                    int i10 = 0;
                    while (true) {
                        MediaScanner mediaScanner4 = MediaScanner.this;
                        if (i10 >= mediaScanner4.mPhoneCount) {
                            break;
                        }
                        if (!mediaScanner4.mDefaultRingtoneSet[i10] && (TextUtils.isEmpty(mediaScanner4.mDefaultRingtoneFilename[i10]) || doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultRingtoneFilename[i10]))) {
                            MediaScannerExUtils.saveUriToSettingsDB(MediaScanner.this.mContext.getContentResolver(), c.d(SettingsEx.SystemEx.DEFAULT_RINGTONE, i10), uri, id);
                            MediaScanner.this.mMediaScannerExUtils.setRingtoneIfNotSetForMultiSim(MediaScanner.this.mContext, Settings.System.RINGTONE, uri, id, i10);
                            MediaScanner.this.mDefaultRingtoneSet[i10] = true;
                        }
                        i10++;
                    }
                } else if (z4) {
                    setRingtoneIfNotSet(Settings.System.ALARM_ALERT, uri, id);
                    MediaScannerExUtils.saveUriToSettingsDB(MediaScanner.this.mContext.getContentResolver(), SettingsEx.SystemEx.DEFAULT_ALARM, uri, id);
                    MediaScanner.this.mDefaultAlarmSet = true;
                }
            }
            return uriInsert;
        }

        private int getFileTypeFromDrm(String str) {
            if (!MediaScanner.this.isDrmEnabled()) {
                return 0;
            }
            if (MediaScanner.this.mDrmManagerClient == null) {
                MediaScanner.this.mDrmManagerClient = new DrmManagerClientEx(MediaScanner.this.mContext);
            }
            if (!MediaScanner.this.mDrmManagerClient.canHandle(str, (String) null)) {
                return 0;
            }
            this.mIsDrm = true;
            String originalMimeType = MediaScanner.this.mDrmManagerClient.getOriginalMimeType(str);
            if (originalMimeType == null) {
                return 0;
            }
            this.mMimeType = originalMimeType;
            return MediaFile.getFileTypeForMimeType(originalMimeType);
        }

        private long parseDate(String str) {
            try {
                return this.mDateFormatter.parse(str).getTime();
            } catch (ParseException unused) {
                return 0L;
            }
        }

        private int parseSubstring(String str, int i2, int i3) {
            int length = str.length();
            if (i2 == length) {
                return i3;
            }
            int i4 = i2 + 1;
            char cCharAt = str.charAt(i2);
            if (cCharAt < '0' || cCharAt > '9') {
                return i3;
            }
            int i5 = cCharAt - '0';
            while (i4 < length) {
                int i6 = i4 + 1;
                char cCharAt2 = str.charAt(i4);
                if (cCharAt2 < '0' || cCharAt2 > '9') {
                    break;
                }
                i5 = (i5 * 10) + (cCharAt2 - '0');
                i4 = i6;
            }
            return i5;
        }

        private void processDrmImageFile(String str) {
            Log.d(MediaScanner.TAG, " enter MediaScannnerEx.processDrmImageFile()");
            try {
                MediaScanner.this.mBitmapOptions.outWidth = 0;
                MediaScanner.this.mBitmapOptions.outHeight = 0;
                DrmManagerClientEx drmManagerClientEx = new DrmManagerClientEx(MediaScanner.this.mContext);
                DecryptHandle decryptHandleOpenDecryptSession = drmManagerClientEx.openDecryptSession(str);
                if (decryptHandleOpenDecryptSession != null) {
                    BitmapFactoryEx.decodeDrmStream(drmManagerClientEx, decryptHandleOpenDecryptSession, MediaScanner.this.mBitmapOptions);
                    drmManagerClientEx.closeDecryptSession(decryptHandleOpenDecryptSession);
                } else {
                    BitmapFactory.decodeFile(str, MediaScanner.this.mBitmapOptions);
                }
                this.mWidth = MediaScanner.this.mBitmapOptions.outWidth;
                this.mHeight = MediaScanner.this.mBitmapOptions.outHeight;
            } catch (Throwable unused) {
            }
        }

        private void processImageFile(String str) {
            try {
                MediaScanner.this.mBitmapOptions.outWidth = 0;
                MediaScanner.this.mBitmapOptions.outHeight = 0;
                BitmapFactory.decodeFile(str, MediaScanner.this.mBitmapOptions);
                this.mWidth = MediaScanner.this.mBitmapOptions.outWidth;
                this.mHeight = MediaScanner.this.mBitmapOptions.outHeight;
            } catch (Throwable unused) {
            }
        }

        private void setRingtoneIfNotSet(String str, Uri uri, long j2) {
            if (MediaScanner.this.wasRingtoneAlreadySet(str)) {
                return;
            }
            ContentResolver contentResolver = MediaScanner.this.mContext.getContentResolver();
            if (TextUtils.isEmpty(Settings.System.getString(contentResolver, str))) {
                RingtoneManager.setActualDefaultRingtoneUri(MediaScanner.this.mContext, RingtoneManager.getDefaultType(Settings.System.getUriFor(str)), ContentUris.withAppendedId(uri, j2));
                Log.d(MediaScanner.TAG, "settingName = " + str + ", uri = " + uri.toString() + ",rowId = " + j2);
            }
            Settings.System.putInt(contentResolver, MediaScanner.this.settingSetIndicatorName(str), 1);
        }

        private void testGenreNameConverter() {
            convertGenreCode("2", "Country");
            convertGenreCode("(2)", "Country");
            convertGenreCode("(2", "(2");
            convertGenreCode("2 Foo", "Country");
            convertGenreCode("(2) Foo", "Country");
            convertGenreCode("(2 Foo", "(2 Foo");
            convertGenreCode("2Foo", "2Foo");
            convertGenreCode("(2)Foo", "Country");
            convertGenreCode("200 Foo", "Foo");
            convertGenreCode("(200) Foo", "Foo");
            convertGenreCode("200Foo", "200Foo");
            convertGenreCode("(200)Foo", "Foo");
            convertGenreCode("200)Foo", "200)Foo");
            convertGenreCode("200) Foo", "200) Foo");
        }

        private ContentValues toValues() {
            String str;
            ContentValues contentValues = new ContentValues();
            contentValues.put("_data", this.mPath);
            contentValues.put("title", this.mTitle);
            contentValues.put("date_modified", Long.valueOf(this.mLastModified));
            contentValues.put("_size", Long.valueOf(this.mFileSize));
            contentValues.put("mime_type", this.mMimeType);
            contentValues.put(MediaStore.MediaColumns.IS_DRM, Boolean.valueOf(this.mIsDrm));
            int i2 = this.mWidth;
            String str2 = null;
            if (i2 <= 0 || this.mHeight <= 0) {
                str = null;
            } else {
                contentValues.put("width", Integer.valueOf(i2));
                contentValues.put("height", Integer.valueOf(this.mHeight));
                str = this.mWidth + "x" + this.mHeight;
            }
            if (!this.mNoMedia) {
                boolean zIsVideoFileType = MediaFile.isVideoFileType(this.mFileType);
                String str3 = MediaStore.UNKNOWN_STRING;
                if (zIsVideoFileType) {
                    String str4 = this.mArtist;
                    contentValues.put("artist", (str4 == null || str4.length() <= 0) ? MediaStore.UNKNOWN_STRING : this.mArtist);
                    String str5 = this.mAlbum;
                    if (str5 != null && str5.length() > 0) {
                        str3 = this.mAlbum;
                    }
                    contentValues.put("album", str3);
                    contentValues.put("duration", Integer.valueOf(this.mDuration));
                    if (str != null) {
                        contentValues.put(MediaStore.Video.VideoColumns.RESOLUTION, str);
                    }
                    long j2 = this.mDate;
                    if (j2 > 0) {
                        contentValues.put("datetaken", Long.valueOf(j2));
                    }
                } else if (!MediaFile.isImageFileType(this.mFileType) && MediaFile.isAudioFileType(this.mFileType)) {
                    String str6 = this.mArtist;
                    contentValues.put("artist", (str6 == null || str6.length() <= 0) ? MediaStore.UNKNOWN_STRING : this.mArtist);
                    String str7 = this.mAlbumArtist;
                    if (str7 != null && str7.length() > 0) {
                        str2 = this.mAlbumArtist;
                    }
                    contentValues.put(MediaStore.Audio.AudioColumns.ALBUM_ARTIST, str2);
                    String str8 = this.mAlbum;
                    if (str8 != null && str8.length() > 0) {
                        str3 = this.mAlbum;
                    }
                    contentValues.put("album", str3);
                    contentValues.put(MediaStore.Audio.AudioColumns.COMPOSER, this.mComposer);
                    contentValues.put(MediaStore.Audio.AudioColumns.GENRE, this.mGenre);
                    int i3 = this.mYear;
                    if (i3 != 0) {
                        contentValues.put(MediaStore.Audio.AudioColumns.YEAR, Integer.valueOf(i3));
                    }
                    contentValues.put(MediaStore.Audio.AudioColumns.TRACK, Integer.valueOf(this.mTrack));
                    contentValues.put("duration", Integer.valueOf(this.mDuration));
                    contentValues.put(MediaStore.Audio.AudioColumns.COMPILATION, Integer.valueOf(this.mCompilation));
                }
            }
            return contentValues;
        }

        private void updateContentValuesForSpecialPictures(ExifInterface exifInterface, ContentValues contentValues) {
            int attributeInt = exifInterface.getAttributeInt(ExifInterface.TAG_CAMERA_TYPE, -1);
            if (attributeInt != 0 && attributeInt != 12 && attributeInt != 16 && attributeInt != 268 && attributeInt != 272) {
                switch (attributeInt) {
                    case 51:
                    case 53:
                    case 55:
                        contentValues.put(MediaStore.Files.FileColumns.FILE_FLAG, (Integer) 0);
                        break;
                    case 54:
                        contentValues.put(MediaStore.Files.FileColumns.FILE_FLAG, (Integer) 52);
                        break;
                }
            }
            contentValues.put(MediaStore.Files.FileColumns.FILE_FLAG, Integer.valueOf(attributeInt));
        }

        public FileEntry beginFile(String str, String str2, long j2, long j3, boolean z2, boolean z3) throws Throwable {
            MediaFile.MediaFileType fileType;
            this.mMimeType = str2;
            this.mFileType = 0;
            this.mFileSize = j3;
            this.mIsDrm = false;
            if (!z2) {
                this.mNoMedia = (z3 || !MediaScanner.isNoMediaFile(str)) ? z3 : true;
                if (str2 != null) {
                    this.mFileType = MediaFile.getFileTypeForMimeType(str2);
                }
                if (this.mFileType == 0 && (fileType = MediaFile.getFileType(str)) != null) {
                    this.mFileType = fileType.fileType;
                    if (this.mMimeType == null) {
                        this.mMimeType = fileType.mimeType;
                    }
                }
                if (MediaScanner.this.isDrmEnabled() && MediaFile.isDrmFileType(this.mFileType)) {
                    this.mFileType = getFileTypeFromDrm(str);
                }
            }
            FileEntry fileEntryMakeEntryFor = MediaScanner.this.makeEntryFor(str);
            long j4 = fileEntryMakeEntryFor != null ? j2 - fileEntryMakeEntryFor.mLastModified : 0L;
            boolean z4 = j4 > 1 || j4 < -1;
            if (fileEntryMakeEntryFor == null || z4) {
                if (z4) {
                    fileEntryMakeEntryFor.mLastModified = j2;
                } else {
                    fileEntryMakeEntryFor = new FileEntry(0L, str, j2, z2 ? 12289 : 0);
                }
                fileEntryMakeEntryFor.mLastModifiedChanged = true;
            }
            if (MediaScanner.this.mProcessPlaylists && MediaFile.isPlayListFileType(this.mFileType)) {
                MediaScanner.this.mPlayLists.add(fileEntryMakeEntryFor);
                return null;
            }
            this.mArtist = null;
            this.mAlbumArtist = null;
            this.mAlbum = null;
            this.mTitle = null;
            this.mComposer = null;
            this.mGenre = null;
            this.mTrack = 0;
            this.mYear = 0;
            this.mDuration = 0;
            this.mPath = str;
            this.mDate = 0L;
            this.mLastModified = j2;
            this.mWriter = null;
            this.mCompilation = 0;
            this.mWidth = 0;
            this.mHeight = 0;
            return fileEntryMakeEntryFor;
        }

        /* JADX WARN: Code duplicated, block: B:30:0x00aa  */
        public Uri doScanFile(String str, String str2, long j2, long j3, boolean z2, boolean z3, boolean z4) throws Throwable {
            boolean z5;
            String absolutePath = str;
            try {
                FileEntry fileEntryBeginFile = beginFile(str, str2, j2, j3, z2, z4);
                if (fileEntryBeginFile == null) {
                    return null;
                }
                if (MediaScanner.this.mMtpObjectHandle != 0) {
                    fileEntryBeginFile.mRowId = 0L;
                }
                if (fileEntryBeginFile.mPath == null) {
                    z5 = z3;
                } else {
                    if ((!MediaScanner.this.mDefaultNotificationSet && doesPathHaveFilename(fileEntryBeginFile.mPath, MediaScanner.this.mDefaultNotificationFilename)) || MediaScanner.this.mMediaScannerExUtils.isNeedScanRingtone(fileEntryBeginFile) || (!MediaScanner.this.mDefaultAlarmSet && doesPathHaveFilename(fileEntryBeginFile.mPath, MediaScanner.this.mDefaultAlarmAlertFilename))) {
                        Log.w(MediaScanner.TAG, "forcing rescan of " + fileEntryBeginFile.mPath + "since ringtone setting didn't finish");
                    } else if (!MediaScanner.isSystemSoundWithMetadata(fileEntryBeginFile.mPath) || Build.FINGERPRINT.equals(MediaScanner.sLastInternalScanFingerprint)) {
                        z5 = z3;
                    } else {
                        Log.i(MediaScanner.TAG, "forcing rescan of " + fileEntryBeginFile.mPath + " since build fingerprint changed");
                    }
                    z5 = true;
                }
                if (!fileEntryBeginFile.mLastModifiedChanged && !z5) {
                    return null;
                }
                if (z4) {
                    return endFile(fileEntryBeginFile, false, false, false, false, false);
                }
                String lowerCase = absolutePath.toLowerCase(Locale.ROOT);
                boolean z6 = false;
                boolean z7 = lowerCase.indexOf(MediaScanner.RINGTONES_DIR) > 0;
                boolean z8 = lowerCase.indexOf(MediaScanner.NOTIFICATIONS_DIR) > 0;
                boolean z9 = lowerCase.indexOf(MediaScanner.ALARMS_DIR) > 0;
                boolean z10 = lowerCase.indexOf(MediaScanner.PODCAST_DIR) > 0;
                if (lowerCase.indexOf(MediaScanner.MUSIC_DIR) > 0 || (!z7 && !z8 && !z9 && !z10)) {
                    z6 = true;
                }
                boolean zIsAudioFileType = MediaFile.isAudioFileType(this.mFileType);
                boolean zIsVideoFileType = MediaFile.isVideoFileType(this.mFileType);
                boolean zIsImageFileType = MediaFile.isImageFileType(this.mFileType);
                if (zIsAudioFileType || zIsVideoFileType || zIsImageFileType) {
                    absolutePath = Environment.maybeTranslateEmulatedPathToInternal(new File(absolutePath)).getAbsolutePath();
                }
                if (zIsAudioFileType || zIsVideoFileType) {
                    MediaScanner.this.processFile(absolutePath, str2, this);
                }
                if (zIsImageFileType) {
                    if (MediaScanner.this.isDrmEnabled() && MediaFile.getFileType(absolutePath) != null && MediaFile.isDrmFileType(MediaFile.getFileType(absolutePath).fileType)) {
                        processImageFile(absolutePath);
                        this.mIsDrm = true;
                        processDrmImageFile(absolutePath);
                    } else {
                        processImageFile(absolutePath);
                    }
                }
                return endFile(fileEntryBeginFile, z7, z8, z9, z6, z10);
            } catch (RemoteException e2) {
                Log.e(MediaScanner.TAG, "RemoteException in MediaScanner.scanFile()", e2);
                return null;
            }
        }

        public boolean doesPathHaveFilename(String str, String str2) {
            int iLastIndexOf = str.lastIndexOf(File.separatorChar) + 1;
            int length = str2.length();
            return str.regionMatches(iLastIndexOf, str2, 0, length) && iLastIndexOf + length == str.length();
        }

        public String getGenreName(String str) {
            int i2;
            if (str == null) {
                return null;
            }
            int length = str.length();
            if (length <= 0) {
                return str;
            }
            StringBuffer stringBuffer = new StringBuffer();
            int i3 = 0;
            boolean z2 = false;
            while (i3 < length) {
                char cCharAt = str.charAt(i3);
                if (i3 != 0 || cCharAt != '(') {
                    if (!Character.isDigit(cCharAt)) {
                        break;
                    }
                    stringBuffer.append(cCharAt);
                } else {
                    z2 = true;
                }
                i3++;
            }
            char cCharAt2 = i3 < length ? str.charAt(i3) : ' ';
            if (!(z2 && cCharAt2 == ')') && (z2 || !Character.isWhitespace(cCharAt2))) {
                return str;
            }
            try {
                short s2 = Short.parseShort(stringBuffer.toString());
                if (s2 < 0) {
                    return str;
                }
                if (s2 < MediaScanner.ID3_GENRES.length && MediaScanner.ID3_GENRES[s2] != null) {
                    return MediaScanner.ID3_GENRES[s2];
                }
                if (s2 == 255) {
                    return null;
                }
                if (s2 >= 255 || (i2 = i3 + 1) >= length) {
                    return stringBuffer.toString();
                }
                if (z2 && cCharAt2 == ')') {
                    i3 = i2;
                }
                String strTrim = str.substring(i3).trim();
                return strTrim.length() != 0 ? strTrim : str;
            } catch (NumberFormatException unused) {
                return str;
            }
        }

        @Override // android.media.MediaScannerClient
        public void handleStringTag(String str, String str2) {
            if (str.equalsIgnoreCase("title") || str.startsWith("title;")) {
                this.mTitle = str2;
                return;
            }
            if (str.equalsIgnoreCase("artist") || str.startsWith("artist;")) {
                this.mArtist = str2.trim();
                return;
            }
            if (str.equalsIgnoreCase("albumartist") || str.startsWith("albumartist;") || str.equalsIgnoreCase("band") || str.startsWith("band;")) {
                this.mAlbumArtist = str2.trim();
                return;
            }
            if (str.equalsIgnoreCase("album") || str.startsWith("album;")) {
                this.mAlbum = str2.trim();
                return;
            }
            if (str.equalsIgnoreCase(MediaStore.Audio.AudioColumns.COMPOSER) || str.startsWith("composer;")) {
                this.mComposer = str2.trim();
                return;
            }
            if (MediaScanner.this.mProcessGenres && (str.equalsIgnoreCase(MediaStore.Audio.AudioColumns.GENRE) || str.startsWith("genre;"))) {
                this.mGenre = getGenreName(str2);
                return;
            }
            if (str.equalsIgnoreCase(MediaStore.Audio.AudioColumns.YEAR) || str.startsWith("year;")) {
                this.mYear = parseSubstring(str2, 0, 0);
                return;
            }
            if (str.equalsIgnoreCase("tracknumber") || str.startsWith("tracknumber;")) {
                this.mTrack = ((this.mTrack / 1000) * 1000) + parseSubstring(str2, 0, 0);
                return;
            }
            if (str.equalsIgnoreCase("discnumber") || str.equals("set") || str.startsWith("set;")) {
                this.mTrack = (this.mTrack % 1000) + (parseSubstring(str2, 0, 0) * 1000);
                return;
            }
            if (str.equalsIgnoreCase("duration")) {
                this.mDuration = parseSubstring(str2, 0, 0);
                return;
            }
            if (str.equalsIgnoreCase("writer") || str.startsWith("writer;")) {
                this.mWriter = str2.trim();
                return;
            }
            if (str.equalsIgnoreCase(MediaStore.Audio.AudioColumns.COMPILATION)) {
                this.mCompilation = parseSubstring(str2, 0, 0);
                return;
            }
            if (str.equalsIgnoreCase("isdrm")) {
                this.mIsDrm = parseSubstring(str2, 0, 0) == 1;
                return;
            }
            if (str.equalsIgnoreCase("date")) {
                this.mDate = parseDate(str2);
            } else if (str.equalsIgnoreCase("width")) {
                this.mWidth = parseSubstring(str2, 0, 0);
            } else if (str.equalsIgnoreCase("height")) {
                this.mHeight = parseSubstring(str2, 0, 0);
            }
        }

        @Override // android.media.MediaScannerClient
        public void scanFile(String str, long j2, long j3, boolean z2, boolean z3) throws Throwable {
            doScanFile(str, null, j2, j3, z2, false, z3);
        }

        @Override // android.media.MediaScannerClient
        public void setMimeType(String str) {
            if ("audio/mp4".equals(this.mMimeType) && str.startsWith(MediaCodec.MetricsConstants.MODE_VIDEO)) {
                return;
            }
            this.mMimeType = str;
            this.mFileType = MediaFile.getFileTypeForMimeType(str);
        }
    }

    public static class PlaylistEntry {
        long bestmatchid;
        int bestmatchlevel;
        String path;

        private PlaylistEntry() {
        }
    }

    public class WplHandler implements ElementListener {
        final ContentHandler handler;
        String playListDirectory;

        public WplHandler(String str, Uri uri, Cursor cursor) {
            this.playListDirectory = str;
            RootElement rootElement = new RootElement("smil");
            rootElement.getChild("body").getChild("seq").getChild(MediaStore.AUTHORITY).setElementListener(this);
            this.handler = rootElement.getContentHandler();
        }

        @Override // android.sax.EndElementListener
        public void end() {
        }

        public ContentHandler getContentHandler() {
            return this.handler;
        }

        @Override // android.sax.StartElementListener
        public void start(Attributes attributes) {
            String value = attributes.getValue("", "src");
            if (value != null) {
                MediaScanner.this.cachePlaylistEntry(value, this.playListDirectory);
            }
        }
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
        FILES_PRESCAN_PROJECTION = new String[]{"_id", "_data", "format", "date_modified"};
        ID_PROJECTION = new String[]{"_id"};
        PLAYLIST_MEMBERS_PROJECTION = new String[]{MediaStore.Audio.Playlists.Members.PLAYLIST_ID};
        ID3_GENRES = new String[]{"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", HttpHeaders.TRAILER, "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "Britpop", null, "Polsk Punk", "Beat", "Christian Gangsta", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "JPop", "Synthpop"};
        mNoMediaPaths = new HashMap<>();
        mMediaPaths = new HashMap<>();
    }

    public MediaScanner(Context context, String str) {
        CloseGuard closeGuard = CloseGuard.get();
        this.mCloseGuard = closeGuard;
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.mBitmapOptions = options;
        this.mPlaylistEntries = new ArrayList<>();
        this.mPlayLists = new ArrayList<>();
        this.mDrmManagerClient = null;
        this.mMediaScannerExUtils = new MediaScannerExUtils(this);
        this.mClient = new MyMediaScannerClient();
        native_setup();
        this.mContext = context;
        this.mPackageName = context.getPackageName();
        this.mVolumeName = str;
        options.inSampleSize = 1;
        options.inJustDecodeBounds = true;
        setDefaultRingtoneFileNames();
        this.mMediaProvider = context.getContentResolver().acquireContentProviderClient(MediaStore.AUTHORITY);
        if (sLastInternalScanFingerprint == null) {
            sLastInternalScanFingerprint = context.getSharedPreferences(SCANNED_BUILD_PREFS_NAME, 0).getString(LAST_INTERNAL_SCAN_FINGERPRINT, new String());
        }
        this.mAudioUri = MediaStore.Audio.Media.getContentUri(str);
        this.mVideoUri = MediaStore.Video.Media.getContentUri(str);
        this.mImagesUri = MediaStore.Images.Media.getContentUri(str);
        this.mThumbsUri = MediaStore.Images.Thumbnails.getContentUri(str);
        Uri contentUri = MediaStore.Files.getContentUri(str);
        this.mFilesUri = contentUri;
        this.mFilesUriNoNotify = contentUri.buildUpon().appendQueryParameter("nonotify", WifiEnterpriseConfig.ENGINE_ENABLE).build();
        if (str.equals("internal")) {
            this.mProcessPlaylists = false;
            this.mProcessGenres = false;
            this.mPlaylistsUri = null;
        } else {
            this.mProcessPlaylists = true;
            this.mProcessGenres = true;
            this.mPlaylistsUri = MediaStore.Audio.Playlists.getContentUri(str);
        }
        Locale locale = context.getResources().getConfiguration().locale;
        if (locale != null) {
            String language = locale.getLanguage();
            String country = locale.getCountry();
            if (language != null) {
                if (country != null) {
                    setLocale(m.h(language, Session.SESSION_SEPARATION_CHAR_CHILD, country));
                } else {
                    setLocale(language);
                }
            }
        }
        closeGuard.open("close");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cachePlaylistEntry(String str, String str2) {
        PlaylistEntry playlistEntry = new PlaylistEntry();
        int length = str.length();
        while (length > 0 && Character.isWhitespace(str.charAt(length - 1))) {
            length--;
        }
        if (length < 3) {
            return;
        }
        boolean z2 = false;
        if (length < str.length()) {
            str = str.substring(0, length);
        }
        char cCharAt = str.charAt(0);
        if (cCharAt == '/' || (Character.isLetter(cCharAt) && str.charAt(1) == ':' && str.charAt(2) == '\\')) {
            z2 = true;
        }
        if (!z2) {
            str = c.D(str2, str);
        }
        playlistEntry.path = str;
        this.mPlaylistEntries.add(playlistEntry);
    }

    public static void clearMediaPathCache(boolean z2, boolean z3) {
        synchronized (MediaScanner.class) {
            if (z2) {
                try {
                    mMediaPaths.clear();
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z3) {
                mNoMediaPaths.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isDrmEnabled() {
        String str = SystemProperties.get("drm.service.enabled");
        return str != null && str.equals("true");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isNoMediaFile(String str) {
        int iLastIndexOf;
        int length;
        if (!new File(str).isDirectory() && (iLastIndexOf = str.lastIndexOf(47)) >= 0 && iLastIndexOf + 2 < str.length()) {
            int i2 = iLastIndexOf + 1;
            if (str.regionMatches(i2, "._", 0, 2)) {
                return true;
            }
            if (str.regionMatches(true, str.length() - 4, ".jpg", 0, 4) && (str.regionMatches(true, i2, "AlbumArt_{", 0, 10) || str.regionMatches(true, i2, "AlbumArt.", 0, 9) || (((length = (str.length() - iLastIndexOf) - 1) == 17 && str.regionMatches(true, i2, "AlbumArtSmall", 0, 13)) || (length == 10 && str.regionMatches(true, i2, "Folder", 0, 6))))) {
                return true;
            }
        }
        return false;
    }

    public static boolean isNoMediaPath(String str) {
        if (str == null) {
            return false;
        }
        if (str.indexOf("/.") >= 0) {
            return true;
        }
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf <= 0) {
            return false;
        }
        String strSubstring = str.substring(0, iLastIndexOf);
        synchronized (MediaScanner.class) {
            if (mNoMediaPaths.containsKey(strSubstring)) {
                return true;
            }
            if (!mMediaPaths.containsKey(strSubstring)) {
                int i2 = 1;
                while (i2 >= 0) {
                    int iIndexOf = str.indexOf(47, i2);
                    if (iIndexOf > i2) {
                        iIndexOf++;
                        if (new File(str.substring(0, iIndexOf) + MediaStore.MEDIA_IGNORE_FILENAME).exists()) {
                            mNoMediaPaths.put(strSubstring, "");
                            return true;
                        }
                    }
                    i2 = iIndexOf;
                }
                mMediaPaths.put(strSubstring, "");
            }
            return isNoMediaFile(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isSystemSoundWithMetadata(String str) {
        return str.startsWith("/system/media/audio/alarms/") || str.startsWith("/system/media/audio/ringtones/") || str.startsWith("/system/media/audio/notifications/");
    }

    private boolean matchEntries(long j2, String str) {
        int size = this.mPlaylistEntries.size();
        boolean z2 = true;
        for (int i2 = 0; i2 < size; i2++) {
            PlaylistEntry playlistEntry = this.mPlaylistEntries.get(i2);
            if (playlistEntry.bestmatchlevel != Integer.MAX_VALUE) {
                if (str.equalsIgnoreCase(playlistEntry.path)) {
                    playlistEntry.bestmatchid = j2;
                    playlistEntry.bestmatchlevel = Integer.MAX_VALUE;
                } else {
                    int iMatchPaths = matchPaths(str, playlistEntry.path);
                    if (iMatchPaths > playlistEntry.bestmatchlevel) {
                        playlistEntry.bestmatchid = j2;
                        playlistEntry.bestmatchlevel = iMatchPaths;
                    }
                }
                z2 = false;
            }
        }
        return z2;
    }

    private int matchPaths(String str, String str2) {
        int length = str.length();
        int length2 = str2.length();
        int i2 = 0;
        while (length > 0 && length2 > 0) {
            int i3 = length - 1;
            int iLastIndexOf = str.lastIndexOf(47, i3);
            int i4 = length2 - 1;
            int iLastIndexOf2 = str2.lastIndexOf(47, i4);
            int iLastIndexOf3 = str.lastIndexOf(92, i3);
            int iLastIndexOf4 = str2.lastIndexOf(92, i4);
            if (iLastIndexOf <= iLastIndexOf3) {
                iLastIndexOf = iLastIndexOf3;
            }
            if (iLastIndexOf2 <= iLastIndexOf4) {
                iLastIndexOf2 = iLastIndexOf4;
            }
            int i5 = iLastIndexOf < 0 ? 0 : iLastIndexOf + 1;
            int i6 = iLastIndexOf2 < 0 ? 0 : iLastIndexOf2 + 1;
            int i7 = length - i5;
            if (length2 - i6 != i7 || !str.regionMatches(true, i5, str2, i6, i7)) {
                break;
            }
            i2++;
            length = i5 - 1;
            length2 = i6 - 1;
        }
        return i2;
    }

    private final native void native_finalize();

    private static final native void native_init();

    private final native void native_setup();

    private void postscan(String[] strArr) {
        if (this.mProcessPlaylists) {
            processPlayLists();
        }
        if (this.mOriginalCount == 0 && this.mImagesUri.equals(MediaStore.Images.Media.getContentUri("external"))) {
            pruneDeadThumbnailFiles();
        }
        this.mPlayLists.clear();
    }

    private void prescan(String str, boolean z2) throws Throwable {
        String[] strArr;
        String str2;
        Cursor cursor;
        boolean zAccess;
        this.mPlayLists.clear();
        if (str != null) {
            strArr = new String[]{"", str};
            str2 = "_id>? AND _data=?";
        } else {
            strArr = new String[]{""};
            str2 = "_id>?";
        }
        for (int i2 = 0; i2 < this.mPhoneCount; i2++) {
            this.mDefaultRingtoneSet[i2] = wasRingtoneAlreadySet(MediaScannerExUtils.getSetting(Settings.System.RINGTONE, i2));
        }
        this.mDefaultNotificationSet = wasRingtoneAlreadySet(Settings.System.NOTIFICATION_SOUND);
        this.mDefaultAlarmSet = wasRingtoneAlreadySet(Settings.System.ALARM_ALERT);
        Uri.Builder builderBuildUpon = this.mFilesUri.buildUpon();
        builderBuildUpon.appendQueryParameter(MediaStore.PARAM_DELETE_DATA, "false");
        MediaBulkDeleter mediaBulkDeleter = new MediaBulkDeleter(this.mMediaProvider, builderBuildUpon.build());
        Cursor cursor2 = null;
        if (z2) {
            try {
                Uri uriBuild = this.mFilesUri.buildUpon().appendQueryParameter("limit", "1000").build();
                long j2 = Long.MIN_VALUE;
                Cursor cursorQuery = null;
                while (true) {
                    try {
                        strArr[0] = "" + j2;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                            cursor = null;
                        } else {
                            cursor = cursorQuery;
                        }
                        try {
                            long j3 = j2;
                            cursorQuery = this.mMediaProvider.query(uriBuild, FILES_PRESCAN_PROJECTION, str2, strArr, "_id", null);
                            if (cursorQuery == null || cursorQuery.getCount() == 0) {
                                break;
                            }
                            j2 = j3;
                            while (cursorQuery.moveToNext()) {
                                j2 = cursorQuery.getLong(0);
                                String string = cursorQuery.getString(1);
                                int i3 = cursorQuery.getInt(2);
                                cursorQuery.getLong(3);
                                if (string != null && string.startsWith("/")) {
                                    try {
                                        zAccess = Os.access(string, OsConstants.F_OK);
                                    } catch (ErrnoException unused) {
                                        zAccess = false;
                                    }
                                    if (!zAccess && !MtpConstants.isAbstractObject(i3)) {
                                        MediaFile.MediaFileType fileType = MediaFile.getFileType(string);
                                        if (!MediaFile.isPlayListFileType(fileType == null ? 0 : fileType.fileType)) {
                                            mediaBulkDeleter.delete(j2);
                                            if (string.toLowerCase(Locale.US).endsWith("/.nomedia")) {
                                                mediaBulkDeleter.flush();
                                                this.mMediaProvider.call(MediaStore.UNHIDE_CALL, new File(string).getParent(), null);
                                            }
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor2 = cursor;
                            if (cursor2 != null) {
                                cursor2.close();
                            }
                            mediaBulkDeleter.flush();
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        cursor2 = cursorQuery;
                    }
                }
                cursor2 = cursorQuery;
            } catch (Throwable th3) {
                th = th3;
            }
        }
        if (cursor2 != null) {
            cursor2.close();
        }
        mediaBulkDeleter.flush();
        this.mOriginalCount = 0;
        Cursor cursorQuery2 = this.mMediaProvider.query(this.mImagesUri, ID_PROJECTION, null, null, null, null);
        if (cursorQuery2 != null) {
            this.mOriginalCount = cursorQuery2.getCount();
            cursorQuery2.close();
        }
    }

    private void processCachedPlaylist(Cursor cursor, ContentValues contentValues, Uri uri) {
        int i2;
        cursor.moveToPosition(-1);
        do {
            if (!cursor.moveToNext()) {
                break;
            }
        } while (!matchEntries(cursor.getLong(0), cursor.getString(1)));
        int size = this.mPlaylistEntries.size();
        int i3 = 0;
        for (i2 = 0; i2 < size; i2++) {
            PlaylistEntry playlistEntry = this.mPlaylistEntries.get(i2);
            if (playlistEntry.bestmatchlevel > 0) {
                try {
                    contentValues.clear();
                    contentValues.put("play_order", Integer.valueOf(i3));
                    contentValues.put("audio_id", Long.valueOf(playlistEntry.bestmatchid));
                    this.mMediaProvider.insert(uri, contentValues);
                    i3++;
                } catch (RemoteException e2) {
                    Log.e(TAG, "RemoteException in MediaScanner.processCachedPlaylist()", e2);
                    return;
                }
            }
        }
        this.mPlaylistEntries.clear();
    }

    private native void processDirectory(String str, MediaScannerClient mediaScannerClient);

    /* JADX INFO: Access modifiers changed from: private */
    public native void processFile(String str, String str2, MediaScannerClient mediaScannerClient);

    private void processM3uPlayList(String str, String str2, Uri uri, ContentValues contentValues, Cursor cursor) throws Throwable {
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (file.exists()) {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file)), 8192);
                        try {
                            this.mPlaylistEntries.clear();
                            for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                if (line.length() > 0 && line.charAt(0) != '#') {
                                    cachePlaylistEntry(line, str2);
                                }
                            }
                            processCachedPlaylist(cursor, contentValues, uri);
                            bufferedReader = bufferedReader2;
                        } catch (IOException e2) {
                            e = e2;
                            bufferedReader = bufferedReader2;
                            Log.e(TAG, "IOException in MediaScanner.processM3uPlayList()", e);
                            if (bufferedReader == null) {
                                return;
                            } else {
                                bufferedReader.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e3) {
                                    Log.e(TAG, "IOException in MediaScanner.processM3uPlayList()", e3);
                                }
                            }
                            throw th;
                        }
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                } catch (IOException e4) {
                    Log.e(TAG, "IOException in MediaScanner.processM3uPlayList()", e4);
                }
            } catch (IOException e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private void processPlayList(FileEntry fileEntry, Cursor cursor) throws Throwable {
        Uri uriWithAppendedPath;
        String str = fileEntry.mPath;
        ContentValues contentValues = new ContentValues();
        int iLastIndexOf = str.lastIndexOf(47);
        if (iLastIndexOf < 0) {
            throw new IllegalArgumentException("bad path ".concat(str));
        }
        long j2 = fileEntry.mRowId;
        String asString = contentValues.getAsString("name");
        if (asString == null && (asString = contentValues.getAsString("title")) == null) {
            int iLastIndexOf2 = str.lastIndexOf(46);
            asString = iLastIndexOf2 < 0 ? str.substring(iLastIndexOf + 1) : str.substring(iLastIndexOf + 1, iLastIndexOf2);
        }
        contentValues.put("name", asString);
        contentValues.put("date_modified", Long.valueOf(fileEntry.mLastModified));
        if (j2 == 0) {
            contentValues.put("_data", str);
            Uri uriInsert = this.mMediaProvider.insert(this.mPlaylistsUri, contentValues);
            ContentUris.parseId(uriInsert);
            uriWithAppendedPath = Uri.withAppendedPath(uriInsert, "members");
        } else {
            Uri uriWithAppendedId = ContentUris.withAppendedId(this.mPlaylistsUri, j2);
            this.mMediaProvider.update(uriWithAppendedId, contentValues, null, null);
            uriWithAppendedPath = Uri.withAppendedPath(uriWithAppendedId, "members");
            this.mMediaProvider.delete(uriWithAppendedPath, null, null);
        }
        Uri uri = uriWithAppendedPath;
        String strSubstring = str.substring(0, iLastIndexOf + 1);
        MediaFile.MediaFileType fileType = MediaFile.getFileType(str);
        int i2 = fileType != null ? fileType.fileType : 0;
        if (i2 == 41) {
            processM3uPlayList(str, strSubstring, uri, contentValues, cursor);
        } else if (i2 == 42) {
            processPlsPlayList(str, strSubstring, uri, contentValues, cursor);
        } else if (i2 == 43) {
            processWplPlayList(str, strSubstring, uri, contentValues, cursor);
        }
    }

    private void processPlayLists() {
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.mMediaProvider.query(this.mFilesUri, FILES_PRESCAN_PROJECTION, "media_type=2", null, null, null);
            for (FileEntry fileEntry : this.mPlayLists) {
                if (fileEntry.mLastModifiedChanged) {
                    processPlayList(fileEntry, cursorQuery);
                }
            }
            if (cursorQuery == null) {
                return;
            }
        } catch (RemoteException unused) {
            if (cursorQuery == null) {
                return;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
        cursorQuery.close();
    }

    private void processPlsPlayList(String str, String str2, Uri uri, ContentValues contentValues, Cursor cursor) throws Throwable {
        int iIndexOf;
        BufferedReader bufferedReader = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (file.exists()) {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file)), 8192);
                        try {
                            this.mPlaylistEntries.clear();
                            for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                if (line.startsWith("File") && (iIndexOf = line.indexOf(61)) > 0) {
                                    cachePlaylistEntry(line.substring(iIndexOf + 1), str2);
                                }
                            }
                            processCachedPlaylist(cursor, contentValues, uri);
                            bufferedReader = bufferedReader2;
                        } catch (IOException e2) {
                            e = e2;
                            bufferedReader = bufferedReader2;
                            Log.e(TAG, "IOException in MediaScanner.processPlsPlayList()", e);
                            if (bufferedReader == null) {
                                return;
                            } else {
                                bufferedReader.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException e3) {
                                    Log.e(TAG, "IOException in MediaScanner.processPlsPlayList()", e3);
                                }
                            }
                            throw th;
                        }
                    }
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e4) {
                e = e4;
            }
        } catch (IOException e5) {
            Log.e(TAG, "IOException in MediaScanner.processPlsPlayList()", e5);
        }
    }

    private void processWplPlayList(String str, String str2, Uri uri, ContentValues contentValues, Cursor cursor) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            try {
                try {
                    File file = new File(str);
                    if (file.exists()) {
                        FileInputStream fileInputStream2 = new FileInputStream(file);
                        try {
                            this.mPlaylistEntries.clear();
                            Xml.parse(fileInputStream2, Xml.findEncodingByName("UTF-8"), new WplHandler(str2, uri, cursor).getContentHandler());
                            processCachedPlaylist(cursor, contentValues, uri);
                            fileInputStream = fileInputStream2;
                        } catch (IOException e2) {
                            e = e2;
                            fileInputStream = fileInputStream2;
                            e.printStackTrace();
                            if (fileInputStream == null) {
                                return;
                            } else {
                                fileInputStream.close();
                            }
                        } catch (SAXException e3) {
                            e = e3;
                            fileInputStream = fileInputStream2;
                            e.printStackTrace();
                            if (fileInputStream == null) {
                                return;
                            } else {
                                fileInputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (IOException e4) {
                                    Log.e(TAG, "IOException in MediaScanner.processWplPlayList()", e4);
                                }
                            }
                            throw th;
                        }
                    }
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e5) {
                e = e5;
            } catch (SAXException e6) {
                e = e6;
            }
        } catch (IOException e7) {
            Log.e(TAG, "IOException in MediaScanner.processWplPlayList()", e7);
        }
    }

    private void pruneDeadThumbnailFiles() {
        HashSet hashSet = new HashSet();
        String[] list = new File("/sdcard/DCIM/.thumbnails").list();
        if (list == null) {
            list = new String[0];
        }
        for (String str : list) {
            hashSet.add("/sdcard/DCIM/.thumbnails/" + str);
        }
        Cursor cursorQuery = null;
        try {
            cursorQuery = this.mMediaProvider.query(this.mThumbsUri, new String[]{"_data"}, null, null, null, null);
            Log.v(TAG, "pruneDeadThumbnailFiles... " + cursorQuery);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                do {
                    hashSet.remove(cursorQuery.getString(0));
                } while (cursorQuery.moveToNext());
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                try {
                    new File((String) it.next()).delete();
                } catch (SecurityException unused) {
                }
            }
            Log.v(TAG, "/pruneDeadThumbnailFiles... " + cursorQuery);
        } catch (RemoteException unused2) {
        } finally {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        }
    }

    private void releaseResources() {
        DrmManagerClientEx drmManagerClientEx = this.mDrmManagerClient;
        if (drmManagerClientEx != null) {
            drmManagerClientEx.close();
            this.mDrmManagerClient = null;
        }
    }

    private void setDefaultRingtoneFileNames() {
        this.mMediaScannerExUtils.setDefaultRingtoneFileNamesEx();
        this.mDefaultNotificationFilename = SystemProperties.get("ro.config.notification_sound");
        this.mDefaultAlarmAlertFilename = SystemProperties.get("ro.config.alarm_alert");
    }

    private native void setLocale(String str);

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mCloseGuard.close();
        if (this.mClosed.compareAndSet(false, true)) {
            this.mMediaProvider.close();
            native_finalize();
        }
    }

    public native byte[] extractAlbumArt(FileDescriptor fileDescriptor);

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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public FileEntry makeEntryFor(String str) throws Throwable {
        ?? path;
        ?? r0 = 0;
        try {
            path = EnvironmentEx.getExternalStoragePath().getPath();
            try {
                if (str == 0 || !str.startsWith(path)) {
                    Cursor cursorQuery = this.mMediaProvider.query(this.mFilesUriNoNotify, FILES_PRESCAN_PROJECTION, "_data=?", new String[]{str}, null, null);
                    boolean zMoveToFirst = cursorQuery.moveToFirst();
                    path = cursorQuery;
                    if (zMoveToFirst) {
                        long j2 = cursorQuery.getLong(0);
                        this.mPathInDatabase = cursorQuery.getString(1);
                        FileEntry fileEntry = new FileEntry(j2, str, cursorQuery.getLong(3), cursorQuery.getInt(2));
                        cursorQuery.close();
                        return fileEntry;
                    }
                } else {
                    Cursor cursorQuery2 = this.mMediaProvider.query(this.mFilesUriNoNotify, FILES_PRESCAN_PROJECTION, "_data=? or _data=?", new String[]{str, str.replace((CharSequence) path, MediaScannerExUtils.getOldPath())}, null, null);
                    boolean zMoveToFirst2 = cursorQuery2.moveToFirst();
                    path = cursorQuery2;
                    if (zMoveToFirst2) {
                        long j3 = cursorQuery2.getLong(0);
                        this.mPathInDatabase = cursorQuery2.getString(1);
                        FileEntry fileEntry2 = new FileEntry(j3, str, cursorQuery2.getLong(3), cursorQuery2.getInt(2));
                        String str2 = this.mPathInDatabase;
                        if (str2 != null && str2.startsWith(MediaScannerExUtils.getOldPath())) {
                            fileEntry2.mLastModifiedChanged = true;
                        }
                        cursorQuery2.close();
                        return fileEntry2;
                    }
                }
            } catch (RemoteException unused) {
                if (path != 0) {
                }
                return null;
            } catch (Throwable th) {
                th = th;
                r0 = path;
                if (r0 != 0) {
                    r0.close();
                }
                throw th;
            }
        } catch (RemoteException unused2) {
            path = 0;
        } catch (Throwable th2) {
            th = th2;
        }
        path.close();
        return null;
    }

    public void scanDirectories(String[] strArr) {
        try {
            try {
                try {
                    System.currentTimeMillis();
                    prescan(null, true);
                    System.currentTimeMillis();
                    this.mMediaInserter = new MediaInserter(this.mMediaProvider, 500);
                    for (String str : strArr) {
                        processDirectory(str, this.mClient);
                    }
                    this.mMediaInserter.flushAll();
                    this.mMediaInserter = null;
                    System.currentTimeMillis();
                    postscan(strArr);
                    System.currentTimeMillis();
                } catch (RemoteException e2) {
                    Log.e(TAG, "RemoteException in MediaScanner.scan()", e2);
                }
            } catch (SQLException e3) {
                Log.e(TAG, "SQLException in MediaScanner.scan()", e3);
            } catch (UnsupportedOperationException e4) {
                Log.e(TAG, "UnsupportedOperationException in MediaScanner.scan()", e4);
            }
        } finally {
            releaseResources();
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x00d0 A[DONT_GENERATE, PHI: r14
  0x00d0: PHI (r14v1 android.database.Cursor) = (r14v0 android.database.Cursor), (r14v2 android.database.Cursor) binds: [B:41:0x00ce, B:34:0x00c1] A[DONT_GENERATE, DONT_INLINE]] */
    public void scanMtpFile(String str, int i2, int i3) {
        MediaFile.MediaFileType fileType = MediaFile.getFileType(str);
        int i4 = fileType == null ? 0 : fileType.fileType;
        File file = new File(str);
        long jLastModified = file.lastModified() / 1000;
        if (!MediaFile.isAudioFileType(i4) && !MediaFile.isVideoFileType(i4) && !MediaFile.isImageFileType(i4) && !MediaFile.isPlayListFileType(i4) && !MediaFile.isDrmFileType(i4)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_size", Long.valueOf(file.length()));
            contentValues.put("date_modified", Long.valueOf(jLastModified));
            try {
                this.mMediaProvider.update(MediaStore.Files.getMtpObjectsUri(this.mVolumeName), contentValues, "_id=?", new String[]{Integer.toString(i2)});
                return;
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException in scanMtpFile", e2);
                return;
            }
        }
        this.mMtpObjectHandle = i2;
        Cursor cursorQuery = null;
        try {
            if (MediaFile.isPlayListFileType(i4)) {
                prescan(null, true);
                FileEntry fileEntryMakeEntryFor = makeEntryFor(str);
                if (fileEntryMakeEntryFor != null) {
                    cursorQuery = this.mMediaProvider.query(this.mFilesUri, FILES_PRESCAN_PROJECTION, null, null, null, null);
                    processPlayList(fileEntryMakeEntryFor, cursorQuery);
                }
            } else {
                prescan(str, false);
                this.mClient.doScanFile(str, fileType.mimeType, jLastModified, file.length(), i3 == 12289, true, isNoMediaPath(str));
            }
        } catch (RemoteException e3) {
            Log.e(TAG, "RemoteException in MediaScanner.scanFile()", e3);
        } finally {
            this.mMtpObjectHandle = 0;
            if (0 != 0) {
                cursorQuery.close();
            }
            releaseResources();
        }
    }

    public Uri scanSingleFile(String str, String str2) {
        try {
            try {
                prescan(str, true);
                File file = new File(str);
                if (file.exists() && file.canRead()) {
                    return this.mClient.doScanFile(str, str2, file.lastModified() / 1000, file.length(), false, true, isNoMediaPath(str));
                }
                return null;
            } catch (RemoteException e2) {
                Log.e(TAG, "RemoteException in MediaScanner.scanFile()", e2);
                return null;
            }
        } finally {
            releaseResources();
        }
    }

    public String settingSetIndicatorName(String str) {
        return c.D(str, "_set");
    }

    public boolean wasRingtoneAlreadySet(String str) {
        try {
            return Settings.System.getInt(this.mContext.getContentResolver(), settingSetIndicatorName(str)) != 0;
        } catch (Settings.SettingNotFoundException unused) {
            return false;
        }
    }
}
