package com.android.internal.os;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes2.dex */
public class HandlerCaller {
    final Callback mCallback;
    final Handler mH;
    final Looper mMainLooper;

    public interface Callback {
        void executeMessage(Message message);
    }

    public class MyHandler extends Handler {
        public MyHandler(Looper looper, boolean z2) {
            super(looper, null, z2);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            HandlerCaller.this.mCallback.executeMessage(message);
        }
    }

    public HandlerCaller(Context context, Looper looper, Callback callback, boolean z2) {
        looper = looper == null ? context.getMainLooper() : looper;
        this.mMainLooper = looper;
        this.mH = new MyHandler(looper, z2);
        this.mCallback = callback;
    }

    public void executeOrSendMessage(Message message) {
        if (Looper.myLooper() != this.mMainLooper) {
            this.mH.sendMessage(message);
        } else {
            this.mCallback.executeMessage(message);
            message.recycle();
        }
    }

    public Handler getHandler() {
        return this.mH;
    }

    public boolean hasMessages(int i2) {
        return this.mH.hasMessages(i2);
    }

    public Message obtainMessage(int i2) {
        return this.mH.obtainMessage(i2);
    }

    public Message obtainMessageBO(int i2, boolean z2, Object obj) {
        return this.mH.obtainMessage(i2, z2 ? 1 : 0, 0, obj);
    }

    public Message obtainMessageBOO(int i2, boolean z2, Object obj, Object obj2) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        return this.mH.obtainMessage(i2, z2 ? 1 : 0, 0, someArgsObtain);
    }

    public Message obtainMessageI(int i2, int i3) {
        return this.mH.obtainMessage(i2, i3, 0);
    }

    public Message obtainMessageII(int i2, int i3, int i4) {
        return this.mH.obtainMessage(i2, i3, i4);
    }

    public Message obtainMessageIIII(int i2, int i3, int i4, int i5, int i6) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.argi1 = i3;
        someArgsObtain.argi2 = i4;
        someArgsObtain.argi3 = i5;
        someArgsObtain.argi4 = i6;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public Message obtainMessageIIIIII(int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.argi1 = i3;
        someArgsObtain.argi2 = i4;
        someArgsObtain.argi3 = i5;
        someArgsObtain.argi4 = i6;
        someArgsObtain.argi5 = i7;
        someArgsObtain.argi6 = i8;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public Message obtainMessageIIIIO(int i2, int i3, int i4, int i5, int i6, Object obj) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.argi1 = i3;
        someArgsObtain.argi2 = i4;
        someArgsObtain.argi3 = i5;
        someArgsObtain.argi4 = i6;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public Message obtainMessageIIO(int i2, int i3, int i4, Object obj) {
        return this.mH.obtainMessage(i2, i3, i4, obj);
    }

    public Message obtainMessageIIOO(int i2, int i3, int i4, Object obj, Object obj2) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        return this.mH.obtainMessage(i2, i3, i4, someArgsObtain);
    }

    public Message obtainMessageIIOOO(int i2, int i3, int i4, Object obj, Object obj2, Object obj3) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        someArgsObtain.arg3 = obj3;
        return this.mH.obtainMessage(i2, i3, i4, someArgsObtain);
    }

    public Message obtainMessageIIOOOO(int i2, int i3, int i4, Object obj, Object obj2, Object obj3, Object obj4) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        someArgsObtain.arg3 = obj3;
        someArgsObtain.arg4 = obj4;
        return this.mH.obtainMessage(i2, i3, i4, someArgsObtain);
    }

    public Message obtainMessageIO(int i2, int i3, Object obj) {
        return this.mH.obtainMessage(i2, i3, 0, obj);
    }

    public Message obtainMessageIOO(int i2, int i3, Object obj, Object obj2) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        return this.mH.obtainMessage(i2, i3, 0, someArgsObtain);
    }

    public Message obtainMessageIOOO(int i2, int i3, Object obj, Object obj2, Object obj3) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        someArgsObtain.arg3 = obj3;
        return this.mH.obtainMessage(i2, i3, 0, someArgsObtain);
    }

    public Message obtainMessageO(int i2, Object obj) {
        return this.mH.obtainMessage(i2, 0, 0, obj);
    }

    public Message obtainMessageOO(int i2, Object obj, Object obj2) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public Message obtainMessageOOO(int i2, Object obj, Object obj2, Object obj3) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        someArgsObtain.arg3 = obj3;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public Message obtainMessageOOOO(int i2, Object obj, Object obj2, Object obj3, Object obj4) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        someArgsObtain.arg3 = obj3;
        someArgsObtain.arg4 = obj4;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public Message obtainMessageOOOOII(int i2, Object obj, Object obj2, Object obj3, Object obj4, int i3, int i4) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        someArgsObtain.arg3 = obj3;
        someArgsObtain.arg4 = obj4;
        someArgsObtain.argi5 = i3;
        someArgsObtain.argi6 = i4;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public Message obtainMessageOOOOO(int i2, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        SomeArgs someArgsObtain = SomeArgs.obtain();
        someArgsObtain.arg1 = obj;
        someArgsObtain.arg2 = obj2;
        someArgsObtain.arg3 = obj3;
        someArgsObtain.arg4 = obj4;
        someArgsObtain.arg5 = obj5;
        return this.mH.obtainMessage(i2, 0, 0, someArgsObtain);
    }

    public void removeMessages(int i2) {
        this.mH.removeMessages(i2);
    }

    public void sendMessage(Message message) {
        this.mH.sendMessage(message);
    }

    public SomeArgs sendMessageAndWait(Message message) {
        if (Looper.myLooper() == this.mH.getLooper()) {
            throw new IllegalStateException("Can't wait on same thread as looper");
        }
        SomeArgs someArgs = (SomeArgs) message.obj;
        someArgs.mWaitState = 1;
        this.mH.sendMessage(message);
        synchronized (someArgs) {
            while (someArgs.mWaitState == 1) {
                try {
                    someArgs.wait();
                } catch (InterruptedException unused) {
                    return null;
                }
            }
        }
        someArgs.mWaitState = 0;
        return someArgs;
    }

    public void sendMessageDelayed(Message message, long j2) {
        this.mH.sendMessageDelayed(message, j2);
    }

    public void removeMessages(int i2, Object obj) {
        this.mH.removeMessages(i2, obj);
    }
}
