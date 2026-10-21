package android.speech.tts;

import java.util.LinkedList;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
final class SynthesisPlaybackQueueItem extends PlaybackQueueItem {
    private static final boolean DBG = false;
    private static final long MAX_UNCONSUMED_AUDIO_MS = 500;
    private static final String TAG = "TTS.SynthQueueItem";
    private final BlockingAudioTrack mAudioTrack;
    private final LinkedList<ListEntry> mDataBufferList;
    private volatile boolean mDone;
    private volatile boolean mIsError;
    private final Lock mListLock;
    private final EventLogger mLogger;
    private final Condition mNotFull;
    private final Condition mReadReady;
    private volatile boolean mStopped;
    private int mUnconsumedBytes;

    public static final class ListEntry {
        public final byte[] mBytes;

        public ListEntry(byte[] bArr) {
            this.mBytes = bArr;
        }
    }

    public SynthesisPlaybackQueueItem(int i2, int i3, int i4, int i5, float f2, float f3, TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj, EventLogger eventLogger) {
        super(utteranceProgressDispatcher, obj);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.mListLock = reentrantLock;
        this.mReadReady = reentrantLock.newCondition();
        this.mNotFull = reentrantLock.newCondition();
        this.mDataBufferList = new LinkedList<>();
        this.mUnconsumedBytes = 0;
        this.mStopped = false;
        this.mDone = false;
        this.mIsError = false;
        this.mAudioTrack = new BlockingAudioTrack(i2, i3, i4, i5, f2, f3);
        this.mLogger = eventLogger;
    }

    private byte[] take() {
        ListEntry listEntryPoll;
        try {
            this.mListLock.lock();
            while (this.mDataBufferList.size() == 0 && !this.mStopped && !this.mDone) {
                this.mReadReady.await();
            }
            if (!this.mStopped && (listEntryPoll = this.mDataBufferList.poll()) != null) {
                this.mUnconsumedBytes -= listEntryPoll.mBytes.length;
                this.mNotFull.signal();
                return listEntryPoll.mBytes;
            }
            return null;
        } finally {
            this.mListLock.unlock();
        }
    }

    public void done() {
        try {
            this.mListLock.lock();
            this.mDone = true;
            this.mReadReady.signal();
            this.mNotFull.signal();
        } finally {
            this.mListLock.unlock();
        }
    }

    public void put(byte[] bArr) {
        try {
            this.mListLock.lock();
            while (this.mAudioTrack.getAudioLengthMs(this.mUnconsumedBytes) > MAX_UNCONSUMED_AUDIO_MS && !this.mStopped) {
                this.mNotFull.await();
            }
            if (this.mStopped) {
                return;
            }
            this.mDataBufferList.add(new ListEntry(bArr));
            this.mUnconsumedBytes += bArr.length;
            this.mReadReady.signal();
        } finally {
            this.mListLock.unlock();
        }
    }

    @Override // android.speech.tts.PlaybackQueueItem, java.lang.Runnable
    public void run() {
        TextToSpeechService.UtteranceProgressDispatcher dispatcher = getDispatcher();
        dispatcher.dispatchOnStart();
        if (!this.mAudioTrack.init()) {
            dispatcher.dispatchOnError();
            return;
        }
        while (true) {
            try {
                byte[] bArrTake = take();
                if (bArrTake == null) {
                    break;
                }
                this.mAudioTrack.write(bArrTake);
                this.mLogger.onAudioDataWritten();
            } catch (InterruptedException unused) {
            }
        }
        this.mAudioTrack.waitAndRelease();
        if (this.mIsError) {
            dispatcher.dispatchOnError();
        } else {
            dispatcher.dispatchOnDone();
        }
        this.mLogger.onWriteData();
    }

    @Override // android.speech.tts.PlaybackQueueItem
    public void stop(boolean z2) {
        try {
            this.mListLock.lock();
            this.mStopped = true;
            this.mIsError = z2;
            this.mReadReady.signal();
            this.mNotFull.signal();
            this.mListLock.unlock();
            this.mAudioTrack.stop();
        } catch (Throwable th) {
            this.mListLock.unlock();
            throw th;
        }
    }
}
