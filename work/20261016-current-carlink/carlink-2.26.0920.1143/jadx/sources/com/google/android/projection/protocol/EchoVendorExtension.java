package com.google.android.projection.protocol;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import java.util.Objects;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class EchoVendorExtension extends VendorExtensionBase {
    private static final int ECHO_DATA = 1;
    private static final String SERVICE_NAME = "com.example.android.projection.protocol.EchoVendorExtension";
    private static final String[] SERVICE_WHITELIST = {"com.example.echovendor"};
    private LooperThread mEchoThread;
    private Handler mHandler;

    public class EchoHandler extends Handler {
        public EchoHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
            } else {
                EchoVendorExtension.this.sendData((byte[]) message.obj);
            }
        }
    }

    @Override // com.google.android.projection.protocol.VendorExtensionBase, com.google.android.projection.protocol.CarServiceProvider
    public boolean create(int i2, long j2) {
        LooperThread looperThread = new LooperThread("echo");
        this.mEchoThread = looperThread;
        looperThread.start();
        this.mHandler = new EchoHandler(this.mEchoThread.getLooper());
        return super.create(i2, j2);
    }

    @Override // com.google.android.projection.protocol.VendorExtensionBase, com.google.android.projection.protocol.NativeObject
    public void destroy() {
        LooperThread looperThread = this.mEchoThread;
        Objects.requireNonNull(looperThread);
        looperThread.stopThread();
        super.destroy();
    }

    @Override // com.google.android.projection.protocol.VendorExtensionBase
    public String[] getPackageWhitelist() {
        return SERVICE_WHITELIST;
    }

    @Override // com.google.android.projection.protocol.VendorExtensionBase
    public String getServiceName() {
        return SERVICE_NAME;
    }

    @Override // com.google.android.projection.protocol.VendorExtensionBase
    public int onMessage(byte[] bArr) {
        Handler handler = this.mHandler;
        Objects.requireNonNull(handler);
        handler.sendMessage(handler.obtainMessage(1, bArr));
        if (bArr == null) {
            return 0;
        }
        return bArr.length;
    }

    public static class LooperThread extends Thread {
        private final Semaphore mInitWaitSemaphore;
        private Looper mLooper;
        private final int mThreadPriority;

        public LooperThread(String str) {
            super(str);
            this.mInitWaitSemaphore = new Semaphore(0);
            this.mThreadPriority = 0;
        }

        public Looper getLooper() {
            Looper looper = this.mLooper;
            Objects.requireNonNull(looper);
            return looper;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(this.mThreadPriority);
            Looper.prepare();
            Looper looperMyLooper = Looper.myLooper();
            Objects.requireNonNull(looperMyLooper);
            this.mLooper = looperMyLooper;
            this.mInitWaitSemaphore.release();
            Looper.loop();
        }

        @Override // java.lang.Thread
        public void start() {
            super.start();
            try {
                if (this.mInitWaitSemaphore.tryAcquire(5L, TimeUnit.SECONDS)) {
                } else {
                    throw new RuntimeException("LooperThread init timeout");
                }
            } catch (InterruptedException e2) {
                throw new RuntimeException(e2);
            }
        }

        public void stopThread() {
            Looper looper = this.mLooper;
            Objects.requireNonNull(looper);
            looper.quit();
        }

        public LooperThread(String str, int i2) {
            super(str);
            this.mInitWaitSemaphore = new Semaphore(0);
            this.mThreadPriority = i2;
        }
    }
}
