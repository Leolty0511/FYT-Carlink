package com.google.android.projection.protocol;

import android.app.m;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.Handler;
import android.os.Process;
import android.os.Trace;
import android.telecom.Logging.Session;
import android.util.Log;
import androidx.annotation.GuardedBy;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes3.dex */
class InputOutputThreads {
    private static final boolean DBG_TRACE = true;
    private static final int INPUT_OUTPUT_THREAD_PRIORITY = -19;
    private static final int MAX_FRAME_SIZE = 65544;
    private static final String TAG = "AHU.GAL_RECEIVER";
    private static final int THREAD_INTERRUPT_AWAIT_TIMEOUT_MS = 250;
    private static final int THREAD_TEAR_DOWN_TIMEOUT_MS = 2500;
    private static final boolean VERBOSE_LOGGING_ENABLED = false;
    private final FrameParser mFrameParser;
    private final Handler mHandler;
    private volatile ReaderThread mReaderThread;
    private volatile WriterThread mWriterThread;

    @GuardedBy("this")
    private Runnable stopTimeout;
    private final AtomicReference<Transport.StopReason> mStopRequested = new AtomicReference<>();
    private final AtomicBoolean mFlushingMessages = new AtomicBoolean(false);
    private final AtomicBoolean mThreadsTerminatedCalled = new AtomicBoolean();
    private final CountDownLatch mStopProgress = new CountDownLatch(2);
    private final Object stopRequestAndFlushLock = new Object();

    public interface FrameParser {
        int dequeueOutgoingFrame(byte[] bArr);

        void enqueueIncomingFrame(byte[] bArr, int i2);

        int getFrameSizeToRead(byte[] bArr, int i2);

        void onTerminating(Runnable runnable);

        void onThreadsTerminated(Transport.StopReason stopReason);
    }

    public abstract class InputOutputThread extends Thread {
        final Transport mTransport;

        public InputOutputThread(String str, Transport transport) {
            super(str);
            this.mTransport = transport;
        }

        public abstract void doIo();

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Process.setThreadPriority(-19);
                doIo();
            } finally {
                InputOutputThreads.this.threadStopped(this);
            }
        }
    }

    public class ReaderThread extends InputOutputThread {
        private static final int HEADER_READ_LENGTH = 4;

        public ReaderThread(Transport transport) {
            super("ReaderThread", transport);
        }

        private int read(byte[] bArr, int i2, int i3) {
            Trace.beginSection("read");
            int i4 = 0;
            while (i4 < i3 && !InputOutputThreads.this.isStopRequestedAndNoMessageFlushRequested()) {
                try {
                    int i5 = this.mTransport.read(bArr, i2 + i4, i3 - i4);
                    if (i5 > 0) {
                        i4 += i5;
                    }
                } catch (IOException e2) {
                    Log.e("AHU.GAL_RECEIVER", "Caught exception on read. Exiting." + e2);
                    if (!InputOutputThreads.this.isStopRequestedAndNoMessageFlushRequested()) {
                        InputOutputThreads.this.stop(Transport.StopReason.CONNECTION_ERROR);
                    }
                }
            }
            Trace.endSection();
            return i4;
        }

        @Override // com.google.android.projection.protocol.InputOutputThreads.InputOutputThread
        public void doIo() {
            byte[] bArr = new byte[65544];
            while (!InputOutputThreads.this.isStopRequestedAndNoMessageFlushRequested()) {
                Trace.beginSection("readerThread");
                int i2 = read(bArr, 0, 4);
                if (i2 != 4) {
                    m.q("read returned ", i2, " while expecting 4", "AHU.GAL_RECEIVER");
                    return;
                }
                int frameSizeToRead = InputOutputThreads.this.mFrameParser.getFrameSizeToRead(bArr, 4);
                int i3 = read(bArr, 4, frameSizeToRead);
                if (i3 != frameSizeToRead) {
                    Log.e("AHU.GAL_RECEIVER", "read returned " + i3 + " while expecting " + frameSizeToRead);
                    return;
                }
                if (!InputOutputThreads.this.isStopRequestedAndNoMessageFlushRequested()) {
                    InputOutputThreads.this.mFrameParser.enqueueIncomingFrame(bArr, frameSizeToRead + 4);
                }
                Trace.endSection();
            }
        }
    }

    public class WriterThread extends InputOutputThread {
        public WriterThread(Transport transport) {
            super("WriterThread", transport);
        }

        @Override // com.google.android.projection.protocol.InputOutputThreads.InputOutputThread
        public void doIo() {
            byte[] bArr = new byte[65544];
            while (!InputOutputThreads.this.isStopRequestedAndNoMessageFlushRequested()) {
                try {
                    Trace.beginSection("writerThread");
                    int iDequeueOutgoingFrame = InputOutputThreads.this.mFrameParser.dequeueOutgoingFrame(bArr);
                    if (iDequeueOutgoingFrame == 0) {
                        Log.i("AHU.GAL_RECEIVER", "Writer thread shutting down.");
                        return;
                    }
                    Trace.beginSection("write");
                    int i2 = 0;
                    while (i2 < 10 && !InputOutputThreads.this.isStopRequestedAndNoMessageFlushRequested()) {
                        try {
                            this.mTransport.write(bArr, 0, iDequeueOutgoingFrame);
                            break;
                        } catch (IOException e2) {
                            i2++;
                            Log.w("AHU.GAL_RECEIVER", "IOException while writing, retryCount: " + i2 + WifiEnterpriseConfig.CA_CERT_ALIAS_DELIMITER + e2);
                        }
                    }
                    if (i2 >= 10) {
                        throw new IOException("max retry reached");
                    }
                    Trace.endSection();
                    Trace.endSection();
                } catch (IOException e3) {
                    Log.e("AHU.GAL_RECEIVER", "Caught exception on write. Exiting." + e3);
                    InputOutputThreads.this.stop(Transport.StopReason.CONNECTION_ERROR);
                    return;
                }
            }
        }
    }

    public InputOutputThreads(Handler handler, FrameParser frameParser) {
        this.mHandler = handler;
        this.mFrameParser = frameParser;
    }

    private Runnable getStopTimeout() {
        Runnable runnable;
        synchronized (this) {
            if (this.stopTimeout == null) {
                this.stopTimeout = new Runnable() { // from class: com.google.android.projection.protocol.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f383b.lambda$getStopTimeout$0();
                    }
                };
            }
            runnable = this.stopTimeout;
        }
        return runnable;
    }

    private String hexdumpBuffer(byte[] bArr, int i2) {
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            sb.append(String.format(" %02x", Byte.valueOf(bArr[i3])));
            if (i3 == 32) {
                sb.append(Session.TRUNCATE_STRING);
                break;
            }
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isStopRequestedAndNoMessageFlushRequested() {
        boolean z2;
        synchronized (this.stopRequestAndFlushLock) {
            z2 = (this.mStopRequested.get() == null || this.mFlushingMessages.get()) ? false : true;
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getStopTimeout$0() {
        boolean z2;
        if (this.mStopProgress.getCount() != 0) {
            Log.w("AHU.GAL_RECEIVER", "Threads did not stop in 2500 ms");
            this.mFlushingMessages.set(false);
            this.mReaderThread.interrupt();
            this.mWriterThread.interrupt();
            try {
                z2 = !this.mStopProgress.await(250L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException unused) {
                z2 = true;
            }
            if (z2) {
                Log.w("AHU.GAL_RECEIVER", "Threads unresponsive to interrupt; notifying of termination anyway");
            }
        }
        if (this.mThreadsTerminatedCalled.compareAndSet(false, true)) {
            this.mFrameParser.onThreadsTerminated(this.mStopRequested.get());
        }
    }

    private void tearDownIfAllThreadsStopped() {
        if (this.mStopProgress.getCount() == 0) {
            Runnable stopTimeout = getStopTimeout();
            this.mHandler.removeCallbacks(stopTimeout);
            this.mHandler.post(stopTimeout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void threadStopped(InputOutputThread inputOutputThread) {
        Log.d("AHU.GAL_RECEIVER", inputOutputThread.getName() + " is stopping");
        if (stop(Transport.StopReason.CONNECTION_TERMINATED)) {
            Log.w("AHU.GAL_RECEIVER", inputOutputThread.getName() + " exiting without stop requested; stop triggered");
        }
        this.mStopProgress.countDown();
        tearDownIfAllThreadsStopped();
    }

    public void start(Transport transport) {
        this.mReaderThread = new ReaderThread(transport);
        this.mWriterThread = new WriterThread(transport);
        this.mReaderThread.start();
        this.mWriterThread.start();
    }

    public boolean stop(final Transport.StopReason stopReason) {
        boolean z2;
        if (this.mReaderThread == null || this.mWriterThread == null) {
            Log.w("AHU.GAL_RECEIVER", "Asked to stop before started");
            return false;
        }
        synchronized (this.stopRequestAndFlushLock) {
            AtomicReference<Transport.StopReason> atomicReference = this.mStopRequested;
            while (true) {
                if (atomicReference.compareAndSet(null, stopReason)) {
                    z2 = true;
                    break;
                }
                if (atomicReference.get() != null) {
                    z2 = false;
                    break;
                }
            }
            if (!z2) {
                return false;
            }
            Transport.StopReason stopReason2 = Transport.StopReason.MD_BYEBYE;
            if (stopReason2.equals(stopReason)) {
                this.mFlushingMessages.set(true);
            }
            this.mHandler.postDelayed(getStopTimeout(), 2500L);
            if (stopReason2.equals(stopReason)) {
                this.mFrameParser.onTerminating(new Runnable() { // from class: com.google.android.projection.protocol.InputOutputThreads.1
                    @Override // java.lang.Runnable
                    public void run() {
                        InputOutputThreads.this.mReaderThread.mTransport.stopTransport(stopReason);
                        InputOutputThreads.this.mFlushingMessages.set(false);
                    }
                });
            } else {
                this.mReaderThread.mTransport.stopTransport(stopReason);
                this.mFrameParser.onTerminating(null);
            }
            return true;
        }
    }
}
