package com.google.android.projection.sink.audio;

import android.accessibilityservice.c;
import android.media.AudioRecord;
import android.util.Log;
import com.google.android.projection.protocol.AudioSource;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class MicrophoneRecorder implements AudioSource.AudioSourceListener {
    private static final int CAPTURE_BUFFER_SIZE = 8192;
    private static final int NUMBER_OF_BITS = 2;
    private static final int NUMBER_OF_CHANNELS = 16;
    private static final String TAG = "AHU.AUDIO_MIC";
    private AudioSource mGalAudioSource;
    private Semaphore mUnackedFrames;
    private static final int SAMPLING_RATE = 16000;
    private static final int BUFFER_SIZE = Math.max(AudioRecord.getMinBufferSize(SAMPLING_RATE, 16, 2) * 4, 8192);
    private AudioSourceThread mAudioThread = new AudioSourceThread();
    private int mSessionId = 0;

    public class AudioSourceThread extends Thread {
        private static final long ACK_TIMEOUT = 500;
        private static final long JOIN_TIMEOUT = 1000;
        private final Object mPauseLock = new Object();
        private volatile boolean mPaused = true;
        private volatile boolean mFinished = false;

        public AudioSourceThread() {
        }

        public void onPause() {
            synchronized (this.mPauseLock) {
                this.mPaused = true;
            }
        }

        public void onResume() {
            synchronized (this.mPauseLock) {
                this.mPaused = false;
                this.mPauseLock.notifyAll();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            AudioRecord audioRecord = null;
            int i2 = 0;
            while (!this.mFinished) {
                if (!this.mPaused && audioRecord == null) {
                    Log.i("AHU.AUDIO_MIC", "start recording");
                    audioRecord = new AudioRecord(1, MicrophoneRecorder.SAMPLING_RATE, 16, 2, MicrophoneRecorder.BUFFER_SIZE * 4);
                    audioRecord.startRecording();
                    i2 = 0;
                }
                while (!this.mPaused && audioRecord != null) {
                    byte[] bArr = new byte[MicrophoneRecorder.BUFFER_SIZE];
                    int i3 = MicrophoneRecorder.BUFFER_SIZE;
                    while (i3 > 0 && !isInterrupted()) {
                        int i4 = audioRecord.read(bArr, MicrophoneRecorder.BUFFER_SIZE - i3, i3);
                        if (i4 < 0) {
                            StringBuilder sbS = c.s("Error reading from AudioRecord ", i4, " while trying to read ");
                            sbS.append(MicrophoneRecorder.BUFFER_SIZE - i3);
                            throw new RuntimeException(sbS.toString());
                        }
                        i3 -= i4;
                    }
                    if (this.mFinished) {
                        break;
                    }
                    MicrophoneRecorder.this.mGalAudioSource.send(0L, bArr);
                    i2++;
                    if (this.mFinished) {
                        break;
                    }
                    try {
                        if (!MicrophoneRecorder.this.mUnackedFrames.tryAcquire(ACK_TIMEOUT, TimeUnit.MILLISECONDS)) {
                            Log.w("AHU.AUDIO_MIC", "mic ACK timeout, move on");
                        }
                    } catch (InterruptedException unused) {
                        Log.e("AHU.AUDIO_MIC", "Dropping audio frame.");
                    }
                }
                if (this.mPaused && audioRecord != null) {
                    Log.i("AHU.AUDIO_MIC", "stopping, sent frames " + i2);
                    audioRecord.stop();
                    audioRecord.release();
                    audioRecord = null;
                }
                synchronized (this.mPauseLock) {
                    while (this.mPaused && !this.mFinished) {
                        try {
                            this.mPauseLock.wait();
                        } catch (InterruptedException unused2) {
                        }
                    }
                }
            }
            Log.d("AHU.AUDIO_MIC", "Reached end of AudioThread");
        }

        public void shutdown() {
            this.mFinished = true;
            this.mPaused = true;
            interrupt();
            synchronized (this.mPauseLock) {
                this.mPauseLock.notifyAll();
            }
            try {
                join(1000L);
            } catch (InterruptedException unused) {
            }
        }
    }

    @Override // com.google.android.projection.protocol.AudioSource.AudioSourceListener
    public void ackCallback(int i2, int i3) {
        this.mUnackedFrames.release(i3);
    }

    public int getNumberOfBits() {
        return 16;
    }

    public int getNumberOfChannels() {
        return 1;
    }

    public int getSamplingRate() {
        return SAMPLING_RATE;
    }

    @Override // com.google.android.projection.protocol.AudioSource.AudioSourceListener
    public int microphoneRequestCallback(boolean z2, boolean z3, boolean z4, int i2) {
        if (z2) {
            this.mUnackedFrames = new Semaphore(i2);
            if (!this.mAudioThread.isAlive()) {
                this.mAudioThread.start();
            }
            this.mAudioThread.onResume();
        } else {
            this.mAudioThread.onPause();
        }
        int i3 = this.mSessionId;
        this.mSessionId = i3 + 1;
        return i3;
    }

    public void setGalAudioSource(AudioSource audioSource) {
        this.mGalAudioSource = audioSource;
    }

    public void stop() {
        AudioSourceThread audioSourceThread = this.mAudioThread;
        if (audioSourceThread != null) {
            audioSourceThread.shutdown();
            this.mAudioThread = null;
        }
    }
}
