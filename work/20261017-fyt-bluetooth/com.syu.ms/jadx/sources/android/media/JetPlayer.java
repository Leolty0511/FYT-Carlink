package android.media;

import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.AndroidRuntimeException;
import android.util.Log;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class JetPlayer {
    private static final int JET_EVENT = 1;
    private static final int JET_EVENT_CHAN_MASK = 245760;
    private static final int JET_EVENT_CHAN_SHIFT = 14;
    private static final int JET_EVENT_CTRL_MASK = 16256;
    private static final int JET_EVENT_CTRL_SHIFT = 7;
    private static final int JET_EVENT_SEG_MASK = -16777216;
    private static final int JET_EVENT_SEG_SHIFT = 24;
    private static final int JET_EVENT_TRACK_MASK = 16515072;
    private static final int JET_EVENT_TRACK_SHIFT = 18;
    private static final int JET_EVENT_VAL_MASK = 127;
    private static final int JET_NUMQUEUEDSEGMENT_UPDATE = 3;
    private static final int JET_OUTPUT_CHANNEL_CONFIG = 12;
    private static final int JET_OUTPUT_RATE = 22050;
    private static final int JET_PAUSE_UPDATE = 4;
    private static final int JET_USERID_UPDATE = 2;
    private static int MAXTRACKS = 32;
    private static final String TAG = "JetPlayer-J";
    private static JetPlayer singletonRef;
    private Looper mInitializationLooper;
    private int mNativePlayerInJavaObj;
    private NativeEventHandler mEventHandler = null;
    private final Object mEventListenerLock = new Object();
    private OnJetEventListener mJetEventListener = null;

    public class NativeEventHandler extends Handler {
        private JetPlayer mJet;

        public NativeEventHandler(JetPlayer jetPlayer, Looper looper) {
            super(looper);
            this.mJet = jetPlayer;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            OnJetEventListener onJetEventListener;
            synchronized (JetPlayer.this.mEventListenerLock) {
                onJetEventListener = this.mJet.mJetEventListener;
            }
            int i2 = message.what;
            if (i2 == 1) {
                if (onJetEventListener != null) {
                    OnJetEventListener onJetEventListener2 = JetPlayer.this.mJetEventListener;
                    JetPlayer jetPlayer = this.mJet;
                    int i3 = message.arg1;
                    onJetEventListener2.onJetEvent(jetPlayer, (short) (((-16777216) & i3) >> 24), (byte) ((JetPlayer.JET_EVENT_TRACK_MASK & i3) >> 18), (byte) (((JetPlayer.JET_EVENT_CHAN_MASK & i3) >> 14) + 1), (byte) ((i3 & JetPlayer.JET_EVENT_CTRL_MASK) >> 7), (byte) (i3 & 127));
                    return;
                }
                return;
            }
            if (i2 == 2) {
                if (onJetEventListener != null) {
                    onJetEventListener.onJetUserIdUpdate(this.mJet, message.arg1, message.arg2);
                }
            } else if (i2 == 3) {
                if (onJetEventListener != null) {
                    onJetEventListener.onJetNumQueuedSegmentUpdate(this.mJet, message.arg1);
                }
            } else if (i2 == 4) {
                if (onJetEventListener != null) {
                    onJetEventListener.onJetPauseUpdate(this.mJet, message.arg1);
                }
            } else {
                JetPlayer.loge("Unknown message type " + message.what);
            }
        }
    }

    public interface OnJetEventListener {
        void onJetEvent(JetPlayer jetPlayer, short s2, byte b2, byte b3, byte b4, byte b5);

        void onJetNumQueuedSegmentUpdate(JetPlayer jetPlayer, int i2);

        void onJetPauseUpdate(JetPlayer jetPlayer, int i2);

        void onJetUserIdUpdate(JetPlayer jetPlayer, int i2, int i3);
    }

    private JetPlayer() {
        this.mInitializationLooper = null;
        Looper looperMyLooper = Looper.myLooper();
        this.mInitializationLooper = looperMyLooper;
        if (looperMyLooper == null) {
            this.mInitializationLooper = Looper.getMainLooper();
        }
        int minBufferSize = AudioTrack.getMinBufferSize(22050, 12, 2);
        if (minBufferSize == -1 || minBufferSize == -2) {
            return;
        }
        native_setup(new WeakReference(this), getMaxTracks(), Math.max(1200, minBufferSize / 4));
    }

    public static JetPlayer getJetPlayer() {
        if (singletonRef == null) {
            singletonRef = new JetPlayer();
        }
        return singletonRef;
    }

    public static int getMaxTracks() {
        return MAXTRACKS;
    }

    private static void logd(String str) {
        Log.d(TAG, "[ android.media.JetPlayer ] " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void loge(String str) {
        Log.e(TAG, "[ android.media.JetPlayer ] " + str);
    }

    private final native boolean native_clearQueue();

    private final native boolean native_closeJetFile();

    private final native void native_finalize();

    private final native boolean native_loadJetFromFile(String str);

    private final native boolean native_loadJetFromFileD(FileDescriptor fileDescriptor, long j2, long j3);

    private final native boolean native_pauseJet();

    private final native boolean native_playJet();

    private final native boolean native_queueJetSegment(int i2, int i3, int i4, int i5, int i6, byte b2);

    private final native boolean native_queueJetSegmentMuteArray(int i2, int i3, int i4, int i5, boolean[] zArr, byte b2);

    private final native void native_release();

    private final native boolean native_setMuteArray(boolean[] zArr, boolean z2);

    private final native boolean native_setMuteFlag(int i2, boolean z2, boolean z3);

    private final native boolean native_setMuteFlags(int i2, boolean z2);

    private final native boolean native_setup(Object obj, int i2, int i3);

    private final native boolean native_triggerClip(int i2);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4) {
        NativeEventHandler nativeEventHandler;
        JetPlayer jetPlayer = (JetPlayer) ((WeakReference) obj).get();
        if (jetPlayer == null || (nativeEventHandler = jetPlayer.mEventHandler) == null) {
            return;
        }
        jetPlayer.mEventHandler.sendMessage(nativeEventHandler.obtainMessage(i2, i3, i4, null));
    }

    public boolean clearQueue() {
        return native_clearQueue();
    }

    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }

    public boolean closeJetFile() {
        return native_closeJetFile();
    }

    public void finalize() {
        native_finalize();
    }

    public boolean loadJetFile(String str) {
        return native_loadJetFromFile(str);
    }

    public boolean pause() {
        return native_pauseJet();
    }

    public boolean play() {
        return native_playJet();
    }

    public boolean queueJetSegment(int i2, int i3, int i4, int i5, int i6, byte b2) {
        return native_queueJetSegment(i2, i3, i4, i5, i6, b2);
    }

    public boolean queueJetSegmentMuteArray(int i2, int i3, int i4, int i5, boolean[] zArr, byte b2) {
        if (zArr.length != getMaxTracks()) {
            return false;
        }
        return native_queueJetSegmentMuteArray(i2, i3, i4, i5, zArr, b2);
    }

    public void release() {
        native_release();
        singletonRef = null;
    }

    public void setEventListener(OnJetEventListener onJetEventListener) {
        setEventListener(onJetEventListener, null);
    }

    public boolean setMuteArray(boolean[] zArr, boolean z2) {
        if (zArr.length != getMaxTracks()) {
            return false;
        }
        return native_setMuteArray(zArr, z2);
    }

    public boolean setMuteFlag(int i2, boolean z2, boolean z3) {
        return native_setMuteFlag(i2, z2, z3);
    }

    public boolean setMuteFlags(int i2, boolean z2) {
        return native_setMuteFlags(i2, z2);
    }

    public boolean triggerClip(int i2) {
        return native_triggerClip(i2);
    }

    public boolean loadJetFile(AssetFileDescriptor assetFileDescriptor) {
        long length = assetFileDescriptor.getLength();
        if (length >= 0) {
            return native_loadJetFromFileD(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), length);
        }
        throw new AndroidRuntimeException("no length for fd");
    }

    public void setEventListener(OnJetEventListener onJetEventListener, Handler handler) {
        synchronized (this.mEventListenerLock) {
            this.mJetEventListener = onJetEventListener;
            if (onJetEventListener == null) {
                this.mEventHandler = null;
            } else if (handler != null) {
                this.mEventHandler = new NativeEventHandler(this, handler.getLooper());
            } else {
                this.mEventHandler = new NativeEventHandler(this, this.mInitializationLooper);
            }
        }
    }
}
