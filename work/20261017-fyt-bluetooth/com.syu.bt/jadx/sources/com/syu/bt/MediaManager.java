package com.syu.bt;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.MediaMetadata;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Build;
import android.util.Log;
import android.view.KeyEvent;
import com.lsec.core.ipc.module.main.Bt;
import com.lsec.core.ipc.module.main.Main;
import com.syu.app.ipc.Bt_IpcObj;

/* JADX INFO: loaded from: classes.dex */
public class MediaManager extends MediaSession.Callback {
    public static MediaManager mInstance;
    private static MediaSession mediaSession;
    private AudioManager audioManager;
    private ComponentName compName;
    private Context context;
    private boolean mediaState;
    private boolean sessionRegister;
    public static int iBtAv_CurTime_p = 0;
    public static Runnable mRunnable_setPlaybackState = new Runnable() { // from class: com.syu.bt.MediaManager.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (MediaManager.mediaSession != null) {
                    MediaManager.mediaSession.setPlaybackState(new PlaybackState.Builder().setState(App_Bt.bBtAvPlayState ? 3 : 2, App_Bt.iBtAv_CurTime, 1.0f).build());
                }
            } catch (Exception e) {
            }
        }
    };

    private MediaManager() {
    }

    private MediaManager(Context context) {
        this.context = context;
        Log.d("bt", "MediaManager");
        this.audioManager = (AudioManager) context.getSystemService("audio");
    }

    public static void init(Context context) {
        Log.d("bt", "MediaManager init");
        if (mInstance == null) {
            mInstance = new MediaManager(context);
        }
    }

    class MediaButtonReceiver extends BroadcastReceiver {
        MediaButtonReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            KeyEvent event = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
            Log.d("bt", " ** MediaButtonReceiver getKeyCode = " + event.getKeyCode());
            if (event.getAction() == 1) {
                switch (event.getKeyCode()) {
                    case 85:
                    case 126:
                    case 127:
                        Log.d("LZP", "event.getKeyCode()");
                        Bt_IpcObj.avPlayPause();
                        break;
                    case 87:
                        Bt_IpcObj.avNext();
                        break;
                    case 88:
                        Bt_IpcObj.avPrev();
                        break;
                }
            }
        }
    }

    public boolean isMediaState() {
        Log.d("bt", "MediaManager isMediaState: " + this.mediaState);
        return this.mediaState;
    }

    public void setMediaState(boolean mediaState) {
        this.mediaState = mediaState;
    }

    public void registerMediaButton() {
        Log.d("id33", " ** MediaManager registerMediaButton");
        if (!this.sessionRegister) {
            if (Build.VERSION.SDK_INT <= 21) {
                Log.d("bt", "Build.VERSION.SDK_INT <= Build.VERSION_CODES.LOLLIPOP");
                return;
            }
            Log.d("bt", "registerMediaButton MediaManager");
            mediaSession = new MediaSession(this.context, "MusicMediaBrowserService");
            mediaSession.setFlags(3);
            PlaybackState playbackState = new PlaybackState.Builder().setActions(3893L).build();
            mediaSession.setPlaybackState(playbackState);
            mediaSession.setCallback(this);
            this.sessionRegister = true;
            mediaSession.setActive(true);
        }
    }

    public void unregisterMediaButton() {
        Log.d("id33", " ** MediaManager unregisterMediaButton");
        if (Build.VERSION.SDK_INT <= 21) {
            Log.d("bt", "------------>>> unregisterMediaButton compName");
            return;
        }
        Log.d("bt", "MediaManager unregisterMediaButton");
        this.sessionRegister = false;
        if (mediaSession != null) {
            mediaSession.setActive(false);
            mediaSession.setCallback(null);
            mediaSession.release();
            mediaSession = null;
        }
    }

    @Override // android.media.session.MediaSession.Callback
    public boolean onMediaButtonEvent(Intent mediaButtonIntent) {
        Log.d("bt", "MediaManager onMediaButtonEvent");
        new MediaButtonReceiver().onReceive(this.context, mediaButtonIntent);
        return super.onMediaButtonEvent(mediaButtonIntent);
    }

    public void dispFileInfo() {
        if (Bt.sId3Title != null) {
            MediaMetadata.Builder metadataBuilder = new MediaMetadata.Builder();
            metadataBuilder.putString("android.media.metadata.DISPLAY_TITLE", Bt.sId3Title);
            metadataBuilder.putString("android.media.metadata.DISPLAY_SUBTITLE", Bt.sID3Album);
            metadataBuilder.putString("android.media.metadata.DISPLAY_DESCRIPTION", Bt.sID3Album);
            metadataBuilder.putLong("android.media.metadata.DURATION", App_Bt.iBtAv_TotalTime);
            metadataBuilder.putString("android.media.metadata.TITLE", Bt.sId3Title);
            metadataBuilder.putString("android.media.metadata.ARTIST", Bt.sId3Artist);
            mInstance.updateMetadata(metadataBuilder);
            Log.d("id33", " 00 MediaManager  dispFileInfo sId3Title = " + Bt.sId3Title + " iBtAv_CurTime = " + App_Bt.iBtAv_CurTime + " iBtAv_CurTime_p = " + iBtAv_CurTime_p);
            if (App_Bt.bMediaManager && Math.abs(iBtAv_CurTime_p - App_Bt.iBtAv_CurTime) > 2000) {
                setPlaybackState();
            }
            iBtAv_CurTime_p = App_Bt.iBtAv_CurTime;
        }
    }

    public void updateMetadata(MediaMetadata.Builder Metadata) {
        if (Metadata != null && mediaSession != null) {
            mediaSession.setMetadata(Metadata.build());
        }
    }

    public void setPlaybackState() {
        Main.removeRunnable_Ui(mRunnable_setPlaybackState);
        Main.postRunnable_Ui(true, mRunnable_setPlaybackState, 300L);
    }
}
