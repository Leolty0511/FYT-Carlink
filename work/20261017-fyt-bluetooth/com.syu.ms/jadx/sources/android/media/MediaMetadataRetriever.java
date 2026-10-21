package android.media;

import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class MediaMetadataRetriever {
    private static final int EMBEDDED_PICTURE_TYPE_ANY = 65535;
    public static final int METADATA_KEY_ALBUM = 1;
    public static final int METADATA_KEY_ALBUMARTIST = 13;
    public static final int METADATA_KEY_ARTIST = 2;
    public static final int METADATA_KEY_AUTHOR = 3;
    public static final int METADATA_KEY_BITRATE = 20;
    public static final int METADATA_KEY_CD_TRACK_NUMBER = 0;
    public static final int METADATA_KEY_COMPILATION = 15;
    public static final int METADATA_KEY_COMPOSER = 4;
    public static final int METADATA_KEY_DATE = 5;
    public static final int METADATA_KEY_DISC_NUMBER = 14;
    public static final int METADATA_KEY_DURATION = 9;
    public static final int METADATA_KEY_GENRE = 6;
    public static final int METADATA_KEY_HAS_AUDIO = 16;
    public static final int METADATA_KEY_HAS_VIDEO = 17;
    public static final int METADATA_KEY_IS_DRM = 22;
    public static final int METADATA_KEY_LOCATION = 23;
    public static final int METADATA_KEY_MIMETYPE = 12;
    public static final int METADATA_KEY_NUM_TRACKS = 10;
    public static final int METADATA_KEY_TIMED_TEXT_LANGUAGES = 21;
    public static final int METADATA_KEY_TITLE = 7;
    public static final int METADATA_KEY_VIDEO_HEIGHT = 19;
    public static final int METADATA_KEY_VIDEO_ROTATION = 24;
    public static final int METADATA_KEY_VIDEO_WIDTH = 18;
    public static final int METADATA_KEY_WRITER = 11;
    public static final int METADATA_KEY_YEAR = 8;
    public static final int OPTION_CLOSEST = 3;
    public static final int OPTION_CLOSEST_SYNC = 2;
    public static final int OPTION_NEXT_SYNC = 1;
    public static final int OPTION_PREVIOUS_SYNC = 0;
    private int mNativeContext;

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    public MediaMetadataRetriever() {
        native_setup();
    }

    private native Bitmap _getFrameAtTime(long j2, int i2);

    private native void _setDataSource(String str, String[] strArr, String[] strArr2);

    private native byte[] getEmbeddedPicture(int i2);

    private final native void native_finalize();

    private static native void native_init();

    private native void native_setup();

    public native String extractMetadata(int i2);

    public void finalize() throws Throwable {
        try {
            native_finalize();
        } finally {
            super.finalize();
        }
    }

    public byte[] getEmbeddedPicture() {
        return getEmbeddedPicture(65535);
    }

    public Bitmap getFrameAtTime(long j2, int i2) {
        if (i2 >= 0 && i2 <= 3) {
            return _getFrameAtTime(j2, i2);
        }
        throw new IllegalArgumentException("Unsupported option: " + i2);
    }

    public native void release();

    public native void setDataSource(FileDescriptor fileDescriptor, long j2, long j3);

    public void setDataSource(String str) {
        if (str == null) {
            throw new IllegalArgumentException();
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            setDataSource(fileInputStream.getFD(), 0L, 576460752303423487L);
            try {
                fileInputStream.close();
            } catch (Exception unused) {
            }
        } catch (FileNotFoundException unused2) {
            throw new IllegalArgumentException();
        } catch (IOException unused3) {
            throw new IllegalArgumentException();
        }
    }

    public Bitmap getFrameAtTime(long j2) {
        return getFrameAtTime(j2, 2);
    }

    public Bitmap getFrameAtTime() {
        return getFrameAtTime(-1L, 2);
    }

    public void setDataSource(String str, Map<String, String> map) {
        String[] strArr = new String[map.size()];
        String[] strArr2 = new String[map.size()];
        int i2 = 0;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            strArr[i2] = entry.getKey();
            strArr2[i2] = entry.getValue();
            i2++;
        }
        _setDataSource(str, strArr, strArr2);
    }

    public void setDataSource(FileDescriptor fileDescriptor) {
        setDataSource(fileDescriptor, 0L, 576460752303423487L);
    }

    public void setDataSource(Context context, Uri uri) {
        if (uri != null) {
            String scheme = uri.getScheme();
            if (scheme != null && !scheme.equals(ContentResolver.SCHEME_FILE)) {
                AutoCloseable autoCloseable = null;
                try {
                    try {
                        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
                        if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                            FileDescriptor fileDescriptor = assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor();
                            if (fileDescriptor.valid()) {
                                if (assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength() < 0) {
                                    setDataSource(fileDescriptor);
                                } else {
                                    setDataSource(fileDescriptor, assetFileDescriptorOpenAssetFileDescriptor.getStartOffset(), assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength());
                                }
                                try {
                                    assetFileDescriptorOpenAssetFileDescriptor.close();
                                    return;
                                } catch (IOException unused) {
                                    return;
                                }
                            }
                            throw new IllegalArgumentException();
                        }
                        throw new IllegalArgumentException();
                    } catch (FileNotFoundException unused2) {
                        throw new IllegalArgumentException();
                    }
                } catch (SecurityException unused3) {
                    if (0 != 0) {
                        try {
                            autoCloseable.close();
                        } catch (IOException unused4) {
                        }
                    }
                    setDataSource(uri.toString());
                    return;
                } catch (Throwable th) {
                    if (0 != 0) {
                        try {
                            autoCloseable.close();
                        } catch (IOException unused5) {
                        }
                    }
                    throw th;
                }
            }
            setDataSource(uri.getPath());
            return;
        }
        throw new IllegalArgumentException();
    }
}
