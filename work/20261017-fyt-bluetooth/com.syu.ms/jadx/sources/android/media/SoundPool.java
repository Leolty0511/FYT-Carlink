package android.media;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.SystemProperties;
import android.util.AndroidRuntimeException;
import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public class SoundPool {
    private final SoundPoolDelegate mImpl;

    public interface OnLoadCompleteListener {
        void onLoadComplete(SoundPool soundPool, int i2, int i3);
    }

    public interface SoundPoolDelegate {
        void autoPause();

        void autoResume();

        int load(Context context, int i2, int i3);

        int load(AssetFileDescriptor assetFileDescriptor, int i2);

        int load(FileDescriptor fileDescriptor, long j2, long j3, int i2);

        int load(String str, int i2);

        void pause(int i2);

        int play(int i2, float f2, float f3, int i3, int i4, float f4);

        void release();

        void resume(int i2);

        void setLoop(int i2, int i3);

        void setOnLoadCompleteListener(OnLoadCompleteListener onLoadCompleteListener);

        void setPriority(int i2, int i3);

        void setRate(int i2, float f2);

        void setVolume(int i2, float f2);

        void setVolume(int i2, float f2, float f3);

        void stop(int i2);

        boolean unload(int i2);
    }

    public static class SoundPoolStub implements SoundPoolDelegate {
        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void autoPause() {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void autoResume() {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public int load(Context context, int i2, int i3) {
            return 0;
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public int load(AssetFileDescriptor assetFileDescriptor, int i2) {
            return 0;
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public int load(FileDescriptor fileDescriptor, long j2, long j3, int i2) {
            return 0;
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public int load(String str, int i2) {
            return 0;
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void pause(int i2) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final int play(int i2, float f2, float f3, int i3, int i4, float f4) {
            return 0;
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void release() {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void resume(int i2) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void setLoop(int i2, int i3) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public void setOnLoadCompleteListener(OnLoadCompleteListener onLoadCompleteListener) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void setPriority(int i2, int i3) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void setRate(int i2, float f2) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public void setVolume(int i2, float f2) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void setVolume(int i2, float f2, float f3) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final void stop(int i2) {
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final boolean unload(int i2) {
            return true;
        }
    }

    public SoundPool(int i2, int i3, int i4) {
        if (SystemProperties.getBoolean("config.disable_media", false)) {
            this.mImpl = new SoundPoolStub();
        } else {
            this.mImpl = new SoundPoolImpl(this, i2, i3, i4);
        }
    }

    public final void autoPause() {
        this.mImpl.autoPause();
    }

    public final void autoResume() {
        this.mImpl.autoResume();
    }

    public int load(String str, int i2) {
        return this.mImpl.load(str, i2);
    }

    public final void pause(int i2) {
        this.mImpl.pause(i2);
    }

    public final int play(int i2, float f2, float f3, int i3, int i4, float f4) {
        return this.mImpl.play(i2, f2, f3, i3, i4, f4);
    }

    public final void release() {
        this.mImpl.release();
    }

    public final void resume(int i2) {
        this.mImpl.resume(i2);
    }

    public final void setLoop(int i2, int i3) {
        this.mImpl.setLoop(i2, i3);
    }

    public void setOnLoadCompleteListener(OnLoadCompleteListener onLoadCompleteListener) {
        this.mImpl.setOnLoadCompleteListener(onLoadCompleteListener);
    }

    public final void setPriority(int i2, int i3) {
        this.mImpl.setPriority(i2, i3);
    }

    public final void setRate(int i2, float f2) {
        this.mImpl.setRate(i2, f2);
    }

    public final void setVolume(int i2, float f2, float f3) {
        this.mImpl.setVolume(i2, f2, f3);
    }

    public final void stop(int i2) {
        this.mImpl.stop(i2);
    }

    public final boolean unload(int i2) {
        return this.mImpl.unload(i2);
    }

    public int load(Context context, int i2, int i3) {
        return this.mImpl.load(context, i2, i3);
    }

    public void setVolume(int i2, float f2) {
        setVolume(i2, f2, f2);
    }

    public int load(AssetFileDescriptor assetFileDescriptor, int i2) {
        return this.mImpl.load(assetFileDescriptor, i2);
    }

    public int load(FileDescriptor fileDescriptor, long j2, long j3, int i2) {
        return this.mImpl.load(fileDescriptor, j2, j3, i2);
    }

    public static class SoundPoolImpl implements SoundPoolDelegate {
        private static final boolean DEBUG = false;
        private static final int SAMPLE_LOADED = 1;
        private static final String TAG = "SoundPool";
        private EventHandler mEventHandler;
        private final Object mLock;
        private int mNativeContext;
        private OnLoadCompleteListener mOnLoadCompleteListener;
        private SoundPool mProxy;

        public class EventHandler extends Handler {
            private SoundPool mSoundPool;

            public EventHandler(SoundPool soundPool, Looper looper) {
                super(looper);
                this.mSoundPool = soundPool;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    Log.e(SoundPoolImpl.TAG, "Unknown message type " + message.what);
                    return;
                }
                synchronized (SoundPoolImpl.this.mLock) {
                    if (SoundPoolImpl.this.mOnLoadCompleteListener != null) {
                        SoundPoolImpl.this.mOnLoadCompleteListener.onLoadComplete(this.mSoundPool, message.arg1, message.arg2);
                    }
                }
            }
        }

        static {
            System.loadLibrary("soundpool");
        }

        public SoundPoolImpl(SoundPool soundPool, int i2, int i3, int i4) {
            if (native_setup(new WeakReference(this), i2, i3, i4) != 0) {
                throw new RuntimeException("Native setup failed");
            }
            this.mLock = new Object();
            this.mProxy = soundPool;
        }

        private final native int _load(FileDescriptor fileDescriptor, long j2, long j3, int i2);

        private final native int _load(String str, int i2);

        private final native int native_setup(Object obj, int i2, int i3, int i4);

        private static void postEventFromNative(Object obj, int i2, int i3, int i4, Object obj2) {
            EventHandler eventHandler;
            SoundPoolImpl soundPoolImpl = (SoundPoolImpl) ((WeakReference) obj).get();
            if (soundPoolImpl == null || (eventHandler = soundPoolImpl.mEventHandler) == null) {
                return;
            }
            soundPoolImpl.mEventHandler.sendMessage(eventHandler.obtainMessage(i2, i3, i4, obj2));
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void autoPause();

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void autoResume();

        public void finalize() {
            release();
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public int load(String str, int i2) {
            if (str.startsWith("http:")) {
                return _load(str, i2);
            }
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
                Log.e(TAG, "error loading " + str);
                return i_load;
            }
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void pause(int i2);

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native int play(int i2, float f2, float f3, int i3, int i4, float f4);

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void release();

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void resume(int i2);

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void setLoop(int i2, int i3);

        @Override // android.media.SoundPool.SoundPoolDelegate
        public void setOnLoadCompleteListener(OnLoadCompleteListener onLoadCompleteListener) {
            synchronized (this.mLock) {
                try {
                    if (onLoadCompleteListener != null) {
                        Looper looperMyLooper = Looper.myLooper();
                        if (looperMyLooper != null) {
                            this.mEventHandler = new EventHandler(this.mProxy, looperMyLooper);
                        } else {
                            Looper mainLooper = Looper.getMainLooper();
                            if (mainLooper != null) {
                                this.mEventHandler = new EventHandler(this.mProxy, mainLooper);
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

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void setPriority(int i2, int i3);

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void setRate(int i2, float f2);

        @Override // android.media.SoundPool.SoundPoolDelegate
        public void setVolume(int i2, float f2) {
            setVolume(i2, f2, f2);
        }

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void setVolume(int i2, float f2, float f3);

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native void stop(int i2);

        @Override // android.media.SoundPool.SoundPoolDelegate
        public final native boolean unload(int i2);

        @Override // android.media.SoundPool.SoundPoolDelegate
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

        @Override // android.media.SoundPool.SoundPoolDelegate
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

        @Override // android.media.SoundPool.SoundPoolDelegate
        public int load(FileDescriptor fileDescriptor, long j2, long j3, int i2) {
            return _load(fileDescriptor, j2, j3, i2);
        }
    }
}
