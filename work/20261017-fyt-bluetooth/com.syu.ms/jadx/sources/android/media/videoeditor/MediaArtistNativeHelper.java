package android.media.videoeditor;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.nio.IntBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Semaphore;

/* JADX INFO: loaded from: classes.dex */
class MediaArtistNativeHelper {
    private static final String AUDIO_TRACK_PCM_FILE = "AudioPcm.pcm";
    private static final int MAX_THUMBNAIL_PERMITTED = 8;
    public static final int PROCESSING_AUDIO_PCM = 1;
    public static final int PROCESSING_EXPORT = 20;
    public static final int PROCESSING_INTERMEDIATE1 = 11;
    public static final int PROCESSING_INTERMEDIATE2 = 12;
    public static final int PROCESSING_INTERMEDIATE3 = 13;
    public static final int PROCESSING_KENBURNS = 3;
    public static final int PROCESSING_NONE = 0;
    public static final int PROCESSING_TRANSITION = 2;
    private static final String TAG = "MediaArtistNativeHelper";
    public static final int TASK_ENCODING = 2;
    public static final int TASK_LOADING_SETTINGS = 1;
    private static final Paint sResizePaint;
    private String mAudioTrackPCMFilePath;
    private VideoEditor.ExportProgressListener mExportProgressListener;
    private ExtractAudioWaveformProgressListener mExtractAudioWaveformProgressListener;
    private boolean mIsFirstProgress;
    private final Semaphore mLock;
    private int mManualEditContext;
    private VideoEditor.MediaProcessingProgressListener mMediaProcessingProgressListener;
    private String mOutputFilename;
    private EditSettings mPreviewEditSettings;
    private long mPreviewProgress;
    private VideoEditor.PreviewProgressListener mPreviewProgressListener;
    private Object mProcessingObject;
    private int mProcessingState;
    private int mProgressToApp;
    private final String mProjectPath;
    private String mRenderPreviewOverlayFile;
    private int mRenderPreviewRenderingMode;
    private EditSettings mStoryBoardSettings;
    private final VideoEditor mVideoEditor;
    private PreviewClipProperties mClipProperties = null;
    private AudioSettings mAudioSettings = null;
    private AudioTrack mAudioTrack = null;
    private boolean mInvalidatePreviewArray = true;
    private boolean mRegenerateAudio = true;
    private String mExportFilename = null;
    private int mExportVideoCodec = 0;
    private int mExportAudioCodec = 0;
    private int mTotalClips = 0;
    private boolean mErrorFlagSet = false;

    public static class AlphaMagicSettings {
        public int blendingPercent;
        public String file;
        public boolean invertRotation;
        public int rgbHeight;
        public int rgbWidth;
    }

    public static class AudioEffect {
        public static final int FADE_IN = 8;
        public static final int FADE_OUT = 16;
        public static final int NONE = 0;
    }

    public final class AudioFormat {
        public static final int AAC = 2;
        public static final int AAC_PLUS = 3;
        public static final int AMR_NB = 1;
        public static final int ENHANCED_AAC_PLUS = 4;
        public static final int EVRC = 6;
        public static final int MP3 = 5;
        public static final int NO_AUDIO = 0;
        public static final int NULL_AUDIO = 254;
        public static final int PCM = 7;
        public static final int UNSUPPORTED_AUDIO = 255;

        public AudioFormat() {
        }
    }

    public final class AudioSamplingFrequency {
        public static final int FREQ_11025 = 11025;
        public static final int FREQ_12000 = 12000;
        public static final int FREQ_16000 = 16000;
        public static final int FREQ_22050 = 22050;
        public static final int FREQ_24000 = 24000;
        public static final int FREQ_32000 = 32000;
        public static final int FREQ_44100 = 44100;
        public static final int FREQ_48000 = 48000;
        public static final int FREQ_8000 = 8000;
        public static final int FREQ_DEFAULT = 0;

        public AudioSamplingFrequency() {
        }
    }

    public static class AudioSettings {
        public int ExtendedFs;
        public int Fs;
        public String Id;
        public boolean bInDucking_enable;
        public boolean bRemoveOriginal;
        public long beginCutTime;
        public int channels;
        public int ducking_lowVolume;
        public int ducking_threshold;
        public long endCutTime;
        public int fileType;
        public boolean loop;
        public String pFile;
        public String pcmFilePath;
        public long startMs;
        public int volume;
    }

    public static final class AudioTransition {
        public static final int CROSS_FADE = 1;
        public static final int NONE = 0;
    }

    public static class BackgroundMusicSettings {
        public long beginLoop;
        public int duckingThreshold;
        public boolean enableDucking;
        public long endLoop;
        public String file;
        public int fileType;
        public long insertionTime;
        public boolean isLooping;
        public int lowVolume;
        public int volumePercent;
    }

    public final class Bitrate {
        public static final int BR_128_KBPS = 128000;
        public static final int BR_12_2_KBPS = 12200;
        public static final int BR_16_KBPS = 16000;
        public static final int BR_192_KBPS = 192000;
        public static final int BR_24_KBPS = 24000;
        public static final int BR_256_KBPS = 256000;
        public static final int BR_288_KBPS = 288000;
        public static final int BR_2_MBPS = 2000000;
        public static final int BR_32_KBPS = 32000;
        public static final int BR_384_KBPS = 384000;
        public static final int BR_48_KBPS = 48000;
        public static final int BR_512_KBPS = 512000;
        public static final int BR_5_MBPS = 5000000;
        public static final int BR_64_KBPS = 64000;
        public static final int BR_800_KBPS = 800000;
        public static final int BR_8_MBPS = 8000000;
        public static final int BR_96_KBPS = 96000;
        public static final int BR_9_2_KBPS = 9200;
        public static final int UNDEFINED = 0;
        public static final int VARIABLE = -1;

        public Bitrate() {
        }
    }

    public static class ClipSettings {
        public int beginCutPercent;
        public int beginCutTime;
        public String clipDecodedPath;
        public String clipOriginalPath;
        public String clipPath;
        public int endCutPercent;
        public int endCutTime;
        public int fileType;
        public int mediaRendering;
        public boolean panZoomEnabled;
        public int panZoomPercentEnd;
        public int panZoomPercentStart;
        public int panZoomTopLeftXEnd;
        public int panZoomTopLeftXStart;
        public int panZoomTopLeftYEnd;
        public int panZoomTopLeftYStart;
        public int rgbHeight;
        public int rgbWidth;
        public int rotationDegree;
    }

    public static class EditSettings {
        public int audioBitrate;
        public int audioChannels;
        public int audioFormat;
        public int audioSamplingFreq;
        public BackgroundMusicSettings backgroundMusicSettings;
        public ClipSettings[] clipSettingsArray;
        public EffectSettings[] effectSettingsArray;
        public int maxFileSize;
        public String outputFile;
        public int primaryTrackVolume;
        public TransitionSettings[] transitionSettingsArray;
        public int videoBitrate;
        public int videoFormat;
        public int videoFrameRate;
        public int videoFrameSize;
        public int videoLevel;
        public int videoProfile;
    }

    public static class EffectSettings {
        public int alphaBlendingEndPercent;
        public int alphaBlendingFadeInTimePercent;
        public int alphaBlendingFadeOutTimePercent;
        public int alphaBlendingMiddlePercent;
        public int alphaBlendingStartPercent;
        public int audioEffectType;
        public int bitmapType;
        public int duration;
        public int durationPercent;
        public int fiftiesFrameRate;
        public int[] framingBuffer;
        public String framingFile;
        public boolean framingResize;
        public int framingScaledSize;
        public int height;
        public int rgb16InputColor;
        public int startPercent;
        public int startTime;
        public String text;
        public int textBufferHeight;
        public int textBufferWidth;
        public String textRenderingData;
        public int topLeftX;
        public int topLeftY;
        public int videoEffectType;
        public int width;
    }

    public final class FileType {
        public static final int AMR = 2;
        public static final int GIF = 7;
        public static final int JPG = 5;
        public static final int M4V = 10;
        public static final int MP3 = 3;
        public static final int MP4 = 1;
        public static final int PCM = 4;
        public static final int PNG = 8;
        public static final int THREE_GPP = 0;
        public static final int UNSUPPORTED = 255;

        public FileType() {
        }
    }

    public final class MediaRendering {
        public static final int BLACK_BORDERS = 2;
        public static final int CROPPING = 1;
        public static final int RESIZING = 0;

        public MediaRendering() {
        }
    }

    public interface NativeGetPixelsListCallback {
        void onThumbnail(int i2);
    }

    public interface OnProgressUpdateListener {
        void OnProgressUpdate(int i2, int i3);
    }

    public static class PreviewClipProperties {
        public Properties[] clipProperties;
    }

    public static class PreviewClips {
        public long beginPlayTime;
        public String clipPath;
        public long endPlayTime;
        public int fileType;
        public int mediaRendering;
    }

    public static class PreviewSettings {
        public EffectSettings[] effectSettingsArray;
        public PreviewClips[] previewClipsArray;
    }

    public static class Properties {
        public String Id;
        public int audioBitrate;
        public int audioChannels;
        public int audioDuration;
        public int audioFormat;
        public int audioSamplingFrequency;
        public int audioVolumeValue;
        public float averageFrameRate;
        public int duration;
        public int fileType;
        public int height;
        public int level;
        public boolean levelSupported;
        public int profile;
        public boolean profileSupported;
        public int videoBitrate;
        public int videoDuration;
        public int videoFormat;
        public int videoRotation;
        public int width;
    }

    public final class Result {
        public static final int ERR_ADDCTS_HIGHER_THAN_VIDEO_DURATION = 40;
        public static final int ERR_ADDVOLUME_EQUALS_ZERO = 39;
        public static final int ERR_ALLOC = 62;
        public static final int ERR_AMR_EDITING_UNSUPPORTED = 19;
        public static final int ERR_ANALYSIS_DATA_SIZE_TOO_SMALL = 15;
        public static final int ERR_AUDIOBITRATE_TOO_HIGH = 121;
        public static final int ERR_AUDIOBITRATE_TOO_LOW = 119;
        public static final int ERR_AUDIO_CANNOT_BE_MIXED = 47;
        public static final int ERR_AUDIO_CONVERSION_FAILED = 114;
        public static final int ERR_AUDIO_MIXING_MP3_UNSUPPORTED = 44;
        public static final int ERR_AUDIO_MIXING_UNSUPPORTED = 43;
        public static final int ERR_BAD_CONTEXT = 63;
        public static final int ERR_BAD_OPTION_ID = 66;
        public static final int ERR_BAD_STREAM_ID = 65;
        public static final int ERR_BEGIN_CUT_EQUALS_END_CUT = 115;
        public static final int ERR_BEGIN_CUT_LARGER_THAN_DURATION = 12;
        public static final int ERR_BEGIN_CUT_LARGER_THAN_END_CUT = 13;
        public static final int ERR_BUFFER_OUT_TOO_SMALL = 2;
        public static final int ERR_CLOCK_BAD_REF_YEAR = 56;
        public static final int ERR_CONTEXT_FAILED = 64;
        public static final int ERR_DECODER_H263_NOT_BASELINE = 135;
        public static final int ERR_DECODER_H263_PROFILE_NOT_SUPPORTED = 134;
        public static final int ERR_DIR_NO_MORE_ENTRY = 59;
        public static final int ERR_DIR_OPEN_FAILED = 57;
        public static final int ERR_DIR_READ_FAILED = 58;
        public static final int ERR_DURATION_IS_NULL = 111;
        public static final int ERR_EDITING_NO_SUPPORTED_STREAM_IN_FILE = 29;
        public static final int ERR_EDITING_NO_SUPPORTED_VIDEO_STREAM_IN_FILE = 30;
        public static final int ERR_EDITING_UNSUPPORTED_AUDIO_FORMAT = 28;
        public static final int ERR_EDITING_UNSUPPORTED_H263_PROFILE = 25;
        public static final int ERR_EDITING_UNSUPPORTED_MPEG4_PROFILE = 26;
        public static final int ERR_EDITING_UNSUPPORTED_MPEG4_RVLC = 27;
        public static final int ERR_EDITING_UNSUPPORTED_VIDEO_FORMAT = 24;
        public static final int ERR_ENCODER_ACCES_UNIT_ERROR = 23;
        public static final int ERR_END_CUT_SMALLER_THAN_BEGIN_CUT = 116;
        public static final int ERR_EXTERNAL_EFFECT_NULL = 10;
        public static final int ERR_EXTERNAL_TRANSITION_NULL = 11;
        public static final int ERR_FEATURE_UNSUPPORTED_WITH_AAC = 46;
        public static final int ERR_FEATURE_UNSUPPORTED_WITH_AUDIO_TRACK = 45;
        public static final int ERR_FEATURE_UNSUPPORTED_WITH_EVRC = 49;
        public static final int ERR_FILE_BAD_MODE_ACCESS = 80;
        public static final int ERR_FILE_INVALID_POSITION = 81;
        public static final int ERR_FILE_LOCKED = 79;
        public static final int ERR_FILE_NOT_FOUND = 1;
        public static final int ERR_H263_FORBIDDEN_IN_MP4_FILE = 112;
        public static final int ERR_H263_PROFILE_NOT_SUPPORTED = 51;
        public static final int ERR_INCOMPATIBLE_VIDEO_DATA_PARTITIONING = 36;
        public static final int ERR_INCOMPATIBLE_VIDEO_FORMAT = 33;
        public static final int ERR_INCOMPATIBLE_VIDEO_FRAME_SIZE = 34;
        public static final int ERR_INCOMPATIBLE_VIDEO_TIME_SCALE = 35;
        public static final int ERR_INPUT_AUDIO_AU_TOO_LARGE = 21;
        public static final int ERR_INPUT_AUDIO_CORRUPTED_AU = 22;
        public static final int ERR_INPUT_FILE_CONTAINS_NO_SUPPORTED_STREAM = 103;
        public static final int ERR_INPUT_VIDEO_AU_TOO_LARGE = 20;
        public static final int ERR_INTERNAL = 255;
        public static final int ERR_INVALID_3GPP_FILE = 16;
        public static final int ERR_INVALID_AAC_SAMPLING_FREQUENCY = 113;
        public static final int ERR_INVALID_AUDIO_EFFECT_TYPE = 6;
        public static final int ERR_INVALID_AUDIO_TRANSITION_TYPE = 8;
        public static final int ERR_INVALID_CLIP_ANALYSIS_PLATFORM = 32;
        public static final int ERR_INVALID_CLIP_ANALYSIS_VERSION = 31;
        public static final int ERR_INVALID_EFFECT_KIND = 4;
        public static final int ERR_INVALID_FILE_TYPE = 3;
        public static final int ERR_INVALID_INPUT_FILE = 104;
        public static final int ERR_INVALID_VIDEO_EFFECT_TYPE = 5;
        public static final int ERR_INVALID_VIDEO_ENCODING_FRAME_RATE = 9;
        public static final int ERR_INVALID_VIDEO_FRAME_RATE_FOR_H263 = 110;
        public static final int ERR_INVALID_VIDEO_FRAME_SIZE_FOR_H263 = 109;
        public static final int ERR_INVALID_VIDEO_TRANSITION_TYPE = 7;
        public static final int ERR_MAXFILESIZE_TOO_SMALL = 117;
        public static final int ERR_NOMORE_SPACE_FOR_FILE = 136;
        public static final int ERR_NOT_IMPLEMENTED = 69;
        public static final int ERR_NO_SUPPORTED_STREAM_IN_FILE = 38;
        public static final int ERR_NO_SUPPORTED_VIDEO_STREAM_IN_FILE = 52;
        public static final int ERR_ONLY_AMRNB_INPUT_CAN_BE_MIXED = 48;
        public static final int ERR_OUTPUT_FILE_SIZE_TOO_SMALL = 122;
        public static final int ERR_OVERLAPPING_TRANSITIONS = 14;
        public static final int ERR_PARAMETER = 60;
        public static final int ERR_READER_UNKNOWN_STREAM_TYPE = 123;
        public static final int ERR_READ_ONLY = 68;
        public static final int ERR_STATE = 61;
        public static final int ERR_STR_BAD_ARGS = 97;
        public static final int ERR_STR_BAD_STRING = 94;
        public static final int ERR_STR_CONV_FAILED = 95;
        public static final int ERR_STR_OVERFLOW = 96;
        public static final int ERR_THREAD_NOT_STARTED = 100;
        public static final int ERR_UNDEFINED_AUDIO_TRACK_FILE_FORMAT = 41;
        public static final int ERR_UNDEFINED_OUTPUT_AUDIO_FORMAT = 108;
        public static final int ERR_UNDEFINED_OUTPUT_VIDEO_FORMAT = 105;
        public static final int ERR_UNDEFINED_OUTPUT_VIDEO_FRAME_RATE = 107;
        public static final int ERR_UNDEFINED_OUTPUT_VIDEO_FRAME_SIZE = 106;
        public static final int ERR_UNSUPPORTED_ADDED_AUDIO_STREAM = 42;
        public static final int ERR_UNSUPPORTED_INPUT_AUDIO_FORMAT = 18;
        public static final int ERR_UNSUPPORTED_INPUT_VIDEO_FORMAT = 17;
        public static final int ERR_UNSUPPORTED_MEDIA_TYPE = 70;
        public static final int ERR_UNSUPPORTED_MP3_ASSEMBLY = 37;
        public static final int ERR_VIDEOBITRATE_TOO_HIGH = 120;
        public static final int ERR_VIDEOBITRATE_TOO_LOW = 118;
        public static final int ERR_WRITE_ONLY = 67;
        public static final int NO_ERROR = 0;
        public static final int WAR_BUFFER_FULL = 76;
        public static final int WAR_DEBLOCKING_FILTER_NOT_IMPLEMENTED = 133;
        public static final int WAR_INVALID_TIME = 73;
        public static final int WAR_MAX_OUTPUT_SIZE_EXCEEDED = 54;
        public static final int WAR_MEDIATYPE_NOT_SUPPORTED = 102;
        public static final int WAR_NO_DATA_YET = 71;
        public static final int WAR_NO_MORE_AU = 74;
        public static final int WAR_NO_MORE_STREAM = 72;
        public static final int WAR_READER_INFORMATION_NOT_PRESENT = 125;
        public static final int WAR_READER_NO_METADATA = 124;
        public static final int WAR_REDIRECT = 77;
        public static final int WAR_STR_NOT_FOUND = 99;
        public static final int WAR_STR_OVERFLOW = 98;
        public static final int WAR_TIMESCALE_TOO_BIG = 55;
        public static final int WAR_TIME_OUT = 75;
        public static final int WAR_TOO_MUCH_STREAMS = 78;
        public static final int WAR_TRANSCODING_DONE = 101;
        public static final int WAR_TRANSCODING_NECESSARY = 53;
        public static final int WAR_VIDEORENDERER_NO_NEW_FRAME = 132;
        public static final int WAR_WRITER_STOP_REQ = 131;

        public Result() {
        }
    }

    public static final class SlideDirection {
        public static final int BOTTOM_OUT_TOP_IN = 3;
        public static final int LEFT_OUT_RIGTH_IN = 1;
        public static final int RIGHT_OUT_LEFT_IN = 0;
        public static final int TOP_OUT_BOTTOM_IN = 2;
    }

    public static class SlideTransitionSettings {
        public int direction;
    }

    public static final class TransitionBehaviour {
        public static final int FAST_MIDDLE = 4;
        public static final int LINEAR = 1;
        public static final int SLOW_MIDDLE = 3;
        public static final int SPEED_DOWN = 2;
        public static final int SPEED_UP = 0;
    }

    public static class TransitionSettings {
        public AlphaMagicSettings alphaSettings;
        public int audioTransitionType;
        public int duration;
        public SlideTransitionSettings slideSettings;
        public int transitionBehaviour;
        public int videoTransitionType;
    }

    public final class Version {
        private static final int VIDEOEDITOR_MAJOR_VERSION = 0;
        private static final int VIDEOEDITOR_MINOR_VERSION = 0;
        private static final int VIDEOEDITOR_REVISION_VERSION = 1;
        public int major;
        public int minor;
        public int revision;

        public Version() {
        }

        public Version getVersion() {
            Version version = MediaArtistNativeHelper.this.new Version();
            version.major = 0;
            version.minor = 0;
            version.revision = 1;
            return version;
        }
    }

    public static class VideoEffect {
        public static final int BLACK_AND_WHITE = 257;
        public static final int COLORRGB16 = 267;
        public static final int EXTERNAL = 256;
        public static final int FADE_FROM_BLACK = 8;
        public static final int FADE_TO_BLACK = 16;
        public static final int FIFTIES = 266;
        public static final int FRAMING = 262;
        public static final int GRADIENT = 268;
        public static final int GREEN = 259;
        public static final int NEGATIVE = 261;
        public static final int NONE = 0;
        public static final int PINK = 258;
        public static final int SEPIA = 260;
        public static final int TEXT = 263;
        public static final int ZOOM_IN = 264;
        public static final int ZOOM_OUT = 265;
    }

    public final class VideoFormat {
        public static final int H263 = 1;
        public static final int H264 = 2;
        public static final int MPEG4 = 3;
        public static final int NO_VIDEO = 0;
        public static final int NULL_VIDEO = 254;
        public static final int UNSUPPORTED = 255;

        public VideoFormat() {
        }
    }

    public final class VideoFrameRate {
        public static final int FR_10_FPS = 2;
        public static final int FR_12_5_FPS = 3;
        public static final int FR_15_FPS = 4;
        public static final int FR_20_FPS = 5;
        public static final int FR_25_FPS = 6;
        public static final int FR_30_FPS = 7;
        public static final int FR_5_FPS = 0;
        public static final int FR_7_5_FPS = 1;

        public VideoFrameRate() {
        }
    }

    public final class VideoFrameSize {
        public static final int CIF = 4;
        public static final int NTSC = 7;
        public static final int QCIF = 2;
        public static final int QQVGA = 1;
        public static final int QVGA = 3;
        public static final int S720p = 12;
        public static final int SIZE_UNDEFINED = -1;
        public static final int SQCIF = 0;
        public static final int V1080p = 13;
        public static final int V720p = 10;
        public static final int VGA = 5;
        public static final int W720p = 11;
        public static final int WVGA = 6;
        public static final int WVGA16x9 = 9;
        public static final int nHD = 8;

        public VideoFrameSize() {
        }
    }

    public static class VideoTransition {
        public static final int ALPHA_MAGIC = 257;
        public static final int CROSS_FADE = 1;
        public static final int EXTERNAL = 256;
        public static final int FADE_BLACK = 259;
        public static final int NONE = 0;
        public static final int SLIDE_TRANSITION = 258;
    }

    static {
        System.loadLibrary("videoeditor_jni");
        sResizePaint = new Paint(2);
    }

    public MediaArtistNativeHelper(String str, Semaphore semaphore, VideoEditor videoEditor) {
        this.mProjectPath = str;
        if (videoEditor == null) {
            this.mVideoEditor = null;
            throw new IllegalArgumentException("video editor object is null");
        }
        this.mVideoEditor = videoEditor;
        if (this.mStoryBoardSettings == null) {
            this.mStoryBoardSettings = new EditSettings();
        }
        this.mLock = semaphore;
        _init(str, "null");
        this.mAudioTrackPCMFilePath = null;
    }

    private native void _init(String str, String str2);

    private void adjustMediaItemBoundary(ClipSettings clipSettings, Properties properties, MediaItem mediaItem) {
        if (mediaItem.getBeginTransition() != null && mediaItem.getBeginTransition().getDuration() > 0 && mediaItem.getEndTransition() != null && mediaItem.getEndTransition().getDuration() > 0) {
            clipSettings.beginCutTime = (int) (((long) clipSettings.beginCutTime) + mediaItem.getBeginTransition().getDuration());
            clipSettings.endCutTime = (int) (((long) clipSettings.endCutTime) - mediaItem.getEndTransition().getDuration());
        } else if (mediaItem.getBeginTransition() == null && mediaItem.getEndTransition() != null && mediaItem.getEndTransition().getDuration() > 0) {
            clipSettings.endCutTime = (int) (((long) clipSettings.endCutTime) - mediaItem.getEndTransition().getDuration());
        } else if (mediaItem.getEndTransition() == null && mediaItem.getBeginTransition() != null && mediaItem.getBeginTransition().getDuration() > 0) {
            clipSettings.beginCutTime = (int) (((long) clipSettings.beginCutTime) + mediaItem.getBeginTransition().getDuration());
        }
        int i2 = clipSettings.endCutTime;
        int i3 = clipSettings.beginCutTime;
        properties.duration = i2 - i3;
        if (properties.videoDuration != 0) {
            properties.videoDuration = i2 - i3;
        }
        if (properties.audioDuration != 0) {
            properties.audioDuration = i2 - i3;
        }
    }

    private void adjustVolume(MediaItem mediaItem, PreviewClipProperties previewClipProperties, int i2) {
        if (!(mediaItem instanceof MediaVideoItem)) {
            if (mediaItem instanceof MediaImageItem) {
                this.mClipProperties.clipProperties[i2].audioVolumeValue = 0;
            }
        } else {
            MediaVideoItem mediaVideoItem = (MediaVideoItem) mediaItem;
            if (mediaVideoItem.isMuted()) {
                this.mClipProperties.clipProperties[i2].audioVolumeValue = 0;
            } else {
                this.mClipProperties.clipProperties[i2].audioVolumeValue = mediaVideoItem.getVolume();
            }
        }
    }

    private void checkOddSizeImage(MediaItem mediaItem, PreviewClipProperties previewClipProperties, int i2) {
        if (mediaItem instanceof MediaImageItem) {
            Properties[] propertiesArr = this.mClipProperties.clipProperties;
            int i3 = propertiesArr[i2].width;
            int i4 = propertiesArr[i2].height;
            if (i3 % 2 != 0) {
                i3--;
            }
            if (i4 % 2 != 0) {
                i4--;
            }
            propertiesArr[i2].width = i3;
            propertiesArr[i2].height = i4;
        }
    }

    private int findVideoBitrate(int i2) {
        switch (i2) {
            case 0:
            case 1:
            case 2:
                return 128000;
            case 3:
            case 4:
                return 384000;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return 2000000;
            case 10:
            case 11:
            case 12:
                return 5000000;
            default:
                return 8000000;
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0047  */
    private int findVideoResolution(int i2, int i3) {
        int i4 = 5;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            i4 = -1;
                        } else if (i3 == 144) {
                            i4 = 2;
                        } else if (i3 == 288) {
                            i4 = 4;
                        } else {
                            i4 = -1;
                        }
                    } else if (i3 == 480) {
                        i4 = 6;
                    } else {
                        i4 = -1;
                    }
                } else if (i3 != 480) {
                    if (i3 == 720) {
                        i4 = 12;
                    } else {
                        i4 = -1;
                    }
                }
            } else if (i3 == 480) {
                i4 = 9;
            } else if (i3 == 720) {
                i4 = 10;
            } else if (i3 == 1080) {
                i4 = 13;
            } else {
                i4 = -1;
            }
        } else if (i3 == 480) {
            i4 = 7;
        } else if (i3 == 720) {
            i4 = 11;
        } else {
            i4 = -1;
        }
        if (i4 != -1) {
            return i4;
        }
        Pair<Integer, Integer>[] supportedResolutions = MediaProperties.getSupportedResolutions(this.mVideoEditor.getAspectRatio());
        return findVideoResolution(this.mVideoEditor.getAspectRatio(), supportedResolutions[supportedResolutions.length - 1].second.intValue());
    }

    private void generateTransition(Transition transition, EditSettings editSettings, PreviewClipProperties previewClipProperties, int i2) {
        if (!transition.isGenerated()) {
            transition.generate();
        }
        editSettings.clipSettingsArray[i2] = new ClipSettings();
        editSettings.clipSettingsArray[i2].clipPath = transition.getFilename();
        ClipSettings[] clipSettingsArr = editSettings.clipSettingsArray;
        clipSettingsArr[i2].fileType = 0;
        clipSettingsArr[i2].beginCutTime = 0;
        clipSettingsArr[i2].endCutTime = (int) transition.getDuration();
        editSettings.clipSettingsArray[i2].mediaRendering = 2;
        try {
            previewClipProperties.clipProperties[i2] = getMediaProperties(transition.getFilename());
            Properties[] propertiesArr = previewClipProperties.clipProperties;
            propertiesArr[i2].Id = null;
            propertiesArr[i2].audioVolumeValue = 100;
            propertiesArr[i2].duration = (int) transition.getDuration();
            Properties[] propertiesArr2 = previewClipProperties.clipProperties;
            if (propertiesArr2[i2].videoDuration != 0) {
                propertiesArr2[i2].videoDuration = (int) transition.getDuration();
            }
            Properties[] propertiesArr3 = previewClipProperties.clipProperties;
            if (propertiesArr3[i2].audioDuration != 0) {
                propertiesArr3[i2].audioDuration = (int) transition.getDuration();
            }
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unsupported file or file not found");
        }
    }

    private int getEffectColorType(EffectColor effectColor) {
        int type = effectColor.getType();
        if (type == 1) {
            if (effectColor.getColor() == 65280) {
                return 259;
            }
            if (effectColor.getColor() == 16737996) {
                return 258;
            }
            return effectColor.getColor() == 8355711 ? 257 : 267;
        }
        if (type == 2) {
            return 268;
        }
        if (type == 3) {
            return 260;
        }
        if (type != 4) {
            return type != 5 ? -1 : 266;
        }
        return 261;
    }

    private int getTotalEffects(List<MediaItem> list) {
        int size = 0;
        for (MediaItem mediaItem : list) {
            size = size + mediaItem.getAllEffects().size() + mediaItem.getAllOverlays().size();
            Iterator<Effect> it = mediaItem.getAllEffects().iterator();
            while (it.hasNext()) {
                if (it.next() instanceof EffectKenBurns) {
                    size--;
                }
            }
        }
        return size;
    }

    private int getTransitionResolution(MediaItem mediaItem, MediaItem mediaItem2) {
        int scaledHeight;
        int scaledHeight2 = 0;
        if (mediaItem != null && mediaItem2 != null) {
            if (mediaItem instanceof MediaVideoItem) {
                scaledHeight = mediaItem.getHeight();
            } else {
                scaledHeight = mediaItem instanceof MediaImageItem ? ((MediaImageItem) mediaItem).getScaledHeight() : 0;
            }
            if (mediaItem2 instanceof MediaVideoItem) {
                scaledHeight2 = mediaItem2.getHeight();
            } else if (mediaItem2 instanceof MediaImageItem) {
                scaledHeight2 = ((MediaImageItem) mediaItem2).getScaledHeight();
            }
            return scaledHeight > scaledHeight2 ? findVideoResolution(this.mVideoEditor.getAspectRatio(), scaledHeight) : findVideoResolution(this.mVideoEditor.getAspectRatio(), scaledHeight2);
        }
        if (mediaItem == null && mediaItem2 != null) {
            if (mediaItem2 instanceof MediaVideoItem) {
                scaledHeight2 = mediaItem2.getHeight();
            } else if (mediaItem2 instanceof MediaImageItem) {
                scaledHeight2 = ((MediaImageItem) mediaItem2).getScaledHeight();
            }
            return findVideoResolution(this.mVideoEditor.getAspectRatio(), scaledHeight2);
        }
        if (mediaItem == null || mediaItem2 != null) {
            return 0;
        }
        if (mediaItem instanceof MediaVideoItem) {
            scaledHeight2 = mediaItem.getHeight();
        } else if (mediaItem instanceof MediaImageItem) {
            scaledHeight2 = ((MediaImageItem) mediaItem).getScaledHeight();
        }
        return findVideoResolution(this.mVideoEditor.getAspectRatio(), scaledHeight2);
    }

    private static native Version getVersion();

    private void lock() throws InterruptedException {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "lock: grabbing semaphore", new Throwable());
        }
        this.mLock.acquire();
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "lock: grabbed semaphore");
        }
    }

    private native void nativeClearSurface(Surface surface);

    private native int nativeGenerateAudioGraph(String str, String str2, int i2, int i3, int i4);

    private native int nativeGenerateClip(EditSettings editSettings);

    private native int nativeGenerateRawAudio(String str, String str2);

    private native int nativeGetPixels(String str, int[] iArr, int i2, int i3, long j2);

    private native int nativeGetPixelsList(String str, int[] iArr, int i2, int i3, int i4, long j2, long j3, int[] iArr2, NativeGetPixelsListCallback nativeGetPixelsListCallback);

    private native void nativePopulateSettings(EditSettings editSettings, PreviewClipProperties previewClipProperties, AudioSettings audioSettings);

    private native int nativeRenderMediaItemPreviewFrame(Surface surface, String str, int i2, int i3, int i4, int i5, long j2);

    private native int nativeRenderPreviewFrame(Surface surface, long j2, int i2, int i3);

    private native void nativeStartPreview(Surface surface, long j2, long j3, int i2, boolean z2);

    private native int nativeStopPreview();

    private void onAudioGraphExtractProgressUpdate(int i2, boolean z2) {
        ExtractAudioWaveformProgressListener extractAudioWaveformProgressListener = this.mExtractAudioWaveformProgressListener;
        if (extractAudioWaveformProgressListener == null || i2 <= 0) {
            return;
        }
        extractAudioWaveformProgressListener.onProgress(i2);
    }

    private void onPreviewProgressUpdate(int i2, boolean z2, boolean z3, String str, int i3, int i4) {
        VideoEditor.OverlayData overlayData;
        VideoEditor.PreviewProgressListener previewProgressListener = this.mPreviewProgressListener;
        if (previewProgressListener != null) {
            if (this.mIsFirstProgress) {
                previewProgressListener.onStart(this.mVideoEditor);
                this.mIsFirstProgress = false;
            }
            if (z3) {
                overlayData = new VideoEditor.OverlayData();
                if (str != null) {
                    overlayData.set(BitmapFactory.decodeFile(str), i3);
                } else {
                    overlayData.setClear();
                }
            } else {
                overlayData = null;
            }
            if (i2 != 0) {
                this.mPreviewProgress = i2;
            }
            if (z2) {
                this.mPreviewProgressListener.onStop(this.mVideoEditor);
            } else if (i4 != 0) {
                this.mPreviewProgressListener.onError(this.mVideoEditor, i4);
            } else {
                this.mPreviewProgressListener.onProgress(this.mVideoEditor, i2, overlayData);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0069  */
    private void onProgressUpdate(int i2, int i3) {
        int i4 = this.mProcessingState;
        if (i4 == 20) {
            VideoEditor.ExportProgressListener exportProgressListener = this.mExportProgressListener;
            if (exportProgressListener == null || this.mProgressToApp >= i3) {
                return;
            }
            exportProgressListener.onProgress(this.mVideoEditor, this.mOutputFilename, i3);
            this.mProgressToApp = i3;
            return;
        }
        int i5 = i4 == 1 ? 2 : 1;
        if (i4 != 1 && i4 != 2 && i4 != 3) {
            switch (i4) {
                case 11:
                    if (i3 == 0 && this.mProgressToApp != 0) {
                        this.mProgressToApp = 0;
                    }
                    if (i3 == 0 && this.mProgressToApp == 0) {
                        i3 = 0;
                    } else {
                        i3 /= 4;
                    }
                    break;
                case 12:
                    if (i3 == 0 && this.mProgressToApp == 0) {
                        i3 = 0;
                    } else {
                        i3 = (i3 / 4) + 25;
                    }
                    break;
                case 13:
                    if (i3 == 0 && this.mProgressToApp == 0) {
                        i3 = 0;
                    } else {
                        i3 = (i3 / 2) + 50;
                    }
                    break;
                default:
                    Log.e(TAG, "ERROR unexpected State=" + this.mProcessingState);
                    break;
            }
        }
        if (this.mProgressToApp != i3 && i3 != 0) {
            this.mProgressToApp = i3;
            VideoEditor.MediaProcessingProgressListener mediaProcessingProgressListener = this.mMediaProcessingProgressListener;
            if (mediaProcessingProgressListener != null) {
                mediaProcessingProgressListener.onProgress(this.mProcessingObject, i5, i3);
            }
        }
        if (this.mProgressToApp == 0) {
            VideoEditor.MediaProcessingProgressListener mediaProcessingProgressListener2 = this.mMediaProcessingProgressListener;
            if (mediaProcessingProgressListener2 != null) {
                mediaProcessingProgressListener2.onProgress(this.mProcessingObject, i5, i3);
            }
            this.mProgressToApp = 1;
        }
    }

    private void populateBackgroundMusicProperties(List<AudioTrack> list) {
        if (list.size() == 1) {
            this.mAudioTrack = list.get(0);
        } else {
            this.mAudioTrack = null;
        }
        if (this.mAudioTrack == null) {
            this.mAudioSettings = null;
            this.mPreviewEditSettings.backgroundMusicSettings = null;
            this.mAudioTrackPCMFilePath = null;
            return;
        }
        this.mAudioSettings = new AudioSettings();
        new Properties();
        AudioSettings audioSettings = this.mAudioSettings;
        audioSettings.pFile = null;
        audioSettings.Id = this.mAudioTrack.getId();
        try {
            Properties mediaProperties = getMediaProperties(this.mAudioTrack.getFilename());
            AudioSettings audioSettings2 = this.mAudioSettings;
            audioSettings2.bRemoveOriginal = false;
            audioSettings2.channels = mediaProperties.audioChannels;
            audioSettings2.Fs = mediaProperties.audioSamplingFrequency;
            audioSettings2.loop = this.mAudioTrack.isLooping();
            AudioSettings audioSettings3 = this.mAudioSettings;
            audioSettings3.ExtendedFs = 0;
            audioSettings3.pFile = this.mAudioTrack.getFilename();
            this.mAudioSettings.startMs = this.mAudioTrack.getStartTime();
            this.mAudioSettings.beginCutTime = this.mAudioTrack.getBoundaryBeginTime();
            this.mAudioSettings.endCutTime = this.mAudioTrack.getBoundaryEndTime();
            if (this.mAudioTrack.isMuted()) {
                this.mAudioSettings.volume = 0;
            } else {
                this.mAudioSettings.volume = this.mAudioTrack.getVolume();
            }
            AudioSettings audioSettings4 = this.mAudioSettings;
            audioSettings4.fileType = mediaProperties.fileType;
            audioSettings4.ducking_lowVolume = this.mAudioTrack.getDuckedTrackVolume();
            this.mAudioSettings.ducking_threshold = this.mAudioTrack.getDuckingThreshhold();
            this.mAudioSettings.bInDucking_enable = this.mAudioTrack.isDuckingEnabled();
            String str = String.format(this.mProjectPath + "/" + AUDIO_TRACK_PCM_FILE, new Object[0]);
            this.mAudioTrackPCMFilePath = str;
            this.mAudioSettings.pcmFilePath = str;
            this.mPreviewEditSettings.backgroundMusicSettings = new BackgroundMusicSettings();
            BackgroundMusicSettings backgroundMusicSettings = this.mPreviewEditSettings.backgroundMusicSettings;
            backgroundMusicSettings.file = this.mAudioTrackPCMFilePath;
            backgroundMusicSettings.fileType = mediaProperties.fileType;
            backgroundMusicSettings.insertionTime = this.mAudioTrack.getStartTime();
            this.mPreviewEditSettings.backgroundMusicSettings.volumePercent = this.mAudioTrack.getVolume();
            this.mPreviewEditSettings.backgroundMusicSettings.beginLoop = this.mAudioTrack.getBoundaryBeginTime();
            this.mPreviewEditSettings.backgroundMusicSettings.endLoop = this.mAudioTrack.getBoundaryEndTime();
            this.mPreviewEditSettings.backgroundMusicSettings.enableDucking = this.mAudioTrack.isDuckingEnabled();
            this.mPreviewEditSettings.backgroundMusicSettings.duckingThreshold = this.mAudioTrack.getDuckingThreshhold();
            this.mPreviewEditSettings.backgroundMusicSettings.lowVolume = this.mAudioTrack.getDuckedTrackVolume();
            this.mPreviewEditSettings.backgroundMusicSettings.isLooping = this.mAudioTrack.isLooping();
            this.mPreviewEditSettings.primaryTrackVolume = 100;
            this.mProcessingState = 1;
            this.mProcessingObject = this.mAudioTrack;
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unsupported file or file not found");
        }
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0094 A[LOOP:0: B:27:0x008e->B:29:0x0094, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:33:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:39:0x00c5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:41:0x00b5 A[SYNTHETIC] */
    private int populateEffects(MediaItem mediaItem, EffectSettings[] effectSettingsArr, int i2, int i3, int i4, int i5) {
        long j2;
        long duration;
        Iterator<Overlay> it;
        if (mediaItem.getBeginTransition() == null || mediaItem.getBeginTransition().getDuration() <= 0 || mediaItem.getEndTransition() == null || mediaItem.getEndTransition().getDuration() <= 0) {
            if (mediaItem.getBeginTransition() == null && mediaItem.getEndTransition() != null && mediaItem.getEndTransition().getDuration() > 0) {
                j2 = i4;
                duration = mediaItem.getEndTransition().getDuration();
            } else if (mediaItem.getEndTransition() == null && mediaItem.getBeginTransition() != null && mediaItem.getBeginTransition().getDuration() > 0) {
                i3 = (int) (((long) i3) + mediaItem.getBeginTransition().getDuration());
            }
            List<Effect> allEffects = mediaItem.getAllEffects();
            it = mediaItem.getAllOverlays().iterator();
            while (it.hasNext()) {
                effectSettingsArr[i2] = getOverlaySettings((OverlayFrame) it.next());
                adjustEffectsStartTimeAndDuration(effectSettingsArr[i2], i3, i4);
                effectSettingsArr[i2].startTime += i5;
                i2++;
            }
            for (Effect effect : allEffects) {
                if (effect instanceof EffectColor) {
                    effectSettingsArr[i2] = getEffectSettings((EffectColor) effect);
                    adjustEffectsStartTimeAndDuration(effectSettingsArr[i2], i3, i4);
                    effectSettingsArr[i2].startTime += i5;
                    i2++;
                }
            }
            return i2;
        }
        i3 = (int) (((long) i3) + mediaItem.getBeginTransition().getDuration());
        j2 = i4;
        duration = mediaItem.getEndTransition().getDuration();
        i4 = (int) (j2 - duration);
        List<Effect> allEffects2 = mediaItem.getAllEffects();
        it = mediaItem.getAllOverlays().iterator();
        while (it.hasNext()) {
            effectSettingsArr[i2] = getOverlaySettings((OverlayFrame) it.next());
            adjustEffectsStartTimeAndDuration(effectSettingsArr[i2], i3, i4);
            effectSettingsArr[i2].startTime += i5;
            i2++;
        }
        while (r6.hasNext()) {
            if (effect instanceof EffectColor) {
                effectSettingsArr[i2] = getEffectSettings((EffectColor) effect);
                adjustEffectsStartTimeAndDuration(effectSettingsArr[i2], i3, i4);
                effectSettingsArr[i2].startTime += i5;
                i2++;
            }
        }
        return i2;
    }

    private int populateMediaItemProperties(MediaItem mediaItem, int i2, int i3) {
        this.mPreviewEditSettings.clipSettingsArray[i2] = new ClipSettings();
        if (mediaItem instanceof MediaVideoItem) {
            MediaVideoItem mediaVideoItem = (MediaVideoItem) mediaItem;
            this.mPreviewEditSettings.clipSettingsArray[i2] = mediaVideoItem.getVideoClipProperties();
            if (mediaVideoItem.getHeight() > i3) {
                i3 = mediaVideoItem.getHeight();
            }
        } else if (mediaItem instanceof MediaImageItem) {
            MediaImageItem mediaImageItem = (MediaImageItem) mediaItem;
            this.mPreviewEditSettings.clipSettingsArray[i2] = mediaImageItem.getImageClipProperties();
            if (mediaImageItem.getScaledHeight() > i3) {
                i3 = mediaImageItem.getScaledHeight();
            }
        }
        ClipSettings[] clipSettingsArr = this.mPreviewEditSettings.clipSettingsArray;
        if (clipSettingsArr[i2].fileType == 5) {
            clipSettingsArr[i2].clipDecodedPath = ((MediaImageItem) mediaItem).getDecodedImageFileName();
            ClipSettings[] clipSettingsArr2 = this.mPreviewEditSettings.clipSettingsArray;
            clipSettingsArr2[i2].clipOriginalPath = clipSettingsArr2[i2].clipPath;
        }
        return i3;
    }

    private void previewFrameEditInfo(String str, int i2) {
        this.mRenderPreviewOverlayFile = str;
        this.mRenderPreviewRenderingMode = i2;
    }

    private native void release();

    private native void stopEncoding();

    private void unlock() {
        if (Log.isLoggable(TAG, 3)) {
            Log.d(TAG, "unlock: releasing semaphore");
        }
        this.mLock.release();
    }

    public int GetClosestVideoFrameRate(int i2) {
        if (i2 >= 25) {
            return 7;
        }
        if (i2 >= 20) {
            return 6;
        }
        if (i2 >= 15) {
            return 5;
        }
        if (i2 >= 12) {
            return 4;
        }
        if (i2 >= 10) {
            return 3;
        }
        if (i2 >= 7) {
            return 2;
        }
        return i2 >= 5 ? 1 : -1;
    }

    public void adjustEffectsStartTimeAndDuration(EffectSettings effectSettings, int i2, int i3) {
        int i4 = effectSettings.startTime;
        if (i4 <= i3) {
            int i5 = effectSettings.duration;
            if (i4 + i5 > i2) {
                if (i4 < i2 && i4 + i5 > i2 && i4 + i5 <= i3) {
                    effectSettings.startTime = 0;
                    effectSettings.duration = i5 - (i2 - i4);
                    return;
                }
                if (i4 >= i2 && i4 + i5 <= i3) {
                    effectSettings.startTime = i4 - i2;
                    effectSettings.duration = i5;
                    return;
                } else if (i4 >= i2 && i4 + i5 > i3) {
                    effectSettings.startTime = i4 - i2;
                    effectSettings.duration = i3 - i4;
                    return;
                } else {
                    if (i4 >= i2 || i4 + i5 <= i3) {
                        return;
                    }
                    effectSettings.startTime = 0;
                    effectSettings.duration = i3 - i2;
                    return;
                }
            }
        }
        effectSettings.startTime = 0;
        effectSettings.duration = 0;
    }

    public void clearPreviewSurface(Surface surface) {
        nativeClearSurface(surface);
    }

    public void doPreview(Surface surface, long j2, long j3, boolean z2, int i2, VideoEditor.PreviewProgressListener previewProgressListener) {
        this.mPreviewProgress = j2;
        this.mIsFirstProgress = true;
        this.mPreviewProgressListener = previewProgressListener;
        if (this.mInvalidatePreviewArray) {
            throw new IllegalStateException("generatePreview is in progress");
        }
        int i3 = 0;
        while (true) {
            try {
                EditSettings editSettings = this.mPreviewEditSettings;
                ClipSettings[] clipSettingsArr = editSettings.clipSettingsArray;
                if (i3 >= clipSettingsArr.length) {
                    nativePopulateSettings(editSettings, this.mClipProperties, this.mAudioSettings);
                    nativeStartPreview(surface, j2, j3, i2, z2);
                    return;
                } else {
                    if (clipSettingsArr[i3].fileType == 5) {
                        clipSettingsArr[i3].clipPath = clipSettingsArr[i3].clipDecodedPath;
                    }
                    i3++;
                }
            } catch (IllegalArgumentException e2) {
                Log.e(TAG, "Illegal argument exception in nativeStartPreview");
                throw e2;
            } catch (IllegalStateException e3) {
                Log.e(TAG, "Illegal state exception in nativeStartPreview");
                throw e3;
            } catch (RuntimeException e4) {
                Log.e(TAG, "Runtime exception in nativeStartPreview");
                throw e4;
            }
        }
    }

    public void export(String str, String str2, int i2, int i3, List<MediaItem> list, List<Transition> list2, List<AudioTrack> list3, VideoEditor.ExportProgressListener exportProgressListener) {
        int i4;
        this.mExportFilename = str;
        previewStoryBoard(list, list2, list3, null);
        this.mExportProgressListener = exportProgressListener;
        VideoEditorProfile videoEditorProfile = VideoEditorProfile.get();
        if (videoEditorProfile == null) {
            throw new RuntimeException("Can't get the video editor profile");
        }
        int i5 = videoEditorProfile.maxOutputVideoFrameHeight;
        int i6 = videoEditorProfile.maxOutputVideoFrameWidth;
        if (i2 > i5) {
            throw new IllegalArgumentException("Unsupported export resolution. Supported maximum width:" + i6 + " height:" + i5 + " current height:" + i2);
        }
        int exportProfile = VideoEditorProfile.getExportProfile(this.mExportVideoCodec);
        int exportLevel = VideoEditorProfile.getExportLevel(this.mExportVideoCodec);
        this.mProgressToApp = 0;
        switch (i3) {
            case MediaProperties.BITRATE_28K /* 28000 */:
                i4 = 32000;
                break;
            case MediaProperties.BITRATE_40K /* 40000 */:
                i4 = 48000;
                break;
            case 64000:
                i4 = 64000;
                break;
            case 96000:
                i4 = 96000;
                break;
            case 128000:
                i4 = 128000;
                break;
            case 192000:
                i4 = 192000;
                break;
            case 256000:
                i4 = 256000;
                break;
            case 384000:
                i4 = 384000;
                break;
            case 512000:
                i4 = 512000;
                break;
            case 800000:
                i4 = 800000;
                break;
            case 2000000:
                i4 = 2000000;
                break;
            case 5000000:
                i4 = 5000000;
                break;
            case 8000000:
                i4 = 8000000;
                break;
            default:
                throw new IllegalArgumentException("Argument Bitrate incorrect");
        }
        EditSettings editSettings = this.mPreviewEditSettings;
        editSettings.videoFrameRate = 7;
        this.mOutputFilename = str;
        editSettings.outputFile = str;
        this.mPreviewEditSettings.videoFrameSize = findVideoResolution(this.mVideoEditor.getAspectRatio(), i2);
        EditSettings editSettings2 = this.mPreviewEditSettings;
        editSettings2.videoFormat = this.mExportVideoCodec;
        editSettings2.audioFormat = this.mExportAudioCodec;
        editSettings2.videoProfile = exportProfile;
        editSettings2.videoLevel = exportLevel;
        editSettings2.audioSamplingFreq = 32000;
        editSettings2.maxFileSize = 0;
        editSettings2.audioChannels = 2;
        editSettings2.videoBitrate = i4;
        editSettings2.audioBitrate = 96000;
        editSettings2.transitionSettingsArray = new TransitionSettings[this.mTotalClips - 1];
        for (int i7 = 0; i7 < this.mTotalClips - 1; i7++) {
            this.mPreviewEditSettings.transitionSettingsArray[i7] = new TransitionSettings();
            TransitionSettings[] transitionSettingsArr = this.mPreviewEditSettings.transitionSettingsArray;
            transitionSettingsArr[i7].videoTransitionType = 0;
            transitionSettingsArr[i7].audioTransitionType = 0;
        }
        int i8 = 0;
        while (true) {
            EditSettings editSettings3 = this.mPreviewEditSettings;
            ClipSettings[] clipSettingsArr = editSettings3.clipSettingsArray;
            if (i8 >= clipSettingsArr.length) {
                nativePopulateSettings(editSettings3, this.mClipProperties, this.mAudioSettings);
                try {
                    this.mProcessingState = 20;
                    this.mProcessingObject = null;
                    int iGenerateClip = generateClip(this.mPreviewEditSettings);
                    this.mProcessingState = 0;
                    if (iGenerateClip == 0) {
                        this.mExportProgressListener = null;
                        return;
                    }
                    Log.e(TAG, "RuntimeException for generateClip");
                    throw new RuntimeException("generateClip failed with error=" + iGenerateClip);
                } catch (IllegalArgumentException e2) {
                    Log.e(TAG, "IllegalArgument for generateClip");
                    throw e2;
                } catch (IllegalStateException e3) {
                    Log.e(TAG, "IllegalStateExceptiont for generateClip");
                    throw e3;
                } catch (RuntimeException e4) {
                    Log.e(TAG, "RuntimeException for generateClip");
                    throw e4;
                }
            }
            if (clipSettingsArr[i8].fileType == 5) {
                clipSettingsArr[i8].clipPath = clipSettingsArr[i8].clipOriginalPath;
            }
            i8++;
        }
    }

    public void generateAudioGraph(String str, String str2, String str3, int i2, int i3, int i4, ExtractAudioWaveformProgressListener extractAudioWaveformProgressListener, boolean z2) {
        String str4;
        this.mExtractAudioWaveformProgressListener = extractAudioWaveformProgressListener;
        if (z2) {
            str4 = String.format(this.mProjectPath + "/" + str + ".pcm", new Object[0]);
        } else {
            str4 = this.mAudioTrackPCMFilePath;
        }
        if (z2) {
            nativeGenerateRawAudio(str2, str4);
        }
        nativeGenerateAudioGraph(str4, str3, i2, i3, i4);
        if (z2) {
            new File(str4).delete();
        }
    }

    public int generateClip(EditSettings editSettings) {
        try {
            return nativeGenerateClip(editSettings);
        } catch (IllegalArgumentException unused) {
            Log.e(TAG, "Illegal Argument exception in load settings");
            return -1;
        } catch (IllegalStateException unused2) {
            Log.e(TAG, "Illegal state exception in load settings");
            return -1;
        } catch (RuntimeException unused3) {
            Log.e(TAG, "Runtime exception in load settings");
            return -1;
        }
    }

    public String generateEffectClip(MediaItem mediaItem, ClipSettings clipSettings, EditSettings editSettings, String str, int i2) {
        EditSettings editSettings2 = new EditSettings();
        editSettings2.clipSettingsArray = new ClipSettings[]{clipSettings};
        editSettings2.backgroundMusicSettings = null;
        editSettings2.transitionSettingsArray = null;
        editSettings2.effectSettingsArray = editSettings.effectSettingsArray;
        String str2 = String.format(this.mProjectPath + "/ClipEffectIntermediate_" + mediaItem.getId() + str + ".3gp", new Object[0]);
        File file = new File(str2);
        if (file.exists()) {
            file.delete();
        }
        int exportProfile = VideoEditorProfile.getExportProfile(2);
        int exportLevel = VideoEditorProfile.getExportLevel(2);
        editSettings2.videoProfile = exportProfile;
        editSettings2.videoLevel = exportLevel;
        if (mediaItem instanceof MediaVideoItem) {
            editSettings2.audioFormat = 2;
            editSettings2.audioChannels = 2;
            editSettings2.audioBitrate = 64000;
            editSettings2.audioSamplingFreq = 32000;
            editSettings2.videoFormat = 2;
            editSettings2.videoFrameRate = 7;
            int iFindVideoResolution = findVideoResolution(this.mVideoEditor.getAspectRatio(), ((MediaVideoItem) mediaItem).getHeight());
            editSettings2.videoFrameSize = iFindVideoResolution;
            editSettings2.videoBitrate = findVideoBitrate(iFindVideoResolution);
        } else {
            editSettings2.audioBitrate = 64000;
            editSettings2.audioChannels = 2;
            editSettings2.audioFormat = 2;
            editSettings2.audioSamplingFreq = 32000;
            editSettings2.videoFormat = 2;
            editSettings2.videoFrameRate = 7;
            int iFindVideoResolution2 = findVideoResolution(this.mVideoEditor.getAspectRatio(), ((MediaImageItem) mediaItem).getScaledHeight());
            editSettings2.videoFrameSize = iFindVideoResolution2;
            editSettings2.videoBitrate = findVideoBitrate(iFindVideoResolution2);
        }
        editSettings2.outputFile = str2;
        if (i2 == 1) {
            this.mProcessingState = 11;
        } else if (i2 == 2) {
            this.mProcessingState = 12;
        }
        this.mProcessingObject = mediaItem;
        int iGenerateClip = generateClip(editSettings2);
        this.mProcessingState = 0;
        if (iGenerateClip != 0) {
            throw new RuntimeException("preview generation cannot be completed");
        }
        clipSettings.clipPath = str2;
        clipSettings.fileType = 0;
        return str2;
    }

    public String generateKenBurnsClip(EditSettings editSettings, MediaImageItem mediaImageItem) {
        editSettings.backgroundMusicSettings = null;
        editSettings.transitionSettingsArray = null;
        editSettings.effectSettingsArray = null;
        String str = String.format(this.mProjectPath + "/ImageClip-" + mediaImageItem.getId() + ".3gp", new Object[0]);
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
        int exportProfile = VideoEditorProfile.getExportProfile(2);
        int exportLevel = VideoEditorProfile.getExportLevel(2);
        editSettings.videoProfile = exportProfile;
        editSettings.videoLevel = exportLevel;
        editSettings.outputFile = str;
        editSettings.audioBitrate = 64000;
        editSettings.audioChannels = 2;
        editSettings.audioFormat = 2;
        editSettings.audioSamplingFreq = 32000;
        editSettings.videoFormat = 2;
        editSettings.videoFrameRate = 7;
        int iFindVideoResolution = findVideoResolution(this.mVideoEditor.getAspectRatio(), mediaImageItem.getScaledHeight());
        editSettings.videoFrameSize = iFindVideoResolution;
        editSettings.videoBitrate = findVideoBitrate(iFindVideoResolution);
        this.mProcessingState = 3;
        this.mProcessingObject = mediaImageItem;
        int iGenerateClip = generateClip(editSettings);
        this.mProcessingState = 0;
        if (iGenerateClip == 0) {
            return str;
        }
        throw new RuntimeException("preview generation cannot be completed");
    }

    public String generateTransitionClip(EditSettings editSettings, String str, MediaItem mediaItem, MediaItem mediaItem2, Transition transition) {
        String str2 = String.format(this.mProjectPath + "/" + str + ".3gp", new Object[0]);
        int exportProfile = VideoEditorProfile.getExportProfile(2);
        int exportLevel = VideoEditorProfile.getExportLevel(2);
        editSettings.videoProfile = exportProfile;
        editSettings.videoLevel = exportLevel;
        editSettings.outputFile = str2;
        editSettings.audioBitrate = 64000;
        editSettings.audioChannels = 2;
        editSettings.audioFormat = 2;
        editSettings.audioSamplingFreq = 32000;
        editSettings.videoFormat = 2;
        editSettings.videoFrameRate = 7;
        int transitionResolution = getTransitionResolution(mediaItem, mediaItem2);
        editSettings.videoFrameSize = transitionResolution;
        editSettings.videoBitrate = findVideoBitrate(transitionResolution);
        if (new File(str2).exists()) {
            new File(str2).delete();
        }
        this.mProcessingState = 13;
        this.mProcessingObject = transition;
        int iGenerateClip = generateClip(editSettings);
        this.mProcessingState = 0;
        if (iGenerateClip == 0) {
            return str2;
        }
        throw new RuntimeException("preview generation cannot be completed");
    }

    public int getAspectRatio(int i2, int i3) {
        double dDoubleValue = new BigDecimal(((double) i2) / ((double) i3)).setScale(3, 4).doubleValue();
        if (dDoubleValue < 1.7d) {
            if (dDoubleValue >= 1.6d) {
                return 4;
            }
            if (dDoubleValue >= 1.5d) {
                return 1;
            }
            if (dDoubleValue > 1.3d) {
                return 3;
            }
            if (dDoubleValue >= 1.2d) {
                return 5;
            }
        }
        return 2;
    }

    public int getAudioCodecType(int i2) {
        if (i2 == 1) {
            return 1;
        }
        if (i2 != 2) {
            return i2 != 5 ? -1 : 5;
        }
        return 2;
    }

    public boolean getAudioflag() {
        return this.mRegenerateAudio;
    }

    public EffectSettings getEffectSettings(EffectColor effectColor) {
        EffectSettings effectSettings = new EffectSettings();
        effectSettings.startTime = (int) effectColor.getStartTime();
        effectSettings.duration = (int) effectColor.getDuration();
        effectSettings.videoEffectType = getEffectColorType(effectColor);
        effectSettings.audioEffectType = 0;
        effectSettings.startPercent = 0;
        effectSettings.durationPercent = 0;
        effectSettings.framingFile = null;
        effectSettings.topLeftX = 0;
        effectSettings.topLeftY = 0;
        effectSettings.framingResize = false;
        effectSettings.text = null;
        effectSettings.textRenderingData = null;
        effectSettings.textBufferWidth = 0;
        effectSettings.textBufferHeight = 0;
        if (effectColor.getType() == 5) {
            effectSettings.fiftiesFrameRate = 15;
        } else {
            effectSettings.fiftiesFrameRate = 0;
        }
        int i2 = effectSettings.videoEffectType;
        if (i2 == 267 || i2 == 268) {
            effectSettings.rgb16InputColor = effectColor.getColor();
        }
        effectSettings.alphaBlendingStartPercent = 0;
        effectSettings.alphaBlendingMiddlePercent = 0;
        effectSettings.alphaBlendingEndPercent = 0;
        effectSettings.alphaBlendingFadeInTimePercent = 0;
        effectSettings.alphaBlendingFadeOutTimePercent = 0;
        return effectSettings;
    }

    public int getFileType(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 2) {
            return 2;
        }
        if (i2 == 3) {
            return 3;
        }
        if (i2 == 5) {
            return 5;
        }
        if (i2 == 8) {
            return 8;
        }
        if (i2 != 10) {
            return i2 != 255 ? -1 : 255;
        }
        return 10;
    }

    public int getFrameRate(int i2) {
        switch (i2) {
            case 0:
                return 5;
            case 1:
                return 8;
            case 2:
                return 10;
            case 3:
                return 13;
            case 4:
                return 15;
            case 5:
                return 20;
            case 6:
                return 25;
            case 7:
                return 30;
            default:
                return -1;
        }
    }

    public boolean getGeneratePreview() {
        return this.mInvalidatePreviewArray;
    }

    public int getMediaItemFileType(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 == 5) {
            return 5;
        }
        if (i2 == 8) {
            return 8;
        }
        if (i2 != 10) {
            return i2 != 255 ? -1 : 255;
        }
        return 10;
    }

    public int getMediaItemRenderingMode(int i2) {
        if (i2 == 0) {
            return 2;
        }
        if (i2 != 1) {
            return i2 != 2 ? -1 : 1;
        }
        return 0;
    }

    public native Properties getMediaProperties(String str);

    public EffectSettings getOverlaySettings(OverlayFrame overlayFrame) {
        int aspectRatio;
        int height;
        EffectSettings effectSettings = new EffectSettings();
        effectSettings.startTime = (int) overlayFrame.getStartTime();
        effectSettings.duration = (int) overlayFrame.getDuration();
        effectSettings.videoEffectType = 262;
        effectSettings.audioEffectType = 0;
        effectSettings.startPercent = 0;
        effectSettings.durationPercent = 0;
        effectSettings.framingFile = null;
        Bitmap bitmap = overlayFrame.getBitmap();
        if (bitmap != null) {
            String filename = overlayFrame.getFilename();
            effectSettings.framingFile = filename;
            if (filename == null) {
                try {
                    try {
                        overlayFrame.save(this.mProjectPath);
                    } catch (IOException unused) {
                        Log.e(TAG, "getOverlaySettings : File not found");
                    }
                } catch (IOException unused2) {
                }
                effectSettings.framingFile = overlayFrame.getFilename();
            }
            if (bitmap.getConfig() == Bitmap.Config.ARGB_8888) {
                effectSettings.bitmapType = 6;
            } else if (bitmap.getConfig() == Bitmap.Config.ARGB_4444) {
                effectSettings.bitmapType = 5;
            } else if (bitmap.getConfig() == Bitmap.Config.RGB_565) {
                effectSettings.bitmapType = 4;
            } else if (bitmap.getConfig() == Bitmap.Config.ALPHA_8) {
                throw new RuntimeException("Bitmap config not supported");
            }
            effectSettings.width = bitmap.getWidth();
            effectSettings.height = bitmap.getHeight();
            effectSettings.framingBuffer = new int[effectSettings.width];
            int i2 = 0;
            short s2 = 0;
            short s3 = 255;
            while (i2 < effectSettings.height) {
                int[] iArr = effectSettings.framingBuffer;
                int i3 = effectSettings.width;
                bitmap.getPixels(iArr, 0, i3, 0, i2, i3, 1);
                short s4 = s2;
                short s5 = s3;
                for (int i4 = 0; i4 < effectSettings.width; i4++) {
                    short s6 = (short) ((effectSettings.framingBuffer[i4] >> 24) & 255);
                    if (s6 > s4) {
                        s4 = s6;
                    }
                    if (s6 < s5) {
                        s5 = s6;
                    }
                }
                i2++;
                s2 = s4;
                s3 = s5;
            }
            short s7 = (short) ((((short) ((s2 + s3) / 2)) * 100) / 256);
            effectSettings.alphaBlendingEndPercent = s7;
            effectSettings.alphaBlendingMiddlePercent = s7;
            effectSettings.alphaBlendingStartPercent = s7;
            effectSettings.alphaBlendingFadeInTimePercent = 100;
            effectSettings.alphaBlendingFadeOutTimePercent = 100;
            effectSettings.framingBuffer = null;
            int resizedRGBSizeWidth = overlayFrame.getResizedRGBSizeWidth();
            effectSettings.width = resizedRGBSizeWidth;
            if (resizedRGBSizeWidth == 0) {
                effectSettings.width = bitmap.getWidth();
            }
            int resizedRGBSizeHeight = overlayFrame.getResizedRGBSizeHeight();
            effectSettings.height = resizedRGBSizeHeight;
            if (resizedRGBSizeHeight == 0) {
                effectSettings.height = bitmap.getHeight();
            }
        }
        effectSettings.topLeftX = 0;
        effectSettings.topLeftY = 0;
        effectSettings.framingResize = true;
        effectSettings.text = null;
        effectSettings.textRenderingData = null;
        effectSettings.textBufferWidth = 0;
        effectSettings.textBufferHeight = 0;
        effectSettings.fiftiesFrameRate = 0;
        effectSettings.rgb16InputColor = 0;
        if (!(overlayFrame.getMediaItem() instanceof MediaImageItem)) {
            aspectRatio = overlayFrame.getMediaItem().getAspectRatio();
            height = overlayFrame.getMediaItem().getHeight();
        } else if (((MediaImageItem) overlayFrame.getMediaItem()).getGeneratedImageClip() != null) {
            height = ((MediaImageItem) overlayFrame.getMediaItem()).getGeneratedClipHeight();
            aspectRatio = getAspectRatio(((MediaImageItem) overlayFrame.getMediaItem()).getGeneratedClipWidth(), height);
        } else {
            height = ((MediaImageItem) overlayFrame.getMediaItem()).getScaledHeight();
            aspectRatio = overlayFrame.getMediaItem().getAspectRatio();
        }
        effectSettings.framingScaledSize = findVideoResolution(aspectRatio, height);
        return effectSettings;
    }

    public Bitmap getPixels(String str, int i2, int i3, long j2, int i4) {
        final Bitmap[] bitmapArr = new Bitmap[1];
        getPixelsList(str, i2, i3, j2, j2, 1, new int[]{0}, new MediaItem.GetThumbnailListCallback() { // from class: android.media.videoeditor.MediaArtistNativeHelper.1
            @Override // android.media.videoeditor.MediaItem.GetThumbnailListCallback
            public void onThumbnail(Bitmap bitmap, int i5) {
                bitmapArr[0] = bitmap;
            }
        }, i4);
        return bitmapArr[0];
    }

    public void getPixelsList(String str, int i2, int i3, long j2, long j3, int i4, int[] iArr, final MediaItem.GetThumbnailListCallback getThumbnailListCallback, final int i5) {
        final int i6 = (i2 + 1) & (-2);
        final int i7 = (i3 + 1) & (-2);
        final int i8 = i6 * i7;
        final int[] iArr2 = new int[i8];
        final IntBuffer intBufferAllocate = IntBuffer.allocate(i8);
        final boolean z2 = (i6 == i2 && i7 == i3 && i5 == 0) ? false : true;
        final Bitmap bitmapCreateBitmap = z2 ? Bitmap.createBitmap(i6, i7, Bitmap.Config.ARGB_8888) : null;
        boolean z3 = i5 == 90 || i5 == 270;
        int i9 = z3 ? i3 : i2;
        int i10 = z3 ? i2 : i3;
        final int i11 = i9;
        final int i12 = i10;
        nativeGetPixelsList(str, iArr2, i6, i7, i4, j2, j3, iArr, new NativeGetPixelsListCallback() { // from class: android.media.videoeditor.MediaArtistNativeHelper.2
            @Override // android.media.videoeditor.MediaArtistNativeHelper.NativeGetPixelsListCallback
            public void onThumbnail(int i13) {
                Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(i11, i12, Bitmap.Config.ARGB_8888);
                intBufferAllocate.rewind();
                intBufferAllocate.put(iArr2, 0, i8);
                intBufferAllocate.rewind();
                if (z2) {
                    bitmapCreateBitmap.copyPixelsFromBuffer(intBufferAllocate);
                    Canvas canvas = new Canvas(bitmapCreateBitmap2);
                    Matrix matrix = new Matrix();
                    matrix.postScale(1.0f / i6, 1.0f / i7);
                    matrix.postRotate(i5, 0.5f, 0.5f);
                    matrix.postScale(i11, i12);
                    canvas.drawBitmap(bitmapCreateBitmap, matrix, MediaArtistNativeHelper.sResizePaint);
                } else {
                    bitmapCreateBitmap2.copyPixelsFromBuffer(intBufferAllocate);
                }
                getThumbnailListCallback.onThumbnail(bitmapCreateBitmap2, i13);
            }
        });
        if (bitmapCreateBitmap != null) {
            bitmapCreateBitmap.recycle();
        }
    }

    public String getProjectAudioTrackPCMFilePath() {
        return this.mAudioTrackPCMFilePath;
    }

    public String getProjectPath() {
        return this.mProjectPath;
    }

    public int getSlideSettingsDirection(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 1;
        }
        if (i2 != 2) {
            return i2 != 3 ? -1 : 3;
        }
        return 2;
    }

    public int getVideoCodecType(int i2) {
        if (i2 == 1) {
            return 1;
        }
        if (i2 != 2) {
            return i2 != 3 ? -1 : 3;
        }
        return 2;
    }

    public int getVideoTransitionBehaviour(int i2) {
        if (i2 == 0) {
            return 0;
        }
        if (i2 == 1) {
            return 2;
        }
        if (i2 == 2) {
            return 1;
        }
        if (i2 != 3) {
            return i2 != 4 ? -1 : 4;
        }
        return 3;
    }

    public void initClipSettings(ClipSettings clipSettings) {
        clipSettings.clipPath = null;
        clipSettings.clipDecodedPath = null;
        clipSettings.clipOriginalPath = null;
        clipSettings.fileType = 0;
        clipSettings.endCutTime = 0;
        clipSettings.beginCutTime = 0;
        clipSettings.beginCutPercent = 0;
        clipSettings.endCutPercent = 0;
        clipSettings.panZoomEnabled = false;
        clipSettings.panZoomPercentStart = 0;
        clipSettings.panZoomTopLeftXStart = 0;
        clipSettings.panZoomTopLeftYStart = 0;
        clipSettings.panZoomPercentEnd = 0;
        clipSettings.panZoomTopLeftXEnd = 0;
        clipSettings.panZoomTopLeftYEnd = 0;
        clipSettings.mediaRendering = 0;
        clipSettings.rotationDegree = 0;
    }

    public void invalidatePcmFile() {
        if (this.mAudioTrackPCMFilePath != null) {
            new File(this.mAudioTrackPCMFilePath).delete();
            this.mAudioTrackPCMFilePath = null;
        }
    }

    public int nativeHelperGetAspectRatio() {
        return this.mVideoEditor.getAspectRatio();
    }

    public void previewStoryBoard(List<MediaItem> list, List<Transition> list2, List<AudioTrack> list3, VideoEditor.MediaProcessingProgressListener mediaProcessingProgressListener) {
        int i2;
        int boundaryEndTime;
        Transition endTransition;
        boolean z2;
        if (this.mInvalidatePreviewArray) {
            this.mPreviewEditSettings = new EditSettings();
            this.mClipProperties = new PreviewClipProperties();
            this.mTotalClips = 0;
            this.mTotalClips = list.size();
            Iterator<Transition> it = list2.iterator();
            while (it.hasNext()) {
                if (it.next().getDuration() > 0) {
                    this.mTotalClips++;
                }
            }
            int totalEffects = getTotalEffects(list);
            EditSettings editSettings = this.mPreviewEditSettings;
            int i3 = this.mTotalClips;
            editSettings.clipSettingsArray = new ClipSettings[i3];
            editSettings.effectSettingsArray = new EffectSettings[totalEffects];
            this.mClipProperties.clipProperties = new Properties[i3];
            this.mMediaProcessingProgressListener = mediaProcessingProgressListener;
            this.mProgressToApp = 0;
            if (list.size() > 0) {
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int iPopulateEffects = 0;
                int i7 = 0;
                int timelineDuration = 0;
                int i8 = 0;
                while (i8 < list.size()) {
                    MediaItem mediaItem = list.get(i8);
                    if (mediaItem instanceof MediaVideoItem) {
                        MediaVideoItem mediaVideoItem = (MediaVideoItem) mediaItem;
                        int boundaryBeginTime = (int) mediaVideoItem.getBoundaryBeginTime();
                        boundaryEndTime = (int) mediaVideoItem.getBoundaryEndTime();
                        i2 = boundaryBeginTime;
                    } else {
                        if (mediaItem instanceof MediaImageItem) {
                            timelineDuration = (int) ((MediaImageItem) mediaItem).getTimelineDuration();
                            i2 = 0;
                        } else {
                            i2 = i7;
                        }
                        boundaryEndTime = timelineDuration;
                    }
                    Transition beginTransition = mediaItem.getBeginTransition();
                    if (beginTransition != null && beginTransition.getDuration() > 0) {
                        generateTransition(beginTransition, this.mPreviewEditSettings, this.mClipProperties, i4);
                        i5 += this.mClipProperties.clipProperties[i4].duration;
                        i4++;
                    }
                    int i9 = i4;
                    int i10 = i5;
                    int iPopulateMediaItemProperties = populateMediaItemProperties(mediaItem, i9, i6);
                    if (mediaItem instanceof MediaImageItem) {
                        List<Effect> allEffects = mediaItem.getAllEffects();
                        int i11 = 0;
                        while (true) {
                            if (i11 >= allEffects.size()) {
                                z2 = false;
                                break;
                            } else {
                                if (allEffects.get(i11) instanceof EffectKenBurns) {
                                    z2 = true;
                                    break;
                                }
                                i11++;
                            }
                        }
                        if (z2) {
                            try {
                                if (((MediaImageItem) mediaItem).getGeneratedImageClip() != null) {
                                    this.mClipProperties.clipProperties[i9] = getMediaProperties(((MediaImageItem) mediaItem).getGeneratedImageClip());
                                } else {
                                    this.mClipProperties.clipProperties[i9] = getMediaProperties(((MediaImageItem) mediaItem).getScaledImageFileName());
                                    this.mClipProperties.clipProperties[i9].width = ((MediaImageItem) mediaItem).getScaledWidth();
                                    this.mClipProperties.clipProperties[i9].height = ((MediaImageItem) mediaItem).getScaledHeight();
                                }
                            } catch (Exception unused) {
                                throw new IllegalArgumentException("Unsupported file or file not found");
                            }
                        } else {
                            try {
                                this.mClipProperties.clipProperties[i9] = getMediaProperties(((MediaImageItem) mediaItem).getScaledImageFileName());
                                MediaImageItem mediaImageItem = (MediaImageItem) mediaItem;
                                this.mClipProperties.clipProperties[i9].width = mediaImageItem.getScaledWidth();
                                this.mClipProperties.clipProperties[i9].height = mediaImageItem.getScaledHeight();
                            } catch (Exception unused2) {
                                throw new IllegalArgumentException("Unsupported file or file not found");
                            }
                        }
                    } else {
                        try {
                            this.mClipProperties.clipProperties[i9] = getMediaProperties(mediaItem.getFilename());
                        } catch (Exception unused3) {
                            throw new IllegalArgumentException("Unsupported file or file not found");
                        }
                    }
                    this.mClipProperties.clipProperties[i9].Id = mediaItem.getId();
                    checkOddSizeImage(mediaItem, this.mClipProperties, i9);
                    adjustVolume(mediaItem, this.mClipProperties, i9);
                    adjustMediaItemBoundary(this.mPreviewEditSettings.clipSettingsArray[i9], this.mClipProperties.clipProperties[i9], mediaItem);
                    iPopulateEffects = populateEffects(mediaItem, this.mPreviewEditSettings.effectSettingsArray, iPopulateEffects, i2, boundaryEndTime, i10);
                    i5 = i10 + this.mClipProperties.clipProperties[i9].duration;
                    i4 = i9 + 1;
                    int i12 = i8;
                    if (i12 == list.size() - 1 && (endTransition = mediaItem.getEndTransition()) != null && endTransition.getDuration() > 0) {
                        generateTransition(endTransition, this.mPreviewEditSettings, this.mClipProperties, i4);
                        i6 = iPopulateMediaItemProperties;
                        break;
                    } else {
                        int i13 = i12 + 1;
                        timelineDuration = boundaryEndTime;
                        i8 = i13;
                        i6 = iPopulateMediaItemProperties;
                        i7 = i2;
                    }
                }
                if (!this.mErrorFlagSet) {
                    this.mPreviewEditSettings.videoFrameSize = findVideoResolution(this.mVideoEditor.getAspectRatio(), i6);
                    populateBackgroundMusicProperties(list3);
                    try {
                        nativePopulateSettings(this.mPreviewEditSettings, this.mClipProperties, this.mAudioSettings);
                        this.mInvalidatePreviewArray = false;
                        this.mProcessingState = 0;
                    } catch (IllegalArgumentException e2) {
                        Log.e(TAG, "Illegal argument exception in nativePopulateSettings");
                        throw e2;
                    } catch (IllegalStateException e3) {
                        Log.e(TAG, "Illegal state exception in nativePopulateSettings");
                        throw e3;
                    } catch (RuntimeException e4) {
                        Log.e(TAG, "Runtime exception in nativePopulateSettings");
                        throw e4;
                    }
                }
            }
            if (this.mErrorFlagSet) {
                this.mErrorFlagSet = false;
                throw new RuntimeException("preview generation cannot be completed");
            }
        }
    }

    public void releaseNativeHelper() {
        release();
    }

    public long renderMediaItemPreviewFrame(Surface surface, String str, long j2, int i2, int i3) {
        try {
            return nativeRenderMediaItemPreviewFrame(surface, str, i2, i3, 0, 0, j2);
        } catch (IllegalArgumentException e2) {
            Log.e(TAG, "Illegal Argument exception in renderMediaItemPreviewFrame");
            throw e2;
        } catch (IllegalStateException e3) {
            Log.e(TAG, "Illegal state exception in renderMediaItemPreviewFrame");
            throw e3;
        } catch (RuntimeException e4) {
            Log.e(TAG, "Runtime exception in renderMediaItemPreviewFrame");
            throw e4;
        }
    }

    public long renderPreviewFrame(Surface surface, long j2, int i2, int i3, VideoEditor.OverlayData overlayData) {
        EditSettings editSettings;
        if (this.mInvalidatePreviewArray) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Call generate preview first");
            }
            throw new IllegalStateException("Call generate preview first");
        }
        int i4 = 0;
        while (true) {
            try {
                editSettings = this.mPreviewEditSettings;
                ClipSettings[] clipSettingsArr = editSettings.clipSettingsArray;
                if (i4 >= clipSettingsArr.length) {
                    break;
                }
                if (clipSettingsArr[i4].fileType == 5) {
                    clipSettingsArr[i4].clipPath = clipSettingsArr[i4].clipDecodedPath;
                }
                i4++;
            } catch (IllegalArgumentException e2) {
                Log.e(TAG, "Illegal Argument exception in nativeRenderPreviewFrame");
                throw e2;
            } catch (IllegalStateException e3) {
                Log.e(TAG, "Illegal state exception in nativeRenderPreviewFrame");
                throw e3;
            } catch (RuntimeException e4) {
                Log.e(TAG, "Runtime exception in nativeRenderPreviewFrame");
                throw e4;
            }
        }
        this.mRenderPreviewOverlayFile = null;
        this.mRenderPreviewRenderingMode = 0;
        nativePopulateSettings(editSettings, this.mClipProperties, this.mAudioSettings);
        long jNativeRenderPreviewFrame = nativeRenderPreviewFrame(surface, j2, i2, i3);
        String str = this.mRenderPreviewOverlayFile;
        if (str != null) {
            overlayData.set(BitmapFactory.decodeFile(str), this.mRenderPreviewRenderingMode);
        } else {
            overlayData.setClear();
        }
        return jNativeRenderPreviewFrame;
    }

    public void setAudioCodec(int i2) {
        this.mExportAudioCodec = i2;
    }

    public void setAudioflag(boolean z2) {
        if (!new File(String.format(this.mProjectPath + "/" + AUDIO_TRACK_PCM_FILE, new Object[0])).exists()) {
            z2 = true;
        }
        this.mRegenerateAudio = z2;
    }

    public void setGeneratePreview(boolean z2) {
        boolean z3 = false;
        try {
            try {
                lock();
                z3 = true;
                this.mInvalidatePreviewArray = z2;
            } catch (InterruptedException unused) {
                Log.e(TAG, "Runtime exception in renderMediaItemPreviewFrame");
                if (!z3) {
                    return;
                }
            }
            unlock();
        } catch (Throwable th) {
            if (z3) {
                unlock();
            }
            throw th;
        }
    }

    public void setVideoCodec(int i2) {
        this.mExportVideoCodec = i2;
    }

    public void stop(String str) {
        try {
            stopEncoding();
            new File(this.mExportFilename).delete();
        } catch (IllegalStateException e2) {
            Log.e(TAG, "Illegal state exception in unload settings");
            throw e2;
        } catch (RuntimeException e3) {
            Log.e(TAG, "Runtime exception in unload settings");
            throw e3;
        }
    }

    public long stopPreview() {
        return nativeStopPreview();
    }
}
