package android.media;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.IContentProvider;
import android.database.Cursor;
import android.database.SQLException;
import android.drm.DrmManagerClient;
import android.graphics.BitmapFactory;
import android.mtp.MtpConstants;
import android.net.ProxyProperties;
import android.net.Uri;
import android.net.http.CharArrayBuffers;
import android.os.Environment;
import android.os.RemoteException;
import android.os.SystemProperties;
import android.provider.MediaStore;
import android.provider.Settings;
import android.sax.ElementListener;
import android.sax.RootElement;
import android.text.TextUtils;
import android.util.Log;
import android.util.Xml;
import i.a;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import libcore.io.ErrnoException;
import libcore.io.Libcore;
import libcore.io.OsConstants;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;

/* JADX INFO: loaded from: classes.dex */
public class MediaScanner {
    private static final String ALARMS_DIR = "/alarms/";
    private static final int DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX = 2;
    private static final boolean DEBUG_MEDIASCANNER = false;
    private static final String DEFAULT_RINGTONE_PROPERTY_PREFIX = "ro.config.";
    private static final boolean ENABLE_BULK_INSERTS = false;
    private static final int FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX = 3;
    private static final int FILES_PRESCAN_FORMAT_COLUMN_INDEX = 2;
    private static final int FILES_PRESCAN_ID_COLUMN_INDEX = 0;
    private static final int FILES_PRESCAN_PATH_COLUMN_INDEX = 1;
    private static final String[] FILES_PRESCAN_PROJECTION;
    private static final String[] ID3_GENRES;
    private static final int ID_PLAYLISTS_COLUMN_INDEX = 0;
    private static final String[] ID_PROJECTION;
    private static final String MUSIC_DIR = "/music/";
    private static final String NOTIFICATIONS_DIR = "/notifications/";
    private static final int PATH_PLAYLISTS_COLUMN_INDEX = 1;
    private static final String[] PLAYLIST_MEMBERS_PROJECTION;
    private static final String PODCAST_DIR = "/podcasts/";
    private static final String RINGTONES_DIR = "/ringtones/";
    private static final String TAG = "MediaScanner";
    private Uri mAudioUri;
    private final BitmapFactory.Options mBitmapOptions;
    private boolean mCaseInsensitivePaths;
    private final MyMediaScannerClient mClient;
    private Context mContext;
    private String mDefaultAlarmAlertFilename;
    private boolean mDefaultAlarmSet;
    private String mDefaultNotificationFilename;
    private boolean mDefaultNotificationSet;
    private String mDefaultRingtoneFilename;
    private boolean mDefaultRingtoneSet;
    private DrmManagerClient mDrmManagerClient;
    private final boolean mExternalIsEmulated;
    private final String mExternalStoragePath;
    private Uri mFilesUri;
    private Uri mFilesUriNoNotify;
    private Uri mImagesUri;
    private MediaInserter mMediaInserter;
    private IContentProvider mMediaProvider;
    private int mMtpObjectHandle;
    private int mNativeContext;
    private int mOriginalCount;
    private String mPackageName;
    private ArrayList<FileEntry> mPlayLists;
    private ArrayList<PlaylistEntry> mPlaylistEntries;
    private Uri mPlaylistsUri;
    private boolean mProcessGenres;
    private boolean mProcessPlaylists;
    private Uri mThumbsUri;
    private Uri mVideoUri;
    private boolean mWasEmptyPriorToScan = false;

    public static class FileEntry {
        public int mFormat;
        public long mLastModified;
        public boolean mLastModifiedChanged = false;
        public String mPath;
        public long mRowId;

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
        public final Uri mBaseUri;
        public final String mPackageName;
        public final IContentProvider mProvider;
        public StringBuilder whereClause = new StringBuilder();
        public ArrayList<String> whereArgs = new ArrayList<>(100);

        public MediaBulkDeleter(IContentProvider iContentProvider, String str, Uri uri) {
            this.mProvider = iContentProvider;
            this.mPackageName = str;
            this.mBaseUri = uri;
        }

        public void delete(long j2) {
            if (this.whereClause.length() != 0) {
                this.whereClause.append(",");
            }
            this.whereClause.append("?");
            this.whereArgs.add(ProxyProperties.LOCAL_EXCL_LIST + j2);
            if (this.whereArgs.size() > 100) {
                flush();
            }
        }

        public void flush() {
            int size = this.whereArgs.size();
            if (size > 0) {
                String[] strArr = (String[]) this.whereArgs.toArray(new String[size]);
                this.mProvider.delete(this.mPackageName, this.mBaseUri, "_id IN (" + this.whereClause.toString() + ")", strArr);
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

        private MyMediaScannerClient() {
        }

        private boolean convertGenreCode(String str, String str2) {
            String genreName = getGenreName(str);
            if (genreName.equals(str2)) {
                return true;
            }
            Log.d(MediaScanner.TAG, "'" + str + "' -> '" + genreName + "', expected '" + str2 + "'");
            return false;
        }

        private boolean doesPathHaveFilename(String str, String str2) {
            int iLastIndexOf = str.lastIndexOf(File.separatorChar) + 1;
            int length = str2.length();
            return str.regionMatches(iLastIndexOf, str2, 0, length) && iLastIndexOf + length == str.length();
        }

        private Uri endFile(FileEntry fileEntry, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
            ExifInterface exifInterface;
            int i2;
            String asString;
            int iLastIndexOf;
            int i3;
            String str = this.mArtist;
            if (str == null || str.length() == 0) {
                this.mArtist = this.mAlbumArtist;
            }
            ContentValues values = toValues();
            String asString2 = values.getAsString("title");
            if (asString2 == null || TextUtils.isEmpty(asString2.trim())) {
                values.put("title", MediaFile.getFileTitle(values.getAsString("_data")));
            }
            boolean z7 = false;
            if (MediaStore.UNKNOWN_STRING.equals(values.getAsString("album")) && (iLastIndexOf = (asString = values.getAsString("_data")).lastIndexOf(47)) >= 0) {
                int i4 = 0;
                while (true) {
                    i3 = i4 + 1;
                    int iIndexOf = asString.indexOf(47, i3);
                    if (iIndexOf < 0 || iIndexOf >= iLastIndexOf) {
                        break;
                    }
                    i4 = iIndexOf;
                }
                if (i4 != 0) {
                    values.put("album", asString.substring(i3, iLastIndexOf));
                }
            }
            long id = fileEntry.mRowId;
            int i5 = 3;
            Uri uriInsert = null;
            if (MediaFile.isAudioFileType(this.mFileType) && (id == 0 || MediaScanner.this.mMtpObjectHandle != 0)) {
                values.put(MediaStore.Audio.AudioColumns.IS_RINGTONE, Boolean.valueOf(z2));
                values.put(MediaStore.Audio.AudioColumns.IS_NOTIFICATION, Boolean.valueOf(z3));
                values.put(MediaStore.Audio.AudioColumns.IS_ALARM, Boolean.valueOf(z4));
                values.put(MediaStore.Audio.AudioColumns.IS_MUSIC, Boolean.valueOf(z5));
                values.put(MediaStore.Audio.AudioColumns.IS_PODCAST, Boolean.valueOf(z6));
            } else if (this.mFileType == 31 && !this.mNoMedia) {
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
                    int attributeInt = exifInterface.getAttributeInt(ExifInterface.TAG_ORIENTATION, -1);
                    if (attributeInt != -1) {
                        if (attributeInt == 3) {
                            i2 = 180;
                        } else if (attributeInt != 6) {
                            i2 = attributeInt != 8 ? 0 : a.Theme_findOnPagePreviousDrawable;
                        } else {
                            i2 = 90;
                        }
                        values.put(MediaStore.Images.ImageColumns.ORIENTATION, Integer.valueOf(i2));
                    }
                }
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
            if (id == 0) {
                if (MediaScanner.this.mMtpObjectHandle != 0) {
                    values.put(MediaStore.MediaColumns.MEDIA_SCANNER_NEW_OBJECT_ID, Integer.valueOf(MediaScanner.this.mMtpObjectHandle));
                }
                if (uri == MediaScanner.this.mFilesUri) {
                    int formatCode = fileEntry.mFormat;
                    if (formatCode == 0) {
                        formatCode = MediaFile.getFormatCode(fileEntry.mPath, this.mMimeType);
                    }
                    values.put(MediaStore.Files.FileColumns.FORMAT, Integer.valueOf(formatCode));
                }
                if (MediaScanner.this.mWasEmptyPriorToScan && (!z3 || MediaScanner.this.mDefaultNotificationSet ? !(!z2 || MediaScanner.this.mDefaultRingtoneSet ? !z4 || MediaScanner.this.mDefaultAlarmSet || (!TextUtils.isEmpty(MediaScanner.this.mDefaultAlarmAlertFilename) && !doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultAlarmAlertFilename)) : !TextUtils.isEmpty(MediaScanner.this.mDefaultRingtoneFilename) && !doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultRingtoneFilename)) : !(!TextUtils.isEmpty(MediaScanner.this.mDefaultNotificationFilename) && !doesPathHaveFilename(fileEntry.mPath, MediaScanner.this.mDefaultNotificationFilename)))) {
                    z7 = true;
                }
                if (mediaInserter == null || z7) {
                    if (mediaInserter != null) {
                        mediaInserter.flushAll();
                    }
                    uriInsert = MediaScanner.this.mMediaProvider.insert(MediaScanner.this.mPackageName, uri, values);
                } else if (fileEntry.mFormat == 12289) {
                    mediaInserter.insertwithPriority(uri, values);
                } else {
                    mediaInserter.insert(uri, values);
                }
                if (uriInsert != null) {
                    id = ContentUris.parseId(uriInsert);
                    fileEntry.mRowId = id;
                }
            } else {
                Uri uriWithAppendedId = ContentUris.withAppendedId(uri, id);
                values.remove("_data");
                if (!MediaScanner.isNoMediaPath(fileEntry.mPath)) {
                    int fileTypeForMimeType = MediaFile.getFileTypeForMimeType(this.mMimeType);
                    if (MediaFile.isAudioFileType(fileTypeForMimeType)) {
                        i5 = 2;
                    } else if (!MediaFile.isVideoFileType(fileTypeForMimeType)) {
                        if (MediaFile.isImageFileType(fileTypeForMimeType)) {
                            i5 = 1;
                        } else {
                            i5 = MediaFile.isPlayListFileType(fileTypeForMimeType) ? 4 : 0;
                        }
                    }
                    values.put("media_type", Integer.valueOf(i5));
                }
                MediaScanner.this.mMediaProvider.update(MediaScanner.this.mPackageName, uriWithAppendedId, values, null, null);
                uriInsert = uriWithAppendedId;
            }
            if (z7) {
                if (z3) {
                    setSettingIfNotSet(Settings.System.NOTIFICATION_SOUND, uri, id);
                    MediaScanner.this.mDefaultNotificationSet = true;
                } else if (z2) {
                    setSettingIfNotSet(Settings.System.RINGTONE, uri, id);
                    MediaScanner.this.mDefaultRingtoneSet = true;
                } else if (z4) {
                    setSettingIfNotSet(Settings.System.ALARM_ALERT, uri, id);
                    MediaScanner.this.mDefaultAlarmSet = true;
                }
            }
            return uriInsert;
        }

        private int getFileTypeFromDrm(String str) throws Throwable {
            if (!MediaScanner.this.isDrmEnabled()) {
                return 0;
            }
            if (MediaScanner.this.mDrmManagerClient == null) {
                MediaScanner.this.mDrmManagerClient = new DrmManagerClient(MediaScanner.this.mContext);
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

        private void setSettingIfNotSet(String str, Uri uri, long j2) {
            if (TextUtils.isEmpty(Settings.System.getString(MediaScanner.this.mContext.getContentResolver(), str))) {
                Settings.System.putString(MediaScanner.this.mContext.getContentResolver(), str, ContentUris.withAppendedId(uri, j2).toString());
            }
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
            this.mLastModified = j2;
            this.mWriter = null;
            this.mCompilation = 0;
            this.mWidth = 0;
            this.mHeight = 0;
            return fileEntryMakeEntryFor;
        }

        public Uri doScanFile(String str, String str2, long j2, long j3, boolean z2, boolean z3, boolean z4) throws Throwable {
            String str3 = str;
            try {
                FileEntry fileEntryBeginFile = beginFile(str, str2, j2, j3, z2, z4);
                if (MediaScanner.this.mMtpObjectHandle != 0) {
                    fileEntryBeginFile.mRowId = 0L;
                }
                if (fileEntryBeginFile == null) {
                    return null;
                }
                if (!fileEntryBeginFile.mLastModifiedChanged && !z3) {
                    return null;
                }
                if (z4) {
                    return endFile(fileEntryBeginFile, false, false, false, false, false);
                }
                String lowerCase = str.toLowerCase(Locale.ROOT);
                boolean z5 = true;
                boolean z6 = lowerCase.indexOf(MediaScanner.RINGTONES_DIR) > 0;
                boolean z7 = lowerCase.indexOf(MediaScanner.NOTIFICATIONS_DIR) > 0;
                boolean z8 = lowerCase.indexOf(MediaScanner.ALARMS_DIR) > 0;
                boolean z9 = lowerCase.indexOf(MediaScanner.PODCAST_DIR) > 0;
                if (lowerCase.indexOf(MediaScanner.MUSIC_DIR) <= 0 && (z6 || z7 || z8 || z9)) {
                    z5 = false;
                }
                boolean zIsAudioFileType = MediaFile.isAudioFileType(this.mFileType);
                if (zIsAudioFileType && MediaScanner.this.mExternalIsEmulated && str.startsWith(MediaScanner.this.mExternalStoragePath)) {
                    String str4 = Environment.getMediaStorageDirectory() + str.substring(MediaScanner.this.mExternalStoragePath.length());
                    if (new File(str4).exists()) {
                        str3 = str4;
                    }
                }
                if (zIsAudioFileType) {
                    MediaScanner.this.processFile(str3, str2, this);
                }
                return endFile(fileEntryBeginFile, z6, z7, z8, z5, z9);
            } catch (RemoteException e2) {
                Log.e(MediaScanner.TAG, "RemoteException in MediaScanner.scanFile()", e2);
                return null;
            }
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
            char cCharAt2 = i3 < length ? str.charAt(i3) : CharArrayBuffers.uppercaseAddon;
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
                this.mTrack = (parseSubstring(str2, 0, 0) * 1000) + (this.mTrack % 1000);
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
            if ("audio/mp4".equals(this.mMimeType) && str.startsWith("video")) {
                return;
            }
            this.mMimeType = str;
            this.mFileType = MediaFile.getFileTypeForMimeType(str);
        }
    }

    public static class PlaylistEntry {
        public long bestmatchid;
        public int bestmatchlevel;
        public String path;

        private PlaylistEntry() {
        }
    }

    public class WplHandler implements ElementListener {
        public final ContentHandler handler;
        public String playListDirectory;

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
            String value = attributes.getValue(ProxyProperties.LOCAL_EXCL_LIST, "src");
            if (value != null) {
                MediaScanner.this.cachePlaylistEntry(value, this.playListDirectory);
            }
        }
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
        FILES_PRESCAN_PROJECTION = new String[]{"_id", "_data", MediaStore.Files.FileColumns.FORMAT, "date_modified"};
        ID_PROJECTION = new String[]{"_id"};
        PLAYLIST_MEMBERS_PROJECTION = new String[]{MediaStore.Audio.Playlists.Members.PLAYLIST_ID};
        ID3_GENRES = new String[]{"Blues", "Classic Rock", "Country", "Dance", "Disco", "Funk", "Grunge", "Hip-Hop", "Jazz", "Metal", "New Age", "Oldies", "Other", "Pop", "R&B", "Rap", "Reggae", "Rock", "Techno", "Industrial", "Alternative", "Ska", "Death Metal", "Pranks", "Soundtrack", "Euro-Techno", "Ambient", "Trip-Hop", "Vocal", "Jazz+Funk", "Fusion", "Trance", "Classical", "Instrumental", "Acid", "House", "Game", "Sound Clip", "Gospel", "Noise", "AlternRock", "Bass", "Soul", "Punk", "Space", "Meditative", "Instrumental Pop", "Instrumental Rock", "Ethnic", "Gothic", "Darkwave", "Techno-Industrial", "Electronic", "Pop-Folk", "Eurodance", "Dream", "Southern Rock", "Comedy", "Cult", "Gangsta", "Top 40", "Christian Rap", "Pop/Funk", "Jungle", "Native American", "Cabaret", "New Wave", "Psychadelic", "Rave", "Showtunes", "Trailer", "Lo-Fi", "Tribal", "Acid Punk", "Acid Jazz", "Polka", "Retro", "Musical", "Rock & Roll", "Hard Rock", "Folk", "Folk-Rock", "National Folk", "Swing", "Fast Fusion", "Bebob", "Latin", "Revival", "Celtic", "Bluegrass", "Avantgarde", "Gothic Rock", "Progressive Rock", "Psychedelic Rock", "Symphonic Rock", "Slow Rock", "Big Band", "Chorus", "Easy Listening", "Acoustic", "Humour", "Speech", "Chanson", "Opera", "Chamber Music", "Sonata", "Symphony", "Booty Bass", "Primus", "Porn Groove", "Satire", "Slow Jam", "Club", "Tango", "Samba", "Folklore", "Ballad", "Power Ballad", "Rhythmic Soul", "Freestyle", "Duet", "Punk Rock", "Drum Solo", "A capella", "Euro-House", "Dance Hall", "Goa", "Drum & Bass", "Club-House", "Hardcore", "Terror", "Indie", "Britpop", null, "Polsk Punk", "Beat", "Christian Gangsta", "Heavy Metal", "Black Metal", "Crossover", "Contemporary Christian", "Christian Rock", "Merengue", "Salsa", "Thrash Metal", "Anime", "JPop", "Synthpop"};
    }

    public MediaScanner(Context context) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.mBitmapOptions = options;
        this.mPlaylistEntries = new ArrayList<>();
        this.mDrmManagerClient = null;
        this.mClient = new MyMediaScannerClient();
        native_setup();
        this.mContext = context;
        this.mPackageName = context.getPackageName();
        options.inSampleSize = 1;
        options.inJustDecodeBounds = true;
        setDefaultRingtoneFileNames();
        this.mExternalStoragePath = Environment.getExternalStorageDirectory().getAbsolutePath();
        this.mExternalIsEmulated = Environment.isExternalStorageEmulated();
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
            str = str2 + str;
        }
        playlistEntry.path = str;
        this.mPlaylistEntries.add(playlistEntry);
    }

    private boolean inScanDirectory(String str, String[] strArr) {
        for (String str2 : strArr) {
            if (str.startsWith(str2)) {
                return true;
            }
        }
        return false;
    }

    private void initialize(String str) {
        this.mMediaProvider = this.mContext.getContentResolver().acquireProvider(MediaStore.AUTHORITY);
        this.mAudioUri = MediaStore.Audio.Media.getContentUri(str);
        this.mVideoUri = MediaStore.Video.Media.getContentUri(str);
        this.mImagesUri = MediaStore.Images.Media.getContentUri(str);
        this.mThumbsUri = MediaStore.Images.Thumbnails.getContentUri(str);
        Uri contentUri = MediaStore.Files.getContentUri(str);
        this.mFilesUri = contentUri;
        this.mFilesUriNoNotify = contentUri.buildUpon().appendQueryParameter("nonotify", "1").build();
        if (str.equals("internal")) {
            return;
        }
        this.mProcessPlaylists = true;
        this.mProcessGenres = true;
        this.mPlaylistsUri = MediaStore.Audio.Playlists.getContentUri(str);
        this.mCaseInsensitivePaths = true;
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
        int i2 = 1;
        while (i2 >= 0) {
            int iIndexOf = str.indexOf(47, i2);
            if (iIndexOf > i2) {
                iIndexOf++;
                if (new File(str.substring(0, iIndexOf) + MediaStore.MEDIA_IGNORE_FILENAME).exists()) {
                    return true;
                }
            }
            i2 = iIndexOf;
        }
        return isNoMediaFile(str);
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
        this.mPlayLists = null;
        this.mMediaProvider = null;
    }

    private void prescan(String str, boolean z2) throws Throwable {
        String[] strArr;
        String str2;
        Cursor cursor;
        Cursor cursor2;
        Cursor cursor3;
        boolean zAccess;
        ArrayList<FileEntry> arrayList = this.mPlayLists;
        if (arrayList == null) {
            this.mPlayLists = new ArrayList<>();
        } else {
            arrayList.clear();
        }
        if (str != null) {
            str2 = "_id>? AND _data like '" + str + "%' ";
            strArr = new String[]{ProxyProperties.LOCAL_EXCL_LIST};
        } else {
            strArr = new String[]{ProxyProperties.LOCAL_EXCL_LIST};
            str2 = "_id>?";
        }
        Uri.Builder builderBuildUpon = this.mFilesUri.buildUpon();
        builderBuildUpon.appendQueryParameter(MediaStore.PARAM_DELETE_DATA, "false");
        MediaBulkDeleter mediaBulkDeleter = new MediaBulkDeleter(this.mMediaProvider, this.mPackageName, builderBuildUpon.build());
        if (z2) {
            try {
                Uri uriBuild = this.mFilesUri.buildUpon().appendQueryParameter("limit", "1000").build();
                int i2 = 1;
                this.mWasEmptyPriorToScan = true;
                long j2 = Long.MIN_VALUE;
                Cursor cursorQuery = null;
                while (true) {
                    try {
                        strArr[0] = ProxyProperties.LOCAL_EXCL_LIST + j2;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                            cursor3 = null;
                        } else {
                            cursor3 = cursorQuery;
                        }
                        try {
                            long j3 = j2;
                            int i3 = i2;
                            cursorQuery = this.mMediaProvider.query(this.mPackageName, uriBuild, FILES_PRESCAN_PROJECTION, str2, strArr, "_id", null);
                            if (cursorQuery == null || cursorQuery.getCount() == 0) {
                                break;
                            }
                            this.mWasEmptyPriorToScan = false;
                            j2 = j3;
                            while (cursorQuery.moveToNext()) {
                                j2 = cursorQuery.getLong(0);
                                String string = cursorQuery.getString(i3);
                                int i4 = cursorQuery.getInt(2);
                                cursorQuery.getLong(3);
                                if (string != null && string.startsWith("/")) {
                                    try {
                                        zAccess = Libcore.os.access(string, OsConstants.F_OK);
                                    } catch (ErrnoException unused) {
                                        zAccess = false;
                                    }
                                    if (!zAccess && !MtpConstants.isAbstractObject(i4)) {
                                        MediaFile.MediaFileType fileType = MediaFile.getFileType(string);
                                        if (!MediaFile.isPlayListFileType(fileType == null ? 0 : fileType.fileType)) {
                                            mediaBulkDeleter.delete(j2);
                                            if (string.toLowerCase(Locale.US).endsWith("/.nomedia")) {
                                                mediaBulkDeleter.flush();
                                                this.mMediaProvider.call(this.mPackageName, MediaStore.UNHIDE_CALL, new File(string).getParent(), null);
                                            }
                                        }
                                    }
                                }
                            }
                            i2 = i3;
                        } catch (Throwable th) {
                            th = th;
                            cursor2 = cursor3;
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
                cursor = cursorQuery;
            } catch (Throwable th3) {
                th = th3;
                cursor2 = null;
            }
        } else {
            cursor = null;
        }
        if (cursor != null) {
            cursor.close();
        }
        mediaBulkDeleter.flush();
        this.mOriginalCount = 0;
        Cursor cursorQuery2 = this.mMediaProvider.query(this.mPackageName, this.mImagesUri, ID_PROJECTION, null, null, null, null);
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
                    this.mMediaProvider.insert(this.mPackageName, uri, contentValues);
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
            throw new IllegalArgumentException("bad path " + str);
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
            Uri uriInsert = this.mMediaProvider.insert(this.mPackageName, this.mPlaylistsUri, contentValues);
            ContentUris.parseId(uriInsert);
            uriWithAppendedPath = Uri.withAppendedPath(uriInsert, "members");
        } else {
            Uri uriWithAppendedId = ContentUris.withAppendedId(this.mPlaylistsUri, j2);
            this.mMediaProvider.update(this.mPackageName, uriWithAppendedId, contentValues, null, null);
            uriWithAppendedPath = Uri.withAppendedPath(uriWithAppendedId, "members");
            this.mMediaProvider.delete(this.mPackageName, uriWithAppendedPath, null, null);
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
            cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mFilesUri, FILES_PRESCAN_PROJECTION, "media_type=2", null, null, null);
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
        try {
            Cursor cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mThumbsUri, new String[]{"_data"}, null, null, null, null);
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
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (RemoteException unused2) {
        }
    }

    private void setDefaultRingtoneFileNames() {
        this.mDefaultRingtoneFilename = SystemProperties.get("ro.config.ringtone");
        this.mDefaultNotificationFilename = SystemProperties.get("ro.config.notification_sound");
        this.mDefaultAlarmAlertFilename = SystemProperties.get("ro.config.alarm_alert");
    }

    public native byte[] extractAlbumArt(FileDescriptor fileDescriptor);

    public void finalize() {
        this.mContext.getContentResolver().releaseProvider(this.mMediaProvider);
        native_finalize();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004b A[PHI: r3
  0x004b: PHI (r3v2 android.database.Cursor) = (r3v1 android.database.Cursor), (r3v4 android.database.Cursor) binds: [B:19:0x0049, B:12:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    public FileEntry makeEntryFor(String str) throws Throwable {
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mFilesUriNoNotify, FILES_PRESCAN_PROJECTION, "_data=?", new String[]{str}, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        FileEntry fileEntry = new FileEntry(cursorQuery.getLong(0), str, cursorQuery.getLong(3), cursorQuery.getInt(2));
                        cursorQuery.close();
                        return fileEntry;
                    }
                } catch (RemoteException unused) {
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
        } catch (RemoteException unused2) {
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        return null;
    }

    public void release() {
        native_finalize();
    }

    public void scanDirectories(String[] strArr, String str) throws Throwable {
        try {
            System.currentTimeMillis();
            initialize(str);
            for (String str2 : strArr) {
                prescan(str2, true);
            }
            System.currentTimeMillis();
            for (String str3 : strArr) {
                processDirectory(str3, this.mClient);
            }
            System.currentTimeMillis();
            postscan(strArr);
            System.currentTimeMillis();
        } catch (SQLException e2) {
            Log.e(TAG, "SQLException in MediaScanner.scan()", e2);
        } catch (RemoteException e3) {
            Log.e(TAG, "RemoteException in MediaScanner.scan()", e3);
        } catch (UnsupportedOperationException e4) {
            Log.e(TAG, "UnsupportedOperationException in MediaScanner.scan()", e4);
        }
    }

    public void scanMtpFile(String str, String str2, int i2, int i3) {
        initialize(str2);
        MediaFile.MediaFileType fileType = MediaFile.getFileType(str);
        int i4 = fileType == null ? 0 : fileType.fileType;
        File file = new File(str);
        long jLastModified = file.lastModified() / 1000;
        boolean z2 = true;
        if (!MediaFile.isAudioFileType(i4) && !MediaFile.isVideoFileType(i4) && !MediaFile.isImageFileType(i4) && !MediaFile.isPlayListFileType(i4) && !MediaFile.isDrmFileType(i4)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_size", Long.valueOf(file.length()));
            contentValues.put("date_modified", Long.valueOf(jLastModified));
            try {
                this.mMediaProvider.update(this.mPackageName, MediaStore.Files.getMtpObjectsUri(str2), contentValues, "_id=?", new String[]{Integer.toString(i2)});
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
                    cursorQuery = this.mMediaProvider.query(this.mPackageName, this.mFilesUri, FILES_PRESCAN_PROJECTION, null, null, null, null);
                    processPlayList(fileEntryMakeEntryFor, cursorQuery);
                }
            } else {
                prescan(str, false);
                MyMediaScannerClient myMediaScannerClient = this.mClient;
                String str3 = fileType.mimeType;
                long length = file.length();
                if (i3 != 12289) {
                    z2 = false;
                }
                myMediaScannerClient.doScanFile(str, str3, jLastModified, length, z2, true, isNoMediaPath(str));
            }
        } catch (RemoteException e3) {
            Log.e(TAG, "RemoteException in MediaScanner.scanFile()", e3);
        } finally {
            this.mMtpObjectHandle = 0;
            if (0 != 0) {
                cursorQuery.close();
            }
        }
    }

    public Uri scanSingleFile(String str, String str2, String str3) throws Throwable {
        try {
            initialize(str2);
            prescan(str, true);
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            return this.mClient.doScanFile(str, str3, file.lastModified() / 1000, file.length(), false, true, isNoMediaPath(str));
        } catch (RemoteException e2) {
            Log.e(TAG, "RemoteException in MediaScanner.scanFile()", e2);
            return null;
        }
    }

    public native void setLocale(String str);
}
