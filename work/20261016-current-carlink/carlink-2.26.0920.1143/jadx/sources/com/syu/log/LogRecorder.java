package com.syu.log;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.util.Date;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"SimpleDateFormat"})
public class LogRecorder extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String action = intent == null ? "" : intent.getAction();
        Log.e("LogRecord", "  onReceive :  " + intent.toString());
        if (Intent.ACTION_MEDIA_UNMOUNTED.equals(action) || Intent.ACTION_MEDIA_MOUNTED.equals(action) || Intent.ACTION_TIME_TICK.equals(action) || !Intent.ACTION_DATE_CHANGED.equals(action)) {
            return;
        }
        new Date();
        throw null;
    }
}
