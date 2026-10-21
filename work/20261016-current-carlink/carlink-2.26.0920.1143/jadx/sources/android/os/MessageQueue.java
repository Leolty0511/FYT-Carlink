package android.os;

import android.util.Log;
import android.util.Printer;
import android.util.SparseArray;
import android.util.proto.ProtoOutputStream;
import java.io.FileDescriptor;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class MessageQueue {
    private static final boolean DEBUG = false;
    private static final String TAG = "MessageQueue";
    private boolean mBlocked;
    private SparseArray<FileDescriptorRecord> mFileDescriptorRecords;
    Message mMessages;
    private int mNextBarrierToken;
    private IdleHandler[] mPendingIdleHandlers;
    private final boolean mQuitAllowed;
    private boolean mQuitting;
    private final ArrayList<IdleHandler> mIdleHandlers = new ArrayList<>();
    private long mPtr = nativeInit();

    public static final class FileDescriptorRecord {
        public final FileDescriptor mDescriptor;
        public int mEvents;
        public OnFileDescriptorEventListener mListener;
        public int mSeq;

        public FileDescriptorRecord(FileDescriptor fileDescriptor, int i2, OnFileDescriptorEventListener onFileDescriptorEventListener) {
            this.mDescriptor = fileDescriptor;
            this.mEvents = i2;
            this.mListener = onFileDescriptorEventListener;
        }
    }

    public interface IdleHandler {
        boolean queueIdle();
    }

    public interface OnFileDescriptorEventListener {
        public static final int EVENT_ERROR = 4;
        public static final int EVENT_INPUT = 1;
        public static final int EVENT_OUTPUT = 2;

        @Retention(RetentionPolicy.SOURCE)
        public @interface Events {
        }

        int onFileDescriptorEvents(FileDescriptor fileDescriptor, int i2);
    }

    public MessageQueue(boolean z2) {
        this.mQuitAllowed = z2;
    }

    private int dispatchEvents(int i2, int i3) {
        synchronized (this) {
            FileDescriptorRecord fileDescriptorRecord = this.mFileDescriptorRecords.get(i2);
            if (fileDescriptorRecord == null) {
                return 0;
            }
            int i4 = fileDescriptorRecord.mEvents;
            int i5 = i3 & i4;
            if (i5 == 0) {
                return i4;
            }
            OnFileDescriptorEventListener onFileDescriptorEventListener = fileDescriptorRecord.mListener;
            int i6 = fileDescriptorRecord.mSeq;
            int iOnFileDescriptorEvents = onFileDescriptorEventListener.onFileDescriptorEvents(fileDescriptorRecord.mDescriptor, i5);
            if (iOnFileDescriptorEvents != 0) {
                iOnFileDescriptorEvents |= 4;
            }
            if (iOnFileDescriptorEvents != i4) {
                synchronized (this) {
                    int iIndexOfKey = this.mFileDescriptorRecords.indexOfKey(i2);
                    if (iIndexOfKey >= 0 && this.mFileDescriptorRecords.valueAt(iIndexOfKey) == fileDescriptorRecord && fileDescriptorRecord.mSeq == i6) {
                        fileDescriptorRecord.mEvents = iOnFileDescriptorEvents;
                        if (iOnFileDescriptorEvents == 0) {
                            this.mFileDescriptorRecords.removeAt(iIndexOfKey);
                        }
                    }
                }
            }
            return iOnFileDescriptorEvents;
        }
    }

    private void dispose() {
        long j2 = this.mPtr;
        if (j2 != 0) {
            nativeDestroy(j2);
            this.mPtr = 0L;
        }
    }

    private boolean isPollingLocked() {
        return !this.mQuitting && nativeIsPolling(this.mPtr);
    }

    private static native void nativeDestroy(long j2);

    private static native long nativeInit();

    private static native boolean nativeIsPolling(long j2);

    private native void nativePollOnce(long j2, int i2);

    private static native void nativeSetFileDescriptorEvents(long j2, int i2, int i3);

    private static native void nativeWake(long j2);

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
                    message2.recycleUnchecked();
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
            message.recycleUnchecked();
            message = message2;
        }
        this.mMessages = null;
    }

    private void updateOnFileDescriptorEventListenerLocked(FileDescriptor fileDescriptor, int i2, OnFileDescriptorEventListener onFileDescriptorEventListener) {
        int iIndexOfKey;
        int int$ = fileDescriptor.getInt$();
        SparseArray<FileDescriptorRecord> sparseArray = this.mFileDescriptorRecords;
        FileDescriptorRecord fileDescriptorRecordValueAt = null;
        if (sparseArray != null) {
            iIndexOfKey = sparseArray.indexOfKey(int$);
            if (iIndexOfKey >= 0 && (fileDescriptorRecordValueAt = this.mFileDescriptorRecords.valueAt(iIndexOfKey)) != null && fileDescriptorRecordValueAt.mEvents == i2) {
                return;
            }
        } else {
            iIndexOfKey = -1;
        }
        if (i2 == 0) {
            if (fileDescriptorRecordValueAt != null) {
                fileDescriptorRecordValueAt.mEvents = 0;
                this.mFileDescriptorRecords.removeAt(iIndexOfKey);
                return;
            }
            return;
        }
        int i3 = i2 | 4;
        if (fileDescriptorRecordValueAt == null) {
            if (this.mFileDescriptorRecords == null) {
                this.mFileDescriptorRecords = new SparseArray<>();
            }
            this.mFileDescriptorRecords.put(int$, new FileDescriptorRecord(fileDescriptor, i3, onFileDescriptorEventListener));
        } else {
            fileDescriptorRecordValueAt.mListener = onFileDescriptorEventListener;
            fileDescriptorRecordValueAt.mEvents = i3;
            fileDescriptorRecordValueAt.mSeq++;
        }
        nativeSetFileDescriptorEvents(this.mPtr, int$, i3);
    }

    public void addIdleHandler(IdleHandler idleHandler) {
        if (idleHandler == null) {
            throw new NullPointerException("Can't add a null IdleHandler");
        }
        synchronized (this) {
            this.mIdleHandlers.add(idleHandler);
        }
    }

    public void addOnFileDescriptorEventListener(FileDescriptor fileDescriptor, int i2, OnFileDescriptorEventListener onFileDescriptorEventListener) {
        if (fileDescriptor == null) {
            throw new IllegalArgumentException("fd must not be null");
        }
        if (onFileDescriptorEventListener == null) {
            throw new IllegalArgumentException("listener must not be null");
        }
        synchronized (this) {
            updateOnFileDescriptorEventListenerLocked(fileDescriptor, i2, onFileDescriptorEventListener);
        }
    }

    public void dump(Printer printer, String str, Handler handler) {
        synchronized (this) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int i2 = 0;
            for (Message message = this.mMessages; message != null; message = message.next) {
                if (handler == null || handler == message.target) {
                    printer.println(str + "Message " + i2 + ": " + message.toString(jUptimeMillis));
                }
                i2++;
            }
            printer.println(str + "(Total messages: " + i2 + ", polling=" + isPollingLocked() + ", quitting=" + this.mQuitting + ")");
        }
    }

    public boolean enqueueMessage(Message message, long j2) {
        boolean z2;
        Message message2;
        if (message.target == null) {
            throw new IllegalArgumentException("Message must have a target.");
        }
        if (message.isInUse()) {
            throw new IllegalStateException(message + " This message is already in use.");
        }
        synchronized (this) {
            if (this.mQuitting) {
                IllegalStateException illegalStateException = new IllegalStateException(message.target + " sending message to a Handler on a dead thread");
                Log.w(TAG, illegalStateException.getMessage(), illegalStateException);
                message.recycle();
                return false;
            }
            message.markInUse();
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

    public boolean isIdle() {
        boolean z2;
        synchronized (this) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            Message message = this.mMessages;
            z2 = message == null || jUptimeMillis < message.when;
        }
        return z2;
    }

    public boolean isPolling() {
        boolean zIsPollingLocked;
        synchronized (this) {
            zIsPollingLocked = isPollingLocked();
        }
        return zIsPollingLocked;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0098, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0099, code lost:
    
        if (r5 >= r6) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x009b, code lost:
    
        r7 = r15.mPendingIdleHandlers;
        r8 = r7[r5];
        r7[r5] = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a1, code lost:
    
        r7 = r8.queueIdle();
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00a6, code lost:
    
        r7 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00a7, code lost:
    
        android.util.Log.wtf(android.os.MessageQueue.TAG, "IdleHandler threw exception", r7);
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00bf, code lost:
    
        r5 = 0;
        r6 = 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.os.Message next() {
        /*
            r15 = this;
            long r0 = r15.mPtr
            r2 = 0
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto La
            return r3
        La:
            r2 = -1
            r4 = 0
            r6 = r2
            r5 = r4
        Le:
            if (r5 == 0) goto L13
            android.os.Binder.flushPendingCommands()
        L13:
            r15.nativePollOnce(r0, r5)
            monitor-enter(r15)
            long r7 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> Lc3
            android.os.Message r5 = r15.mMessages     // Catch: java.lang.Throwable -> Lc3
            if (r5 == 0) goto L34
            android.os.Handler r9 = r5.target     // Catch: java.lang.Throwable -> Lc3
            if (r9 != 0) goto L34
        L23:
            android.os.Message r9 = r5.next     // Catch: java.lang.Throwable -> Lc3
            if (r9 == 0) goto L30
            boolean r10 = r9.isAsynchronous()     // Catch: java.lang.Throwable -> Lc3
            if (r10 == 0) goto L2e
            goto L30
        L2e:
            r5 = r9
            goto L23
        L30:
            r14 = r9
            r9 = r5
            r5 = r14
            goto L35
        L34:
            r9 = r3
        L35:
            if (r5 == 0) goto L5b
            long r10 = r5.when     // Catch: java.lang.Throwable -> Lc3
            int r12 = (r7 > r10 ? 1 : (r7 == r10 ? 0 : -1))
            if (r12 >= 0) goto L47
            long r10 = r10 - r7
            r12 = 2147483647(0x7fffffff, double:1.060997895E-314)
            long r9 = java.lang.Math.min(r10, r12)     // Catch: java.lang.Throwable -> Lc3
            int r5 = (int) r9     // Catch: java.lang.Throwable -> Lc3
            goto L5c
        L47:
            r15.mBlocked = r4     // Catch: java.lang.Throwable -> Lc3
            if (r9 == 0) goto L50
            android.os.Message r0 = r5.next     // Catch: java.lang.Throwable -> Lc3
            r9.next = r0     // Catch: java.lang.Throwable -> Lc3
            goto L54
        L50:
            android.os.Message r0 = r5.next     // Catch: java.lang.Throwable -> Lc3
            r15.mMessages = r0     // Catch: java.lang.Throwable -> Lc3
        L54:
            r5.next = r3     // Catch: java.lang.Throwable -> Lc3
            r5.markInUse()     // Catch: java.lang.Throwable -> Lc3
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            return r5
        L5b:
            r5 = r2
        L5c:
            boolean r9 = r15.mQuitting     // Catch: java.lang.Throwable -> Lc3
            if (r9 == 0) goto L65
            r15.dispose()     // Catch: java.lang.Throwable -> Lc3
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            return r3
        L65:
            if (r6 >= 0) goto L77
            android.os.Message r9 = r15.mMessages     // Catch: java.lang.Throwable -> Lc3
            if (r9 == 0) goto L71
            long r9 = r9.when     // Catch: java.lang.Throwable -> Lc3
            int r7 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r7 >= 0) goto L77
        L71:
            java.util.ArrayList<android.os.MessageQueue$IdleHandler> r6 = r15.mIdleHandlers     // Catch: java.lang.Throwable -> Lc3
            int r6 = r6.size()     // Catch: java.lang.Throwable -> Lc3
        L77:
            if (r6 > 0) goto L7e
            r7 = 1
            r15.mBlocked = r7     // Catch: java.lang.Throwable -> Lc3
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            goto Le
        L7e:
            android.os.MessageQueue$IdleHandler[] r5 = r15.mPendingIdleHandlers     // Catch: java.lang.Throwable -> Lc3
            if (r5 != 0) goto L8b
            r5 = 4
            int r5 = java.lang.Math.max(r6, r5)     // Catch: java.lang.Throwable -> Lc3
            android.os.MessageQueue$IdleHandler[] r5 = new android.os.MessageQueue.IdleHandler[r5]     // Catch: java.lang.Throwable -> Lc3
            r15.mPendingIdleHandlers = r5     // Catch: java.lang.Throwable -> Lc3
        L8b:
            java.util.ArrayList<android.os.MessageQueue$IdleHandler> r5 = r15.mIdleHandlers     // Catch: java.lang.Throwable -> Lc3
            android.os.MessageQueue$IdleHandler[] r7 = r15.mPendingIdleHandlers     // Catch: java.lang.Throwable -> Lc3
            java.lang.Object[] r5 = r5.toArray(r7)     // Catch: java.lang.Throwable -> Lc3
            android.os.MessageQueue$IdleHandler[] r5 = (android.os.MessageQueue.IdleHandler[]) r5     // Catch: java.lang.Throwable -> Lc3
            r15.mPendingIdleHandlers = r5     // Catch: java.lang.Throwable -> Lc3
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            r5 = r4
        L99:
            if (r5 >= r6) goto Lbf
            android.os.MessageQueue$IdleHandler[] r7 = r15.mPendingIdleHandlers
            r8 = r7[r5]
            r7[r5] = r3
            boolean r7 = r8.queueIdle()     // Catch: java.lang.Throwable -> La6
            goto Laf
        La6:
            r7 = move-exception
            java.lang.String r9 = "MessageQueue"
            java.lang.String r10 = "IdleHandler threw exception"
            android.util.Log.wtf(r9, r10, r7)
            r7 = r4
        Laf:
            if (r7 != 0) goto Lbc
            monitor-enter(r15)
            java.util.ArrayList<android.os.MessageQueue$IdleHandler> r7 = r15.mIdleHandlers     // Catch: java.lang.Throwable -> Lb9
            r7.remove(r8)     // Catch: java.lang.Throwable -> Lb9
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lb9
            goto Lbc
        Lb9:
            r0 = move-exception
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lb9
            throw r0
        Lbc:
            int r5 = r5 + 1
            goto L99
        Lbf:
            r5 = r4
            r6 = r5
            goto Le
        Lc3:
            r0 = move-exception
            monitor-exit(r15)     // Catch: java.lang.Throwable -> Lc3
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.os.MessageQueue.next():android.os.Message");
    }

    public int postSyncBarrier() {
        return postSyncBarrier(SystemClock.uptimeMillis());
    }

    public void quit(boolean z2) {
        if (!this.mQuitAllowed) {
            throw new IllegalStateException("Main thread not allowed to quit.");
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
                message.recycleUnchecked();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycleUnchecked();
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
                message.recycleUnchecked();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && message3.what == i2 && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycleUnchecked();
                    message.next = message4;
                } else {
                    message = message3;
                }
            }
        }
    }

    public void removeOnFileDescriptorEventListener(FileDescriptor fileDescriptor) {
        if (fileDescriptor == null) {
            throw new IllegalArgumentException("fd must not be null");
        }
        synchronized (this) {
            updateOnFileDescriptorEventListenerLocked(fileDescriptor, 0, null);
        }
    }

    public void removeSyncBarrier(int i2) {
        synchronized (this) {
            Message message = this.mMessages;
            Message message2 = null;
            while (message != null && (message.target != null || message.arg1 != i2)) {
                message2 = message;
                message = message.next;
            }
            if (message == null) {
                throw new IllegalStateException("The specified message queue synchronization  barrier token has not been posted or has already been removed.");
            }
            boolean z2 = false;
            if (message2 != null) {
                message2.next = message.next;
            } else {
                Message message3 = message.next;
                this.mMessages = message3;
                if (message3 == null || message3.target != null) {
                    z2 = true;
                }
            }
            message.recycleUnchecked();
            if (z2 && !this.mQuitting) {
                nativeWake(this.mPtr);
            }
        }
    }

    public void writeToProto(ProtoOutputStream protoOutputStream, long j2) {
        long jStart = protoOutputStream.start(j2);
        synchronized (this) {
            for (Message message = this.mMessages; message != null; message = message.next) {
                message.writeToProto(protoOutputStream, 2272037699585L);
            }
            protoOutputStream.write(1155346202626L, isPollingLocked());
            protoOutputStream.write(1155346202627L, this.mQuitting);
        }
        protoOutputStream.end(jStart);
    }

    private int postSyncBarrier(long j2) {
        int i2;
        synchronized (this) {
            i2 = this.mNextBarrierToken;
            this.mNextBarrierToken = i2 + 1;
            Message messageObtain = Message.obtain();
            messageObtain.markInUse();
            messageObtain.when = j2;
            messageObtain.arg1 = i2;
            Message message = this.mMessages;
            Message message2 = null;
            if (j2 != 0) {
                while (message != null && message.when <= j2) {
                    message2 = message;
                    message = message.next;
                }
            }
            if (message2 != null) {
                messageObtain.next = message;
                message2.next = messageObtain;
            } else {
                messageObtain.next = message;
                this.mMessages = messageObtain;
            }
        }
        return i2;
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
                message.recycleUnchecked();
                message = message2;
            }
            while (message != null) {
                Message message3 = message.next;
                if (message3 != null && message3.target == handler && message3.callback == runnable && (obj == null || message3.obj == obj)) {
                    Message message4 = message3.next;
                    message3.recycleUnchecked();
                    message.next = message4;
                } else {
                    message = message3;
                }
            }
        }
    }

    public boolean hasMessages(Handler handler) {
        if (handler == null) {
            return false;
        }
        synchronized (this) {
            for (Message message = this.mMessages; message != null; message = message.next) {
                if (message.target == handler) {
                    return true;
                }
            }
            return false;
        }
    }
}
