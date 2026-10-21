package android.service.voice;

import android.content.Intent;
import android.hardware.soundtrigger.IRecognitionStatusCallback;
import android.hardware.soundtrigger.KeyphraseEnrollmentInfo;
import android.hardware.soundtrigger.KeyphraseMetadata;
import android.hardware.soundtrigger.SoundTrigger;
import android.media.AudioFormat;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;
import android.util.Slog;
import com.android.internal.app.IVoiceInteractionManagerService;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public class AlwaysOnHotwordDetector {
    static final boolean DBG = false;
    public static final int MANAGE_ACTION_ENROLL = 0;
    public static final int MANAGE_ACTION_RE_ENROLL = 1;
    public static final int MANAGE_ACTION_UN_ENROLL = 2;
    private static final int MSG_AVAILABILITY_CHANGED = 1;
    private static final int MSG_DETECTION_ERROR = 3;
    private static final int MSG_DETECTION_PAUSE = 4;
    private static final int MSG_DETECTION_RESUME = 5;
    private static final int MSG_HOTWORD_DETECTED = 2;
    public static final int RECOGNITION_FLAG_ALLOW_MULTIPLE_TRIGGERS = 2;
    public static final int RECOGNITION_FLAG_CAPTURE_TRIGGER_AUDIO = 1;
    public static final int RECOGNITION_FLAG_NONE = 0;
    public static final int RECOGNITION_MODE_USER_IDENTIFICATION = 2;
    public static final int RECOGNITION_MODE_VOICE_TRIGGER = 1;
    public static final int STATE_HARDWARE_UNAVAILABLE = -2;
    private static final int STATE_INVALID = -3;
    public static final int STATE_KEYPHRASE_ENROLLED = 2;
    public static final int STATE_KEYPHRASE_UNENROLLED = 1;
    public static final int STATE_KEYPHRASE_UNSUPPORTED = -1;
    private static final int STATE_NOT_READY = 0;
    private static final int STATUS_ERROR = Integer.MIN_VALUE;
    private static final int STATUS_OK = 0;
    static final String TAG = "AlwaysOnHotwordDetector";
    private final Callback mExternalCallback;
    private final Handler mHandler;
    private final SoundTriggerListener mInternalCallback;
    private final KeyphraseEnrollmentInfo mKeyphraseEnrollmentInfo;
    private final KeyphraseMetadata mKeyphraseMetadata;
    private final Locale mLocale;
    private final IVoiceInteractionManagerService mModelManagementService;
    private final String mText;
    private final IVoiceInteractionService mVoiceInteractionService;
    private final Object mLock = new Object();
    private int mAvailability = 0;

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

    @Retention(RetentionPolicy.SOURCE)
    public @interface ManageActions {
    }

    public class MyHandler extends Handler {
        public MyHandler() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (AlwaysOnHotwordDetector.this.mLock) {
                if (AlwaysOnHotwordDetector.this.mAvailability == -3) {
                    Slog.w(AlwaysOnHotwordDetector.TAG, "Received message: " + message.what + " for an invalid detector");
                    return;
                }
                int i2 = message.what;
                if (i2 == 1) {
                    AlwaysOnHotwordDetector.this.mExternalCallback.onAvailabilityChanged(message.arg1);
                    return;
                }
                if (i2 == 2) {
                    AlwaysOnHotwordDetector.this.mExternalCallback.onDetected((EventPayload) message.obj);
                    return;
                }
                if (i2 == 3) {
                    AlwaysOnHotwordDetector.this.mExternalCallback.onError();
                    return;
                }
                if (i2 == 4) {
                    AlwaysOnHotwordDetector.this.mExternalCallback.onRecognitionPaused();
                } else if (i2 != 5) {
                    super.handleMessage(message);
                } else {
                    AlwaysOnHotwordDetector.this.mExternalCallback.onRecognitionResumed();
                }
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RecognitionFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RecognitionModes {
    }

    public class RefreshAvailabiltyTask extends AsyncTask<Void, Void, Void> {
        public RefreshAvailabiltyTask() {
        }

        private int internalGetInitialAvailability() {
            SoundTrigger.ModuleProperties dspModuleProperties;
            synchronized (AlwaysOnHotwordDetector.this.mLock) {
                if (AlwaysOnHotwordDetector.this.mAvailability == -3) {
                    return -3;
                }
                try {
                    dspModuleProperties = AlwaysOnHotwordDetector.this.mModelManagementService.getDspModuleProperties(AlwaysOnHotwordDetector.this.mVoiceInteractionService);
                } catch (RemoteException e2) {
                    Slog.w(AlwaysOnHotwordDetector.TAG, "RemoteException in getDspProperties!", e2);
                    dspModuleProperties = null;
                }
                if (dspModuleProperties == null) {
                    return -2;
                }
                return AlwaysOnHotwordDetector.this.mKeyphraseMetadata == null ? -1 : 0;
            }
        }

        private boolean internalGetIsEnrolled(int i2, Locale locale) {
            try {
                return AlwaysOnHotwordDetector.this.mModelManagementService.isEnrolledForKeyphrase(AlwaysOnHotwordDetector.this.mVoiceInteractionService, i2, locale.toLanguageTag());
            } catch (RemoteException e2) {
                Slog.w(AlwaysOnHotwordDetector.TAG, "RemoteException in listRegisteredKeyphraseSoundModels!", e2);
                return false;
            }
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void... voidArr) {
            int iInternalGetInitialAvailability = internalGetInitialAvailability();
            if (iInternalGetInitialAvailability == 0 || iInternalGetInitialAvailability == 1 || iInternalGetInitialAvailability == 2) {
                iInternalGetInitialAvailability = !internalGetIsEnrolled(AlwaysOnHotwordDetector.this.mKeyphraseMetadata.id, AlwaysOnHotwordDetector.this.mLocale) ? 1 : 2;
            }
            synchronized (AlwaysOnHotwordDetector.this.mLock) {
                AlwaysOnHotwordDetector.this.mAvailability = iInternalGetInitialAvailability;
                AlwaysOnHotwordDetector.this.notifyStateChangedLocked();
            }
            return null;
        }
    }

    public static final class SoundTriggerListener extends IRecognitionStatusCallback.Stub {
        private final Handler mHandler;

        public SoundTriggerListener(Handler handler) {
            this.mHandler = handler;
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onError(int i2) {
            Slog.i(AlwaysOnHotwordDetector.TAG, "onError: " + i2);
            this.mHandler.sendEmptyMessage(3);
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onGenericSoundTriggerDetected(SoundTrigger.GenericRecognitionEvent genericRecognitionEvent) {
            Slog.w(AlwaysOnHotwordDetector.TAG, "Generic sound trigger event detected at AOHD: " + genericRecognitionEvent);
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onKeyphraseDetected(SoundTrigger.KeyphraseRecognitionEvent keyphraseRecognitionEvent) {
            Slog.i(AlwaysOnHotwordDetector.TAG, "onDetected");
            Message.obtain(this.mHandler, 2, new EventPayload(keyphraseRecognitionEvent.triggerInData, keyphraseRecognitionEvent.captureAvailable, keyphraseRecognitionEvent.captureFormat, keyphraseRecognitionEvent.captureSession, keyphraseRecognitionEvent.data)).sendToTarget();
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onRecognitionPaused() {
            Slog.i(AlwaysOnHotwordDetector.TAG, "onRecognitionPaused");
            this.mHandler.sendEmptyMessage(4);
        }

        @Override // android.hardware.soundtrigger.IRecognitionStatusCallback
        public void onRecognitionResumed() {
            Slog.i(AlwaysOnHotwordDetector.TAG, "onRecognitionResumed");
            this.mHandler.sendEmptyMessage(5);
        }
    }

    public AlwaysOnHotwordDetector(String str, Locale locale, Callback callback, KeyphraseEnrollmentInfo keyphraseEnrollmentInfo, IVoiceInteractionService iVoiceInteractionService, IVoiceInteractionManagerService iVoiceInteractionManagerService) {
        this.mText = str;
        this.mLocale = locale;
        this.mKeyphraseEnrollmentInfo = keyphraseEnrollmentInfo;
        this.mKeyphraseMetadata = keyphraseEnrollmentInfo.getKeyphraseMetadata(str, locale);
        this.mExternalCallback = callback;
        MyHandler myHandler = new MyHandler();
        this.mHandler = myHandler;
        this.mInternalCallback = new SoundTriggerListener(myHandler);
        this.mVoiceInteractionService = iVoiceInteractionService;
        this.mModelManagementService = iVoiceInteractionManagerService;
        new RefreshAvailabiltyTask().execute(new Void[0]);
    }

    private Intent getManageIntentLocked(int i2) {
        int i3 = this.mAvailability;
        if (i3 == -3) {
            throw new IllegalStateException("getManageIntent called on an invalid detector");
        }
        if (i3 == 2 || i3 == 1) {
            return this.mKeyphraseEnrollmentInfo.getManageKeyphraseIntent(i2, this.mText, this.mLocale);
        }
        throw new UnsupportedOperationException("Managing the given keyphrase is not supported");
    }

    private int getSupportedRecognitionModesLocked() {
        int i2 = this.mAvailability;
        if (i2 == -3) {
            throw new IllegalStateException("getSupportedRecognitionModes called on an invalid detector");
        }
        if (i2 == 2 || i2 == 1) {
            return this.mKeyphraseMetadata.recognitionModeFlags;
        }
        throw new UnsupportedOperationException("Getting supported recognition modes for the keyphrase is not supported");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyStateChangedLocked() {
        Message messageObtain = Message.obtain(this.mHandler, 1);
        messageObtain.arg1 = this.mAvailability;
        messageObtain.sendToTarget();
    }

    private int startRecognitionLocked(int i2) {
        int iStartRecognition;
        KeyphraseMetadata keyphraseMetadata = this.mKeyphraseMetadata;
        try {
            iStartRecognition = this.mModelManagementService.startRecognition(this.mVoiceInteractionService, this.mKeyphraseMetadata.id, this.mLocale.toLanguageTag(), this.mInternalCallback, new SoundTrigger.RecognitionConfig((i2 & 1) != 0, (i2 & 2) != 0, new SoundTrigger.KeyphraseRecognitionExtra[]{new SoundTrigger.KeyphraseRecognitionExtra(keyphraseMetadata.id, keyphraseMetadata.recognitionModeFlags, 0, new SoundTrigger.ConfidenceLevel[0])}, null));
        } catch (RemoteException e2) {
            Slog.w(TAG, "RemoteException in startRecognition!", e2);
            iStartRecognition = Integer.MIN_VALUE;
        }
        if (iStartRecognition != 0) {
            Slog.w(TAG, "startRecognition() failed with error code " + iStartRecognition);
        }
        return iStartRecognition;
    }

    private int stopRecognitionLocked() {
        int iStopRecognition;
        try {
            iStopRecognition = this.mModelManagementService.stopRecognition(this.mVoiceInteractionService, this.mKeyphraseMetadata.id, this.mInternalCallback);
        } catch (RemoteException e2) {
            Slog.w(TAG, "RemoteException in stopRecognition!", e2);
            iStopRecognition = Integer.MIN_VALUE;
        }
        if (iStopRecognition != 0) {
            Slog.w(TAG, "stopRecognition() failed with error code " + iStopRecognition);
        }
        return iStopRecognition;
    }

    public Intent createEnrollIntent() {
        Intent manageIntentLocked;
        synchronized (this.mLock) {
            manageIntentLocked = getManageIntentLocked(0);
        }
        return manageIntentLocked;
    }

    public Intent createReEnrollIntent() {
        Intent manageIntentLocked;
        synchronized (this.mLock) {
            manageIntentLocked = getManageIntentLocked(1);
        }
        return manageIntentLocked;
    }

    public Intent createUnEnrollIntent() {
        Intent manageIntentLocked;
        synchronized (this.mLock) {
            manageIntentLocked = getManageIntentLocked(2);
        }
        return manageIntentLocked;
    }

    public void dump(String str, PrintWriter printWriter) {
        synchronized (this.mLock) {
            printWriter.print(str);
            printWriter.print("Text=");
            printWriter.println(this.mText);
            printWriter.print(str);
            printWriter.print("Locale=");
            printWriter.println(this.mLocale);
            printWriter.print(str);
            printWriter.print("Availability=");
            printWriter.println(this.mAvailability);
            printWriter.print(str);
            printWriter.print("KeyphraseMetadata=");
            printWriter.println(this.mKeyphraseMetadata);
            printWriter.print(str);
            printWriter.print("EnrollmentInfo=");
            printWriter.println(this.mKeyphraseEnrollmentInfo);
        }
    }

    public int getSupportedRecognitionModes() {
        int supportedRecognitionModesLocked;
        synchronized (this.mLock) {
            supportedRecognitionModesLocked = getSupportedRecognitionModesLocked();
        }
        return supportedRecognitionModesLocked;
    }

    public void invalidate() {
        synchronized (this.mLock) {
            this.mAvailability = -3;
            notifyStateChangedLocked();
        }
    }

    public void onSoundModelsChanged() {
        synchronized (this.mLock) {
            int i2 = this.mAvailability;
            if (i2 != -3 && i2 != -2 && i2 != -1) {
                stopRecognitionLocked();
                new RefreshAvailabiltyTask().execute(new Void[0]);
                return;
            }
            Slog.w(TAG, "Received onSoundModelsChanged for an unsupported keyphrase/config");
        }
    }

    public boolean startRecognition(int i2) {
        boolean z2;
        synchronized (this.mLock) {
            int i3 = this.mAvailability;
            if (i3 == -3) {
                throw new IllegalStateException("startRecognition called on an invalid detector");
            }
            if (i3 != 2) {
                throw new UnsupportedOperationException("Recognition for the given keyphrase is not supported");
            }
            z2 = startRecognitionLocked(i2) == 0;
        }
        return z2;
    }

    public boolean stopRecognition() {
        boolean z2;
        synchronized (this.mLock) {
            int i2 = this.mAvailability;
            if (i2 == -3) {
                throw new IllegalStateException("stopRecognition called on an invalid detector");
            }
            if (i2 != 2) {
                throw new UnsupportedOperationException("Recognition for the given keyphrase is not supported");
            }
            z2 = stopRecognitionLocked() == 0;
        }
        return z2;
    }
}
