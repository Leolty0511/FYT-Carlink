package com.android.internal.util;

import android.app.AlarmManager;
import android.content.Context;
import android.os.Handler;
import android.os.Message;

/* JADX INFO: loaded from: classes3.dex */
public class WakeupMessage implements AlarmManager.OnAlarmListener {
    private final AlarmManager mAlarmManager;
    protected final int mArg1;
    protected final int mArg2;
    protected final int mCmd;
    protected final String mCmdName;
    protected final Handler mHandler;
    protected final Object mObj;
    private boolean mScheduled;

    public WakeupMessage(Context context, Handler handler, String str, int i2, int i3, int i4, Object obj) {
        this.mAlarmManager = (AlarmManager) context.getSystemService("alarm");
        this.mHandler = handler;
        this.mCmdName = str;
        this.mCmd = i2;
        this.mArg1 = i3;
        this.mArg2 = i4;
        this.mObj = obj;
    }

    public synchronized void cancel() {
        if (this.mScheduled) {
            this.mAlarmManager.cancel(this);
            this.mScheduled = false;
        }
    }

    @Override // android.app.AlarmManager.OnAlarmListener
    public void onAlarm() {
        boolean z2;
        synchronized (this) {
            z2 = this.mScheduled;
            this.mScheduled = false;
        }
        if (z2) {
            Message messageObtainMessage = this.mHandler.obtainMessage(this.mCmd, this.mArg1, this.mArg2, this.mObj);
            this.mHandler.dispatchMessage(messageObtainMessage);
            messageObtainMessage.recycle();
        }
    }

    public synchronized void schedule(long j2) {
        this.mAlarmManager.setExact(2, j2, this.mCmdName, this, this.mHandler);
        this.mScheduled = true;
    }

    public WakeupMessage(Context context, Handler handler, String str, int i2, int i3) {
        this(context, handler, str, i2, i3, 0, null);
    }

    public WakeupMessage(Context context, Handler handler, String str, int i2, int i3, int i4) {
        this(context, handler, str, i2, i3, i4, null);
    }

    public WakeupMessage(Context context, Handler handler, String str, int i2) {
        this(context, handler, str, i2, 0, 0, null);
    }
}
