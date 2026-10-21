package android.media;

import android.app.m;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.util.AndroidRuntimeException;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class SoundPool extends PlayerBase {
    private static final boolean DEBUG;
    private static final int SAMPLE_LOADED = 1;
    private static final String TAG = "SoundPool";
    private final AudioAttributes mAttributes;
    private EventHandler mEventHandler;
    private boolean mHasAppOpsPlayAudio;
    private final Object mLock;
    private long mNativeContext;
    private OnLoadCompleteListener mOnLoadCompleteListener;

    public static class Builder {
        private AudioAttributes mAudioAttributes;
        private int mMaxStreams = 1;

        public SoundPool build() {
            if (this.mAudioAttributes == null) {
                this.mAudioAttributes = new AudioAttributes.Builder().setUsage(1).build();
            }
            return new SoundPool(this.mMaxStreams, this.mAudioAttributes);
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            if (audioAttributes == null) {
                throw new IllegalArgumentException("Invalid null AudioAttributes");
            }
            this.mAudioAttributes = audioAttributes;
            return this;
        }

        public Builder setMaxStreams(int i2) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("Strictly positive value required for the maximum number of streams");
            }
            this.mMaxStreams = i2;
            return this;
        }
    }

    public final class EventHandler extends Handler {
        public EventHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                m.C(new StringBuilder("Unknown message type "), message.what, SoundPool.TAG);
                return;
            }
            if (SoundPool.DEBUG) {
                Log.d(SoundPool.TAG, "Sample " + message.arg1 + " loaded");
            }
            synchronized (SoundPool.this.mLock) {
                if (SoundPool.this.mOnLoadCompleteListener != null) {
                    SoundPool.this.mOnLoadCompleteListener.onLoadComplete(SoundPool.this, message.arg1, message.arg2);
                }
            }
        }
    }

    public interface OnLoadCompleteListener {
        void onLoadComplete(SoundPool soundPool, int i2, int i3);
    }

    static {
        System.loadLibrary("soundpool");
        DEBUG = Log.isLoggable(TAG, 3);
    }

    private final native int _load(FileDescriptor fileDescriptor, long j2, long j3, int i2);

    private final native void _mute(boolean z2);

    private final native int _play(int i2, float f2, float f3, int i3, int i4, float f4);

    private final native void _setVolume(int i2, float f2, float f3);

    private final native void native_release();

    private final native int native_setup(Object obj, int i2, Object obj2);

    private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
        EventHandler eventHandler;
        SoundPool soundPool = (SoundPool) ((WeakReference) obj).get();
        if (soundPool == null || (eventHandler = soundPool.mEventHandler) == null) {
            return;
        }
        soundPool.mEventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj2));
    }

    public final native void autoPause();

    public final native void autoResume();

    public void finalize() {
        release();
    }

    public int load(String str, int i2) {
        int i_load = 0;
        try {
            File file = new File(str);
            ParcelFileDescriptor parcelFileDescriptorOpen = ParcelFileDescriptor.open(file, 268435456);
            if (parcelFileDescriptorOpen == null) {
                return 0;
            }
            i_load = _load(parcelFileDescriptorOpen.getFileDescriptor(), 0L, file.length(), i2);
            parcelFileDescriptorOpen.close();
            return i_load;
        } catch (IOException unused) {
            m.r("error loading ", str, TAG);
            return i_load;
        }
    }

    public final native void pause(int i2);

    public final int play(int i2, float f2, float f3, int i3, int i4, float f4) {
        baseStart();
        return _play(i2, f2, f3, i3, i4, f4);
    }

    @Override // android.media.PlayerBase
    public int playerApplyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation) {
        return -1;
    }

    @Override // android.media.PlayerBase
    public VolumeShaper.State playerGetVolumeShaperState(int i2) {
        return null;
    }

    @Override // android.media.PlayerBase
    public void playerPause() {
    }

    @Override // android.media.PlayerBase
    public int playerSetAuxEffectSendLevel(boolean z2, float f2) {
        return 0;
    }

    @Override // android.media.PlayerBase
    public void playerSetVolume(boolean z2, float f2, float f3) {
        _mute(z2);
    }

    @Override // android.media.PlayerBase
    public void playerStart() {
    }

    @Override // android.media.PlayerBase
    public void playerStop() {
    }

    public final void release() {
        baseRelease();
        native_release();
    }

    public final native void resume(int i2);

    public final native void setLoop(int i2, int i3);

    public void setOnLoadCompleteListener(OnLoadCompleteListener onLoadCompleteListener) {
        synchronized (this.mLock) {
            try {
                if (onLoadCompleteListener != null) {
                    Looper looperMyLooper = Looper.myLooper();
                    if (looperMyLooper != null) {
                        this.mEventHandler = new EventHandler(looperMyLooper);
                    } else {
                        Looper mainLooper = Looper.getMainLooper();
                        if (mainLooper != null) {
                            this.mEventHandler = new EventHandler(mainLooper);
                        } else {
                            this.mEventHandler = null;
                        }
                    }
                } else {
                    this.mEventHandler = null;
                }
                this.mOnLoadCompleteListener = onLoadCompleteListener;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final native void setPriority(int i2, int i3);

    public final native void setRate(int i2, float f2);

    public final void setVolume(int i2, float f2, float f3) {
        _setVolume(i2, f2, f3);
    }

    public final native void stop(int i2);

    public final native boolean unload(int i2);

    public SoundPool(int i2, int i3, int i4) {
        this(i2, new AudioAttributes.Builder().setInternalLegacyStreamType(i3).build());
        PlayerBase.deprecateStreamTypeForPlayback(i3, TAG, "SoundPool()");
    }

    public void setVolume(int i2, float f2) {
        setVolume(i2, f2, f2);
    }

    private SoundPool(int i2, AudioAttributes audioAttributes) {
        super(audioAttributes, 3);
        if (native_setup(new WeakReference(this), i2, audioAttributes) == 0) {
            this.mLock = new Object();
            this.mAttributes = audioAttributes;
            baseRegisterPlayer();
            return;
        }
        throw new RuntimeException("Native setup failed");
    }

    public int load(Context context, int i2, int i3) {
        AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = context.getResources().openRawResourceFd(i2);
        if (assetFileDescriptorOpenRawResourceFd == null) {
            return 0;
        }
        int i_load = _load(assetFileDescriptorOpenRawResourceFd.getFileDescriptor(), assetFileDescriptorOpenRawResourceFd.getStartOffset(), assetFileDescriptorOpenRawResourceFd.getLength(), i3);
        try {
            assetFileDescriptorOpenRawResourceFd.close();
            return i_load;
        } catch (IOException unused) {
            return i_load;
        }
    }

    public int load(AssetFileDescriptor assetFileDescriptor, int i2) {
        if (assetFileDescriptor == null) {
            return 0;
        }
        long length = assetFileDescriptor.getLength();
        if (length >= 0) {
            return _load(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), length, i2);
        }
        throw new AndroidRuntimeException("no length for fd");
    }

    public int load(FileDescriptor fileDescriptor, long j2, long j3, int i2) {
        return _load(fileDescriptor, j2, j3, i2);
    }
}
