package android.media;

import android.net.dhcp.DhcpPacket;
import android.os.Bundle;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class MediaCodec {
    public static final int BUFFER_FLAG_CODEC_CONFIG = 2;
    public static final int BUFFER_FLAG_END_OF_STREAM = 4;
    public static final int BUFFER_FLAG_SYNC_FRAME = 1;
    public static final int CONFIGURE_FLAG_ENCODE = 1;
    public static final int CRYPTO_MODE_AES_CTR = 1;
    public static final int CRYPTO_MODE_UNENCRYPTED = 0;
    public static final int INFO_OUTPUT_BUFFERS_CHANGED = -3;
    public static final int INFO_OUTPUT_FORMAT_CHANGED = -2;
    public static final int INFO_TRY_AGAIN_LATER = -1;
    public static final String PARAMETER_KEY_REQUEST_SYNC_FRAME = "request-sync";
    public static final String PARAMETER_KEY_SUSPEND = "drop-input-frames";
    public static final String PARAMETER_KEY_VIDEO_BITRATE = "video-bitrate";
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT = 1;
    public static final int VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING = 2;
    private int mNativeContext;

    public static final class BufferInfo {
        public int flags;
        public int offset;
        public long presentationTimeUs;
        public int size;

        public void set(int i2, int i3, long j2, int i4) {
            this.offset = i2;
            this.size = i3;
            this.presentationTimeUs = j2;
            this.flags = i4;
        }
    }

    public static final class CryptoException extends RuntimeException {
        public static final int ERROR_KEY_EXPIRED = 2;
        public static final int ERROR_NO_KEY = 1;
        public static final int ERROR_RESOURCE_BUSY = 3;
        private int mErrorCode;

        public CryptoException(int i2, String str) {
            super(str);
            this.mErrorCode = i2;
        }

        public int getErrorCode() {
            return this.mErrorCode;
        }
    }

    public static final class CryptoInfo {
        public byte[] iv;
        public byte[] key;
        public int mode;
        public int[] numBytesOfClearData;
        public int[] numBytesOfEncryptedData;
        public int numSubSamples;

        public void set(int i2, int[] iArr, int[] iArr2, byte[] bArr, byte[] bArr2, int i3) {
            this.numSubSamples = i2;
            this.numBytesOfClearData = iArr;
            this.numBytesOfEncryptedData = iArr2;
            this.key = bArr;
            this.iv = bArr2;
            this.mode = i3;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.numSubSamples + " subsamples, key [");
            int i2 = 0;
            while (true) {
                byte[] bArr = this.key;
                if (i2 >= bArr.length) {
                    break;
                }
                sb.append("0123456789abcdef".charAt((bArr[i2] & 240) >> 4));
                sb.append("0123456789abcdef".charAt(this.key[i2] & DhcpPacket.DHCP_DOMAIN_NAME));
                i2++;
            }
            sb.append("], iv [");
            for (int i3 = 0; i3 < this.key.length; i3++) {
                sb.append("0123456789abcdef".charAt((this.iv[i3] & 240) >> 4));
                sb.append("0123456789abcdef".charAt(this.iv[i3] & DhcpPacket.DHCP_DOMAIN_NAME));
            }
            sb.append("], clear ");
            sb.append(Arrays.toString(this.numBytesOfClearData));
            sb.append(", encrypted ");
            sb.append(Arrays.toString(this.numBytesOfEncryptedData));
            return sb.toString();
        }
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    private MediaCodec(String str, boolean z2, boolean z3) {
        native_setup(str, z2, z3);
    }

    public static MediaCodec createByCodecName(String str) {
        return new MediaCodec(str, false, false);
    }

    public static MediaCodec createDecoderByType(String str) {
        return new MediaCodec(str, true, false);
    }

    public static MediaCodec createEncoderByType(String str) {
        return new MediaCodec(str, true, true);
    }

    private final native ByteBuffer[] getBuffers(boolean z2);

    private final native Map<String, Object> getOutputFormatNative();

    private final native void native_configure(String[] strArr, Object[] objArr, Surface surface, MediaCrypto mediaCrypto, int i2);

    private final native void native_finalize();

    private static final native void native_init();

    private final native void native_setup(String str, boolean z2, boolean z3);

    private final native void setParameters(String[] strArr, Object[] objArr);

    public void configure(MediaFormat mediaFormat, Surface surface, MediaCrypto mediaCrypto, int i2) {
        Map<String, Object> map = mediaFormat.getMap();
        String[] strArr = new String[map.size()];
        Object[] objArr = new Object[map.size()];
        int i3 = 0;
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            strArr[i3] = entry.getKey();
            objArr[i3] = entry.getValue();
            i3++;
        }
        native_configure(strArr, objArr, surface, mediaCrypto, i2);
    }

    public final native Surface createInputSurface();

    public final native int dequeueInputBuffer(long j2);

    public final native int dequeueOutputBuffer(BufferInfo bufferInfo, long j2);

    public void finalize() {
        native_finalize();
    }

    public final native void flush();

    public MediaCodecInfo getCodecInfo() {
        return MediaCodecList.getCodecInfoAt(MediaCodecList.findCodecByName(getName()));
    }

    public ByteBuffer[] getInputBuffers() {
        return getBuffers(true);
    }

    public final native String getName();

    public ByteBuffer[] getOutputBuffers() {
        return getBuffers(false);
    }

    public final MediaFormat getOutputFormat() {
        return new MediaFormat(getOutputFormatNative());
    }

    public final native void queueInputBuffer(int i2, int i3, int i4, long j2, int i5);

    public final native void queueSecureInputBuffer(int i2, int i3, CryptoInfo cryptoInfo, long j2, int i4);

    public final native void release();

    public final native void releaseOutputBuffer(int i2, boolean z2);

    public final void setParameters(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        String[] strArr = new String[bundle.size()];
        Object[] objArr = new Object[bundle.size()];
        int i2 = 0;
        for (String str : bundle.keySet()) {
            strArr[i2] = str;
            objArr[i2] = bundle.get(str);
            i2++;
        }
        setParameters(strArr, objArr);
    }

    public final native void setVideoScalingMode(int i2);

    public final native void signalEndOfInputStream();

    public final native void start();

    public final native void stop();
}
