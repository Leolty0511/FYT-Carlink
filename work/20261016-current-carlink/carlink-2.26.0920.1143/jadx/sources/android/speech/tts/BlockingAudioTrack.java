package android.speech.tts;

import android.media.AudioFormat;
import android.media.AudioTrack;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
class BlockingAudioTrack {
    private static final boolean DBG = false;
    private static final long MAX_PROGRESS_WAIT_MS = 2500;
    private static final long MAX_SLEEP_TIME_MS = 2500;
    private static final int MIN_AUDIO_BUFFER_SIZE = 8192;
    private static final long MIN_SLEEP_TIME_MS = 20;
    private static final String TAG = "TTS.BlockingAudioTrack";
    private final int mAudioFormat;
    private final TextToSpeechService.AudioOutputParams mAudioParams;
    private final int mBytesPerFrame;
    private int mBytesWritten;
    private final int mChannelCount;
    private final int mSampleRateInHz;
    private int mSessionId;
    private Object mAudioTrackLock = new Object();
    private boolean mIsShortUtterance = false;
    private int mAudioBufferSize = 0;
    private AudioTrack mAudioTrack = null;
    private volatile boolean mStopped = false;

    public BlockingAudioTrack(TextToSpeechService.AudioOutputParams audioOutputParams, int i2, int i3, int i4) {
        this.mBytesWritten = 0;
        this.mAudioParams = audioOutputParams;
        this.mSampleRateInHz = i2;
        this.mAudioFormat = i3;
        this.mChannelCount = i4;
        this.mBytesPerFrame = AudioFormat.getBytesPerSample(i3) * i4;
        this.mBytesWritten = 0;
    }

    private void blockUntilCompletion(AudioTrack audioTrack) {
        int i2 = this.mBytesWritten / this.mBytesPerFrame;
        int i3 = -1;
        long j2 = 0;
        while (true) {
            int playbackHeadPosition = audioTrack.getPlaybackHeadPosition();
            if (playbackHeadPosition >= i2 || audioTrack.getPlayState() != 3 || this.mStopped) {
                return;
            }
            long jClip = clip(((i2 - playbackHeadPosition) * 1000) / audioTrack.getSampleRate(), MIN_SLEEP_TIME_MS, 2500L);
            if (playbackHeadPosition == i3) {
                j2 += jClip;
                if (j2 > 2500) {
                    Log.w(TAG, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting");
                    return;
                }
            } else {
                j2 = 0;
            }
            try {
                Thread.sleep(jClip);
                i3 = playbackHeadPosition;
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    private void blockUntilDone(AudioTrack audioTrack) {
        if (this.mBytesWritten <= 0) {
            return;
        }
        if (this.mIsShortUtterance) {
            blockUntilEstimatedCompletion();
        } else {
            blockUntilCompletion(audioTrack);
        }
    }

    private void blockUntilEstimatedCompletion() {
        try {
            Thread.sleep(((this.mBytesWritten / this.mBytesPerFrame) * 1000) / this.mSampleRateInHz);
        } catch (InterruptedException unused) {
        }
    }

    private static final float clip(float f2, float f3, float f4) {
        if (f2 < f3) {
            return f3;
        }
        return f2 < f4 ? f2 : f4;
    }

    private AudioTrack createStreamingAudioTrack() {
        int channelConfig = getChannelConfig(this.mChannelCount);
        int iMax = Math.max(8192, AudioTrack.getMinBufferSize(this.mSampleRateInHz, channelConfig, this.mAudioFormat));
        AudioFormat audioFormatBuild = new AudioFormat.Builder().setChannelMask(channelConfig).setEncoding(this.mAudioFormat).setSampleRate(this.mSampleRateInHz).build();
        TextToSpeechService.AudioOutputParams audioOutputParams = this.mAudioParams;
        AudioTrack audioTrack = new AudioTrack(audioOutputParams.mAudioAttributes, audioFormatBuild, iMax, 1, audioOutputParams.mSessionId);
        if (audioTrack.getState() != 1) {
            Log.w(TAG, "Unable to create audio track.");
            audioTrack.release();
            return null;
        }
        this.mAudioBufferSize = iMax;
        TextToSpeechService.AudioOutputParams audioOutputParams2 = this.mAudioParams;
        setupVolume(audioTrack, audioOutputParams2.mVolume, audioOutputParams2.mPan);
        return audioTrack;
    }

    public static int getChannelConfig(int i2) {
        if (i2 == 1) {
            return 4;
        }
        return i2 == 2 ? 12 : 0;
    }

    private static void setupVolume(AudioTrack audioTrack, float f2, float f3) {
        float f4;
        float fClip = clip(f2, 0.0f, 1.0f);
        float fClip2 = clip(f3, -1.0f, 1.0f);
        if (fClip2 > 0.0f) {
            float f5 = (1.0f - fClip2) * fClip;
            f4 = fClip;
            fClip = f5;
        } else {
            f4 = fClip2 < 0.0f ? (fClip2 + 1.0f) * fClip : fClip;
        }
        if (audioTrack.setStereoVolume(fClip, f4) != 0) {
            Log.e(TAG, "Failed to set volume");
        }
    }

    private static int writeToAudioTrack(AudioTrack audioTrack, byte[] bArr) {
        int iWrite;
        if (audioTrack.getPlayState() != 3) {
            audioTrack.play();
        }
        int i2 = 0;
        while (i2 < bArr.length && (iWrite = audioTrack.write(bArr, i2, bArr.length)) > 0) {
            i2 += iWrite;
        }
        return i2;
    }

    public long getAudioLengthMs(int i2) {
        return ((i2 / this.mBytesPerFrame) * 1000) / this.mSampleRateInHz;
    }

    public boolean init() {
        AudioTrack audioTrackCreateStreamingAudioTrack = createStreamingAudioTrack();
        synchronized (this.mAudioTrackLock) {
            this.mAudioTrack = audioTrackCreateStreamingAudioTrack;
        }
        return audioTrackCreateStreamingAudioTrack != null;
    }

    public void setNotificationMarkerPosition(int i2) {
        synchronized (this.mAudioTrackLock) {
            AudioTrack audioTrack = this.mAudioTrack;
            if (audioTrack != null) {
                audioTrack.setNotificationMarkerPosition(i2);
            }
        }
    }

    public void setPlaybackPositionUpdateListener(AudioTrack.OnPlaybackPositionUpdateListener onPlaybackPositionUpdateListener) {
        synchronized (this.mAudioTrackLock) {
            AudioTrack audioTrack = this.mAudioTrack;
            if (audioTrack != null) {
                audioTrack.setPlaybackPositionUpdateListener(onPlaybackPositionUpdateListener);
            }
        }
    }

    public void stop() {
        synchronized (this.mAudioTrackLock) {
            AudioTrack audioTrack = this.mAudioTrack;
            if (audioTrack != null) {
                audioTrack.stop();
            }
            this.mStopped = true;
        }
    }

    public void waitAndRelease() {
        AudioTrack audioTrack;
        synchronized (this.mAudioTrackLock) {
            audioTrack = this.mAudioTrack;
        }
        if (audioTrack == null) {
            return;
        }
        if (this.mBytesWritten < this.mAudioBufferSize && !this.mStopped) {
            this.mIsShortUtterance = true;
            audioTrack.stop();
        }
        if (!this.mStopped) {
            blockUntilDone(this.mAudioTrack);
        }
        synchronized (this.mAudioTrackLock) {
            this.mAudioTrack = null;
        }
        audioTrack.release();
    }

    public int write(byte[] bArr) {
        AudioTrack audioTrack;
        synchronized (this.mAudioTrackLock) {
            audioTrack = this.mAudioTrack;
        }
        if (audioTrack == null || this.mStopped) {
            return -1;
        }
        int iWriteToAudioTrack = writeToAudioTrack(audioTrack, bArr);
        this.mBytesWritten += iWriteToAudioTrack;
        return iWriteToAudioTrack;
    }

    private static final long clip(long j2, long j3, long j4) {
        if (j2 < j3) {
            return j3;
        }
        return j2 < j4 ? j2 : j4;
    }
}
