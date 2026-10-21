package android.media;

import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public class PlayerProxy {
    private static final boolean DEBUG = false;
    private static final String TAG = "PlayerProxy";
    private final AudioPlaybackConfiguration mConf;

    public PlayerProxy(AudioPlaybackConfiguration audioPlaybackConfiguration) {
        if (audioPlaybackConfiguration == null) {
            throw new IllegalArgumentException("Illegal null AudioPlaybackConfiguration");
        }
        this.mConf = audioPlaybackConfiguration;
    }

    public void applyVolumeShaper(VolumeShaper.Configuration configuration, VolumeShaper.Operation operation) {
        try {
            this.mConf.getIPlayer().applyVolumeShaper(configuration, operation);
        } catch (RemoteException | NullPointerException e2) {
            throw new IllegalStateException("No player to proxy for applyVolumeShaper operation, player already released?", e2);
        }
    }

    public void pause() {
        try {
            this.mConf.getIPlayer().pause();
        } catch (RemoteException | NullPointerException e2) {
            throw new IllegalStateException("No player to proxy for pause operation, player already released?", e2);
        }
    }

    public void setPan(float f2) {
        try {
            this.mConf.getIPlayer().setPan(f2);
        } catch (RemoteException | NullPointerException e2) {
            throw new IllegalStateException("No player to proxy for setPan operation, player already released?", e2);
        }
    }

    public void setStartDelayMs(int i2) {
        try {
            this.mConf.getIPlayer().setStartDelayMs(i2);
        } catch (RemoteException | NullPointerException e2) {
            throw new IllegalStateException("No player to proxy for setStartDelayMs operation, player already released?", e2);
        }
    }

    public void setVolume(float f2) {
        try {
            this.mConf.getIPlayer().setVolume(f2);
        } catch (RemoteException | NullPointerException e2) {
            throw new IllegalStateException("No player to proxy for setVolume operation, player already released?", e2);
        }
    }

    public void start() {
        try {
            this.mConf.getIPlayer().start();
        } catch (RemoteException | NullPointerException e2) {
            throw new IllegalStateException("No player to proxy for start operation, player already released?", e2);
        }
    }

    public void stop() {
        try {
            this.mConf.getIPlayer().stop();
        } catch (RemoteException | NullPointerException e2) {
            throw new IllegalStateException("No player to proxy for stop operation, player already released?", e2);
        }
    }
}
