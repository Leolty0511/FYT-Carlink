package android.media.videoeditor;

import android.graphics.Bitmap;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.io.File;
import java.io.IOException;
import java.lang.ref.SoftReference;

/* JADX INFO: loaded from: classes.dex */
public class MediaVideoItem extends MediaItem {
    private final int mAspectRatio;
    private final int mAudioBitrate;
    private final int mAudioChannels;
    private final int mAudioSamplingFrequency;
    private final int mAudioType;
    private String mAudioWaveformFilename;
    private long mBeginBoundaryTimeMs;
    private final long mDurationMs;
    private long mEndBoundaryTimeMs;
    private final int mFileType;
    private final int mFps;
    private final int mHeight;
    private MediaArtistNativeHelper mMANativeHelper;
    private boolean mMuted;
    private final int mVideoBitrate;
    private VideoEditorImpl mVideoEditor;
    private final int mVideoLevel;
    private final int mVideoProfile;
    private final int mVideoRotationDegree;
    private final int mVideoType;
    private int mVolumePercentage;
    private SoftReference<WaveformData> mWaveformData;
    private final int mWidth;

    private MediaVideoItem() {
        this(null, null, null, 0);
    }

    @Override // android.media.videoeditor.MediaItem
    public void addEffect(Effect effect) {
        if (effect instanceof EffectKenBurns) {
            throw new IllegalArgumentException("Ken Burns effects cannot be applied to MediaVideoItem");
        }
        super.addEffect(effect);
    }

    public void extractAudioWaveform(ExtractAudioWaveformProgressListener extractAudioWaveformProgressListener) {
        int i2;
        int i3;
        int i4;
        int i5;
        String projectPath = this.mMANativeHelper.getProjectPath();
        if (this.mAudioWaveformFilename == null) {
            String str = String.format(projectPath + "/audioWaveformFile-" + getId() + ".dat", new Object[0]);
            if (this.mMANativeHelper.getAudioCodecType(this.mAudioType) == 1) {
                i4 = 5;
                i5 = 160;
            } else if (this.mMANativeHelper.getAudioCodecType(this.mAudioType) == 8) {
                i4 = 10;
                i5 = 320;
            } else {
                if (this.mMANativeHelper.getAudioCodecType(this.mAudioType) == 2) {
                    i4 = 32;
                    i5 = 1024;
                } else {
                    i2 = 0;
                    i3 = 0;
                }
                this.mMANativeHelper.generateAudioGraph(getId(), this.mFilename, str, i2, 2, i3, extractAudioWaveformProgressListener, true);
                this.mAudioWaveformFilename = str;
            }
            i2 = i4;
            i3 = i5;
            this.mMANativeHelper.generateAudioGraph(getId(), this.mFilename, str, i2, 2, i3, extractAudioWaveformProgressListener, true);
            this.mAudioWaveformFilename = str;
        }
        this.mWaveformData = new SoftReference<>(new WaveformData(this.mAudioWaveformFilename));
    }

    @Override // android.media.videoeditor.MediaItem
    public int getAspectRatio() {
        return this.mAspectRatio;
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

    @Override // android.media.videoeditor.MediaItem
    public long getDuration() {
        return this.mDurationMs;
    }

    @Override // android.media.videoeditor.MediaItem
    public int getFileType() {
        return this.mFileType;
    }

    public int getFps() {
        return this.mFps;
    }

    @Override // android.media.videoeditor.MediaItem
    public int getHeight() {
        int i2 = this.mVideoRotationDegree;
        return (i2 == 90 || i2 == 270) ? this.mWidth : this.mHeight;
    }

    @Override // android.media.videoeditor.MediaItem
    public Bitmap getThumbnail(int i2, int i3, long j2) {
        int i4;
        int i5;
        if (j2 > this.mDurationMs) {
            throw new IllegalArgumentException("Time Exceeds duration");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("Invalid Time duration");
        }
        if (i2 <= 0 || i3 <= 0) {
            throw new IllegalArgumentException("Invalid Dimensions");
        }
        int i6 = this.mVideoRotationDegree;
        if (i6 == 90 || i6 == 270) {
            i4 = i2;
            i5 = i3;
        } else {
            i5 = i2;
            i4 = i3;
        }
        return this.mMANativeHelper.getPixels(getFilename(), i5, i4, j2, this.mVideoRotationDegree);
    }

    @Override // android.media.videoeditor.MediaItem
    public void getThumbnailList(int i2, int i3, long j2, long j3, int i4, int[] iArr, MediaItem.GetThumbnailListCallback getThumbnailListCallback) {
        int i5;
        int i6;
        if (j2 > j3) {
            throw new IllegalArgumentException("Start time is greater than end time");
        }
        if (j3 > this.mDurationMs) {
            throw new IllegalArgumentException("End time is greater than file duration");
        }
        if (i3 <= 0 || i2 <= 0) {
            throw new IllegalArgumentException("Invalid dimension");
        }
        int i7 = this.mVideoRotationDegree;
        if (i7 == 90 || i7 == 270) {
            i5 = i2;
            i6 = i3;
        } else {
            i6 = i2;
            i5 = i3;
        }
        this.mMANativeHelper.getPixelsList(getFilename(), i6, i5, j2, j3, i4, iArr, getThumbnailListCallback, this.mVideoRotationDegree);
    }

    @Override // android.media.videoeditor.MediaItem
    public long getTimelineDuration() {
        return this.mEndBoundaryTimeMs - this.mBeginBoundaryTimeMs;
    }

    public int getVideoBitrate() {
        return this.mVideoBitrate;
    }

    public MediaArtistNativeHelper.ClipSettings getVideoClipProperties() {
        MediaArtistNativeHelper.ClipSettings clipSettings = new MediaArtistNativeHelper.ClipSettings();
        clipSettings.clipPath = getFilename();
        clipSettings.fileType = this.mMANativeHelper.getMediaItemFileType(getFileType());
        clipSettings.beginCutTime = (int) getBoundaryBeginTime();
        clipSettings.endCutTime = (int) getBoundaryEndTime();
        clipSettings.mediaRendering = this.mMANativeHelper.getMediaItemRenderingMode(getRenderingMode());
        clipSettings.rotationDegree = this.mVideoRotationDegree;
        return clipSettings;
    }

    public int getVideoLevel() {
        return this.mVideoLevel;
    }

    public int getVideoProfile() {
        return this.mVideoProfile;
    }

    public int getVideoType() {
        return this.mVideoType;
    }

    public int getVolume() {
        return this.mVolumePercentage;
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

    @Override // android.media.videoeditor.MediaItem
    public int getWidth() {
        int i2 = this.mVideoRotationDegree;
        return (i2 == 90 || i2 == 270) ? this.mHeight : this.mWidth;
    }

    public void invalidate() {
        if (this.mAudioWaveformFilename != null) {
            new File(this.mAudioWaveformFilename).delete();
            this.mAudioWaveformFilename = null;
        }
    }

    @Override // android.media.videoeditor.MediaItem
    public void invalidateTransitions(long j2, long j3) {
        Transition transition = this.mBeginTransition;
        if (transition != null && isOverlapping(j2, j3, this.mBeginBoundaryTimeMs, transition.getDuration())) {
            this.mBeginTransition.invalidate();
        }
        Transition transition2 = this.mEndTransition;
        if (transition2 != null) {
            long duration = transition2.getDuration();
            if (isOverlapping(j2, j3, this.mEndBoundaryTimeMs - duration, duration)) {
                this.mEndTransition.invalidate();
            }
        }
    }

    public boolean isMuted() {
        return this.mMuted;
    }

    public long renderFrame(SurfaceHolder surfaceHolder, long j2) {
        if (surfaceHolder == null) {
            throw new IllegalArgumentException("Surface Holder is null");
        }
        if (j2 > this.mDurationMs || j2 < 0) {
            throw new IllegalArgumentException("requested time not correct");
        }
        Surface surface = surfaceHolder.getSurface();
        if (surface == null) {
            throw new RuntimeException("Surface could not be retrieved from Surface holder");
        }
        String str = this.mFilename;
        if (str != null) {
            return this.mMANativeHelper.renderMediaItemPreviewFrame(surface, str, j2, this.mWidth, this.mHeight);
        }
        return 0L;
    }

    public void setExtractBoundaries(long j2, long j3) {
        Transition transition;
        Transition transition2;
        long j4 = this.mDurationMs;
        if (j2 > j4) {
            throw new IllegalArgumentException("setExtractBoundaries: Invalid start time");
        }
        if (j3 > j4) {
            throw new IllegalArgumentException("setExtractBoundaries: Invalid end time");
        }
        if (j3 != -1 && j2 >= j3) {
            throw new IllegalArgumentException("setExtractBoundaries: Start time is greater than end time");
        }
        if (j2 < 0 || (j3 != -1 && j3 < 0)) {
            throw new IllegalArgumentException("setExtractBoundaries: Start time or end time is negative");
        }
        this.mMANativeHelper.setGeneratePreview(true);
        if (j2 != this.mBeginBoundaryTimeMs && (transition2 = this.mBeginTransition) != null) {
            transition2.invalidate();
        }
        if (j3 != this.mEndBoundaryTimeMs && (transition = this.mEndTransition) != null) {
            transition.invalidate();
        }
        this.mBeginBoundaryTimeMs = j2;
        this.mEndBoundaryTimeMs = j3;
        adjustTransitions();
        this.mVideoEditor.updateTimelineDuration();
    }

    public void setMute(boolean z2) {
        this.mMANativeHelper.setGeneratePreview(true);
        this.mMuted = z2;
        Transition transition = this.mBeginTransition;
        if (transition != null) {
            transition.invalidate();
        }
        Transition transition2 = this.mEndTransition;
        if (transition2 != null) {
            transition2.invalidate();
        }
    }

    public void setVolume(int i2) {
        if (i2 < 0 || i2 > 100) {
            throw new IllegalArgumentException("Invalid volume");
        }
        this.mVolumePercentage = i2;
    }

    public MediaVideoItem(VideoEditor videoEditor, String str, String str2, int i2) {
        this(videoEditor, str, str2, i2, 0L, -1L, 100, false, null);
    }

    public MediaVideoItem(VideoEditor videoEditor, String str, String str2, int i2, long j2, long j3, int i3, boolean z2, String str3) {
        super(videoEditor, str, str2, i2);
        if (videoEditor instanceof VideoEditorImpl) {
            VideoEditorImpl videoEditorImpl = (VideoEditorImpl) videoEditor;
            this.mMANativeHelper = videoEditorImpl.getNativeContext();
            this.mVideoEditor = videoEditorImpl;
        }
        try {
            MediaArtistNativeHelper.Properties mediaProperties = this.mMANativeHelper.getMediaProperties(str2);
            VideoEditorProfile videoEditorProfile = VideoEditorProfile.get();
            if (videoEditorProfile != null) {
                int i4 = videoEditorProfile.maxInputVideoFrameWidth;
                int i5 = videoEditorProfile.maxInputVideoFrameHeight;
                if (mediaProperties.width <= i4 && mediaProperties.height <= i5) {
                    if (mediaProperties.profileSupported) {
                        if (mediaProperties.levelSupported) {
                            int fileType = this.mMANativeHelper.getFileType(mediaProperties.fileType);
                            if (fileType != 0 && fileType != 1 && fileType != 10) {
                                throw new IllegalArgumentException("Unsupported Input File Type");
                            }
                            int videoCodecType = this.mMANativeHelper.getVideoCodecType(mediaProperties.videoFormat);
                            if (videoCodecType != 1 && videoCodecType != 2 && videoCodecType != 3) {
                                throw new IllegalArgumentException("Unsupported Video Codec Format in Input File");
                            }
                            int i6 = mediaProperties.width;
                            this.mWidth = i6;
                            int i7 = mediaProperties.height;
                            this.mHeight = i7;
                            this.mAspectRatio = this.mMANativeHelper.getAspectRatio(i6, i7);
                            this.mFileType = this.mMANativeHelper.getFileType(mediaProperties.fileType);
                            this.mVideoType = this.mMANativeHelper.getVideoCodecType(mediaProperties.videoFormat);
                            this.mVideoProfile = mediaProperties.profile;
                            this.mVideoLevel = mediaProperties.level;
                            long j4 = mediaProperties.videoDuration;
                            this.mDurationMs = j4;
                            this.mVideoBitrate = mediaProperties.videoBitrate;
                            this.mAudioBitrate = mediaProperties.audioBitrate;
                            this.mFps = (int) mediaProperties.averageFrameRate;
                            this.mAudioType = this.mMANativeHelper.getAudioCodecType(mediaProperties.audioFormat);
                            this.mAudioChannels = mediaProperties.audioChannels;
                            this.mAudioSamplingFrequency = mediaProperties.audioSamplingFrequency;
                            this.mBeginBoundaryTimeMs = j2;
                            this.mEndBoundaryTimeMs = j3 == -1 ? j4 : j3;
                            this.mVolumePercentage = i3;
                            this.mMuted = z2;
                            this.mAudioWaveformFilename = str3;
                            if (str3 != null) {
                                this.mWaveformData = new SoftReference<>(new WaveformData(str3));
                            } else {
                                this.mWaveformData = null;
                            }
                            this.mVideoRotationDegree = mediaProperties.videoRotation;
                            return;
                        }
                        throw new IllegalArgumentException("Unsupported video level " + mediaProperties.level);
                    }
                    throw new IllegalArgumentException("Unsupported video profile " + mediaProperties.profile);
                }
                throw new IllegalArgumentException("Unsupported import resolution. Supported maximum width:" + i4 + " height:" + i5 + ", current width:" + mediaProperties.width + " height:" + mediaProperties.height);
            }
            throw new RuntimeException("Can't get the video editor profile");
        } catch (Exception e2) {
            throw new IllegalArgumentException(e2.getMessage() + " : " + str2);
        }
    }

    @Override // android.media.videoeditor.MediaItem
    public void invalidateTransitions(long j2, long j3, long j4, long j5) {
        Transition transition = this.mBeginTransition;
        if (transition != null) {
            long duration = transition.getDuration();
            boolean zIsOverlapping = isOverlapping(j2, j3, this.mBeginBoundaryTimeMs, duration);
            boolean zIsOverlapping2 = isOverlapping(j4, j5, this.mBeginBoundaryTimeMs, duration);
            if (zIsOverlapping2 != zIsOverlapping) {
                this.mBeginTransition.invalidate();
            } else if (zIsOverlapping2 && (j2 != j4 || j2 + j3 <= duration || j4 + j5 <= duration)) {
                this.mBeginTransition.invalidate();
            }
        }
        Transition transition2 = this.mEndTransition;
        if (transition2 != null) {
            long duration2 = transition2.getDuration();
            boolean zIsOverlapping3 = isOverlapping(j2, j3, this.mEndBoundaryTimeMs - duration2, duration2);
            boolean zIsOverlapping4 = isOverlapping(j4, j5, this.mEndBoundaryTimeMs - duration2, duration2);
            if (zIsOverlapping4 != zIsOverlapping3) {
                this.mEndTransition.invalidate();
                return;
            }
            if (zIsOverlapping4) {
                if (j2 + j3 == j4 + j5) {
                    long j6 = this.mEndBoundaryTimeMs;
                    if (j2 <= j6 - duration2 && j4 <= j6 - duration2) {
                        return;
                    }
                }
                this.mEndTransition.invalidate();
            }
        }
    }
}
