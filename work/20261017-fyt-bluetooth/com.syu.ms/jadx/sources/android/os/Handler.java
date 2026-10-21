package android.os;

import android.util.Log;
import android.util.Printer;

/* JADX INFO: loaded from: classes.dex */
public class Handler {
    private static final boolean FIND_POTENTIAL_LEAKS = false;
    private static final String TAG = "Handler";
    public final boolean mAsynchronous;
    public final Callback mCallback;
    public final Looper mLooper;
    public IMessenger mMessenger;
    public final MessageQueue mQueue;

    public static final class BlockingRunnable implements Runnable {
        private boolean mDone;
        private final Runnable mTask;

        public BlockingRunnable(Runnable runnable) {
            this.mTask = runnable;
        }

        public boolean postAndWait(Handler handler, long j2) {
            if (!handler.post(this)) {
                return false;
            }
            synchronized (this) {
                try {
                    if (j2 > 0) {
                        long jUptimeMillis = SystemClock.uptimeMillis() + j2;
                        while (!this.mDone) {
                            long jUptimeMillis2 = jUptimeMillis - SystemClock.uptimeMillis();
                            if (jUptimeMillis2 <= 0) {
                                return false;
                            }
                            try {
                                wait(jUptimeMillis2);
                            } catch (InterruptedException unused) {
                            }
                        }
                    } else {
                        while (!this.mDone) {
                            try {
                                wait();
                            } catch (InterruptedException unused2) {
                            }
                        }
                    }
                    return true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.mTask.run();
                synchronized (this) {
                    this.mDone = true;
                    notifyAll();
                }
            } catch (Throwable th) {
                synchronized (this) {
                    this.mDone = true;
                    notifyAll();
                    throw th;
                }
            }
        }
    }

    public interface Callback {
        boolean handleMessage(Message message);
    }

    public final class MessengerImpl extends IMessenger.Stub {
        private MessengerImpl() {
        }

        @Override // android.os.IMessenger
        public void send(Message message) {
            Handler.this.sendMessage(message);
        }
    }

    public Handler() {
        this((Callback) null, false);
    }

    private boolean enqueueMessage(MessageQueue messageQueue, Message message, long j2) {
        message.target = this;
        if (this.mAsynchronous) {
            message.setAsynchronous(true);
        }
        return messageQueue.enqueueMessage(message, j2);
    }

    private static Message getPostMessage(Runnable runnable) {
        Message messageObtain = Message.obtain();
        messageObtain.callback = runnable;
        return messageObtain;
    }

    private static void handleCallback(Message message) {
        message.callback.run();
    }

    public void dispatchMessage(Message message) {
        if (message.callback != null) {
            handleCallback(message);
            return;
        }
        Callback callback = this.mCallback;
        if (callback == null || !callback.handleMessage(message)) {
            handleMessage(message);
        }
    }

    public final void dump(Printer printer, String str) {
        printer.println(str + this + " @ " + SystemClock.uptimeMillis());
        Looper looper = this.mLooper;
        if (looper == null) {
            printer.println(str + "looper uninitialized");
            return;
        }
        looper.dump(printer, str + "  ");
    }

    public final IMessenger getIMessenger() {
        synchronized (this.mQueue) {
            IMessenger iMessenger = this.mMessenger;
            if (iMessenger != null) {
                return iMessenger;
            }
            MessengerImpl messengerImpl = new MessengerImpl();
            this.mMessenger = messengerImpl;
            return messengerImpl;
        }
    }

    public final Looper getLooper() {
        return this.mLooper;
    }

    public String getMessageName(Message message) {
        Runnable runnable = message.callback;
        if (runnable != null) {
            return runnable.getClass().getName();
        }
        return "0x" + Integer.toHexString(message.what);
    }

    public void handleMessage(Message message) {
    }

    public final boolean hasCallbacks(Runnable runnable) {
        return this.mQueue.hasMessages(this, runnable, (Object) null);
    }

    public final boolean hasMessages(int i2) {
        return this.mQueue.hasMessages(this, i2, (Object) null);
    }

    public final Message obtainMessage() {
        return Message.obtain(this);
    }

    public final boolean post(Runnable runnable) {
        return sendMessageDelayed(getPostMessage(runnable), 0L);
    }

    public final boolean postAtFrontOfQueue(Runnable runnable) {
        return sendMessageAtFrontOfQueue(getPostMessage(runnable));
    }

    public final boolean postAtTime(Runnable runnable, long j2) {
        return sendMessageAtTime(getPostMessage(runnable), j2);
    }

    public final boolean postDelayed(Runnable runnable, long j2) {
        return sendMessageDelayed(getPostMessage(runnable), j2);
    }

    public final void removeCallbacks(Runnable runnable) {
        this.mQueue.removeMessages(this, runnable, (Object) null);
    }

    public final void removeCallbacksAndMessages(Object obj) {
        this.mQueue.removeCallbacksAndMessages(this, obj);
    }

    public final void removeMessages(int i2) {
        this.mQueue.removeMessages(this, i2, (Object) null);
    }

    public final boolean runWithScissors(Runnable runnable, long j2) {
        if (runnable == null) {
            throw new IllegalArgumentException("runnable must not be null");
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("timeout must be non-negative");
        }
        if (Looper.myLooper() != this.mLooper) {
            return new BlockingRunnable(runnable).postAndWait(this, j2);
        }
        runnable.run();
        return true;
    }

    public final boolean sendEmptyMessage(int i2) {
        return sendEmptyMessageDelayed(i2, 0L);
    }

    public final boolean sendEmptyMessageAtTime(int i2, long j2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        return sendMessageAtTime(messageObtain, j2);
    }

    public final boolean sendEmptyMessageDelayed(int i2, long j2) {
        Message messageObtain = Message.obtain();
        messageObtain.what = i2;
        return sendMessageDelayed(messageObtain, j2);
    }

    public final boolean sendMessage(Message message) {
        return sendMessageDelayed(message, 0L);
    }

    public final boolean sendMessageAtFrontOfQueue(Message message) {
        MessageQueue messageQueue = this.mQueue;
        if (messageQueue != null) {
            return enqueueMessage(messageQueue, message, 0L);
        }
        RuntimeException runtimeException = new RuntimeException(this + " sendMessageAtTime() called with no mQueue");
        Log.w("Looper", runtimeException.getMessage(), runtimeException);
        return false;
    }

    public boolean sendMessageAtTime(Message message, long j2) {
        MessageQueue messageQueue = this.mQueue;
        if (messageQueue != null) {
            return enqueueMessage(messageQueue, message, j2);
        }
        RuntimeException runtimeException = new RuntimeException(this + " sendMessageAtTime() called with no mQueue");
        Log.w("Looper", runtimeException.getMessage(), runtimeException);
        return false;
    }

    public final boolean sendMessageDelayed(Message message, long j2) {
        if (j2 < 0) {
            j2 = 0;
        }
        return sendMessageAtTime(message, SystemClock.uptimeMillis() + j2);
    }

    public String toString() {
        return "Handler (" + getClass().getName() + ") {" + Integer.toHexString(System.identityHashCode(this)) + "}";
    }

    public Handler(Callback callback) {
        this(callback, false);
    }

    public final boolean hasMessages(int i2, Object obj) {
        return this.mQueue.hasMessages(this, i2, obj);
    }

    public final Message obtainMessage(int i2) {
        return Message.obtain(this, i2);
    }

    public final boolean postAtTime(Runnable runnable, Object obj, long j2) {
        return sendMessageAtTime(getPostMessage(runnable, obj), j2);
    }

    public final void removeCallbacks(Runnable runnable, Object obj) {
        this.mQueue.removeMessages(this, runnable, obj);
    }

    public final void removeMessages(int i2, Object obj) {
        this.mQueue.removeMessages(this, i2, obj);
    }

    public Handler(Looper looper) {
        this(looper, null, false);
    }

    private static Message getPostMessage(Runnable runnable, Object obj) {
        Message messageObtain = Message.obtain();
        messageObtain.obj = obj;
        messageObtain.callback = runnable;
        return messageObtain;
    }

    public final Message obtainMessage(int i2, Object obj) {
        return Message.obtain(this, i2, obj);
    }

    public Handler(Looper looper, Callback callback) {
        this(looper, callback, false);
    }

    public final Message obtainMessage(int i2, int i3, int i4) {
        return Message.obtain(this, i2, i3, i4);
    }

    public Handler(boolean z2) {
        this((Callback) null, z2);
    }

    public final Message obtainMessage(int i2, int i3, int i4, Object obj) {
        return Message.obtain(this, i2, i3, i4, obj);
    }

    public Handler(Callback callback, boolean z2) {
        Looper looperMyLooper = Looper.myLooper();
        this.mLooper = looperMyLooper;
        if (looperMyLooper != null) {
            this.mQueue = looperMyLooper.mQueue;
            this.mCallback = callback;
            this.mAsynchronous = z2;
            return;
        }
        throw new RuntimeException("Can't create handler inside thread that has not called Looper.prepare()");
    }

    public Handler(Looper looper, Callback callback, boolean z2) {
        this.mLooper = looper;
        this.mQueue = looper.mQueue;
        this.mCallback = callback;
        this.mAsynchronous = z2;
    }
}
