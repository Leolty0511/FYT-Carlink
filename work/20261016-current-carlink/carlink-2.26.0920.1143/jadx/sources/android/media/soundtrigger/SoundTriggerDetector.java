package android.media.soundtrigger;

import android.hardware.soundtrigger.IRecognitionStatusCallback;
import android.hardware.soundtrigger.SoundTrigger;
import android.media.AudioFormat;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelUuid;
import android.os.RemoteException;
import android.util.Slog;
import com.android.internal.app.ISoundTriggerService;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class SoundTriggerDetector {
    private static final boolean DBG = false;
    private static final int MSG_AVAILABILITY_CHANGED = 1;
    private static final int MSG_DETECTION_ERROR = 3;
    private static final int MSG_DETECTION_PAUSE = 4;
    private static final int MSG_DETECTION_RESUME = 5;
    private static final int MSG_SOUND_TRIGGER_DETECTED = 2;
    public static final int RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS = 2;
    public static final int RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO = 1;
    public static final int RECOGNITION_FLAG_NONE = 0;
    private static final String TAG = "SoundTriggerDetector";
    private final Callback mCallback;
    private final Handler mHandler;
    private final Object mLock = new Object();
    private final RecognitionCallback mRecognitionCallback;
    private final UUID mSoundModelId;
    private final ISoundTriggerService mSoundTriggerService;

    public static abstract class Callback {
        public abstract void onAvailabilityChanged(int i2);

        public abstract void onDetected(EventPayload eventPayload);

        public abstract void onError();

        public abstract void onRecognitionPaused();

        public abstract void onRecognitionResumed();
    }

    public static class EventPayload {
        private final AudioFormat mAudioFormat;
        private final boolean mCaptureAvailable;
        private final int mCaptureSession;
        private final byte[] mData;
        private final boolean mTriggerAvailable;

        public AudioFormat getCaptureAudioFormat() {
            return this.mAudioFormat;
        }

        public Integer getCaptureSession() {
            if (this.mCaptureAvailable) {
                return Integer.valueOf(this.mCaptureSession);
            }
            return null;
        }

        public byte[] getData() {
            if (this.mTriggerAvailable) {
                return null;
            }
            return this.mData;
        }

        public byte[] getTriggerAudio() {
            if (this.mTriggerAvailable) {
                return this.mData;
            }
            return null;
        }

        private EventPayload(boolean z2, boolean z3, AudioFormat audioFormat, int i2, byte[] bArr) {
            this.mTriggerAvailable = z2;
            this.mCaptureAvailable = z3;
            this.mCaptureSession = i2;
            this.mAudioFormat = audioFormat;
            this.mData = bArr;
        }
    }

    public class RecognitionCallback extends IRecognitionStatusCallback.Stub {
        private RecognitionCallback() {
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onError(int i2) {
            Slog.d(SoundTriggerDetector.TAG, "onError()" + i2);
            SoundTriggerDetector.this.mHandler.sendEmptyMessage(3);
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onGenericSoundTriggerDetected(SoundTrigger.GenericRecognitionEvent genericRecognitionEvent) {
            Slog.d(SoundTriggerDetector.TAG, "onGenericSoundTriggerDetected()" + genericRecognitionEvent);
            Message.obtain(SoundTriggerDetector.this.mHandler, 2, new EventPayload(genericRecognitionEvent.triggerInData, genericRecognitionEvent.captureAvailable, genericRecognitionEvent.captureFormat, genericRecognitionEvent.captureSession, genericRecognitionEvent.data)).sendToTarget();
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onKeyphraseDetected(SoundTrigger.KeyphraseRecognitionEvent keyphraseRecognitionEvent) {
            Slog.e(SoundTriggerDetector.TAG, "Ignoring onKeyphraseDetected() called for " + keyphraseRecognitionEvent);
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onRecognitionPaused() {
            Slog.d(SoundTriggerDetector.TAG, "onRecognitionPaused()");
            SoundTriggerDetector.this.mHandler.sendEmptyMessage(4);
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onRecognitionResumed() {
            Slog.d(SoundTriggerDetector.TAG, "onRecognitionResumed()");
            SoundTriggerDetector.this.mHandler.sendEmptyMessage(5);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RecognitionFlags {
    }

    public SoundTriggerDetector(ISoundTriggerService iSoundTriggerService, UUID uuid, Callback callback, Handler handler) {
        this.mSoundTriggerService = iSoundTriggerService;
        this.mSoundModelId = uuid;
        this.mCallback = callback;
        if (handler == null) {
            this.mHandler = new MyHandler();
        } else {
            this.mHandler = new MyHandler(handler.getLooper());
        }
        this.mRecognitionCallback = new RecognitionCallback();
    }

    public void dump(String str, PrintWriter printWriter) {
        synchronized (this.mLock) {
        }
    }

    public boolean startRecognition(int i2) {
        try {
            return this.mSoundTriggerService.startRecognition(new ParcelUuid(this.mSoundModelId), this.mRecognitionCallback, new SoundTrigger.RecognitionConfig((i2 & 1) != 0, (i2 & 2) != 0, null, null)) == 0;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean stopRecognition() {
        try {
            return this.mSoundTriggerService.stopRecognition(new ParcelUuid(this.mSoundModelId), this.mRecognitionCallback) == 0;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public class MyHandler extends Handler {
        public MyHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (SoundTriggerDetector.this.mCallback == null) {
                Slog.w(SoundTriggerDetector.TAG, "Received message: " + message.what + " for NULL callback.");
                return;
            }
            int i2 = message.what;
            if (i2 == 2) {
                SoundTriggerDetector.this.mCallback.onDetected((EventPayload) message.obj);
                return;
            }
            if (i2 == 3) {
                SoundTriggerDetector.this.mCallback.onError();
                return;
            }
            if (i2 == 4) {
                SoundTriggerDetector.this.mCallback.onRecognitionPaused();
            } else if (i2 != 5) {
                super.handleMessage(message);
            } else {
                SoundTriggerDetector.this.mCallback.onRecognitionResumed();
            }
        }

        public MyHandler(Looper looper) {
            super(looper);
        }
    }
}
