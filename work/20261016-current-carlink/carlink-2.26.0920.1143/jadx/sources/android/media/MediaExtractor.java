package android.media;

import android.app.backup.FullBackup;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.IBinder;
import android.os.IHwBinder;
import android.os.PersistableBundle;
import com.android.internal.util.Preconditions;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class MediaExtractor {
    public static final int SAMPLE_FLAG_ENCRYPTED = 2;
    public static final int SAMPLE_FLAG_PARTIAL_FRAME = 4;
    public static final int SAMPLE_FLAG_SYNC = 1;
    public static final int SEEK_TO_CLOSEST_SYNC = 2;
    public static final int SEEK_TO_NEXT_SYNC = 1;
    public static final int SEEK_TO_PREVIOUS_SYNC = 0;
    private MediaCas mMediaCas;
    private long mNativeContext;

    public static final class CasInfo {
        private final MediaCas.Session mSession;
        private final int mSystemId;

        public CasInfo(int i2, MediaCas.Session session) {
            this.mSystemId = i2;
            this.mSession = session;
        }

        public MediaCas.Session getSession() {
            return this.mSession;
        }

        public int getSystemId() {
            return this.mSystemId;
        }
    }

    public static final class MetricsConstants {
        public static final String FORMAT = "android.media.mediaextractor.fmt";
        public static final String MIME_TYPE = "android.media.mediaextractor.mime";
        public static final String TRACKS = "android.media.mediaextractor.ntrk";

        private MetricsConstants() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SampleFlag {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface SeekMode {
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    public MediaExtractor() {
        native_setup();
    }

    private native Map<String, Object> getFileFormatNative();

    private native Map<String, Object> getTrackFormatNative(int i2);

    private final native void nativeSetDataSource(IBinder iBinder, String str, String[] strArr, String[] strArr2);

    private final native void nativeSetMediaCas(IHwBinder iHwBinder);

    private final native void native_finalize();

    private native PersistableBundle native_getMetrics();

    private static final native void native_init();

    private final native void native_setup();

    private ArrayList<Byte> toByteArray(byte[] bArr) {
        ArrayList<Byte> arrayList = new ArrayList<>(bArr.length);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            arrayList.add(i2, Byte.valueOf(bArr[i2]));
        }
        return arrayList;
    }

    public native boolean advance();

    public void finalize() {
        native_finalize();
    }

    public native long getCachedDuration();

    public CasInfo getCasInfo(int i2) {
        Map<String, Object> trackFormatNative = getTrackFormatNative(i2);
        MediaCas.Session sessionCreateFromSessionId = null;
        if (!trackFormatNative.containsKey(MediaFormat.KEY_CA_SYSTEM_ID)) {
            return null;
        }
        int iIntValue = ((Integer) trackFormatNative.get(MediaFormat.KEY_CA_SYSTEM_ID)).intValue();
        if (this.mMediaCas != null && trackFormatNative.containsKey(MediaFormat.KEY_CA_SESSION_ID)) {
            ByteBuffer byteBuffer = (ByteBuffer) trackFormatNative.get(MediaFormat.KEY_CA_SESSION_ID);
            byteBuffer.rewind();
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            sessionCreateFromSessionId = this.mMediaCas.createFromSessionId(toByteArray(bArr));
        }
        return new CasInfo(iIntValue, sessionCreateFromSessionId);
    }

    public DrmInitData getDrmInitData() {
        Map<String, Object> fileFormatNative = getFileFormatNative();
        if (fileFormatNative == null) {
            return null;
        }
        if (fileFormatNative.containsKey("pssh")) {
            Map<UUID, byte[]> psshInfo = getPsshInfo();
            final HashMap map = new HashMap();
            for (Map.Entry<UUID, byte[]> entry : psshInfo.entrySet()) {
                map.put(entry.getKey(), new DrmInitData.SchemeInitData("cenc", entry.getValue()));
            }
            return new DrmInitData() { // from class: android.media.MediaExtractor.1
                @Override // android.media.DrmInitData
                public DrmInitData.SchemeInitData get(UUID uuid) {
                    return (DrmInitData.SchemeInitData) map.get(uuid);
                }
            };
        }
        int trackCount = getTrackCount();
        for (int i2 = 0; i2 < trackCount; i2++) {
            Map<String, Object> trackFormatNative = getTrackFormatNative(i2);
            if (trackFormatNative.containsKey("crypto-key")) {
                ByteBuffer byteBuffer = (ByteBuffer) trackFormatNative.get("crypto-key");
                byteBuffer.rewind();
                final byte[] bArr = new byte[byteBuffer.remaining()];
                byteBuffer.get(bArr);
                return new DrmInitData() { // from class: android.media.MediaExtractor.2
                    @Override // android.media.DrmInitData
                    public DrmInitData.SchemeInitData get(UUID uuid) {
                        return new DrmInitData.SchemeInitData("webm", bArr);
                    }
                };
            }
        }
        return null;
    }

    public PersistableBundle getMetrics() {
        return native_getMetrics();
    }

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

    /* JADX WARN: Code duplicated, block: B:26:0x0055  */
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

    public final native void setDataSource(MediaDataSource mediaDataSource);

    public final native void setDataSource(FileDescriptor fileDescriptor, long j2, long j3);

    public final void setMediaCas(MediaCas mediaCas) {
        this.mMediaCas = mediaCas;
        nativeSetMediaCas(mediaCas.getBinder());
    }

    public native void unselectTrack(int i2);

    public final void setDataSource(String str, Map<String, String> map) {
        String[] strArr;
        String[] strArr2;
        if (map != null) {
            strArr = new String[map.size()];
            strArr2 = new String[map.size()];
            int i2 = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                strArr[i2] = entry.getKey();
                strArr2[i2] = entry.getValue();
                i2++;
            }
        } else {
            strArr = null;
            strArr2 = null;
        }
        nativeSetDataSource(MediaHTTPService.createHttpServiceBinderIfNecessary(str), str, strArr, strArr2);
    }

    public final void setDataSource(String str) {
        nativeSetDataSource(MediaHTTPService.createHttpServiceBinderIfNecessary(str), str, null, null);
    }

    public final void setDataSource(AssetFileDescriptor assetFileDescriptor) {
        Preconditions.checkNotNull(assetFileDescriptor);
        if (assetFileDescriptor.getDeclaredLength() < 0) {
            setDataSource(assetFileDescriptor.getFileDescriptor());
        } else {
            setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getDeclaredLength());
        }
    }

    public final void setDataSource(FileDescriptor fileDescriptor) {
        setDataSource(fileDescriptor, 0L, 576460752303423487L);
    }
}
