package android.media;

import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class MediaExtractor {
    public static final int SAMPLE_FLAG_ENCRYPTED = 2;
    public static final int SAMPLE_FLAG_SYNC = 1;
    public static final int SEEK_TO_CLOSEST_SYNC = 2;
    public static final int SEEK_TO_NEXT_SYNC = 1;
    public static final int SEEK_TO_PREVIOUS_SYNC = 0;
    private int mNativeContext;

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    public MediaExtractor() {
        native_setup();
    }

    private native Map<String, Object> getFileFormatNative();

    private native Map<String, Object> getTrackFormatNative(int i2);

    private final native void native_finalize();

    private static final native void native_init();

    private final native void native_setup();

    private final native void setDataSource(String str, String[] strArr, String[] strArr2);

    public native boolean advance();

    public void finalize() {
        native_finalize();
    }

    public native long getCachedDuration();

    public Map<UUID, byte[]> getPsshInfo() {
        Map<String, Object> fileFormatNative = getFileFormatNative();
        if (fileFormatNative == null || !fileFormatNative.containsKey("pssh")) {
            return null;
        }
        ByteBuffer byteBuffer = (ByteBuffer) fileFormatNative.get("pssh");
        byteBuffer.order(ByteOrder.nativeOrder());
        byteBuffer.rewind();
        fileFormatNative.remove("pssh");
        HashMap map = new HashMap();
        while (byteBuffer.remaining() > 0) {
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
            UUID uuid = new UUID(byteBuffer.getLong(), byteBuffer.getLong());
            byteBuffer.order(ByteOrder.nativeOrder());
            byte[] bArr = new byte[byteBuffer.getInt()];
            byteBuffer.get(bArr);
            map.put(uuid, bArr);
        }
        return map;
    }

    public native boolean getSampleCryptoInfo(MediaCodec.CryptoInfo cryptoInfo);

    public native int getSampleFlags();

    public native long getSampleTime();

    public native int getSampleTrackIndex();

    public final native int getTrackCount();

    public MediaFormat getTrackFormat(int i2) {
        return new MediaFormat(getTrackFormatNative(i2));
    }

    public native boolean hasCacheReachedEndOfStream();

    public native int readSampleData(ByteBuffer byteBuffer, int i2);

    public final native void release();

    public native void seekTo(long j2, int i2);

    public native void selectTrack(int i2);

    /* JADX WARN: Code duplicated, block: B:26:0x0054  */
    public final void setDataSource(Context context, Uri uri, Map<String, String> map) {
        String scheme = uri.getScheme();
        if (scheme == null || scheme.equals(ContentResolver.SCHEME_FILE)) {
            setDataSource(uri.getPath());
            return;
        }
        AutoCloseable autoCloseable = null;
        try {
            AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor = context.getContentResolver().openAssetFileDescriptor(uri, FullBackup.ROOT_TREE_TOKEN);
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                if (assetFileDescriptorOpenAssetFileDescriptor != null) {
                    assetFileDescriptorOpenAssetFileDescriptor.close();
                }
            } else {
                if (assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength() < 0) {
                    setDataSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                } else {
                    setDataSource(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor(), assetFileDescriptorOpenAssetFileDescriptor.getStartOffset(), assetFileDescriptorOpenAssetFileDescriptor.getDeclaredLength());
                }
                assetFileDescriptorOpenAssetFileDescriptor.close();
            }
        } catch (IOException unused) {
            if (0 != 0) {
                autoCloseable.close();
            }
            setDataSource(uri.toString(), map);
        } catch (SecurityException unused2) {
            if (0 != 0) {
                autoCloseable.close();
            }
            setDataSource(uri.toString(), map);
        } catch (Throwable th) {
            if (0 != 0) {
                autoCloseable.close();
            }
            throw th;
        }
    }

    public final native void setDataSource(DataSource dataSource);

    public final native void setDataSource(FileDescriptor fileDescriptor, long j2, long j3);

    public native void unselectTrack(int i2);

    public final void setDataSource(String str, Map<String, String> map) {
        String[] strArr;
        String[] strArr2 = null;
        if (map != null) {
            strArr2 = new String[map.size()];
            strArr = new String[map.size()];
            int i2 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                strArr2[i2] = entry.getKey();
                strArr[i2] = entry.getValue();
                i2++;
            }
        } else {
            strArr = null;
        }
        setDataSource(str, strArr2, strArr);
    }

    public final void setDataSource(String str) {
        setDataSource(str, (String[]) null, (String[]) null);
    }

    public final void setDataSource(FileDescriptor fileDescriptor) {
        setDataSource(fileDescriptor, 0L, 576460752303423487L);
    }
}
