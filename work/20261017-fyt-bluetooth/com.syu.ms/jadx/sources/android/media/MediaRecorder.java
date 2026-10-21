package android.media;

import android.app.ActivityThread;
import android.hardware.Camera;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.Surface;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class MediaRecorder {
    public static final int MEDIA_ERROR_SERVER_DIED = 100;
    public static final int MEDIA_RECORDER_ERROR_UNKNOWN = 1;
    public static final int MEDIA_RECORDER_INFO_MAX_DURATION_REACHED = 800;
    public static final int MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED = 801;
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
    private int mNativeContext;
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

        private AudioEncoder() {
        }
    }

    public final class AudioSource {
        public static final int CAMCORDER = 5;
        public static final int DEFAULT = 0;
        public static final int HOTWORD = 1999;
        public static final int MIC = 1;
        public static final int REMOTE_SUBMIX = 8;
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
                            Log.e(MediaRecorder.TAG, "Unknown message type " + message.what);
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
        public static final int MPEG_4 = 2;
        public static final int OUTPUT_FORMAT_MPEG2TS = 8;
        public static final int OUTPUT_FORMAT_RTP_AVP = 7;
        public static final int RAW_AMR = 3;
        public static final int THREE_GPP = 1;

        private OutputFormat() {
        }
    }

    public final class VideoEncoder {
        public static final int DEFAULT = 0;
        public static final int H263 = 1;
        public static final int H264 = 2;
        public static final int MPEG_4_SP = 3;

        private VideoEncoder() {
        }
    }

    public final class VideoSource {
        public static final int CAMERA = 1;
        public static final int DEFAULT = 0;
        public static final int GRALLOC_BUFFER = 2;

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
        native_setup(new WeakReference(this), ActivityThread.currentPackageName());
    }

    private native void _prepare();

    private native void _setOutputFile(FileDescriptor fileDescriptor, long j2, long j3);

    public static final int getAudioSourceMax() {
        return 8;
    }

    private final native void native_finalize();

    private static final native void native_init();

    private native void native_reset();

    private final native void native_setup(Object obj, String str);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        EventHandler eventHandler;
        MediaRecorder mediaRecorder = (MediaRecorder) ((WeakReference) obj).get();
        if (mediaRecorder == null || (eventHandler = mediaRecorder.mEventHandler) == null) {
            return;
        }
        mediaRecorder.mEventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj2));
    }

    private native void setParameter(String str);

    public void finalize() {
        native_finalize();
    }

    public native int getMaxAmplitude();

    public void prepare() throws IOException {
        if (this.mPath != null) {
            FileOutputStream fileOutputStream = new FileOutputStream(this.mPath);
            try {
                _setOutputFile(fileOutputStream.getFD(), 0L, 0L);
                fileOutputStream.close();
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } else {
            FileDescriptor fileDescriptor = this.mFd;
            if (fileDescriptor == null) {
                throw new IOException("No valid output file");
            }
            _setOutputFile(fileDescriptor, 0L, 0L);
        }
        _prepare();
    }

    public native void release();

    public void reset() {
        native_reset();
        this.mEventHandler.removeCallbacksAndMessages(null);
    }

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

    public native void setCamera(Camera camera);

    public void setCaptureRate(double d2) {
        setParameter("time-lapse-enable=1");
        setParameter("time-between-time-lapse-frame-capture=" + ((int) ((1.0d / d2) * 1000.0d)));
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

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOrientationHint(int i2) {
        if (i2 != 0 && i2 != 90 && i2 != 180 && i2 != 270) {
            throw new IllegalArgumentException("Unsupported angle: " + i2);
        }
        setParameter("video-param-rotation-angle-degrees=" + i2);
    }

    public void setOutputFile(FileDescriptor fileDescriptor) {
        this.mPath = null;
        this.mFd = fileDescriptor;
    }

    public native void setOutputFormat(int i2);

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

    public native void setVideoEncoder(int i2);

    public void setVideoEncodingBitRate(int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Video encoding bit rate is not positive");
        }
        setParameter("video-param-encoding-bitrate=" + i2);
    }

    public native void setVideoFrameRate(int i2);

    public native void setVideoSize(int i2, int i3);

    public native void setVideoSource(int i2);

    public native void start();

    public native void stop();

    public void setAuxiliaryOutputFile(String str) {
        Log.w(TAG, "setAuxiliaryOutputFile(String) is no longer supported.");
    }

    public void setOutputFile(String str) {
        this.mFd = null;
        this.mPath = str;
    }
}
