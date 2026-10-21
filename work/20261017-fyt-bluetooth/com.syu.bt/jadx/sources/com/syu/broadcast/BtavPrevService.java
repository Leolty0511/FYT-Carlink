package com.syu.broadcast;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.syu.app.ipc.Bt_IpcObj;
import com.syu.bt.App_Bt;
import com.syu.bt.util.MyMediaPlayer;

/* JADX INFO: loaded from: classes.dex */
public class BtavPrevService extends Service {
    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        if (!Bt_IpcObj.isAppIdBtAv()) {
            App_Bt.getInstance().mIpcObj.LauncherRequestAppIdBtAv();
        }
        Log.d("gdyy", "  00  BtavPrevService");
        if (intent != null) {
            MyMediaPlayer.getIntances().audioManager.requestAudioFocus(MyMediaPlayer.afChangeListener, 3, 1);
            Bt_IpcObj.avPrev();
        }
        return super.onStartCommand(intent, flags, startId);
    }
}
