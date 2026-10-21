package android.hardware.radio;

import android.graphics.Bitmap;
import android.os.RemoteException;
import android.util.Log;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class TunerAdapter extends RadioTuner {
    private static final String TAG = "BroadcastRadio.TunerAdapter";
    private int mBand;
    private boolean mIsClosed = false;
    private final ITuner mTuner;

    public TunerAdapter(ITuner iTuner, int i2) {
        iTuner.getClass();
        this.mTuner = iTuner;
        this.mBand = i2;
    }

    @Override // android.hardware.radio.RadioTuner
    public int cancel() {
        try {
            this.mTuner.cancel();
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return -32;
        } catch (IllegalStateException e3) {
            Log.e(TAG, "Can't cancel", e3);
            return -38;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public void cancelAnnouncement() {
        try {
            this.mTuner.cancelAnnouncement();
        } catch (RemoteException e2) {
            throw new RuntimeException("service died", e2);
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public void close() {
        synchronized (this.mTuner) {
            if (this.mIsClosed) {
                Log.v(TAG, "Tuner is already closed");
                return;
            }
            this.mIsClosed = true;
            try {
                this.mTuner.close();
            } catch (RemoteException e2) {
                Log.e(TAG, "Exception trying to close tuner", e2);
            }
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public int getConfiguration(RadioManager.BandConfig[] bandConfigArr) {
        if (bandConfigArr == null || bandConfigArr.length != 1) {
            throw new IllegalArgumentException("The argument must be an array of length 1");
        }
        try {
            bandConfigArr[0] = this.mTuner.getConfiguration();
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return -32;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public Bitmap getMetadataImage(int i2) {
        try {
            return this.mTuner.getImage(i2);
        } catch (RemoteException e2) {
            throw new RuntimeException("service died", e2);
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public boolean getMute() {
        try {
            return this.mTuner.isMuted();
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return true;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public int getProgramInformation(RadioManager.ProgramInfo[] programInfoArr) {
        if (programInfoArr == null || programInfoArr.length != 1) {
            throw new IllegalArgumentException("The argument must be an array of length 1");
        }
        try {
            programInfoArr[0] = this.mTuner.getProgramInformation();
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return -32;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public List<RadioManager.ProgramInfo> getProgramList(Map<String, String> map) {
        try {
            return this.mTuner.getProgramList(map);
        } catch (RemoteException e2) {
            throw new RuntimeException("service died", e2);
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public boolean hasControl() {
        try {
            return !this.mTuner.isClosed();
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public boolean isAnalogForced() {
        try {
            return this.mTuner.isAnalogForced();
        } catch (RemoteException e2) {
            throw new RuntimeException("service died", e2);
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public boolean isAntennaConnected() {
        try {
            return this.mTuner.isAntennaConnected();
        } catch (RemoteException e2) {
            throw new RuntimeException("service died", e2);
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public int scan(int i2, boolean z2) {
        try {
            ITuner iTuner = this.mTuner;
            boolean z3 = true;
            if (i2 != 1) {
                z3 = false;
            }
            iTuner.scan(z3, z2);
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return -32;
        } catch (IllegalStateException e3) {
            Log.e(TAG, "Can't scan", e3);
            return -38;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public void setAnalogForced(boolean z2) {
        try {
            this.mTuner.setAnalogForced(z2);
        } catch (RemoteException e2) {
            throw new RuntimeException("service died", e2);
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public int setConfiguration(RadioManager.BandConfig bandConfig) {
        try {
            this.mTuner.setConfiguration(bandConfig);
            this.mBand = bandConfig.getType();
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return -32;
        } catch (IllegalArgumentException e3) {
            Log.e(TAG, "Can't set configuration", e3);
            return -22;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public int setMute(boolean z2) {
        try {
            this.mTuner.setMuted(z2);
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return -32;
        } catch (IllegalStateException e3) {
            Log.e(TAG, "Can't set muted", e3);
            return Integer.MIN_VALUE;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public boolean startBackgroundScan() {
        try {
            return this.mTuner.startBackgroundScan();
        } catch (RemoteException e2) {
            throw new RuntimeException("service died", e2);
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public int step(int i2, boolean z2) {
        try {
            ITuner iTuner = this.mTuner;
            boolean z3 = true;
            if (i2 != 1) {
                z3 = false;
            }
            iTuner.step(z3, z2);
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return -32;
        } catch (IllegalStateException e3) {
            Log.e(TAG, "Can't step", e3);
            return -38;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public int tune(int i2, int i3) {
        try {
            this.mTuner.tune(ProgramSelector.createAmFmSelector(this.mBand, i2, i3));
            return 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "service died", e2);
            return -32;
        } catch (IllegalArgumentException e3) {
            Log.e(TAG, "Can't tune", e3);
            return -22;
        } catch (IllegalStateException e4) {
            Log.e(TAG, "Can't tune", e4);
            return -38;
        }
    }

    @Override // android.hardware.radio.RadioTuner
    public void tune(ProgramSelector programSelector) {
        try {
            this.mTuner.tune(programSelector);
        } catch (RemoteException e2) {
            throw new RuntimeException("service died", e2);
        }
    }
}
