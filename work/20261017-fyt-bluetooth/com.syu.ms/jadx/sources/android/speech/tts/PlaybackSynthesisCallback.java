package android.speech.tts;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
class PlaybackSynthesisCallback extends AbstractSynthesisCallback {
    private static final boolean DBG = false;
    private static final int MIN_AUDIO_BUFFER_SIZE = 8192;
    private static final String TAG = "PlaybackSynthesisRequest";
    private final AudioPlaybackHandler mAudioTrackHandler;
    private final Object mCallerIdentity;
    private final TextToSpeechService.UtteranceProgressDispatcher mDispatcher;
    private final EventLogger mLogger;
    private final float mPan;
    private final int mStreamType;
    private final float mVolume;
    private final Object mStateLock = new Object();
    private SynthesisPlaybackQueueItem mItem = null;
    private boolean mStopped = false;
    private volatile boolean mDone = false;

    public PlaybackSynthesisCallback(int i2, float f2, float f3, AudioPlaybackHandler audioPlaybackHandler, TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj, EventLogger eventLogger) {
        this.mStreamType = i2;
        this.mVolume = f2;
        this.mPan = f3;
        this.mAudioTrackHandler = audioPlaybackHandler;
        this.mDispatcher = utteranceProgressDispatcher;
        this.mCallerIdentity = obj;
        this.mLogger = eventLogger;
    }

    @Override // android.speech.tts.SynthesisCallback
    public int audioAvailable(byte[] bArr, int i2, int i3) {
        if (i3 > getMaxBufferSize() || i3 <= 0) {
            throw new IllegalArgumentException("buffer is too large or of zero length (" + i3 + " bytes)");
        }
        synchronized (this.mStateLock) {
            SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = this.mItem;
            if (synthesisPlaybackQueueItem != null && !this.mStopped) {
                byte[] bArr2 = new byte[i3];
                System.arraycopy(bArr, i2, bArr2, 0, i3);
                try {
                    synthesisPlaybackQueueItem.put(bArr2);
                    this.mLogger.onEngineDataReceived();
                    return 0;
                } catch (InterruptedException unused) {
                    return -1;
                }
            }
            return -1;
        }
    }

    @Override // android.speech.tts.SynthesisCallback
    public int done() {
        synchronized (this.mStateLock) {
            if (this.mDone) {
                Log.w(TAG, "Duplicate call to done()");
                return -1;
            }
            this.mDone = true;
            SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = this.mItem;
            if (synthesisPlaybackQueueItem == null) {
                return -1;
            }
            synthesisPlaybackQueueItem.done();
            this.mLogger.onEngineComplete();
            return 0;
        }
    }

    @Override // android.speech.tts.SynthesisCallback
    public void error() {
        this.mLogger.onError();
        stopImpl(true);
    }

    @Override // android.speech.tts.SynthesisCallback
    public int getMaxBufferSize() {
        return 8192;
    }

    @Override // android.speech.tts.AbstractSynthesisCallback
    public boolean isDone() {
        return this.mDone;
    }

    @Override // android.speech.tts.SynthesisCallback
    public int start(int i2, int i3, int i4) {
        if (BlockingAudioTrack.getChannelConfig(i4) == 0) {
            Log.e(TAG, "Unsupported number of channels :" + i4);
            return -1;
        }
        synchronized (this.mStateLock) {
            if (this.mStopped) {
                return -1;
            }
            SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = new SynthesisPlaybackQueueItem(this.mStreamType, i2, i3, i4, this.mVolume, this.mPan, this.mDispatcher, this.mCallerIdentity, this.mLogger);
            this.mAudioTrackHandler.enqueue(synthesisPlaybackQueueItem);
            this.mItem = synthesisPlaybackQueueItem;
            return 0;
        }
    }

    @Override // android.speech.tts.AbstractSynthesisCallback
    public void stop() {
        stopImpl(false);
    }

    public void stopImpl(boolean z2) {
        this.mLogger.onStopped();
        synchronized (this.mStateLock) {
            if (this.mStopped) {
                Log.w(TAG, "stop() called twice");
                return;
            }
            SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = this.mItem;
            this.mStopped = true;
            if (synthesisPlaybackQueueItem != null) {
                synthesisPlaybackQueueItem.stop(z2);
                return;
            }
            this.mLogger.onWriteData();
            if (z2) {
                this.mDispatcher.dispatchOnError();
            }
        }
    }
}
