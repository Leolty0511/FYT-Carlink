package android.hardware.soundtrigger;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class SoundTriggerModule {
    private static final int EVENT_RECOGNITION = 1;
    private static final int EVENT_SERVICE_DIED = 2;
    private static final int EVENT_SERVICE_STATE_CHANGE = 4;
    private static final int EVENT_SOUNDMODEL = 3;
    private NativeEventHandlerDelegate mEventHandlerDelegate;
    private int mId;
    private long mNativeContext;

    public class NativeEventHandlerDelegate {
        private final Handler mHandler;

        public NativeEventHandlerDelegate(final SoundTrigger.StatusListener statusListener, Handler handler) {
            Looper looper = handler != null ? handler.getLooper() : Looper.getMainLooper();
            if (looper != null) {
                this.mHandler = new Handler(looper) { // from class: android.hardware.soundtrigger.SoundTriggerModule.NativeEventHandlerDelegate.1
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        SoundTrigger.StatusListener statusListener2;
                        int i2 = message.what;
                        if (i2 == 1) {
                            SoundTrigger.StatusListener statusListener3 = statusListener;
                            if (statusListener3 != null) {
                                statusListener3.onRecognition((SoundTrigger.RecognitionEvent) message.obj);
                                return;
                            }
                            return;
                        }
                        if (i2 == 2) {
                            SoundTrigger.StatusListener statusListener4 = statusListener;
                            if (statusListener4 != null) {
                                statusListener4.onServiceDied();
                                return;
                            }
                            return;
                        }
                        if (i2 != 3) {
                            if (i2 == 4 && (statusListener2 = statusListener) != null) {
                                statusListener2.onServiceStateChange(message.arg1);
                                return;
                            }
                            return;
                        }
                        SoundTrigger.StatusListener statusListener5 = statusListener;
                        if (statusListener5 != null) {
                            statusListener5.onSoundModelUpdate((SoundTrigger.SoundModelEvent) message.obj);
                        }
                    }
                };
            } else {
                this.mHandler = null;
            }
        }

        public Handler handler() {
            return this.mHandler;
        }
    }

    public SoundTriggerModule(int i2, SoundTrigger.StatusListener statusListener, Handler handler) {
        this.mId = i2;
        this.mEventHandlerDelegate = new NativeEventHandlerDelegate(statusListener, handler);
        native_setup(new WeakReference(this));
    }

    private native void native_finalize();

    private native void native_setup(Object obj);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        NativeEventHandlerDelegate nativeEventHandlerDelegate;
        Handler handler;
        SoundTriggerModule soundTriggerModule = (SoundTriggerModule) ((WeakReference) obj).get();
        if (soundTriggerModule == null || (nativeEventHandlerDelegate = soundTriggerModule.mEventHandlerDelegate) == null || (handler = nativeEventHandlerDelegate.handler()) == null) {
            return;
        }
        handler.sendMessage(handler.obtainMessage(i2, i3, i4, obj2));
    }

    public native void detach();

    public void finalize() {
        native_finalize();
    }

    public native int loadSoundModel(SoundTrigger.SoundModel soundModel, int[] iArr);

    public native int startRecognition(int i2, SoundTrigger.RecognitionConfig recognitionConfig);

    public native int stopRecognition(int i2);

    public native int unloadSoundModel(int i2);
}
