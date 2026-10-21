package android.media;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class AudioPortEventHandler {
    private static final int AUDIOPORT_EVENT_NEW_LISTENER = 4;
    private static final int AUDIOPORT_EVENT_PATCH_LIST_UPDATED = 2;
    private static final int AUDIOPORT_EVENT_PORT_LIST_UPDATED = 1;
    private static final int AUDIOPORT_EVENT_SERVICE_DIED = 3;
    private static final String TAG = "AudioPortEventHandler";
    private Handler mHandler;
    private long mJniCallback;
    private final ArrayList<AudioManager.OnAudioPortUpdateListener> mListeners = new ArrayList<>();

    private native void native_finalize();

    private native void native_setup(Object obj);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        Handler handler;
        AudioPortEventHandler audioPortEventHandler = (AudioPortEventHandler) ((WeakReference) obj).get();
        if (audioPortEventHandler == null || (handler = audioPortEventHandler.handler()) == null) {
            return;
        }
        handler.sendMessage(handler.obtainMessage(i2, i3, i4, obj2));
    }

    public void finalize() {
        native_finalize();
    }

    public Handler handler() {
        return this.mHandler;
    }

    public void init() {
        synchronized (this) {
            if (this.mHandler != null) {
                return;
            }
            Looper mainLooper = Looper.getMainLooper();
            if (mainLooper != null) {
                this.mHandler = new Handler(mainLooper) { // from class: android.media.AudioPortEventHandler.1
                    /* JADX WARN: Code duplicated, block: B:35:0x0080 A[LOOP:2: B:33:0x007a->B:35:0x0080, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
                    @Override // android.os.Handler
                    public void handleMessage(Message message) {
                        ArrayList arrayList;
                        AudioPort[] audioPortArr;
                        int i2;
                        synchronized (this) {
                            if (message.what == 4) {
                                arrayList = new ArrayList();
                                if (AudioPortEventHandler.this.mListeners.contains(message.obj)) {
                                    arrayList.add((AudioManager.OnAudioPortUpdateListener) message.obj);
                                }
                            } else {
                                arrayList = AudioPortEventHandler.this.mListeners;
                            }
                        }
                        int i3 = message.what;
                        if (i3 == 1 || i3 == 2 || i3 == 3) {
                            AudioManager.resetAudioPortGeneration();
                        }
                        if (arrayList.isEmpty()) {
                            return;
                        }
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList arrayList3 = new ArrayList();
                        if (message.what == 3 || AudioManager.updateAudioPortCache(arrayList2, arrayList3, null) == 0) {
                            int i4 = message.what;
                            int i5 = 0;
                            if (i4 == 1) {
                                audioPortArr = (AudioPort[]) arrayList2.toArray(new AudioPort[0]);
                                for (i2 = 0; i2 < arrayList.size(); i2++) {
                                    ((AudioManager.OnAudioPortUpdateListener) arrayList.get(i2)).onAudioPortListUpdate(audioPortArr);
                                }
                                if (message.what == 1) {
                                    return;
                                }
                            } else if (i4 != 2) {
                                if (i4 == 3) {
                                    while (i5 < arrayList.size()) {
                                        ((AudioManager.OnAudioPortUpdateListener) arrayList.get(i5)).onServiceDied();
                                        i5++;
                                    }
                                    return;
                                }
                                if (i4 != 4) {
                                    return;
                                }
                                audioPortArr = (AudioPort[]) arrayList2.toArray(new AudioPort[0]);
                                while (i2 < arrayList.size()) {
                                    ((AudioManager.OnAudioPortUpdateListener) arrayList.get(i2)).onAudioPortListUpdate(audioPortArr);
                                }
                                if (message.what == 1) {
                                    return;
                                }
                            }
                            AudioPatch[] audioPatchArr = (AudioPatch[]) arrayList3.toArray(new AudioPatch[0]);
                            while (i5 < arrayList.size()) {
                                ((AudioManager.OnAudioPortUpdateListener) arrayList.get(i5)).onAudioPatchListUpdate(audioPatchArr);
                                i5++;
                            }
                        }
                    }
                };
                native_setup(new WeakReference(this));
            } else {
                this.mHandler = null;
            }
        }
    }

    public void registerListener(AudioManager.OnAudioPortUpdateListener onAudioPortUpdateListener) {
        synchronized (this) {
            this.mListeners.add(onAudioPortUpdateListener);
        }
        Handler handler = this.mHandler;
        if (handler != null) {
            this.mHandler.sendMessage(handler.obtainMessage(4, 0, 0, onAudioPortUpdateListener));
        }
    }

    public void unregisterListener(AudioManager.OnAudioPortUpdateListener onAudioPortUpdateListener) {
        synchronized (this) {
            this.mListeners.remove(onAudioPortUpdateListener);
        }
    }
}
