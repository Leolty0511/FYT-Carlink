package android.drm;

import android.content.Context;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class DrmManagerClientEx extends DrmManagerClient {
    public DrmManagerClientEx(Context context) {
        super(context);
    }

    private native int _closeDecryptSession(int i2, DecryptHandle decryptHandle);

    private native DecryptHandle _openDecryptSession(int i2, String str, String str2);

    private native byte[] _pread(int i2, DecryptHandle decryptHandle, int i3, int i4);

    private native int _setPlaybackStatus(int i2, DecryptHandle decryptHandle, int i3);

    public int closeDecryptSession(DecryptHandle decryptHandle) {
        return _closeDecryptSession(this.mUniqueId, decryptHandle);
    }

    public DecryptHandle openDecryptSession(String str) {
        return _openDecryptSession(this.mUniqueId, str, null);
    }

    public byte[] pread(DecryptHandle decryptHandle, int i2, int i3) {
        return _pread(this.mUniqueId, decryptHandle, i2, i3);
    }

    public int setPlaybackStatus(DecryptHandle decryptHandle, int i2) {
        Log.d("XUAN", "setPlaybackStatus");
        return _setPlaybackStatus(this.mUniqueId, decryptHandle, i2);
    }
}
