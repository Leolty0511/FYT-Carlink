package com.syu.broadcast;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.util.MyMediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public class BtavNextService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (!Bt_IpcObj.isAppIdBtAv()) {
            App_Bt.getInstance().mIpcObj.LauncherRequestAppIdBtAv();
        }
        if (intent != null) {
            Log.d("gdy1", "  01  BtavNextService");
            MyMediaPlayer.getIntances().audioManager.requestAudioFocus(MyMediaPlayer.afChangeListener, 3, 1);
            Bt_IpcObj.avNext();
        }
        return super.onStartCommand(intent, flags, startId);
    }
}
