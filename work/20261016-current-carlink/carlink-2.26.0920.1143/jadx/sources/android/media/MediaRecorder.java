package android.media;

import android.accessibilityservice.c;
import android.app.ActivityThread;
import android.app.m;
import android.hardware.Camera;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.SystemProperties;
import android.util.Log;
import android.view.Surface;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class MediaRecorder {
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_RECORDER_ERROR_UNKNOWN = 1;
    public static final int MEDIA_RECORDER_INFO_MAX_DURATION_REACHED = 800;
    public static final int MEDIA_RECORDER_INFO_MAX_FILESIZE_APPROACHING = 802;
    public static final int MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED = 801;
    public static final int MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED = 803;
    public static final int MEDIA_RECORDER_INFO_UNKNOWN = 1;
    public static final int MEDIA_RECORDER_TRACK_INFO_COMPLETION_STATUS = 1000;
    public static final int MEDIA_RECORDER_TRACK_INFO_DATA_KBYTES = 1009;
    public static final int MEDIA_RECORDER_TRACK_INFO_DURATION_MS = 1003;
    public static final int MEDIA_RECORDER_TRACK_INFO_ENCODED_FRAMES = 1005;
    public static final int MEDIA_RECORDER_TRACK_INFO_INITIAL_DELAY_MS = 1007;
    public static final int MEDIA_RECORDER_TRACK_INFO_LIST_END = 2000;
    public static final int MEDIA_RECORDER_TRACK_INFO_LIST_START = 1000;
    public static final int MEDIA_RECORDER_TRACK_INFO_MAX_CHUNK_DUR_MS = 1004;
    public static final int MEDIA_RECORDER_TRACK_INFO_PROGRESS_IN_TIME = 1001;
    public static final int MEDIA_RECORDER_TRACK_INFO_START_OFFSET_MS = 1008;
    public static final int MEDIA_RECORDER_TRACK_INFO_TYPE = 1002;
    public static final int MEDIA_RECORDER_TRACK_INTER_CHUNK_TIME_MS = 1006;
    private static final String TAG = "MediaRecorder";
    private EventHandler mEventHandler;
    private FileDescriptor mFd;
    private File mFile;
    private long mNativeContext;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    private String mPath;
    private Surface mSurface;

    public final class AudioEncoder {
        public static final int AAC = 3;
        public static final int AAC_ELD = 5;
        public static final int AMR_NB = 1;
        public static final int AMR_WB = 2;
        public static final int DEFAULT = 0;
        public static final int HE_AAC = 4;
        public static final int VORBIS = 6;

        private AudioEncoder() {
        }
    }

    public final class AudioSource {
        public static final int AUDIO_SOURCE_INVALID = -1;
        public static final int BLUETOOTH_A2DP = 10;
        public static final int CAMCORDER = 5;
        public static final int DEFAULT = 0;
        public static final int HOTWORD = 1999;
        public static final int MIC = 1;
        public static final int RADIO_TUNER = 1998;
        public static final int REMOTE_SUBMIX = 8;
        public static final int UNPROCESSED = 9;
        public static final int VOICE_CALL = 4;
        public static final int VOICE_COMMUNICATION = 7;
        public static final int VOICE_DOWNLINK = 3;
        public static final int VOICE_RECOGNITION = 6;
        public static final int VOICE_UPLINK = 2;

        private AudioSource() {
        }
    }

    public class EventHandler extends Handler {
        private static final int MEDIA_RECORDER_EVENT_ERROR = 1;
        private static final int MEDIA_RECORDER_EVENT_INFO = 2;
        private static final int MEDIA_RECORDER_EVENT_LIST_END = 99;
        private static final int MEDIA_RECORDER_EVENT_LIST_START = 1;
        private static final int MEDIA_RECORDER_TRACK_EVENT_ERROR = 100;
        private static final int MEDIA_RECORDER_TRACK_EVENT_INFO = 101;
        private static final int MEDIA_RECORDER_TRACK_EVENT_LIST_END = 1000;
        private static final int MEDIA_RECORDER_TRACK_EVENT_LIST_START = 100;
        private MediaRecorder mMediaRecorder;

        public EventHandler(MediaRecorder mediaRecorder, Looper looper) {
            super(looper);
            this.mMediaRecorder = mediaRecorder;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.mMediaRecorder.mNativeContext == 0) {
                Log.w(MediaRecorder.TAG, "mediarecorder went away with unhandled events");
                return;
            }
            int i2 = message.what;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 100) {
                        if (i2 != 101) {
                            m.C(new StringBuilder("Unknown message type "), message.what, MediaRecorder.TAG);
                            return;
                        }
                    }
                }
                if (MediaRecorder.this.mOnInfoListener != null) {
                    MediaRecorder.this.mOnInfoListener.onInfo(this.mMediaRecorder, message.arg1, message.arg2);
                    return;
                }
                return;
            }
            if (MediaRecorder.this.mOnErrorListener != null) {
                MediaRecorder.this.mOnErrorListener.onError(this.mMediaRecorder, message.arg1, message.arg2);
            }
        }
    }

    public static final class MetricsConstants {
        public static final String AUDIO_BITRATE = "android.media.mediarecorder.audio-bitrate";
        public static final String AUDIO_CHANNELS = "android.media.mediarecorder.audio-channels";
        public static final String AUDIO_SAMPLERATE = "android.media.mediarecorder.audio-samplerate";
        public static final String AUDIO_TIMESCALE = "android.media.mediarecorder.audio-timescale";
        public static final String CAPTURE_FPS = "android.media.mediarecorder.capture-fps";
        public static final String CAPTURE_FPS_ENABLE = "android.media.mediarecorder.capture-fpsenable";
        public static final String FRAMERATE = "android.media.mediarecorder.frame-rate";
        public static final String HEIGHT = "android.media.mediarecorder.height";
        public static final String MOVIE_TIMESCALE = "android.media.mediarecorder.movie-timescale";
        public static final String ROTATION = "android.media.mediarecorder.rotation";
        public static final String VIDEO_BITRATE = "android.media.mediarecorder.video-bitrate";
        public static final String VIDEO_IFRAME_INTERVAL = "android.media.mediarecorder.video-iframe-interval";
        public static final String VIDEO_LEVEL = "android.media.mediarecorder.video-encoder-level";
        public static final String VIDEO_PROFILE = "android.media.mediarecorder.video-encoder-profile";
        public static final String VIDEO_TIMESCALE = "android.media.mediarecorder.video-timescale";
        public static final String WIDTH = "android.media.mediarecorder.width";

        private MetricsConstants() {
        }
    }

    public interface OnErrorListener {
        void onError(MediaRecorder mediaRecorder, int i2, int i3);
    }

    public interface OnInfoListener {
        void onInfo(MediaRecorder mediaRecorder, int i2, int i3);
    }

    public final class OutputFormat {
        public static final int AAC_ADIF = 5;
        public static final int AAC_ADTS = 6;
        public static final int AMR_NB = 3;
        public static final int AMR_WB = 4;
        public static final int DEFAULT = 0;
        public static final int MPEG_2_TS = 8;
        public static final int MPEG_4 = 2;
        public static final int OUTPUT_FORMAT_RTP_AVP = 7;
        public static final int RAW_AMR = 3;
        public static final int THREE_GPP = 1;
        public static final int WEBM = 9;

        private OutputFormat() {
        }
    }

    public final class VideoEncoder {
        public static final int DEFAULT = 0;
        public static final int H263 = 1;
        public static final int H264 = 2;
        public static final int HEVC = 5;
        public static final int MPEG_4_SP = 3;
        public static final int VP8 = 4;

        private VideoEncoder() {
        }
    }

    public final class VideoSource {
        public static final int CAMERA = 1;
        public static final int DEFAULT = 0;
        public static final int SURFACE = 2;

        private VideoSource() {
        }
    }

    static {
        System.loadLibrary("media_jni");
        native_init();
    }

    public MediaRecorder() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper != null) {
            this.mEventHandler = new EventHandler(this, looperMyLooper);
        } else {
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mEventHandler = new EventHandler(this, mainLooper);
            } else {
                this.mEventHandler = null;
            }
        }
        native_setup(new WeakReference(this), ActivityThread.currentPackageName(), ActivityThread.currentOpPackageName());
    }

    private native void _prepare();

    private native void _setNextOutputFile(FileDescriptor fileDescriptor);

    private native void _setOutputFile(FileDescriptor fileDescriptor);

    public static final int getAudioSourceMax() {
        return 10;
    }

    public static boolean isSystemOnlyAudioSource(int i2) {
        switch (i2) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
                return false;
            case 8:
            default:
                return true;
        }
    }

    private final native void native_finalize();

    private native PersistableBundle native_getMetrics();

    private static final native void native_init();

    private native void native_reset();

    private final native void native_setInputSurface(Surface surface);

    private final native void native_setup(Object obj, String str, String str2);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        EventHandler eventHandler;
        MediaRecorder mediaRecorder = (MediaRecorder) ((WeakReference) obj).get();
        if (mediaRecorder == null || (eventHandler = mediaRecorder.mEventHandler) == null) {
            return;
        }
        mediaRecorder.mEventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj2));
    }

    public static final String toLogFriendlyAudioSource(int i2) {
        if (i2 == 1998) {
            return "RADIO_TUNER";
        }
        if (i2 == 1999) {
            return "HOTWORD";
        }
        switch (i2) {
            case -1:
                return "AUDIO_SOURCE_INVALID";
            case 0:
                return "DEFAULT";
            case 1:
                return "MIC";
            case 2:
                return "VOICE_UPLINK";
            case 3:
                return "VOICE_DOWNLINK";
            case 4:
                return "VOICE_CALL";
            case 5:
                return "CAMCORDER";
            case 6:
                return "VOICE_RECOGNITION";
            case 7:
                return "VOICE_COMMUNICATION";
            case 8:
                return "REMOTE_SUBMIX";
            case 9:
                return "UNPROCESSED";
            default:
                return c.d("unknown source ", i2);
        }
    }

    public void finalize() {
        native_finalize();
    }

    public native int getMaxAmplitude();

    public PersistableBundle getMetrics() {
        return native_getMetrics();
    }

    public native Surface getSurface();

    public native void pause();

    public void prepare() throws IOException {
        if (this.mPath != null) {
            if (SystemProperties.get("service.project.sec").equals(WifiEnterpriseConfig.ENGINE_ENABLE) && this.mPath.contains("CTTL")) {
                System.err.println("java.io.File in MediaRecorder CTTL file path is " + this.mPath);
                File parentFile = new File(this.mPath).getParentFile();
                if (!parentFile.exists()) {
                    boolean zMkdirs = parentFile.mkdirs();
                    System.err.println("java.io.File in MediaREcorder CTTL file's parentFile do not exist, we mkdirs for it, result is " + zMkdirs);
                }
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(this.mPath, "rws");
            try {
                _setOutputFile(randomAccessFile.getFD());
                randomAccessFile.close();
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        } else {
            FileDescriptor fileDescriptor = this.mFd;
            if (fileDescriptor != null) {
                _setOutputFile(fileDescriptor);
            } else {
                if (this.mFile == null) {
                    throw new IOException("No valid output file");
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.mFile, "rws");
                try {
                    _setOutputFile(randomAccessFile2.getFD());
                    randomAccessFile2.close();
                } catch (Throwable th2) {
                    randomAccessFile2.close();
                    throw th2;
                }
            }
        }
        _prepare();
    }

    public native void release();

    public void reset() {
        native_reset();
        this.mEventHandler.removeCallbacksAndMessages(null);
    }

    public native void resume();

    public void setAudioChannels(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Number of channels is not positive");
        }
        setParameter("audio-param-number-of-channels=" + i2);
    }

    public native void setAudioEncoder(int i2);

    public void setAudioEncodingBitRate(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Audio encoding bit rate is not positive");
        }
        setParameter("audio-param-encoding-bitrate=" + i2);
    }

    public void setAudioSamplingRate(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Audio sampling rate is not positive");
        }
        setParameter("audio-param-sampling-rate=" + i2);
    }

    public native void setAudioSource(int i2);

    public void setAuxiliaryOutputFile(FileDescriptor fileDescriptor) {
        Log.w(TAG, "setAuxiliaryOutputFile(FileDescriptor) is no longer supported.");
    }

    @Deprecated
    public native void setCamera(Camera camera);

    public void setCaptureRate(double d2) {
        setParameter("time-lapse-enable=1");
        setParameter("time-lapse-fps=" + d2);
    }

    public void setInputSurface(Surface surface) {
        if (!(surface instanceof MediaCodec.PersistentSurface)) {
            throw new IllegalArgumentException("not a PersistentSurface");
        }
        native_setInputSurface(surface);
    }

    public void setLocation(float f2, float f3) {
        int i2 = (int) (((double) (f2 * 10000.0f)) + 0.5d);
        int i3 = (int) (((double) (10000.0f * f3)) + 0.5d);
        if (i2 > 900000 || i2 < -900000) {
            throw new IllegalArgumentException("Latitude: " + f2 + " out of range.");
        }
        if (i3 > 1800000 || i3 < -1800000) {
            throw new IllegalArgumentException("Longitude: " + f3 + " out of range");
        }
        setParameter("param-geotag-latitude=" + i2);
        setParameter("param-geotag-longitude=" + i3);
    }

    public native void setMaxDuration(int i2);

    public native void setMaxFileSize(long j2);

    public void setNextOutputFile(FileDescriptor fileDescriptor) {
        _setNextOutputFile(fileDescriptor);
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOrientationHint(int i2) {
        if (i2 != 0 && i2 != 90 && i2 != 180 && i2 != 270) {
            throw new IllegalArgumentException(c.d("Unsupported angle: ", i2));
        }
        setParameter("video-param-rotation-angle-degrees=" + i2);
    }

    public void setOutputFile(FileDescriptor fileDescriptor) {
        this.mPath = null;
        this.mFile = null;
        this.mFd = fileDescriptor;
    }

    public native void setOutputFormat(int i2);

    public native void setParameter(String str);

    public void setPreviewDisplay(Surface surface) {
        this.mSurface = surface;
    }

    public void setProfile(CamcorderProfile camcorderProfile) {
        setOutputFormat(camcorderProfile.fileFormat);
        setVideoFrameRate(camcorderProfile.videoFrameRate);
        setVideoSize(camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight);
        setVideoEncodingBitRate(camcorderProfile.videoBitRate);
        setVideoEncoder(camcorderProfile.videoCodec);
        int i2 = camcorderProfile.quality;
        if (i2 < 1000 || i2 > 1007) {
            setAudioEncodingBitRate(camcorderProfile.audioBitRate);
            setAudioChannels(camcorderProfile.audioChannels);
            setAudioSamplingRate(camcorderProfile.audioSampleRate);
            setAudioEncoder(camcorderProfile.audioCodec);
        }
    }

    public void setSlowMotionRate(double d2) {
        setParameter("slow-motion-enable=1");
        setParameter("slow-motion-fps=" + d2);
    }

    public native void setVideoEncoder(int i2);

    public void setVideoEncodingBitRate(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Video encoding bit rate is not positive");
        }
        setParameter("video-param-encoding-bitrate=" + i2);
    }

    public void setVideoEncodingProfileLevel(int i2, int i3) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Video encoding profile is not positive");
        }
        if (i3 <= 0) {
            throw new IllegalArgumentException("Video encoding level is not positive");
        }
        setParameter("video-param-encoder-profile=" + i2);
        setParameter("video-param-encoder-level=" + i3);
    }

    public native void setVideoFrameRate(int i2);

    public native void setVideoSize(int i2, int i3);

    public native void setVideoSource(int i2);

    public native void start();

    public native void stop();

    public void setAuxiliaryOutputFile(String str) {
        Log.w(TAG, "setAuxiliaryOutputFile(String) is no longer supported.");
    }

    public void setNextOutputFile(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rws");
        try {
            _setNextOutputFile(randomAccessFile.getFD());
        } finally {
            randomAccessFile.close();
        }
    }

    public void setOutputFile(File file) {
        this.mPath = null;
        this.mFd = null;
        this.mFile = file;
    }

    public void setOutputFile(String str) {
        this.mFd = null;
        this.mFile = null;
        this.mPath = str;
    }
}
