package com.google.android.projection.sink.audio;

import android.accessibilityservice.c;
import android.media.AudioTrack;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.Trace;
import android.util.Log;
import android.util.Pair;
import android.view.Surface;
import com.google.android.projection.proto.Protos;
import com.google.android.projection.protocol.AudioSink;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public class AudioPlayer implements AudioSink.AudioListener, AudioFocusManager.FocusChangeListener, AudioTrack.OnPlaybackPositionUpdateListener {
    private static final boolean DBG = true;
    private static final boolean DBG_TRACE = true;
    private static final int DECODED_BUFFER_SIZE = 8192;
    private static final long DEQUEUE_INPUT_BUFFER_TIMEOUT_US = 300000;
    private static final long DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US = 300000;
    private static final long MAX_STOP_WAIT_MS = 5000;
    private static final int NUM_AUDIO_BUFFERS_TO_START_PLAY_48KHZ = 3;
    private static final int NUM_AUDIO_BUFFERS_TO_START_PLAY_DEFAULT = 2;
    private static final long POLLING_INTERVAL_MS = 200;
    private static final int SAMPLING_RATE_48KHZ = 48000;
    private static final String TAG = "AHU.AUDIO";
    private AudioFocusManager mAudioFocusManager;
    private final int mAudioFormat;
    private AudioPlayThread mAudioPlayThread;
    private AudioSink mAudioSink;
    private AudioTrack mAudioTrack;
    private final int mChannelConfig;
    private byte[] mCodecConfig;
    private boolean mIsEncoded;
    private final AudioLatencyChecker mLatencyChecker;
    private int mNumAudioByffersToStartPlay;
    private AudioReceptionThread mReceptionThread;
    private final int mSamplingRate;
    private final int mStreamType;
    private final ArrayBlockingQueue<AudioBuffer> mQ = new ArrayBlockingQueue<>(32);
    private final LinkedList<Pair<Integer, AtomicInteger>> mFramesToAckForSession = new LinkedList<>();
    private final AtomicInteger mFramesReceived = new AtomicInteger(0);
    Callback mCallback = null;
    private final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());

    public class AacOutputHandlingThread extends AudioPlayThread {
        private final MediaCodec mAacDecoder;
        private final byte[] mDecodedBuffer;

        public AacOutputHandlingThread(MediaCodec mediaCodec) {
            super("AacOutput-" + AudioPlayer.this.mStreamType);
            this.mDecodedBuffer = new byte[8192];
            this.mAacDecoder = mediaCodec;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-16);
            Log.i("AHU.AUDIO", "Aac output handling thread starts " + AudioPlayer.this.mStreamType + " AacOutputHandlingThread:" + this);
            while (!shouldQuit()) {
                waitForEvent();
                ByteBuffer[] outputBuffers = this.mAacDecoder.getOutputBuffers();
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                int iDequeueOutputBuffer = 0;
                boolean z2 = false;
                int i2 = 0;
                int i3 = 0;
                while (true) {
                    if (!isPlaying() && iDequeueOutputBuffer < 0) {
                        break;
                    }
                    iDequeueOutputBuffer = this.mAacDecoder.dequeueOutputBuffer(bufferInfo, 300000L);
                    if (iDequeueOutputBuffer == -3) {
                        outputBuffers = this.mAacDecoder.getOutputBuffers();
                    } else if (iDequeueOutputBuffer >= 0) {
                        ByteBuffer byteBuffer = outputBuffers[iDequeueOutputBuffer];
                        byteBuffer.position(bufferInfo.offset);
                        byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
                        int i4 = bufferInfo.flags;
                        if ((i4 & 2) != 0) {
                            this.mAacDecoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                        } else if ((i4 & (-3)) != 0) {
                            outputBuffers = this.mAacDecoder.getOutputBuffers();
                        } else if ((i4 & 4) != 0) {
                            Log.w("AHU.AUDIO", "EOS from AAC decoder");
                        } else {
                            if (AudioPlayer.this.getFrameSizeInBytes() != bufferInfo.size) {
                                StringBuilder sb = new StringBuilder(" protocol buffer size ");
                                sb.append(AudioPlayer.this.getFrameSizeInBytes());
                                sb.append(" while actual size ");
                                c.A(sb, bufferInfo.size, "AHU.AUDIO");
                            }
                            byteBuffer.get(this.mDecodedBuffer, 0, bufferInfo.size);
                            this.mAacDecoder.releaseOutputBuffer(iDequeueOutputBuffer, false);
                            AudioPlayer.this.mAudioTrack.write(this.mDecodedBuffer, 0, bufferInfo.size);
                            i3++;
                            i2 += bufferInfo.size;
                            if (!z2 && i3 == AudioPlayer.this.mNumAudioByffersToStartPlay) {
                                Log.i("AHU.AUDIO", "start play  AacOutputHandlingThread:" + this);
                                AudioPlayer.this.mAudioTrack.play();
                                z2 = true;
                            }
                        }
                    }
                }
                if (!z2) {
                    AudioPlayer.this.mAudioTrack.play();
                }
                AudioPlayer.this.mAudioTrack.stop();
                this.mStopWait.release();
                Log.i("AHU.AUDIO", "bytes written:" + i2);
            }
            Log.i("AHU.AUDIO", "Aac output thread ends " + AudioPlayer.this.mStreamType + " AacOutputHandlingThread:" + this);
        }
    }

    public class AacPlayThread extends AudioPlayThread {
        private MediaCodec mAacDecoder;
        private AacOutputHandlingThread mOutputHandingThread;

        public AacPlayThread() {
            super("Aac-" + AudioPlayer.this.mStreamType);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            boolean z2;
            Process.setThreadPriority(-15);
            Log.i("AHU.AUDIO", "AAC thread starts " + AudioPlayer.this.mStreamType + " AacPlayThread :" + this);
            MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(MediaFormat.MIMETYPE_AUDIO_AAC, AudioPlayer.this.mSamplingRate, AudioPlayer.this.mChannelConfig == 12 ? 2 : 1);
            try {
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType(MediaFormat.MIMETYPE_AUDIO_AAC);
                this.mAacDecoder = mediaCodecCreateDecoderByType;
                mediaCodecCreateDecoderByType.configure(mediaFormatCreateAudioFormat, (Surface) null, (MediaCrypto) null, 0);
                this.mAacDecoder.start();
                AacOutputHandlingThread aacOutputHandlingThread = AudioPlayer.this.new AacOutputHandlingThread(this.mAacDecoder);
                this.mOutputHandingThread = aacOutputHandlingThread;
                aacOutputHandlingThread.start();
                boolean z3 = false;
                while (!shouldQuit()) {
                    waitForEvent();
                    if (isPlaying()) {
                        this.mOutputHandingThread.startPlaying();
                    }
                    ByteBuffer[] inputBuffers = this.mAacDecoder.getInputBuffers();
                    while (true) {
                        if (!isPlaying() && AudioPlayer.this.mQ.peek() == null) {
                            break;
                        }
                        try {
                            AudioBuffer audioBuffer = (AudioBuffer) AudioPlayer.this.mQ.poll(AudioPlayer.POLLING_INTERVAL_MS, TimeUnit.MICROSECONDS);
                            if (audioBuffer != null) {
                                if (AudioPlayer.this.mLatencyChecker != null) {
                                    AudioPlayer.this.mLatencyChecker.onDecoded(audioBuffer.presentationTimeUs);
                                }
                                byte[] bArr = audioBuffer.payload;
                                if (bArr != null) {
                                    z2 = false;
                                } else if (z3 || AudioPlayer.this.mCodecConfig == null) {
                                    Log.i("AHU.AUDIO", "payload null, codecconfigset:" + z3 + " codecConfig:" + Arrays.toString(AudioPlayer.this.mCodecConfig));
                                } else {
                                    bArr = AudioPlayer.this.mCodecConfig;
                                    z3 = true;
                                    z2 = true;
                                }
                                if (Log.isLoggable("AHU.AUDIO", 2)) {
                                    Log.v("AHU.AUDIO", "payload " + Arrays.toString(bArr) + " isCodecConfig:" + z2);
                                }
                                int iDequeueInputBuffer = this.mAacDecoder.dequeueInputBuffer(300000L);
                                if (iDequeueInputBuffer < 0) {
                                    Log.w("AHU.AUDIO", "No input buffer available " + AudioPlayer.this.mStreamType + " AacPlayThread :" + this);
                                } else {
                                    inputBuffers[iDequeueInputBuffer].clear();
                                    inputBuffers[iDequeueInputBuffer].put(bArr);
                                    this.mAacDecoder.queueInputBuffer(iDequeueInputBuffer, 0, bArr.length, audioBuffer.presentationTimeUs, z2 ? 2 : 0);
                                }
                            }
                        } catch (InterruptedException unused) {
                        }
                    }
                    this.mOutputHandingThread.stopPlaying();
                    try {
                        this.mAacDecoder.flush();
                    } catch (IllegalStateException unused2) {
                    }
                    this.mStopWait.release();
                    if (AudioPlayer.this.mQ.size() != 0) {
                        Log.w("AHU.AUDIO", "data still left in Q, clearing " + AudioPlayer.this.mQ.size());
                        AudioPlayer.this.mQ.clear();
                    }
                }
                this.mOutputHandingThread.release();
                this.mAacDecoder.stop();
                this.mAacDecoder.release();
                Log.i("AHU.AUDIO", "AAC thread ends " + AudioPlayer.this.mStreamType + " AacPlayThread :" + this);
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public class AudioBuffer {
        public byte[] payload;
        public long presentationTimeUs;

        private AudioBuffer() {
            this.presentationTimeUs = 0L;
        }
    }

    public abstract class AudioPlayThread extends Thread {
        private boolean mIsPlaying;
        private boolean mShouldQuit;
        protected final Semaphore mStopWait;

        public AudioPlayThread(String str) {
            super(str);
            this.mIsPlaying = false;
            this.mShouldQuit = false;
            this.mStopWait = new Semaphore(0);
        }

        public synchronized boolean isPlaying() {
            return this.mIsPlaying;
        }

        public void release() {
            synchronized (this) {
                this.mIsPlaying = false;
                this.mShouldQuit = true;
                notify();
            }
            try {
                join();
            } catch (InterruptedException unused) {
            }
        }

        public synchronized boolean shouldQuit() {
            return this.mShouldQuit;
        }

        public synchronized void startPlaying() {
            Log.i("AHU.AUDIO", "startPlaying " + AudioPlayer.this.mStreamType + " AudioPlayThread : " + this);
            this.mIsPlaying = true;
            notify();
        }

        public void stopPlaying() {
            Log.i("AHU.AUDIO", "stopPlaying " + AudioPlayer.this.mStreamType + " AudioPlayThread : " + this);
            synchronized (this) {
                if (this.mIsPlaying) {
                    this.mStopWait.drainPermits();
                    this.mIsPlaying = false;
                    notify();
                    try {
                        this.mStopWait.tryAcquire(5000L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        public synchronized void waitForEvent() {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public class AudioReceptionThread {
        private static final long BUFFER_ADD_TIMEOUT_MS = 2000;
        private static final long INIT_WAIT_TIME_MS = 5000;
        private ReceptionHandler mHandler;
        private final Semaphore mInitSemaphore;
        private Looper mLooper;
        private int mPacketsReceivedSinceStart;
        private volatile boolean mReleased;
        private final Thread mThread;

        public class ReceptionHandler extends Handler {
            private static final int DO_RECEIVE = 1;
            private static final int DO_START = 2;
            private static final int DO_STOP = 3;
            private boolean mStarted;

            private ReceptionHandler() {
                this.mStarted = false;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i2 = message.what;
                if (i2 == 1) {
                    Trace.beginSection("audioData");
                    AudioReceptionThread.this.doReceive(message.arg1, (AudioBuffer) message.obj);
                    Trace.endSection();
                    return;
                }
                if (i2 == 2) {
                    this.mStarted = true;
                    Trace.beginSection("audioStart");
                    AudioReceptionThread.this.mPacketsReceivedSinceStart = 0;
                    AudioPlayer.this.safePlay();
                    Trace.endSection();
                    return;
                }
                if (i2 != 3) {
                    return;
                }
                Log.d("AHU.AUDIO", "--------------------------------->>   handleMessage() " + AudioPlayer.this.mStreamType + "  mStarted: " + this.mStarted);
                if (this.mStarted) {
                    this.mStarted = false;
                    Trace.beginSection("audioStop");
                    AudioPlayer.this.safeStop(false);
                    Log.d("AHU.AUDIO", "--------------------------------->> 0");
                    Log.i("AHU.AUDIO", "stream stopped, received:" + AudioReceptionThread.this.mPacketsReceivedSinceStart + " type:" + AudioPlayer.this.mStreamType);
                    int i3 = AudioPlayer.this.mFramesReceived.get();
                    if (i3 != AudioReceptionThread.this.mPacketsReceivedSinceStart) {
                        c.A(c.s("Total received ", i3, " while played only "), AudioReceptionThread.this.mPacketsReceivedSinceStart, "AHU.AUDIO");
                    }
                    Pair pairRemoveFirstSession = AudioPlayer.this.removeFirstSession();
                    if (pairRemoveFirstSession != null) {
                        AudioPlayer.this.ackAllFrames(((Integer) pairRemoveFirstSession.first).intValue(), (AtomicInteger) pairRemoveFirstSession.second);
                    } else {
                        Log.e("AHU.AUDIO", "no first session");
                    }
                    Trace.endSection();
                }
            }
        }

        private AudioReceptionThread() {
            this.mInitSemaphore = new Semaphore(0);
            this.mPacketsReceivedSinceStart = 0;
            this.mReleased = false;
            this.mThread = new Thread() { // from class: com.google.android.projection.sink.audio.AudioPlayer.AudioReceptionThread.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Looper.prepare();
                    AudioReceptionThread.this.mLooper = Looper.myLooper();
                    AudioReceptionThread audioReceptionThread = AudioReceptionThread.this;
                    audioReceptionThread.mHandler = new ReceptionHandler();
                    AudioReceptionThread.this.mInitSemaphore.release();
                    Looper.loop();
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void doReceive(int i2, AudioBuffer audioBuffer) {
            if (audioBuffer.payload != null) {
                AudioPlayer.this.getFramesToAck(i2).incrementAndGet();
                this.mPacketsReceivedSinceStart++;
            }
            try {
                if (AudioPlayer.this.mQ.offer(audioBuffer, BUFFER_ADD_TIMEOUT_MS, TimeUnit.MILLISECONDS)) {
                    return;
                }
                Log.e("AHU.AUDIO", "Dropping audio data " + AudioPlayer.this.mStreamType);
            } catch (InterruptedException unused) {
            }
        }

        public void init() {
            this.mThread.start();
            try {
                this.mInitSemaphore.tryAcquire(5000L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e2) {
                throw new RuntimeException(e2);
            }
        }

        public void receiveAudio(int i2, AudioBuffer audioBuffer) {
            if (this.mReleased) {
                return;
            }
            if (AudioPlayer.this.mLatencyChecker != null) {
                AudioPlayer.this.mLatencyChecker.onReceived(audioBuffer.presentationTimeUs);
            }
            ReceptionHandler receptionHandler = this.mHandler;
            receptionHandler.sendMessage(receptionHandler.obtainMessage(1, i2, 0, audioBuffer));
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void release() {
            this.mReleased = true;
            this.mLooper.quit();
            AudioPlayer.this.safeStop(false);
            Log.d("AHU.AUDIO", "--------------------------------->> 0");
            Log.i("AHU.AUDIO", "release stream stopped, received:" + this.mPacketsReceivedSinceStart + " type:" + AudioPlayer.this.mStreamType);
            int i2 = AudioPlayer.this.mFramesReceived.get();
            if (i2 != this.mPacketsReceivedSinceStart) {
                c.A(c.s("release Total received ", i2, " while played only "), this.mPacketsReceivedSinceStart, "AHU.AUDIO");
            }
            Pair pairRemoveFirstSession = AudioPlayer.this.removeFirstSession();
            if (pairRemoveFirstSession == null) {
                Log.e("AHU.AUDIO", "no first session");
                return;
            }
            AudioPlayer.this.ackAllFrames(((Integer) pairRemoveFirstSession.first).intValue(), (AtomicInteger) pairRemoveFirstSession.second);
        }

        public void startAudio() {
            if (this.mReleased) {
                return;
            }
            ReceptionHandler receptionHandler = this.mHandler;
            receptionHandler.sendMessage(receptionHandler.obtainMessage(2));
        }

        public void stopAudio() {
            Log.d("AHU.AUDIO", "--------------------------------->>   stopAudio() " + AudioPlayer.this.mStreamType + "  mReleased: " + this.mReleased);
            if (this.mReleased) {
                return;
            }
            ReceptionHandler receptionHandler = this.mHandler;
            receptionHandler.sendMessage(receptionHandler.obtainMessage(3));
        }
    }

    public interface Callback {
        void onStart();

        void onStop();
    }

    public class PcmPlayThread extends AudioPlayThread {
        public PcmPlayThread() {
            super("Pcm-" + AudioPlayer.this.mStreamType);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-16);
            Log.i("AHU.AUDIO", "PCM thread starts " + AudioPlayer.this.mStreamType + " PcmPlayThread: " + this);
            while (!shouldQuit()) {
                waitForEvent();
                boolean z2 = false;
                int i2 = 0;
                while (true) {
                    if (!isPlaying() && AudioPlayer.this.mQ.peek() == null) {
                        break;
                    }
                    try {
                        AudioBuffer audioBuffer = (AudioBuffer) AudioPlayer.this.mQ.poll(AudioPlayer.POLLING_INTERVAL_MS, TimeUnit.MICROSECONDS);
                        if (audioBuffer != null) {
                            AudioTrack audioTrack = AudioPlayer.this.mAudioTrack;
                            byte[] bArr = audioBuffer.payload;
                            audioTrack.write(bArr, 0, bArr.length);
                            i2++;
                            if (!z2 && i2 == AudioPlayer.this.mNumAudioByffersToStartPlay) {
                                Log.i("AHU.AUDIO", "start play  PcmPlayThread: " + this);
                                AudioPlayer.this.mAudioTrack.play();
                                z2 = true;
                            }
                        }
                    } catch (InterruptedException unused) {
                    }
                }
                if (!z2) {
                    AudioPlayer.this.mAudioTrack.play();
                }
                AudioPlayer.this.mAudioTrack.stop();
                this.mStopWait.release();
                if (AudioPlayer.this.mQ.size() != 0) {
                    Log.w("AHU.AUDIO", "data still left in Q, clearing " + AudioPlayer.this.mQ.size());
                    AudioPlayer.this.mQ.clear();
                }
                Log.i("AHU.AUDIO", "buffers written:" + i2 + " PcmPlayThread: " + this);
            }
            Log.i("AHU.AUDIO", "PCM thread ends " + AudioPlayer.this.mStreamType + " PcmPlayThread: " + this);
        }
    }

    public AudioPlayer(int i2, int i3, int i4, int i5, AudioLatencyChecker audioLatencyChecker) {
        this.mStreamType = i2;
        this.mSamplingRate = i3;
        this.mChannelConfig = i4;
        this.mAudioFormat = i5;
        this.mLatencyChecker = audioLatencyChecker;
    }

    private void ackAFrame() {
        Pair<Integer, AtomicInteger> sessionPairForFirstSession = getSessionPairForFirstSession();
        if (sessionPairForFirstSession == null) {
            return;
        }
        if (sessionPairForFirstSession.second.getAndDecrement() > 0) {
            this.mAudioSink.ackFrames(sessionPairForFirstSession.first.intValue(), 1);
        } else {
            Log.w("AHU.AUDIO", "try to ack frame while ack <= 0");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ackAllFrames(int i2, AtomicInteger atomicInteger) {
        int i3 = atomicInteger.get();
        while (!atomicInteger.compareAndSet(i3, 0)) {
            i3 = atomicInteger.get();
        }
        if (i3 > 0) {
            this.mAudioSink.ackFrames(i2, i3);
        }
    }

    private void createAudioTrack() {
        int iMax = Math.max(AudioTrack.getMinBufferSize(this.mSamplingRate, this.mChannelConfig, this.mAudioFormat), getFrameSizeInSamples() * 2 * (this.mChannelConfig != 12 ? 1 : 2) * this.mNumAudioByffersToStartPlay);
        this.mAudioTrack = new AudioTrack(this.mStreamType, this.mSamplingRate, this.mChannelConfig, this.mAudioFormat, iMax, 1);
        Log.i("AHU.AUDIO", "AudioTrack minbuffer " + iMax);
        this.mAudioTrack.setPlaybackPositionUpdateListener(this, this.mMainThreadHandler);
        this.mAudioTrack.setPositionNotificationPeriod(getFrameSizeInSamples());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getFrameSizeInBytes() {
        return (this.mStreamType == 3 ? 4 : 2) * getFrameSizeInSamples();
    }

    private int getFrameSizeInSamples() {
        return (!this.mIsEncoded && this.mStreamType == 3) ? 2048 : 1024;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AtomicInteger getFramesToAck(int i2) {
        AtomicInteger atomicInteger;
        synchronized (this.mFramesToAckForSession) {
            Iterator<Pair<Integer, AtomicInteger>> it = this.mFramesToAckForSession.iterator();
            while (true) {
                if (!it.hasNext()) {
                    atomicInteger = null;
                    break;
                }
                Pair<Integer, AtomicInteger> next = it.next();
                if (next.first.intValue() == i2) {
                    atomicInteger = next.second;
                    break;
                }
            }
            if (atomicInteger == null) {
                atomicInteger = new AtomicInteger(0);
                this.mFramesToAckForSession.addLast(new Pair<>(new Integer(i2), atomicInteger));
            }
        }
        return atomicInteger;
    }

    private Pair<Integer, AtomicInteger> getSessionPairForFirstSession() {
        Pair<Integer, AtomicInteger> pairPeek;
        synchronized (this.mFramesToAckForSession) {
            pairPeek = this.mFramesToAckForSession.peek();
        }
        return pairPeek;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Pair<Integer, AtomicInteger> removeFirstSession() {
        Pair<Integer, AtomicInteger> pairPollFirst;
        synchronized (this.mFramesToAckForSession) {
            pairPollFirst = this.mFramesToAckForSession.pollFirst();
        }
        return pairPollFirst;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void safePlay() {
        AudioPlayThread audioPlayThread = this.mAudioPlayThread;
        if (audioPlayThread != null && !audioPlayThread.isPlaying()) {
            this.mAudioPlayThread.startPlaying();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void safeStop(boolean z2) {
        AudioPlayThread audioPlayThread = this.mAudioPlayThread;
        if (audioPlayThread != null && audioPlayThread.isPlaying()) {
            Log.i("AHU.AUDIO", "stop for stream " + this.mStreamType);
            this.mAudioPlayThread.stopPlaying();
            if (z2) {
                this.mQ.clear();
            }
        }
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public synchronized void onAudioData(int i2, long j2, byte[] bArr) {
        if (Log.isLoggable("AHU.AUDIO", 2)) {
            Log.v("AHU.AUDIO", "onAudioData, payload:" + bArr.length);
        }
        if (!this.mAudioFocusManager.canPhonePlay(this.mStreamType)) {
            Log.w("AHU.AUDIO", "audio data from phone without focus");
            this.mAudioSink.ackFrames(i2, 1);
            return;
        }
        this.mFramesReceived.incrementAndGet();
        AudioBuffer audioBuffer = new AudioBuffer();
        audioBuffer.presentationTimeUs = j2;
        audioBuffer.payload = bArr;
        this.mReceptionThread.receiveAudio(i2, audioBuffer);
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public void onCodecConfig(byte[] bArr) {
        Log.i("AHU.AUDIO", "onCodecConfig " + bArr.length + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + ((int) bArr[0]) + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + ((int) bArr[1]));
        AudioBuffer audioBuffer = new AudioBuffer();
        this.mCodecConfig = bArr;
        audioBuffer.presentationTimeUs = 0L;
        audioBuffer.payload = null;
        this.mReceptionThread.receiveAudio(0, audioBuffer);
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onMarkerReached(AudioTrack audioTrack) {
    }

    @Override // android.media.AudioTrack.OnPlaybackPositionUpdateListener
    public void onPeriodicNotification(AudioTrack audioTrack) {
        ackAFrame();
    }

    @Override // com.google.android.projection.sink.audio.AudioFocusManager.FocusChangeListener
    public synchronized void onPhoneFocusChange(int i2, boolean z2) {
        AudioReceptionThread audioReceptionThread;
        Log.i("AHU.AUDIO", "onPhoneFocusChange, state:" + i2);
        if (!this.mAudioFocusManager.canPhonePlay(this.mStreamType) && (audioReceptionThread = this.mReceptionThread) != null) {
            audioReceptionThread.stopAudio();
        }
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public synchronized void onSetUp(int i2) {
        Log.d("AHU.AUDIO", "audio onSetUp " + this.mStreamType);
        if (i2 == Protos.MediaCodecType.MEDIA_CODEC_AUDIO_PCM.getNumber()) {
            this.mIsEncoded = false;
            this.mAudioPlayThread = new PcmPlayThread();
        } else {
            if (i2 != Protos.MediaCodecType.MEDIA_CODEC_AUDIO_AAC_LC.getNumber()) {
                throw new RuntimeException("Unsupported media codec type: " + i2);
            }
            this.mIsEncoded = true;
            this.mAudioPlayThread = new AacPlayThread();
        }
        this.mNumAudioByffersToStartPlay = 2;
        if (this.mIsEncoded && this.mSamplingRate == SAMPLING_RATE_48KHZ) {
            this.mNumAudioByffersToStartPlay = 3;
        }
        createAudioTrack();
        this.mAudioPlayThread.start();
        AudioReceptionThread audioReceptionThread = new AudioReceptionThread();
        this.mReceptionThread = audioReceptionThread;
        audioReceptionThread.init();
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public synchronized void onShutdown() {
        Log.d("AHU.AUDIO", "--------------------------------->>   onShutdown " + this.mStreamType);
        AudioReceptionThread audioReceptionThread = this.mReceptionThread;
        if (audioReceptionThread != null) {
            audioReceptionThread.stopAudio();
            this.mReceptionThread.release();
        }
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public synchronized void onStart(int i2) {
        Log.d("AHU.AUDIO", "audio onStart " + this.mStreamType);
        if (!this.mAudioFocusManager.canPhonePlay(this.mStreamType)) {
            Log.w("AHU.AUDIO", "audio start while no focus " + this.mStreamType);
        } else {
            Callback callback = this.mCallback;
            if (callback != null) {
                callback.onStart();
            }
            this.mFramesReceived.set(0);
            this.mReceptionThread.startAudio();
        }
    }

    @Override // com.google.android.projection.protocol.AudioSink.AudioListener
    public synchronized void onStop(int i2) {
        Log.d("AHU.AUDIO", "audio onStop " + this.mStreamType);
        this.mReceptionThread.stopAudio();
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onStop();
        }
    }

    public synchronized void registerAudioFocusManager(AudioFocusManager audioFocusManager) {
        this.mAudioFocusManager = audioFocusManager;
    }

    public synchronized void registerAudioSink(AudioSink audioSink) {
        this.mAudioSink = audioSink;
    }

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public synchronized void tearDown() {
        safeStop(true);
        onShutdown();
        this.mQ.clear();
        AudioPlayThread audioPlayThread = this.mAudioPlayThread;
        if (audioPlayThread != null) {
            audioPlayThread.release();
        }
        AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            audioTrack.release();
            this.mAudioTrack = null;
        }
    }
}
