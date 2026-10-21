package android.security;

import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class KeyStore {
    public static final int FLAG_ENCRYPTED = 1;
    public static final int FLAG_NONE = 0;
    public static final int KEY_NOT_FOUND = 7;
    public static final int LOCKED = 2;
    public static final int NO_ERROR = 1;
    public static final int PERMISSION_DENIED = 6;
    public static final int PROTOCOL_ERROR = 5;
    public static final int SYSTEM_ERROR = 4;
    private static final String TAG = "KeyStore";
    public static final int UID_SELF = -1;
    public static final int UNDEFINED_ACTION = 9;
    public static final int UNINITIALIZED = 3;
    public static final int VALUE_CORRUPTED = 8;
    public static final int WRONG_PASSWORD = 10;
    private final IKeystoreService mBinder;
    private int mError = 1;

    public enum State {
        UNLOCKED,
        LOCKED,
        UNINITIALIZED
    }

    private KeyStore(IKeystoreService iKeystoreService) {
        this.mBinder = iKeystoreService;
    }

    public static KeyStore getInstance() {
        return new KeyStore(IKeystoreService.Stub.asInterface(ServiceManager.getService("android.security.keystore")));
    }

    public static int getKeyTypeForAlgorithm(String str) {
        if ("RSA".equalsIgnoreCase(str)) {
            return 6;
        }
        if ("DSA".equalsIgnoreCase(str)) {
            return 116;
        }
        if ("EC".equalsIgnoreCase(str)) {
            return 408;
        }
        throw new IllegalArgumentException("Unsupported key type: " + str);
    }

    public boolean clearUid(int i2) {
        try {
            return this.mBinder.clear_uid((long) i2) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean contains(String str, int i2) {
        try {
            return this.mBinder.exist(str, i2) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean delKey(String str, int i2) {
        try {
            return this.mBinder.del_key(str, i2) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean delete(String str, int i2) {
        try {
            return this.mBinder.del(str, i2) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean duplicate(String str, int i2, String str2, int i3) {
        try {
            return this.mBinder.duplicate(str, i2, str2, i3) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean generate(String str, int i2, int i3, int i4, int i5, byte[][] bArr) {
        try {
            return this.mBinder.generate(str, i2, i3, i4, i5, bArr) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public byte[] get(String str) {
        try {
            return this.mBinder.get(str);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
    }

    public int getLastError() {
        return this.mError;
    }

    public byte[] getPubkey(String str) {
        try {
            return this.mBinder.get_pubkey(str);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
    }

    public long getmtime(String str) {
        try {
            long j2 = this.mBinder.getmtime(str);
            if (j2 == -1) {
                return -1L;
            }
            return j2 * 1000;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return -1L;
        }
    }

    public boolean grant(String str, int i2) {
        try {
            return this.mBinder.grant(str, i2) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean importKey(String str, byte[] bArr, int i2, int i3) {
        try {
            return this.mBinder.import_key(str, bArr, i2, i3) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean isEmpty() {
        try {
            return this.mBinder.zero() == 7;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean isHardwareBacked() {
        return isHardwareBacked("RSA");
    }

    public boolean isUnlocked() {
        return state() == State.UNLOCKED;
    }

    public boolean lock() {
        try {
            return this.mBinder.lock() == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean password(String str) {
        try {
            return this.mBinder.password(str) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean put(String str, byte[] bArr, int i2, int i3) {
        try {
            return this.mBinder.insert(str, bArr, i2, i3) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean reset() {
        try {
            return this.mBinder.reset() == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public String[] saw(String str, int i2) {
        try {
            return this.mBinder.saw(str, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
    }

    public byte[] sign(String str, byte[] bArr) {
        try {
            return this.mBinder.sign(str, bArr);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
    }

    public State state() {
        try {
            int iTest = this.mBinder.test();
            if (iTest == 1) {
                return State.UNLOCKED;
            }
            if (iTest == 2) {
                return State.LOCKED;
            }
            if (iTest == 3) {
                return State.UNINITIALIZED;
            }
            throw new AssertionError(this.mError);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            throw new AssertionError(e2);
        }
    }

    public boolean ungrant(String str, int i2) {
        try {
            return this.mBinder.ungrant(str, i2) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean unlock(String str) {
        try {
            int iUnlock = this.mBinder.unlock(str);
            this.mError = iUnlock;
            return iUnlock == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean verify(String str, byte[] bArr, byte[] bArr2) {
        try {
            return this.mBinder.verify(str, bArr, bArr2) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean isHardwareBacked(String str) {
        try {
            return this.mBinder.is_hardware_backed(str.toUpperCase(Locale.US)) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean contains(String str) {
        return contains(str, -1);
    }

    public boolean delKey(String str) {
        return delKey(str, -1);
    }

    public boolean delete(String str) {
        return delete(str, -1);
    }

    public String[] saw(String str) {
        return saw(str, -1);
    }
}
