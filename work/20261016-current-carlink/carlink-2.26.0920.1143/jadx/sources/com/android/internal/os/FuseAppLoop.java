package com.android.internal.os;

import android.net.b;
import android.os.Handler;
import android.os.Message;
import android.os.ParcelFileDescriptor;
import android.os.ProxyFileDescriptorCallback;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.util.Preconditions;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
public class FuseAppLoop implements Handler.Callback {
    private static final int ARGS_POOL_SIZE = 50;
    private static final int FUSE_FSYNC = 20;
    private static final int FUSE_GETATTR = 3;
    private static final int FUSE_LOOKUP = 1;
    private static final int FUSE_MAX_WRITE = 262144;
    private static final int FUSE_OK = 0;
    private static final int FUSE_OPEN = 14;
    private static final int FUSE_READ = 15;
    private static final int FUSE_RELEASE = 18;
    private static final int FUSE_WRITE = 16;
    private static final int MIN_INODE = 2;
    public static final int ROOT_INODE = 1;

    @GuardedBy("mLock")
    private long mInstance;
    private final int mMountPointId;
    private final Thread mThread;
    private static final String TAG = "FuseAppLoop";
    private static final boolean DEBUG = Log.isLoggable(TAG, 3);
    private static final ThreadFactory sDefaultThreadFactory = new ThreadFactory() { // from class: com.android.internal.os.FuseAppLoop.1
        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, FuseAppLoop.TAG);
        }
    };
    private final Object mLock = new Object();

    @GuardedBy("mLock")
    private final SparseArray<CallbackEntry> mCallbackMap = new SparseArray<>();

    @GuardedBy("mLock")
    private final BytesMap mBytesMap = new BytesMap();

    @GuardedBy("mLock")
    private final LinkedList<Args> mArgsPool = new LinkedList<>();

    @GuardedBy("mLock")
    private int mNextInode = 2;

    public static class Args {
        byte[] data;
        CallbackEntry entry;
        long inode;
        long offset;
        int size;
        long unique;

        private Args() {
        }
    }

    public static class BytesMap {
        final Map<Long, BytesMapEntry> mEntries;

        private BytesMap() {
            this.mEntries = new HashMap();
        }

        public void clear() {
            this.mEntries.clear();
        }

        public byte[] startUsing(long j2) {
            BytesMapEntry bytesMapEntry = this.mEntries.get(Long.valueOf(j2));
            if (bytesMapEntry == null) {
                bytesMapEntry = new BytesMapEntry();
                this.mEntries.put(Long.valueOf(j2), bytesMapEntry);
            }
            bytesMapEntry.counter++;
            return bytesMapEntry.bytes;
        }

        public void stopUsing(long j2) {
            BytesMapEntry bytesMapEntry = this.mEntries.get(Long.valueOf(j2));
            Preconditions.checkNotNull(bytesMapEntry);
            int i2 = bytesMapEntry.counter - 1;
            bytesMapEntry.counter = i2;
            if (i2 <= 0) {
                this.mEntries.remove(Long.valueOf(j2));
            }
        }
    }

    public static class BytesMapEntry {
        byte[] bytes;
        int counter;

        private BytesMapEntry() {
            this.counter = 0;
            this.bytes = new byte[262144];
        }
    }

    public static class CallbackEntry {
        final ProxyFileDescriptorCallback callback;
        final Handler handler;
        boolean opened;

        public CallbackEntry(ProxyFileDescriptorCallback proxyFileDescriptorCallback, Handler handler) {
            this.callback = (ProxyFileDescriptorCallback) Preconditions.checkNotNull(proxyFileDescriptorCallback);
            this.handler = (Handler) Preconditions.checkNotNull(handler);
        }

        public long getThreadId() {
            return this.handler.getLooper().getThread().getId();
        }
    }

    public static class UnmountedException extends Exception {
    }

    public FuseAppLoop(int i2, ParcelFileDescriptor parcelFileDescriptor, ThreadFactory threadFactory) {
        this.mMountPointId = i2;
        threadFactory = threadFactory == null ? sDefaultThreadFactory : threadFactory;
        this.mInstance = native_new(parcelFileDescriptor.detachFd());
        Thread threadNewThread = threadFactory.newThread(new b(this, 8));
        this.mThread = threadNewThread;
        threadNewThread.start();
    }

    private static int checkInode(long j2) {
        Preconditions.checkArgumentInRange(j2, 2L, 2147483647L, "checkInode");
        return (int) j2;
    }

    private CallbackEntry getCallbackEntryOrThrowLocked(long j2) throws ErrnoException {
        CallbackEntry callbackEntry = this.mCallbackMap.get(checkInode(j2));
        if (callbackEntry != null) {
            return callbackEntry;
        }
        throw new ErrnoException("getCallbackEntryOrThrowLocked", OsConstants.ENOENT);
    }

    private static int getError(Exception exc) {
        int i2;
        return (!(exc instanceof ErrnoException) || (i2 = ((ErrnoException) exc).errno) == OsConstants.ENOSYS) ? -OsConstants.EBADF : -i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        native_start(this.mInstance);
        synchronized (this.mLock) {
            native_delete(this.mInstance);
            this.mInstance = 0L;
            this.mBytesMap.clear();
        }
    }

    private void onCommand(int i2, long j2, long j3, long j4, int i3, byte[] bArr) {
        synchronized (this.mLock) {
            try {
                Args args = this.mArgsPool.size() == 0 ? new Args() : this.mArgsPool.pop();
                args.unique = j2;
                args.inode = j3;
                args.offset = j4;
                args.size = i3;
                args.data = bArr;
                CallbackEntry callbackEntryOrThrowLocked = getCallbackEntryOrThrowLocked(j3);
                args.entry = callbackEntryOrThrowLocked;
                Handler handler = callbackEntryOrThrowLocked.handler;
                if (!handler.sendMessage(Message.obtain(handler, i2, 0, 0, args))) {
                    throw new ErrnoException("onCommand", OsConstants.EBADF);
                }
            } catch (Exception e2) {
                replySimpleLocked(j2, getError(e2));
            }
        }
    }

    private byte[] onOpen(long j2, long j3) {
        synchronized (this.mLock) {
            try {
                CallbackEntry callbackEntryOrThrowLocked = getCallbackEntryOrThrowLocked(j3);
                if (callbackEntryOrThrowLocked.opened) {
                    throw new ErrnoException("onOpen", OsConstants.EMFILE);
                }
                long j4 = this.mInstance;
                if (j4 != 0) {
                    native_replyOpen(j4, j2, j3);
                    callbackEntryOrThrowLocked.opened = true;
                    return this.mBytesMap.startUsing(callbackEntryOrThrowLocked.getThreadId());
                }
                return null;
            } catch (ErrnoException e2) {
                replySimpleLocked(j2, getError(e2));
            }
        }
    }

    private void recycleLocked(Args args) {
        if (this.mArgsPool.size() < 50) {
            this.mArgsPool.add(args);
        }
    }

    private void replySimpleLocked(long j2, int i2) {
        long j3 = this.mInstance;
        if (j3 != 0) {
            native_replySimple(j3, j2, i2);
        }
    }

    public int getMountPointId() {
        return this.mMountPointId;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        Args args = (Args) message.obj;
        CallbackEntry callbackEntry = args.entry;
        long j2 = args.inode;
        long j3 = args.unique;
        int i2 = args.size;
        long j4 = args.offset;
        byte[] bArr = args.data;
        try {
            int i3 = message.what;
            if (i3 == 1) {
                long jOnGetSize = callbackEntry.callback.onGetSize();
                synchronized (this.mLock) {
                    long j5 = this.mInstance;
                    if (j5 != 0) {
                        native_replyLookup(j5, j3, j2, jOnGetSize);
                    }
                    recycleLocked(args);
                }
            } else if (i3 == 3) {
                long jOnGetSize2 = callbackEntry.callback.onGetSize();
                synchronized (this.mLock) {
                    long j6 = this.mInstance;
                    if (j6 != 0) {
                        native_replyGetAttr(j6, j3, j2, jOnGetSize2);
                    }
                    recycleLocked(args);
                }
            } else if (i3 == 18) {
                callbackEntry.callback.onRelease();
                synchronized (this.mLock) {
                    long j7 = this.mInstance;
                    if (j7 != 0) {
                        native_replySimple(j7, j3, 0);
                    }
                    this.mBytesMap.stopUsing(callbackEntry.getThreadId());
                    recycleLocked(args);
                }
            } else if (i3 == 20) {
                callbackEntry.callback.onFsync();
                synchronized (this.mLock) {
                    long j8 = this.mInstance;
                    if (j8 != 0) {
                        native_replySimple(j8, j3, 0);
                    }
                    recycleLocked(args);
                }
            } else if (i3 == 15) {
                int iOnRead = callbackEntry.callback.onRead(j4, i2, bArr);
                synchronized (this.mLock) {
                    long j9 = this.mInstance;
                    if (j9 != 0) {
                        native_replyRead(j9, j3, iOnRead, bArr);
                    }
                    recycleLocked(args);
                }
            } else {
                if (i3 != 16) {
                    throw new IllegalArgumentException("Unknown FUSE command: " + message.what);
                }
                int iOnWrite = callbackEntry.callback.onWrite(j4, i2, bArr);
                synchronized (this.mLock) {
                    long j10 = this.mInstance;
                    if (j10 != 0) {
                        native_replyWrite(j10, j3, iOnWrite);
                    }
                    recycleLocked(args);
                }
            }
        } catch (Exception e2) {
            synchronized (this.mLock) {
                Log.e(TAG, "", e2);
                replySimpleLocked(j3, getError(e2));
                recycleLocked(args);
            }
        }
        return true;
    }

    public native void native_delete(long j2);

    public native long native_new(int i2);

    public native void native_replyGetAttr(long j2, long j3, long j4, long j5);

    public native void native_replyLookup(long j2, long j3, long j4, long j5);

    public native void native_replyOpen(long j2, long j3, long j4);

    public native void native_replyRead(long j2, long j3, int i2, byte[] bArr);

    public native void native_replySimple(long j2, long j3, int i2);

    public native void native_replyWrite(long j2, long j3, int i2);

    public native void native_start(long j2);

    public int registerCallback(ProxyFileDescriptorCallback proxyFileDescriptorCallback, Handler handler) {
        int i2;
        synchronized (this.mLock) {
            Preconditions.checkNotNull(proxyFileDescriptorCallback);
            Preconditions.checkNotNull(handler);
            Preconditions.checkState(this.mCallbackMap.size() < 2147483645, "Too many opened files.");
            Preconditions.checkArgument(Thread.currentThread().getId() != handler.getLooper().getThread().getId(), "Handler must be different from the current thread");
            if (this.mInstance == 0) {
                throw new FuseUnavailableMountException(this.mMountPointId);
            }
            do {
                i2 = this.mNextInode;
                int i3 = i2 + 1;
                this.mNextInode = i3;
                if (i3 < 0) {
                    this.mNextInode = 2;
                }
            } while (this.mCallbackMap.get(i2) != null);
            this.mCallbackMap.put(i2, new CallbackEntry(proxyFileDescriptorCallback, new Handler(handler.getLooper(), this)));
        }
        return i2;
    }

    public void unregisterCallback(int i2) {
        synchronized (this.mLock) {
            this.mCallbackMap.remove(i2);
        }
    }
}
