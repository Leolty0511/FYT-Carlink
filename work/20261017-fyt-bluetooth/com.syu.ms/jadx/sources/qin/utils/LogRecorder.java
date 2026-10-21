package qin.utils;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ProxyProperties;
import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"SimpleDateFormat"})
public class LogRecorder extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SimpleDateFormat f17138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f17139b;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent == null ? ProxyProperties.LOCAL_EXCL_LIST : intent.getAction();
        Log.e("LogRecord", "  onReceive :  " + intent.toString());
        if (Intent.ACTION_MEDIA_UNMOUNTED.equals(action) || Intent.ACTION_MEDIA_MOUNTED.equals(action) || Intent.ACTION_TIME_TICK.equals(action) || !Intent.ACTION_DATE_CHANGED.equals(action)) {
            return;
        }
        this.f17139b = this.f17138a.format(new Date());
    }
}
