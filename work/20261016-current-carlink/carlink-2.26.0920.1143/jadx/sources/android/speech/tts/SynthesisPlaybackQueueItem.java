package android.speech.tts;

import android.media.AudioTrack;
import android.util.Log;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
final class SynthesisPlaybackQueueItem extends PlaybackQueueItem implements AudioTrack.OnPlaybackPositionUpdateListener {
    private static final boolean DBG = false;
    private static final long MAX_UNCONSUMED_AUDIO_MS = 500;
    private static final String TAG = "TTS.SynthQueueItem";
    private final BlockingAudioTrack mAudioTrack;
    private final LinkedList<ListEntry> mDataBufferList;
    private volatile boolean mDone;
    private final Lock mListLock;
    private final AbstractEventLogger mLogger;
    private final Condition mNotFull;
    private final Condition mReadReady;
    private volatile int mStatusCode;
    private volatile boolean mStopped;
    private int mUnconsumedBytes;
    private ConcurrentLinkedQueue<ProgressMarker> markerList;

    public static final class ListEntry {
        final byte[] mBytes;

        public ListEntry(byte[] bArr) {
            this.mBytes = bArr;
        }
    }

    public class ProgressMarker {
        public final int end;
        public final int frames;
        public final int start;

        public ProgressMarker(int i2, int i3, int i4) {
            this.frames = i2;
            this.start = i3;
            this.end = i4;
        }
    }

    public SynthesisPlaybackQueueItem(TextToSpeechService.AudioOutputParams audioOutputParams, int i2, int i3, int i4, TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, Object obj, AbstractEventLogger abstractEventLogger) {
        super(utteranceProgressDispatcher, obj);
        ReentrantLock reentrantLock = new ReentrantLock();
        this.mListLock = reentrantLock;
        this.mReadReady = reentrantLock.newCondition();
        this.mNotFull = reentrantLock.newCondition();
        this.mDataBufferList = new LinkedList<>();
        this.markerList = new ConcurrentLinkedQueue<>();
        this.mUnconsumedBytes = 0;
        this.mStopped = false;
        this.mDone = false;
        this.mStatusCode = 0;
        this.mAudioTrack = new BlockingAudioTrack(audioOutputParams, i2, i3, i4);
        this.mLogger = abstractEventLogger;
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

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onMarkerReached(AudioTrack audioTrack) {
        ProgressMarker progressMarkerPoll = this.markerList.poll();
        if (progressMarkerPoll == null) {
            Log.e(TAG, "onMarkerReached reached called but no marker in queue");
        } else {
            getDispatcher().dispatchOnRangeStart(progressMarkerPoll.start, progressMarkerPoll.end, progressMarkerPoll.frames);
            updateMarker();
        }
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onPeriodicNotification(AudioTrack audioTrack) {
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

    public void rangeStart(int i2, int i3, int i4) {
        this.markerList.add(new ProgressMarker(i2, i3, i4));
        updateMarker();
    }

    @Override // android.speech.tts.PlaybackQueueItem, java.lang.Runnable
    public void run() {
        TextToSpeechService.UtteranceProgressDispatcher dispatcher = getDispatcher();
        dispatcher.dispatchOnStart();
        if (!this.mAudioTrack.init()) {
            dispatcher.dispatchOnError(-5);
            return;
        }
        this.mAudioTrack.setPlaybackPositionUpdateListener(this);
        updateMarker();
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
        if (this.mStatusCode == 0) {
            dispatcher.dispatchOnSuccess();
        } else if (this.mStatusCode == -2) {
            dispatcher.dispatchOnStop();
        } else {
            dispatcher.dispatchOnError(this.mStatusCode);
        }
        this.mLogger.onCompleted(this.mStatusCode);
    }

    @Override // android.speech.tts.PlaybackQueueItem
    public void stop(int i2) {
        try {
            this.mListLock.lock();
            this.mStopped = true;
            this.mStatusCode = i2;
            this.mReadReady.signal();
            this.mNotFull.signal();
            this.mListLock.unlock();
            this.mAudioTrack.stop();
        } catch (Throwable th) {
            this.mListLock.unlock();
            throw th;
        }
    }

    public void updateMarker() {
        ProgressMarker progressMarkerPeek = this.markerList.peek();
        if (progressMarkerPeek != null) {
            int i2 = progressMarkerPeek.frames;
            if (i2 == 0) {
                i2 = 1;
            }
            this.mAudioTrack.setNotificationMarkerPosition(i2);
        }
    }
}
