package android.os;

import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.Printer;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class MessageQueue {
    private boolean mBlocked;
    public Message mMessages;
    private int mNextBarrierToken;
    private IdleHandler[] mPendingIdleHandlers;
    private final boolean mQuitAllowed;
    private boolean mQuitting;
    private final ArrayList<IdleHandler> mIdleHandlers = new ArrayList<>();
    private int mPtr = nativeInit();

    public interface IdleHandler {
        boolean queueIdle();
    }

    public MessageQueue(boolean z2) {
        this.mQuitAllowed = z2;
    }

    private void dispose() {
        int i2 = this.mPtr;
        if (i2 != 0) {
            nativeDestroy(i2);
            this.mPtr = 0;
        }
    }

    private boolean isIdlingLocked() {
        return !this.mQuitting && nativeIsIdling(this.mPtr);
    }

    private static native void nativeDestroy(int i2);

    private static native int nativeInit();

    private static native boolean nativeIsIdling(int i2);

    private static native void nativePollOnce(int i2, int i3);

    private static native void nativeWake(int i2);

    private void removeAllFutureMessagesLocked() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        Message message = this.mMessages;
        if (message == null) {
            return;
        }
        if (message.when > jUptimeMillis) {
            removeAllMessagesLocked();
            return;
        }
        while (true) {
            Message message2 = message.next;
            if (message2 == null) {
                return;
            }
            if (message2.when > jUptimeMillis) {
                message.next = null;
                while (true) {
                    Message message3 = message2.next;
                    message2.recycle();
                    if (message3 == null) {
                        return;
                    } else {
                        message2 = message3;
                    }
                }
            } else {
                message = message2;
            }
        }
    }

    private void removeAllMessagesLocked() {
        Message message = this.mMessages;
        while (message != null) {
            Message message2 = message.next;
            message.recycle();
            message = message2;
        }
        this.mMessages = null;
    }

    public void addIdleHandler(IdleHandler idleHandler) {
        Objects.requireNonNull(idleHandler, "Can't add a null IdleHandler");
        synchronized (this) {
            this.mIdleHandlers.add(idleHandler);
        }
    }

    public void dump(Printer printer, String str) {
        synchronized (this) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int i2 = 0;
            for (Message message = this.mMessages; message != null; message = message.next) {
                printer.println(str + "Message " + i2 + ": " + message.toString(jUptimeMillis));
                i2++;
            }
            printer.println(str + "(Total messages: " + i2 + ", idling=" + isIdlingLocked() + ", quitting=" + this.mQuitting + ")");
        }
    }

    public boolean enqueueMessage(Message message, long j2) {
        boolean z2;
        Message message2;
        if (message.isInUse()) {
            throw new AndroidRuntimeException(message + " This message is already in use.");
        }
        if (message.target == null) {
            throw new AndroidRuntimeException("Message must have a target.");
        }
        synchronized (this) {
            if (this.mQuitting) {
                RuntimeException runtimeException = new RuntimeException(message.target + " sending message to a Handler on a dead thread");
                Log.w("MessageQueue", runtimeException.getMessage(), runtimeException);
                return false;
            }
            message.when = j2;
            Message message3 = this.mMessages;
            if (message3 == null || j2 == 0 || j2 < message3.when) {
                message.next = message3;
                this.mMessages = message;
                z2 = this.mBlocked;
            } else {
                z2 = this.mBlocked && message3.target == null && message.isAsynchronous();
                while (true) {
                    message2 = message3.next;
                    if (message2 == null || j2 < message2.when) {
                        break;
                        break;
                    }
                    if (z2 && message2.isAsynchronous()) {
                        z2 = false;
                    }
                    message3 = message2;
                }
                message.next = message2;
                message3.next = message;
            }
            if (z2) {
                nativeWake(this.mPtr);
            }
            return true;
        }
    }

    public int enqueueSyncBarrier(long j2) {
        int i2;
        synchronized (this) {
            i2 = this.mNextBarrierToken;
            this.mNextBarrierToken = i2 + 1;
            Message messageObtain = Message.obtain();
            messageObtain.when = j2;
            messageObtain.arg1 = i2;
            Message message = null;
            Message message2 = this.mMessages;
            if (j2 != 0) {
                while (message2 != null && message2.when <= j2) {
                    Message message3 = message2;
                    message2 = message2.next;
                    message = message3;
                }
            }
            if (message != null) {
                messageObtain.next = message2;
                message.next = messageObtain;
            } else {
                messageObtain.next = message2;
                this.mMessages = messageObtain;
            }
        }
        return i2;
    }

    public void finalize() throws Throwable {
        try {
            dispose();
        } finally {
            super.finalize();
        }
    }

    public boolean hasMessages(Handler handler, int i2, Object obj) {
        if (handler == null) {
            return false;
        }
        synchronized (this) {
            for (Message message = this.mMessages; message != null; message = message.next) {
                if (message.target == handler && message.what == i2 && (obj == null || message.obj == obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    public boolean isIdling() {
        boolean zIsIdlingLocked;
        synchronized (this) {
            zIsIdlingLocked = isIdlingLocked();
        }
        return zIsIdlingLocked;
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0091, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0092, code lost:
    
        if (r2 >= r3) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0094, code lost:
    
        r4 = r13.mPendingIdleHandlers;
        r5 = r4[r2];
        r4[r2] = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009a, code lost:
    
        r4 = r5.queueIdle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x009f, code lost:
    
        r4 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a0, code lost:
    
        android.util.Log.wtf("MessageQueue", "IdleHandler threw exception", r4);
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b8, code lost:
    
        r2 = 0;
        r3 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Message next() {
        /*
            r13 = this;
            r0 = -1
            r1 = 0
            r3 = r0
            r2 = r1
        L4:
            if (r2 == 0) goto L9
            android.os.Binder.flushPendingCommands()
        L9:
            int r4 = r13.mPtr
            nativePollOnce(r4, r2)
            monitor-enter(r13)
            long r4 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> Lbc
            android.os.Message r2 = r13.mMessages     // Catch: java.lang.Throwable -> Lbc
            r6 = 0
            if (r2 == 0) goto L2d
            android.os.Handler r7 = r2.target     // Catch: java.lang.Throwable -> Lbc
            if (r7 != 0) goto L2d
        L1c:
            android.os.Message r7 = r2.next     // Catch: java.lang.Throwable -> Lbc
            if (r7 == 0) goto L29
            boolean r8 = r7.isAsynchronous()     // Catch: java.lang.Throwable -> Lbc
            if (r8 == 0) goto L27
            goto L29
        L27:
            r2 = r7
            goto L1c
        L29:
            r12 = r7
            r7 = r2
            r2 = r12
            goto L2e
        L2d:
            r7 = r6
        L2e:
            if (r2 == 0) goto L54
            long r8 = r2.when     // Catch: java.lang.Throwable -> Lbc
            int r10 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r10 >= 0) goto L40
            long r8 = r8 - r4
            r10 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r7 = java.lang.Math.min(r8, r10)     // Catch: java.lang.Throwable -> Lbc
            int r2 = (int) r7     // Catch: java.lang.Throwable -> Lbc
            goto L55
        L40:
            r13.mBlocked = r1     // Catch: java.lang.Throwable -> Lbc
            if (r7 == 0) goto L49
            android.os.Message r0 = r2.next     // Catch: java.lang.Throwable -> Lbc
            r7.next = r0     // Catch: java.lang.Throwable -> Lbc
            goto L4d
        L49:
            android.os.Message r0 = r2.next     // Catch: java.lang.Throwable -> Lbc
            r13.mMessages = r0     // Catch: java.lang.Throwable -> Lbc
        L4d:
            r2.next = r6     // Catch: java.lang.Throwable -> Lbc
            r2.markInUse()     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lbc
            return r2
        L54:
            r2 = r0
        L55:
            boolean r7 = r13.mQuitting     // Catch: java.lang.Throwable -> Lbc
            if (r7 == 0) goto L5e
            r13.dispose()     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lbc
            return r6
        L5e:
            if (r3 >= 0) goto L70
            android.os.Message r7 = r13.mMessages     // Catch: java.lang.Throwable -> Lbc
            if (r7 == 0) goto L6a
            long r7 = r7.when     // Catch: java.lang.Throwable -> Lbc
            int r4 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r4 >= 0) goto L70
        L6a:
            java.util.ArrayList<android.os.MessageQueue$IdleHandler> r3 = r13.mIdleHandlers     // Catch: java.lang.Throwable -> Lbc
            int r3 = r3.size()     // Catch: java.lang.Throwable -> Lbc
        L70:
            if (r3 > 0) goto L77
            r4 = 1
            r13.mBlocked = r4     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lbc
            goto L4
        L77:
            android.os.MessageQueue$IdleHandler[] r2 = r13.mPendingIdleHandlers     // Catch: java.lang.Throwable -> Lbc
            if (r2 != 0) goto L84
            r2 = 4
            int r2 = java.lang.Math.max(r3, r2)     // Catch: java.lang.Throwable -> Lbc
            android.os.MessageQueue$IdleHandler[] r2 = new android.os.MessageQueue.IdleHandler[r2]     // Catch: java.lang.Throwable -> Lbc
            r13.mPendingIdleHandlers = r2     // Catch: java.lang.Throwable -> Lbc
        L84:
            java.util.ArrayList<android.os.MessageQueue$IdleHandler> r2 = r13.mIdleHandlers     // Catch: java.lang.Throwable -> Lbc
            android.os.MessageQueue$IdleHandler[] r4 = r13.mPendingIdleHandlers     // Catch: java.lang.Throwable -> Lbc
            java.lang.Object[] r2 = r2.toArray(r4)     // Catch: java.lang.Throwable -> Lbc
            android.os.MessageQueue$IdleHandler[] r2 = (android.os.MessageQueue.IdleHandler[]) r2     // Catch: java.lang.Throwable -> Lbc
            r13.mPendingIdleHandlers = r2     // Catch: java.lang.Throwable -> Lbc
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lbc
            r2 = r1
        L92:
            if (r2 >= r3) goto Lb8
            android.os.MessageQueue$IdleHandler[] r4 = r13.mPendingIdleHandlers
            r5 = r4[r2]
            r4[r2] = r6
            boolean r4 = r5.queueIdle()     // Catch: java.lang.Throwable -> L9f
            goto La8
        L9f:
            r4 = move-exception
            java.lang.String r7 = "MessageQueue"
            java.lang.String r8 = "IdleHandler threw exception"
            android.util.Log.wtf(r7, r8, r4)
            r4 = r1
        La8:
            if (r4 != 0) goto Lb5
            monitor-enter(r13)
            java.util.ArrayList<android.os.MessageQueue$IdleHandler> r4 = r13.mIdleHandlers     // Catch: java.lang.Throwable -> Lb2
            r4.remove(r5)     // Catch: java.lang.Throwable -> Lb2
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lb2
            goto Lb5
        Lb2:
            r0 = move-exception
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lb2
            throw r0
        Lb5:
            int r2 = r2 + 1
            goto L92
        Lb8:
            r2 = r1
            r3 = r2
            goto L4
        Lbc:
            r0 = move-exception
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lbc
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.os.MessageQueue.next():android.os.Message");
    }

    public void quit(boolean z2) {
        if (!this.mQuitAllowed) {
            throw new RuntimeException("Main thread not allowed to quit.");
        }
        synchronized (this) {
            if (this.mQuitting) {
                return;
            }
            this.mQuitting = true;
            if (z2) {
                removeAllFutureMessagesLocked();
            } else {
                removeAllMessagesLocked();
            }
            nativeWake(this.mPtr);
        }
    }

    public void removeCallbacksAndMessages(Handler handler, Object obj) {
        if (handler == null) {
            return;
        }
        synchronized (this) {
            Message message = this.mMessages;
            while (message != null && message.target == handler && (obj == null || message.obj == obj)) {
                Message message2 = message.next;
                this.mMessages = message2;
                message.recycle();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycle();
                    message.next = message4;
                } else {
                    message = message3;
                }
            }
        }
    }

    public void removeIdleHandler(IdleHandler idleHandler) {
        synchronized (this) {
            this.mIdleHandlers.remove(idleHandler);
        }
    }

    public void removeMessages(Handler handler, int i2, Object obj) {
        if (handler == null) {
            return;
        }
        synchronized (this) {
            Message message = this.mMessages;
            while (message != null && message.target == handler && message.what == i2 && (obj == null || message.obj == obj)) {
                Message message2 = message.next;
                this.mMessages = message2;
                message.recycle();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && message3.what == i2 && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycle();
                    message.next = message4;
                } else {
                    message = message3;
                }
            }
        }
    }

    public void removeSyncBarrier(int i2) {
        Message message;
        synchronized (this) {
            Message message2 = null;
            Message message3 = this.mMessages;
            while (true) {
                Message message4 = message3;
                message = message2;
                message2 = message4;
                if (message2 == null || (message2.target == null && message2.arg1 == i2)) {
                    break;
                } else {
                    message3 = message2.next;
                }
            }
            if (message2 == null) {
                throw new IllegalStateException("The specified message queue synchronization  barrier token has not been posted or has already been removed.");
            }
            boolean z2 = false;
            if (message != null) {
                message.next = message2.next;
            } else {
                Message message5 = message2.next;
                this.mMessages = message5;
                if (message5 == null || message5.target != null) {
                    z2 = true;
                }
            }
            message2.recycle();
            if (z2 && !this.mQuitting) {
                nativeWake(this.mPtr);
            }
        }
    }

    public boolean hasMessages(Handler handler, Runnable runnable, Object obj) {
        if (handler == null) {
            return false;
        }
        synchronized (this) {
            for (Message message = this.mMessages; message != null; message = message.next) {
                if (message.target == handler && message.callback == runnable && (obj == null || message.obj == obj)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void removeMessages(Handler handler, Runnable runnable, Object obj) {
        if (handler == null || runnable == null) {
            return;
        }
        synchronized (this) {
            Message message = this.mMessages;
            while (message != null && message.target == handler && message.callback == runnable && (obj == null || message.obj == obj)) {
                Message message2 = message.next;
                this.mMessages = message2;
                message.recycle();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && message3.callback == runnable && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycle();
                    message.next = message4;
                } else {
                    message = message3;
                }
            }
        }
    }
}
