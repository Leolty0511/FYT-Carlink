package android.speech;

import android.Manifest;
import android.app.Service;
import android.content.Intent;
import android.content.PermissionChecker;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RecognitionService extends Service {
    private static final boolean DBG = false;
    private static final int MSG_CANCEL = 3;
    private static final int MSG_RESET = 4;
    private static final int MSG_START_LISTENING = 1;
    private static final int MSG_STOP_LISTENING = 2;
    public static final String SERVICE_INTERFACE = "android.speech.RecognitionService";
    public static final String SERVICE_META_DATA = "android.speech";
    private static final String TAG = "RecognitionService";
    private RecognitionServiceBinder mBinder = new RecognitionServiceBinder(this);
    private Callback mCurrentCallback = null;
    private final Handler mHandler = new Handler() { // from class: android.speech.RecognitionService.1
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i2 = message.what;
            if (i2 == 1) {
                StartListeningArgs startListeningArgs = (StartListeningArgs) message.obj;
                RecognitionService.this.dispatchStartListening(startListeningArgs.mIntent, startListeningArgs.mListener, startListeningArgs.mCallingUid);
            } else if (i2 == 2) {
                RecognitionService.this.dispatchStopListening((IRecognitionListener) message.obj);
            } else if (i2 == 3) {
                RecognitionService.this.dispatchCancel((IRecognitionListener) message.obj);
            } else {
                if (i2 != 4) {
                    return;
                }
                RecognitionService.this.dispatchClearCallback();
            }
        }
    };

    public class Callback {
        private final int mCallingUid;
        private final IRecognitionListener mListener;

        public void beginningOfSpeech() {
            this.mListener.onBeginningOfSpeech();
        }

        public void bufferReceived(byte[] bArr) {
            this.mListener.onBufferReceived(bArr);
        }

        public void endOfSpeech() {
            this.mListener.onEndOfSpeech();
        }

        public void error(int i2) {
            Message.obtain(RecognitionService.this.mHandler, 4).sendToTarget();
            this.mListener.onError(i2);
        }

        public int getCallingUid() {
            return this.mCallingUid;
        }

        public void partialResults(Bundle bundle) {
            this.mListener.onPartialResults(bundle);
        }

        public void readyForSpeech(Bundle bundle) {
            this.mListener.onReadyForSpeech(bundle);
        }

        public void results(Bundle bundle) {
            Message.obtain(RecognitionService.this.mHandler, 4).sendToTarget();
            this.mListener.onResults(bundle);
        }

        public void rmsChanged(float f2) {
            this.mListener.onRmsChanged(f2);
        }

        private Callback(IRecognitionListener iRecognitionListener, int i2) {
            this.mListener = iRecognitionListener;
            this.mCallingUid = i2;
        }
    }

    public static final class RecognitionServiceBinder extends IRecognitionService.Stub {
        private final WeakReference<RecognitionService> mServiceRef;

        public RecognitionServiceBinder(RecognitionService recognitionService) {
            this.mServiceRef = new WeakReference<>(recognitionService);
        }

        @Override // android.speech.IRecognitionService
        public void cancel(IRecognitionListener iRecognitionListener) {
            RecognitionService recognitionService = this.mServiceRef.get();
            if (recognitionService == null || !recognitionService.checkPermissions(iRecognitionListener)) {
                return;
            }
            recognitionService.mHandler.sendMessage(Message.obtain(recognitionService.mHandler, 3, iRecognitionListener));
        }

        public void clearReference() {
            this.mServiceRef.clear();
        }

        @Override // android.speech.IRecognitionService
        public void startListening(Intent intent, IRecognitionListener iRecognitionListener) {
            RecognitionService recognitionService = this.mServiceRef.get();
            if (recognitionService == null || !recognitionService.checkPermissions(iRecognitionListener)) {
                return;
            }
            recognitionService.mHandler.sendMessage(Message.obtain(recognitionService.mHandler, 1, recognitionService.new StartListeningArgs(intent, iRecognitionListener, Binder.getCallingUid())));
        }

        @Override // android.speech.IRecognitionService
        public void stopListening(IRecognitionListener iRecognitionListener) {
            RecognitionService recognitionService = this.mServiceRef.get();
            if (recognitionService == null || !recognitionService.checkPermissions(iRecognitionListener)) {
                return;
            }
            recognitionService.mHandler.sendMessage(Message.obtain(recognitionService.mHandler, 2, iRecognitionListener));
        }
    }

    public class StartListeningArgs {
        public final int mCallingUid;
        public final Intent mIntent;
        public final IRecognitionListener mListener;

        public StartListeningArgs(Intent intent, IRecognitionListener iRecognitionListener, int i2) {
            this.mIntent = intent;
            this.mListener = iRecognitionListener;
            this.mCallingUid = i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkPermissions(IRecognitionListener iRecognitionListener) {
        if (PermissionChecker.checkCallingOrSelfPermission(this, Manifest.permission.RECORD_AUDIO) == 0) {
            return true;
        }
        try {
            Log.e(TAG, "call for recognition service without RECORD_AUDIO permissions");
            iRecognitionListener.onError(9);
            return false;
        } catch (RemoteException e2) {
            Log.e(TAG, "sending ERROR_INSUFFICIENT_PERMISSIONS message failed", e2);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchCancel(IRecognitionListener iRecognitionListener) {
        Callback callback = this.mCurrentCallback;
        if (callback == null) {
            return;
        }
        if (callback.mListener.asBinder() != iRecognitionListener.asBinder()) {
            Log.w(TAG, "cancel called by client who did not call startListening - ignoring");
        } else {
            onCancel(this.mCurrentCallback);
            this.mCurrentCallback = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchClearCallback() {
        this.mCurrentCallback = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchStartListening(Intent intent, final IRecognitionListener iRecognitionListener, int i2) {
        if (this.mCurrentCallback != null) {
            try {
                iRecognitionListener.onError(8);
            } catch (RemoteException unused) {
                Log.d(TAG, "onError call from startListening failed");
            }
            Log.i(TAG, "concurrent startListening received - ignoring this call");
        } else {
            try {
                iRecognitionListener.asBinder().linkToDeath(new IBinder.DeathRecipient() { // from class: android.speech.RecognitionService.2
                    @Override // android.os.IBinder.DeathRecipient
                    public void binderDied() {
                        RecognitionService.this.mHandler.sendMessage(RecognitionService.this.mHandler.obtainMessage(3, iRecognitionListener));
                    }
                }, 0);
                Callback callback = new Callback(iRecognitionListener, i2);
                this.mCurrentCallback = callback;
                onStartListening(intent, callback);
            } catch (RemoteException unused2) {
                Log.e(TAG, "dead listener on startListening");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dispatchStopListening(IRecognitionListener iRecognitionListener) {
        try {
            Callback callback = this.mCurrentCallback;
            if (callback == null) {
                iRecognitionListener.onError(5);
                Log.w(TAG, "stopListening called with no preceding startListening - ignoring");
            } else if (callback.mListener.asBinder() != iRecognitionListener.asBinder()) {
                iRecognitionListener.onError(8);
                Log.w(TAG, "stopListening called by other caller than startListening - ignoring");
            } else {
                onStopListening(this.mCurrentCallback);
            }
        } catch (RemoteException unused) {
            Log.d(TAG, "onError call from stopListening failed");
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    public abstract void onCancel(Callback callback);

    @Override // android.app.Service
    public void onDestroy() {
        this.mCurrentCallback = null;
        this.mBinder.clearReference();
        super.onDestroy();
    }

    public abstract void onStartListening(Intent intent, Callback callback);

    public abstract void onStopListening(Callback callback);
}
