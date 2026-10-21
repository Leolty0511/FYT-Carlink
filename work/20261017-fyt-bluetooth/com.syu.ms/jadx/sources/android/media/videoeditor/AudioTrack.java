package android.media.videoeditor;

import java.io.File;
import java.io.IOException;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes.dex */
public class AudioTrack {
    private final int mAudioBitrate;
    private final int mAudioChannels;
    private final int mAudioSamplingFrequency;
    private final int mAudioType;
    private String mAudioWaveformFilename;
    private long mBeginBoundaryTimeMs;
    private int mDuckedTrackVolume;
    private int mDuckingThreshold;
    private final long mDurationMs;
    private long mEndBoundaryTimeMs;
    private final String mFilename;
    private boolean mIsDuckingEnabled;
    private boolean mLoop;
    private final MediaArtistNativeHelper mMANativeHelper;
    private boolean mMuted;
    private long mStartTimeMs;
    private long mTimelineDurationMs;
    private final String mUniqueId;
    private int mVolumePercent;
    private SoftReference<WaveformData> mWaveformData;

    private AudioTrack() {
        this(null, null, null);
    }

    public void disableDucking() {
        if (this.mIsDuckingEnabled) {
            this.mMANativeHelper.setGeneratePreview(true);
            this.mIsDuckingEnabled = false;
        }
    }

    public void disableLoop() {
        if (this.mLoop) {
            this.mMANativeHelper.setGeneratePreview(true);
            this.mLoop = false;
        }
    }

    public void enableDucking(int i2, int i3) {
        if (i2 < 0 || i2 > 90) {
            throw new IllegalArgumentException("Invalid threshold value: " + i2);
        }
        if (i3 < 0 || i3 > 100) {
            throw new IllegalArgumentException("Invalid duckedTrackVolume value: " + i3);
        }
        this.mMANativeHelper.setGeneratePreview(true);
        this.mDuckingThreshold = i2;
        this.mDuckedTrackVolume = i3;
        this.mIsDuckingEnabled = true;
    }

    public void enableLoop() {
        if (this.mLoop) {
            return;
        }
        this.mMANativeHelper.setGeneratePreview(true);
        this.mLoop = true;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AudioTrack) {
            return this.mUniqueId.equals(((AudioTrack) obj).mUniqueId);
        }
        return false;
    }

    public void extractAudioWaveform(ExtractAudioWaveformProgressListener extractAudioWaveformProgressListener) {
        int i2;
        int i3;
        int i4;
        int i5;
        if (this.mAudioWaveformFilename == null) {
            String str = String.format(this.mMANativeHelper.getProjectPath() + "/audioWaveformFile-" + getId() + ".dat", new Object[0]);
            int audioCodecType = this.mMANativeHelper.getAudioCodecType(this.mAudioType);
            if (audioCodecType != 1) {
                if (audioCodecType == 2) {
                    i4 = 32;
                    i5 = 1024;
                } else if (audioCodecType == 5) {
                    i4 = 36;
                    i5 = MediaProperties.SAMPLES_PER_FRAME_MP3;
                } else {
                    if (audioCodecType != 8) {
                        throw new IllegalStateException("Unsupported codec type: " + audioCodecType);
                    }
                    i4 = 10;
                    i5 = 320;
                }
                i3 = i4;
                i2 = i5;
            } else {
                i2 = 160;
                i3 = 5;
            }
            this.mMANativeHelper.generateAudioGraph(this.mUniqueId, this.mFilename, str, i3, 2, i2, extractAudioWaveformProgressListener, false);
            this.mAudioWaveformFilename = str;
        }
        this.mWaveformData = new SoftReference<>(new WaveformData(this.mAudioWaveformFilename));
    }

    public int getAudioBitrate() {
        return this.mAudioBitrate;
    }

    public int getAudioChannels() {
        return this.mAudioChannels;
    }

    public int getAudioSamplingFrequency() {
        return this.mAudioSamplingFrequency;
    }

    public int getAudioType() {
        return this.mAudioType;
    }

    public String getAudioWaveformFilename() {
        return this.mAudioWaveformFilename;
    }

    public long getBoundaryBeginTime() {
        return this.mBeginBoundaryTimeMs;
    }

    public long getBoundaryEndTime() {
        return this.mEndBoundaryTimeMs;
    }

    public int getDuckedTrackVolume() {
        return this.mDuckedTrackVolume;
    }

    public int getDuckingThreshhold() {
        return this.mDuckingThreshold;
    }

    public long getDuration() {
        return this.mDurationMs;
    }

    public String getFilename() {
        return this.mFilename;
    }

    public String getId() {
        return this.mUniqueId;
    }

    public long getStartTime() {
        return this.mStartTimeMs;
    }

    public long getTimelineDuration() {
        return this.mTimelineDurationMs;
    }

    public int getVolume() {
        return this.mVolumePercent;
    }

    public WaveformData getWaveformData() throws IOException {
        SoftReference<WaveformData> softReference = this.mWaveformData;
        if (softReference == null) {
            return null;
        }
        WaveformData waveformData = softReference.get();
        if (waveformData != null) {
            return waveformData;
        }
        String str = this.mAudioWaveformFilename;
        if (str == null) {
            return null;
        }
        try {
            WaveformData waveformData2 = new WaveformData(str);
            this.mWaveformData = new SoftReference<>(waveformData2);
            return waveformData2;
        } catch (IOException e2) {
            throw e2;
        }
    }

    public int hashCode() {
        return this.mUniqueId.hashCode();
    }

    public void invalidate() {
        if (this.mAudioWaveformFilename != null) {
            new File(this.mAudioWaveformFilename).delete();
            this.mAudioWaveformFilename = null;
            this.mWaveformData = null;
        }
    }

    public boolean isDuckingEnabled() {
        return this.mIsDuckingEnabled;
    }

    public boolean isLooping() {
        return this.mLoop;
    }

    public boolean isMuted() {
        return this.mMuted;
    }

    public void setExtractBoundaries(long j2, long j3) {
        long j4 = this.mDurationMs;
        if (j2 > j4) {
            throw new IllegalArgumentException("Invalid start time");
        }
        if (j3 > j4) {
            throw new IllegalArgumentException("Invalid end time");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("Invalid start time; is < 0");
        }
        if (j3 < 0) {
            throw new IllegalArgumentException("Invalid end time; is < 0");
        }
        this.mMANativeHelper.setGeneratePreview(true);
        this.mBeginBoundaryTimeMs = j2;
        this.mEndBoundaryTimeMs = j3;
        this.mTimelineDurationMs = j3 - j2;
    }

    public void setMute(boolean z2) {
        this.mMANativeHelper.setGeneratePreview(true);
        this.mMuted = z2;
    }

    public void setVolume(int i2) {
        if (i2 > 100) {
            throw new IllegalArgumentException("Volume set exceeds maximum allowed value");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Invalid Volume ");
        }
        this.mMANativeHelper.setGeneratePreview(true);
        this.mVolumePercent = i2;
    }

    public AudioTrack(VideoEditor videoEditor, String str, String str2) {
        this(videoEditor, str, str2, 0L, 0L, -1L, false, 100, false, false, 0, 0, null);
    }

    public AudioTrack(VideoEditor videoEditor, String str, String str2, long j2, long j3, long j4, boolean z2, int i2, boolean z3, boolean z4, int i3, int i4, String str3) throws IOException {
        File file = new File(str2);
        if (!file.exists()) {
            throw new IOException(str2 + " not found ! ");
        }
        if (VideoEditor.MAX_SUPPORTED_FILE_SIZE > file.length()) {
            if (videoEditor instanceof VideoEditorImpl) {
                MediaArtistNativeHelper nativeContext = ((VideoEditorImpl) videoEditor).getNativeContext();
                this.mMANativeHelper = nativeContext;
                try {
                    MediaArtistNativeHelper.Properties mediaProperties = nativeContext.getMediaProperties(str2);
                    int fileType = nativeContext.getFileType(mediaProperties.fileType);
                    if (fileType != 0 && fileType != 1 && fileType != 2 && fileType != 3) {
                        throw new IllegalArgumentException("Unsupported input file type: " + fileType);
                    }
                    int audioCodecType = nativeContext.getAudioCodecType(mediaProperties.audioFormat);
                    if (audioCodecType != 1 && audioCodecType != 2 && audioCodecType != 5 && audioCodecType != 8) {
                        throw new IllegalArgumentException("Unsupported Audio Codec Format in Input File");
                    }
                    long j5 = j4 == -1 ? mediaProperties.audioDuration : j4;
                    this.mUniqueId = str;
                    this.mFilename = str2;
                    this.mStartTimeMs = j2;
                    this.mDurationMs = mediaProperties.audioDuration;
                    this.mAudioChannels = mediaProperties.audioChannels;
                    this.mAudioBitrate = mediaProperties.audioBitrate;
                    this.mAudioSamplingFrequency = mediaProperties.audioSamplingFrequency;
                    this.mAudioType = mediaProperties.audioFormat;
                    this.mTimelineDurationMs = j5 - j3;
                    this.mVolumePercent = i2;
                    this.mBeginBoundaryTimeMs = j3;
                    this.mEndBoundaryTimeMs = j5;
                    this.mLoop = z2;
                    this.mMuted = z3;
                    this.mIsDuckingEnabled = z4;
                    this.mDuckingThreshold = i3;
                    this.mDuckedTrackVolume = i4;
                    this.mAudioWaveformFilename = str3;
                    if (str3 != null) {
                        this.mWaveformData = new SoftReference<>(new WaveformData(str3));
                        return;
                    } else {
                        this.mWaveformData = null;
                        return;
                    }
                } catch (Exception e2) {
                    throw new IllegalArgumentException(e2.getMessage() + " : " + str2);
                }
            }
            throw new IllegalArgumentException("editor is not of type VideoEditorImpl");
        }
        throw new IllegalArgumentException("File size is more than 2GB");
    }
}
