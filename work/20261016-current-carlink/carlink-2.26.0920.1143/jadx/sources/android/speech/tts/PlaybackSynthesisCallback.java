package android.speech.tts;

import android.accessibilityservice.c;
import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
class PlaybackSynthesisCallback extends AbstractSynthesisCallback {
    private static final boolean DBG = false;
    private static final int MIN_AUDIO_BUFFER_SIZE = 8192;
    private static final String TAG = "PlaybackSynthesisRequest";
    private final TextToSpeechService.AudioOutputParams mAudioParams;
    private final AudioPlaybackHandler mAudioTrackHandler;
    private final Object mCallerIdentity;
    private final TextToSpeechService.UtteranceProgressDispatcher mDispatcher;
    private volatile boolean mDone;
    private SynthesisPlaybackQueueItem mItem;
    private final AbstractEventLogger mLogger;
    private final Object mStateLock;
    protected int mStatusCode;

    public PlaybackSynthesisCallback(TextToSpeechService.AudioOutputParams audioOutputParams, AudioPlaybackHandler audioPlaybackHandler, TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj, AbstractEventLogger abstractEventLogger, boolean z2) {
        super(z2);
        this.mStateLock = new Object();
        this.mItem = null;
        this.mDone = false;
        this.mAudioParams = audioOutputParams;
        this.mAudioTrackHandler = audioPlaybackHandler;
        this.mDispatcher = utteranceProgressDispatcher;
        this.mCallerIdentity = obj;
        this.mLogger = abstractEventLogger;
        this.mStatusCode = 0;
    }

    @Override // android.speech.tts.SynthesisCallback
    public int audioAvailable(byte[] bArr, int i2, int i3) {
        if (i3 > getMaxBufferSize() || i3 <= 0) {
            throw new IllegalArgumentException(c.e("buffer is too large or of zero length (", i3, " bytes)"));
        }
        synchronized (this.mStateLock) {
            SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = this.mItem;
            if (synthesisPlaybackQueueItem == null) {
                this.mStatusCode = -5;
                return -1;
            }
            int i4 = this.mStatusCode;
            if (i4 != 0) {
                return -1;
            }
            if (i4 == -2) {
                return errorCodeOnStop();
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            this.mDispatcher.dispatchOnAudioAvailable(bArr2);
            try {
                synthesisPlaybackQueueItem.put(bArr2);
                this.mLogger.onEngineDataReceived();
                return 0;
            } catch (InterruptedException unused) {
                synchronized (this.mStateLock) {
                    this.mStatusCode = -5;
                    return -1;
                }
            }
        }
    }

    @Override // android.speech.tts.SynthesisCallback
    public int done() {
        synchronized (this.mStateLock) {
            if (this.mDone) {
                Log.w(TAG, "Duplicate call to done()");
                return -1;
            }
            if (this.mStatusCode == -2) {
                return errorCodeOnStop();
            }
            this.mDone = true;
            SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = this.mItem;
            if (synthesisPlaybackQueueItem != null) {
                int i2 = this.mStatusCode;
                if (i2 == 0) {
                    synthesisPlaybackQueueItem.done();
                } else {
                    synthesisPlaybackQueueItem.stop(i2);
                }
                this.mLogger.onEngineComplete();
                return 0;
            }
            Log.w(TAG, "done() was called before start() call");
            int i3 = this.mStatusCode;
            if (i3 == 0) {
                this.mDispatcher.dispatchOnSuccess();
            } else {
                this.mDispatcher.dispatchOnError(i3);
            }
            this.mLogger.onEngineComplete();
            return -1;
        }
    }

    @Override // android.speech.tts.SynthesisCallback
    public void error() {
        error(-3);
    }

    @Override // android.speech.tts.SynthesisCallback
    public int getMaxBufferSize() {
        return 8192;
    }

    @Override // android.speech.tts.SynthesisCallback
    public boolean hasFinished() {
        boolean z2;
        synchronized (this.mStateLock) {
            z2 = this.mDone;
        }
        return z2;
    }

    @Override // android.speech.tts.SynthesisCallback
    public boolean hasStarted() {
        boolean z2;
        synchronized (this.mStateLock) {
            z2 = this.mItem != null;
        }
        return z2;
    }

    @Override // android.speech.tts.AbstractSynthesisCallback, android.speech.tts.SynthesisCallback
    public void rangeStart(int i2, int i3, int i4) {
        SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = this.mItem;
        if (synthesisPlaybackQueueItem == null) {
            Log.e(TAG, "mItem is null");
        } else {
            synthesisPlaybackQueueItem.rangeStart(i2, i3, i4);
        }
    }

    @Override // android.speech.tts.SynthesisCallback
    public int start(int i2, int i3, int i4) {
        if (i3 != 3 && i3 != 2 && i3 != 4) {
            Log.w(TAG, "Audio format encoding " + i3 + " not supported. Please use one of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or AudioFormat.ENCODING_PCM_FLOAT");
        }
        this.mDispatcher.dispatchOnBeginSynthesis(i2, i3, i4);
        int channelConfig = BlockingAudioTrack.getChannelConfig(i4);
        synchronized (this.mStateLock) {
            try {
                if (channelConfig == 0) {
                    Log.e(TAG, "Unsupported number of channels :" + i4);
                    this.mStatusCode = -5;
                    return -1;
                }
                int i5 = this.mStatusCode;
                if (i5 == -2) {
                    return errorCodeOnStop();
                }
                if (i5 != 0) {
                    return -1;
                }
                if (this.mItem != null) {
                    Log.e(TAG, "Start called twice");
                    return -1;
                }
                SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = new SynthesisPlaybackQueueItem(this.mAudioParams, i2, i3, i4, this.mDispatcher, this.mCallerIdentity, this.mLogger);
                this.mAudioTrackHandler.enqueue(synthesisPlaybackQueueItem);
                this.mItem = synthesisPlaybackQueueItem;
                return 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.speech.tts.AbstractSynthesisCallback
    public void stop() {
        synchronized (this.mStateLock) {
            if (this.mDone) {
                return;
            }
            if (this.mStatusCode == -2) {
                Log.w(TAG, "stop() called twice");
                return;
            }
            SynthesisPlaybackQueueItem synthesisPlaybackQueueItem = this.mItem;
            this.mStatusCode = -2;
            if (synthesisPlaybackQueueItem != null) {
                synthesisPlaybackQueueItem.stop(-2);
            } else {
                this.mLogger.onCompleted(-2);
                this.mDispatcher.dispatchOnStop();
            }
        }
    }

    @Override // android.speech.tts.SynthesisCallback
    public void error(int i2) {
        synchronized (this.mStateLock) {
            if (this.mDone) {
                return;
            }
            this.mStatusCode = i2;
        }
    }
}
