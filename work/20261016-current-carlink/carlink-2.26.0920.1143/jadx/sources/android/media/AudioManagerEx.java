package android.media;

import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class AudioManagerEx extends AudioManager {
    private static String TAG = "AudioManagerEx";
    private static IAudioService sService;
    private Context mApplicationContext;
    private final IBinder mICallBack;

    public AudioManagerEx(Context context) {
        super(context);
        this.mICallBack = new Binder();
        this.mApplicationContext = context.getApplicationContext();
        Log.e(TAG, "new AudioManagerEx");
    }

    private static IAudioService getService() {
        IAudioService iAudioService = sService;
        if (iAudioService != null) {
            return iAudioService;
        }
        IAudioService iAudioServiceAsInterface = IAudioService.Stub.asInterface(ServiceManager.getService("audio"));
        sService = iAudioServiceAsInterface;
        return iAudioServiceAsInterface;
    }

    public boolean getSafeMediaVolumeEnabled() {
        try {
            Log.e(TAG, "getSafeMediaVolumeEnabled");
            return getService().getSafeMediaVolumeEnabled(this.mApplicationContext.getOpPackageName());
        } catch (RemoteException e2) {
            Log.w(TAG, "Dead object in getSafeMediaVolumeEnabled", e2);
            return false;
        }
    }

    public void setFmSpeakerOn(boolean z2) {
        try {
            getService().setForceUseSpeaker(7, z2, this.mICallBack, this.mApplicationContext.getOpPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setFmSpeakerOn ", e2);
        }
    }

    public void setMediaSpeakerOn(boolean z2) {
        try {
            getService().setForceUseSpeaker(1, z2, this.mICallBack, this.mApplicationContext.getOpPackageName());
        } catch (RemoteException e2) {
            Log.e(TAG, "Dead object in setMediaSpeakerOn ", e2);
        }
    }
}
