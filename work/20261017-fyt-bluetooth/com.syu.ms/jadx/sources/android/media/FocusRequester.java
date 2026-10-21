package android.media;

import android.hardware.Camera;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.io.PrintWriter;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
class FocusRequester {
    private static final boolean DEBUG = false;
    private static final String TAG = "MediaFocusControl";
    private final int mCallingUid;
    private final String mClientId;
    private MediaFocusControl.AudioFocusDeathHandler mDeathHandler;
    private final IAudioFocusDispatcher mFocusDispatcher;
    private final int mFocusGainRequest;
    private int mFocusLossReceived = 0;
    private final String mPackageName;
    private final IBinder mSourceRef;
    private final int mStreamType;

    public FocusRequester(int i2, int i3, IAudioFocusDispatcher iAudioFocusDispatcher, IBinder iBinder, String str, MediaFocusControl.AudioFocusDeathHandler audioFocusDeathHandler, String str2, int i4) {
        this.mStreamType = i2;
        this.mFocusDispatcher = iAudioFocusDispatcher;
        this.mSourceRef = iBinder;
        this.mClientId = str;
        this.mDeathHandler = audioFocusDeathHandler;
        this.mPackageName = str2;
        this.mCallingUid = i4;
        this.mFocusGainRequest = i3;
    }

    private static String focusChangeToString(int i2) {
        switch (i2) {
            case -3:
                return "LOSS_TRANSIENT_CAN_DUCK";
            case -2:
                return "LOSS_TRANSIENT";
            case -1:
                return "LOSS";
            case 0:
                return Camera.Parameters.EFFECT_NONE;
            case 1:
                return "GAIN";
            case 2:
                return "GAIN_TRANSIENT";
            case 3:
                return "GAIN_TRANSIENT_MAY_DUCK";
            case 4:
                return "GAIN_TRANSIENT_EXCLUSIVE";
            default:
                return "[invalid focus change" + i2 + "]";
        }
    }

    private String focusGainToString() {
        return focusChangeToString(this.mFocusGainRequest);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0022, code lost:
    
        if (r0 != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002c, code lost:
    
        if (r0 != 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x000d, code lost:
    
        if (r5 != 4) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int focusLossForGainRequest(int r5) {
        /*
            r4 = this;
            r0 = 1
            r1 = -3
            r2 = -2
            r3 = -1
            if (r5 == r0) goto L10
            r0 = 2
            if (r5 == r0) goto L1a
            r0 = 3
            if (r5 == r0) goto L24
            r0 = 4
            if (r5 == r0) goto L1a
            goto L2e
        L10:
            int r0 = r4.mFocusLossReceived
            if (r0 == r1) goto L4b
            if (r0 == r2) goto L4b
            if (r0 == r3) goto L4b
            if (r0 == 0) goto L4b
        L1a:
            int r0 = r4.mFocusLossReceived
            if (r0 == r1) goto L4a
            if (r0 == r2) goto L4a
            if (r0 == r3) goto L49
            if (r0 == 0) goto L4a
        L24:
            int r0 = r4.mFocusLossReceived
            if (r0 == r1) goto L48
            if (r0 == r2) goto L47
            if (r0 == r3) goto L46
            if (r0 == 0) goto L48
        L2e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "focusLossForGainRequest() for invalid focus request "
            r0.append(r1)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            java.lang.String r0 = "MediaFocusControl"
            android.util.Log.e(r0, r5)
            r5 = 0
            return r5
        L46:
            return r3
        L47:
            return r2
        L48:
            return r1
        L49:
            return r3
        L4a:
            return r2
        L4b:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: android.media.FocusRequester.focusLossForGainRequest(int):int");
    }

    private String focusLossToString() {
        return focusChangeToString(this.mFocusLossReceived);
    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("  source:" + this.mSourceRef + " -- pack: " + this.mPackageName + " -- client: " + this.mClientId + " -- gain: " + focusGainToString() + " -- loss: " + focusLossToString() + " -- uid: " + this.mCallingUid + " -- stream: " + this.mStreamType);
    }

    public void finalize() throws Throwable {
        release();
        super.finalize();
    }

    public int getGainRequest() {
        return this.mFocusGainRequest;
    }

    public int getStreamType() {
        return this.mStreamType;
    }

    public void handleExternalFocusGain(int i2) {
        handleFocusLoss(focusLossForGainRequest(i2));
    }

    public void handleFocusGain(int i2) {
        try {
            IAudioFocusDispatcher iAudioFocusDispatcher = this.mFocusDispatcher;
            if (iAudioFocusDispatcher != null) {
                iAudioFocusDispatcher.dispatchAudioFocusChange(i2, this.mClientId);
            }
            this.mFocusLossReceived = 0;
        } catch (RemoteException e2) {
            Log.e(TAG, "Failure to signal gain of audio focus due to: ", e2);
        }
    }

    public void handleFocusLoss(int i2) {
        try {
            if (i2 != this.mFocusLossReceived) {
                IAudioFocusDispatcher iAudioFocusDispatcher = this.mFocusDispatcher;
                if (iAudioFocusDispatcher != null) {
                    iAudioFocusDispatcher.dispatchAudioFocusChange(i2, this.mClientId);
                }
                this.mFocusLossReceived = i2;
            }
        } catch (RemoteException e2) {
            Log.e(TAG, "Failure to signal loss of audio focus due to:", e2);
        }
    }

    public boolean hasSameBinder(IBinder iBinder) {
        IBinder iBinder2 = this.mSourceRef;
        return iBinder2 != null && iBinder2.equals(iBinder);
    }

    public boolean hasSameClient(String str) {
        try {
            return this.mClientId.compareTo(str) == 0;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public boolean hasSamePackage(String str) {
        try {
            return this.mPackageName.compareTo(str) == 0;
        } catch (NullPointerException unused) {
            return false;
        }
    }

    public boolean hasSameUid(int i2) {
        return this.mCallingUid == i2;
    }

    public void release() {
        MediaFocusControl.AudioFocusDeathHandler audioFocusDeathHandler;
        try {
            IBinder iBinder = this.mSourceRef;
            if (iBinder == null || (audioFocusDeathHandler = this.mDeathHandler) == null) {
                return;
            }
            iBinder.unlinkToDeath(audioFocusDeathHandler, 0);
            this.mDeathHandler = null;
        } catch (NoSuchElementException e2) {
            Log.e(TAG, "FocusRequester.release() hit ", e2);
        }
    }
}
