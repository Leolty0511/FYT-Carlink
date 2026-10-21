package android.media;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class EncoderCapabilities {
    private static final String TAG = "EncoderCapabilities";

    public static class AudioEncoderCap {
        public final int mCodec;
        public final int mMaxBitRate;
        public final int mMaxChannels;
        public final int mMaxSampleRate;
        public final int mMinBitRate;
        public final int mMinChannels;
        public final int mMinSampleRate;

        private AudioEncoderCap(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.mCodec = i2;
            this.mMinBitRate = i3;
            this.mMaxBitRate = i4;
            this.mMinSampleRate = i5;
            this.mMaxSampleRate = i6;
            this.mMinChannels = i7;
            this.mMaxChannels = i8;
        }
    }

    public static class VideoEncoderCap {
        public final int mCodec;
        public final int mMaxBitRate;
        public final int mMaxFrameHeight;
        public final int mMaxFrameRate;
        public final int mMaxFrameWidth;
        public final int mMinBitRate;
        public final int mMinFrameHeight;
        public final int mMinFrameRate;
        public final int mMinFrameWidth;

        private VideoEncoderCap(int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            this.mCodec = i2;
            this.mMinBitRate = i3;
            this.mMaxBitRate = i4;
            this.mMinFrameRate = i5;
            this.mMaxFrameRate = i6;
            this.mMinFrameWidth = i7;
            this.mMaxFrameWidth = i8;
            this.mMinFrameHeight = i9;
            this.mMaxFrameHeight = i10;
        }
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    private EncoderCapabilities() {
    }

    public static List<AudioEncoderCap> getAudioEncoders() {
        int iNative_get_num_audio_encoders = native_get_num_audio_encoders();
        if (iNative_get_num_audio_encoders == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < iNative_get_num_audio_encoders; i2++) {
            arrayList.add(native_get_audio_encoder_cap(i2));
        }
        return arrayList;
    }

    public static int[] getOutputFileFormats() {
        int iNative_get_num_file_formats = native_get_num_file_formats();
        if (iNative_get_num_file_formats == 0) {
            return null;
        }
        int[] iArr = new int[iNative_get_num_file_formats];
        for (int i2 = 0; i2 < iNative_get_num_file_formats; i2++) {
            iArr[i2] = native_get_file_format(i2);
        }
        return iArr;
    }

    public static List<VideoEncoderCap> getVideoEncoders() {
        int iNative_get_num_video_encoders = native_get_num_video_encoders();
        if (iNative_get_num_video_encoders == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < iNative_get_num_video_encoders; i2++) {
            arrayList.add(native_get_video_encoder_cap(i2));
        }
        return arrayList;
    }

    private static final native AudioEncoderCap native_get_audio_encoder_cap(int i2);

    private static final native int native_get_file_format(int i2);

    private static final native int native_get_num_audio_encoders();

    private static final native int native_get_num_file_formats();

    private static final native int native_get_num_video_encoders();

    private static final native VideoEncoderCap native_get_video_encoder_cap(int i2);

    private static final native void native_init();
}
