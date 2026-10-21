package android.speech.tts;

import android.app.m;
import android.media.AudioFormat;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
class FileSynthesisCallback extends AbstractSynthesisCallback {
    private static final boolean DBG = false;
    private static final int MAX_AUDIO_BUFFER_SIZE = 8192;
    private static final String TAG = "FileSynthesisRequest";
    private static final short WAV_FORMAT_PCM = 1;
    private static final int WAV_HEADER_LENGTH = 44;
    private int mAudioFormat;
    private int mChannelCount;
    private final TextToSpeechService.UtteranceProgressDispatcher mDispatcher;
    private boolean mDone;
    private FileChannel mFileChannel;
    private int mSampleRateInHz;
    private boolean mStarted;
    private final Object mStateLock;
    protected int mStatusCode;

    public FileSynthesisCallback(FileChannel fileChannel, TextToSpeechService.UtteranceProgressDispatcher utteranceProgressDispatcher, boolean z2) {
        super(z2);
        this.mStateLock = new Object();
        this.mStarted = false;
        this.mDone = false;
        this.mFileChannel = fileChannel;
        this.mDispatcher = utteranceProgressDispatcher;
        this.mStatusCode = 0;
    }

    private void cleanUp() {
        closeFile();
    }

    private void closeFile() {
        this.mFileChannel = null;
    }

    private ByteBuffer makeWavHeader(int i2, int i3, int i4, int i5) {
        int bytesPerSample = AudioFormat.getBytesPerSample(i3);
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[44]);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferWrap.put(new byte[]{82, 73, 70, 70});
        byteBufferWrap.putInt((i5 + 44) - 8);
        byteBufferWrap.put(new byte[]{87, 65, 86, 69});
        byteBufferWrap.put(new byte[]{102, 109, 116, 32});
        byteBufferWrap.putInt(16);
        byteBufferWrap.putShort((short) 1);
        byteBufferWrap.putShort((short) i4);
        byteBufferWrap.putInt(i2);
        byteBufferWrap.putInt(i2 * bytesPerSample * i4);
        byteBufferWrap.putShort((short) (bytesPerSample * i4));
        byteBufferWrap.putShort((short) (bytesPerSample * 8));
        byteBufferWrap.put(new byte[]{100, 97, 116, 97});
        byteBufferWrap.putInt(i5);
        byteBufferWrap.flip();
        return byteBufferWrap;
    }

    @Override // android.speech.tts.SynthesisCallback
    public int audioAvailable(byte[] bArr, int i2, int i3) {
        synchronized (this.mStateLock) {
            int i4 = this.mStatusCode;
            if (i4 == -2) {
                return errorCodeOnStop();
            }
            if (i4 != 0) {
                return -1;
            }
            FileChannel fileChannel = this.mFileChannel;
            if (fileChannel == null) {
                Log.e(TAG, "File not open");
                this.mStatusCode = -5;
                return -1;
            }
            if (!this.mStarted) {
                Log.e(TAG, "Start method was not called");
                return -1;
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i2, bArr2, 0, i3);
            this.mDispatcher.dispatchOnAudioAvailable(bArr2);
            try {
                fileChannel.write(ByteBuffer.wrap(bArr, i2, i3));
                return 0;
            } catch (IOException e2) {
                Log.e(TAG, "Failed to write to output file descriptor", e2);
                synchronized (this.mStateLock) {
                    cleanUp();
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
            int i2 = this.mStatusCode;
            if (i2 == -2) {
                return errorCodeOnStop();
            }
            if (i2 != 0 && i2 != -2) {
                this.mDispatcher.dispatchOnError(i2);
                return -1;
            }
            FileChannel fileChannel = this.mFileChannel;
            if (fileChannel == null) {
                Log.e(TAG, "File not open");
                return -1;
            }
            this.mDone = true;
            int i3 = this.mSampleRateInHz;
            int i4 = this.mAudioFormat;
            int i5 = this.mChannelCount;
            try {
                fileChannel.position(0L);
                fileChannel.write(makeWavHeader(i3, i4, i5, (int) (fileChannel.size() - 44)));
                synchronized (this.mStateLock) {
                    closeFile();
                    this.mDispatcher.dispatchOnSuccess();
                }
                return 0;
            } catch (IOException e2) {
                Log.e(TAG, "Failed to write to output file descriptor", e2);
                synchronized (this.mStateLock) {
                    cleanUp();
                    return -1;
                }
            }
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
            z2 = this.mStarted;
        }
        return z2;
    }

    @Override // android.speech.tts.AbstractSynthesisCallback, android.speech.tts.SynthesisCallback
    public void rangeStart(int i2, int i3, int i4) {
        this.mDispatcher.dispatchOnRangeStart(i2, i3, i4);
    }

    @Override // android.speech.tts.SynthesisCallback
    public int start(int i2, int i3, int i4) {
        if (i3 != 3 && i3 != 2 && i3 != 4) {
            m.q("Audio format encoding ", i3, " not supported. Please use one of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or AudioFormat.ENCODING_PCM_FLOAT", TAG);
        }
        this.mDispatcher.dispatchOnBeginSynthesis(i2, i3, i4);
        synchronized (this.mStateLock) {
            int i5 = this.mStatusCode;
            if (i5 == -2) {
                return errorCodeOnStop();
            }
            if (i5 != 0) {
                return -1;
            }
            if (this.mStarted) {
                Log.e(TAG, "Start called twice");
                return -1;
            }
            this.mStarted = true;
            this.mSampleRateInHz = i2;
            this.mAudioFormat = i3;
            this.mChannelCount = i4;
            this.mDispatcher.dispatchOnStart();
            FileChannel fileChannel = this.mFileChannel;
            try {
                fileChannel.write(ByteBuffer.allocate(44));
                return 0;
            } catch (IOException e2) {
                Log.e(TAG, "Failed to write wav header to output file descriptor", e2);
                synchronized (this.mStateLock) {
                    cleanUp();
                    this.mStatusCode = -5;
                    return -1;
                }
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
                return;
            }
            this.mStatusCode = -2;
            cleanUp();
            this.mDispatcher.dispatchOnStop();
        }
    }

    @Override // android.speech.tts.SynthesisCallback
    public void error(int i2) {
        synchronized (this.mStateLock) {
            if (this.mDone) {
                return;
            }
            cleanUp();
            this.mStatusCode = i2;
        }
    }
}
