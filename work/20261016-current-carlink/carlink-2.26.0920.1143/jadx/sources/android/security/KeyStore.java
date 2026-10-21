package android.security;

import android.app.ActivityThread;
import android.app.Application;
import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.security.keymaster.ExportResult;
import android.security.keymaster.KeyCharacteristics;
import android.security.keymaster.KeymasterArguments;
import android.security.keymaster.KeymasterBlob;
import android.security.keymaster.KeymasterCertificateChain;
import android.security.keymaster.KeymasterDefs;
import android.security.keymaster.OperationResult;
import android.security.keystore.KeyExpiredException;
import android.security.keystore.KeyNotYetValidException;
import android.security.keystore.KeyPermanentlyInvalidatedException;
import android.security.keystore.KeyProperties;
import android.security.keystore.UserNotAuthenticatedException;
import android.util.Log;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class KeyStore {
    public static final int FLAG_CRITICAL_TO_DEVICE_ENCRYPTION = 8;
    public static final int FLAG_ENCRYPTED = 1;
    public static final int FLAG_NONE = 0;
    public static final int KEY_NOT_FOUND = 7;
    public static final int LOCKED = 2;
    public static final int NO_ERROR = 1;
    public static final int OP_AUTH_NEEDED = 15;
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
    private IBinder mToken;
    private int mError = 1;
    private final Context mContext = getApplicationContext();

    public enum State {
        UNLOCKED,
        LOCKED,
        UNINITIALIZED
    }

    private KeyStore(IKeystoreService iKeystoreService) {
        this.mBinder = iKeystoreService;
    }

    public static Context getApplicationContext() {
        Application applicationCurrentApplication = ActivityThread.currentApplication();
        if (applicationCurrentApplication != null) {
            return applicationCurrentApplication;
        }
        throw new IllegalStateException("Failed to obtain application Context from ActivityThread");
    }

    private long getFingerprintOnlySid() {
        FingerprintManager fingerprintManager = (FingerprintManager) this.mContext.getSystemService(FingerprintManager.class);
        if (fingerprintManager == null) {
            return 0L;
        }
        return fingerprintManager.getAuthenticatorId();
    }

    public static KeyStore getInstance() {
        return new KeyStore(IKeystoreService.Stub.asInterface(ServiceManager.getService("android.security.keystore")));
    }

    public static KeyStoreException getKeyStoreException(int i2) {
        if (i2 <= 0) {
            return i2 != -16 ? new KeyStoreException(i2, KeymasterDefs.getErrorMessage(i2)) : new KeyStoreException(i2, "Invalid user authentication validity duration");
        }
        if (i2 == 1) {
            return new KeyStoreException(i2, "OK");
        }
        if (i2 == 2) {
            return new KeyStoreException(i2, "User authentication required");
        }
        if (i2 == 3) {
            return new KeyStoreException(i2, "Keystore not initialized");
        }
        if (i2 == 4) {
            return new KeyStoreException(i2, "System error");
        }
        if (i2 == 6) {
            return new KeyStoreException(i2, "Permission denied");
        }
        if (i2 == 7) {
            return new KeyStoreException(i2, "Key not found");
        }
        if (i2 != 8) {
            return i2 != 15 ? new KeyStoreException(i2, String.valueOf(i2)) : new KeyStoreException(i2, "Operation requires authorization");
        }
        return new KeyStoreException(i2, "Key blob corrupted");
    }

    private synchronized IBinder getToken() {
        if (this.mToken == null) {
            this.mToken = new Binder();
        }
        return this.mToken;
    }

    public int abort(IBinder iBinder) {
        try {
            return this.mBinder.abort(iBinder);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return 4;
        }
    }

    public int addAuthToken(byte[] bArr) {
        try {
            return this.mBinder.addAuthToken(bArr);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return 4;
        }
    }

    public boolean addRngEntropy(byte[] bArr) {
        try {
            return this.mBinder.addRngEntropy(bArr) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public int attestDeviceIds(KeymasterArguments keymasterArguments, KeymasterCertificateChain keymasterCertificateChain) {
        try {
            return this.mBinder.attestDeviceIds(keymasterArguments, keymasterCertificateChain);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return 4;
        }
    }

    public int attestKey(String str, KeymasterArguments keymasterArguments, KeymasterCertificateChain keymasterCertificateChain) {
        try {
            return this.mBinder.attestKey(str, keymasterArguments, keymasterCertificateChain);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return 4;
        }
    }

    public OperationResult begin(String str, int i2, boolean z2, KeymasterArguments keymasterArguments, byte[] bArr, int i3) {
        try {
            return this.mBinder.begin(getToken(), str, i2, z2, keymasterArguments, bArr, i3);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
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

    public boolean delete(String str, int i2) {
        try {
            int iDel = this.mBinder.del(str, i2);
            return iDel == 1 || iDel == 7;
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

    public ExportResult exportKey(String str, int i2, KeymasterBlob keymasterBlob, KeymasterBlob keymasterBlob2, int i3) {
        try {
            return this.mBinder.exportKey(str, i2, keymasterBlob, keymasterBlob2, i3);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
    }

    public OperationResult finish(IBinder iBinder, KeymasterArguments keymasterArguments, byte[] bArr, byte[] bArr2) {
        try {
            return this.mBinder.finish(iBinder, keymasterArguments, bArr, bArr2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
    }

    public boolean generate(String str, int i2, int i3, int i4, int i5, byte[][] bArr) {
        try {
            return this.mBinder.generate(str, i2, i3, i4, i5, new KeystoreArguments(bArr)) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public int generateKey(String str, KeymasterArguments keymasterArguments, byte[] bArr, int i2, int i3, KeyCharacteristics keyCharacteristics) {
        try {
            return this.mBinder.generateKey(str, keymasterArguments, bArr, i2, i3, keyCharacteristics);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return 4;
        }
    }

    public byte[] get(String str, int i2) {
        try {
            return this.mBinder.get(str, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
    }

    public InvalidKeyException getInvalidKeyException(String str, int i2, KeyStoreException keyStoreException) {
        int errorCode = keyStoreException.getErrorCode();
        if (errorCode == 2) {
            return new UserNotAuthenticatedException();
        }
        if (errorCode == 3) {
            return new KeyPermanentlyInvalidatedException();
        }
        if (errorCode != 15) {
            switch (errorCode) {
                case -26:
                    break;
                case -25:
                    return new KeyExpiredException();
                case -24:
                    return new KeyNotYetValidException();
                default:
                    return new InvalidKeyException("Keystore operation failed", keyStoreException);
            }
        }
        KeyCharacteristics keyCharacteristics = new KeyCharacteristics();
        int keyCharacteristics2 = getKeyCharacteristics(str, null, null, i2, keyCharacteristics);
        if (keyCharacteristics2 != 1) {
            return new InvalidKeyException("Failed to obtained key characteristics", getKeyStoreException(keyCharacteristics2));
        }
        List<BigInteger> unsignedLongs = keyCharacteristics.getUnsignedLongs(KeymasterDefs.KM_TAG_USER_SECURE_ID);
        if (unsignedLongs.isEmpty()) {
            return new KeyPermanentlyInvalidatedException();
        }
        long secureUserId = GateKeeper.getSecureUserId();
        if (secureUserId != 0 && unsignedLongs.contains(KeymasterArguments.toUint64(secureUserId))) {
            return new UserNotAuthenticatedException();
        }
        long fingerprintOnlySid = getFingerprintOnlySid();
        return (fingerprintOnlySid == 0 || !unsignedLongs.contains(KeymasterArguments.toUint64(fingerprintOnlySid))) ? new KeyPermanentlyInvalidatedException() : new UserNotAuthenticatedException();
    }

    public int getKeyCharacteristics(String str, KeymasterBlob keymasterBlob, KeymasterBlob keymasterBlob2, int i2, KeyCharacteristics keyCharacteristics) {
        try {
            return this.mBinder.getKeyCharacteristics(str, keymasterBlob, keymasterBlob2, i2, keyCharacteristics);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return 4;
        }
    }

    public int getLastError() {
        return this.mError;
    }

    public long getmtime(String str, int i2) {
        try {
            long j2 = this.mBinder.getmtime(str, i2);
            if (j2 == -1) {
                return -1L;
            }
            return j2 * 1000;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return -1L;
        }
    }

    public String grant(String str, int i2) {
        try {
            String strGrant = this.mBinder.grant(str, i2);
            if (strGrant == "") {
                return null;
            }
            return strGrant;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
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

    public int insert(String str, byte[] bArr, int i2, int i3) {
        try {
            return this.mBinder.insert(str, bArr, i2, i3);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return 4;
        }
    }

    public boolean isEmpty(int i2) {
        try {
            return this.mBinder.isEmpty(i2) != 0;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean isHardwareBacked() {
        return isHardwareBacked(KeyProperties.KEY_ALGORITHM_RSA);
    }

    public boolean isOperationAuthorized(IBinder iBinder) {
        try {
            return this.mBinder.isOperationAuthorized(iBinder);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public boolean isUnlocked() {
        return state() == State.UNLOCKED;
    }

    public String[] list(String str, int i2) {
        try {
            return this.mBinder.list(str, i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
        }
    }

    public boolean lock(int i2) {
        try {
            return this.mBinder.lock(i2) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public void onDeviceOffBody() {
        try {
            this.mBinder.onDeviceOffBody();
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
        }
    }

    public void onUserAdded(int i2, int i3) {
        try {
            this.mBinder.onUserAdded(i2, i3);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
        }
    }

    public boolean onUserPasswordChanged(int i2, String str) {
        if (str == null) {
            str = "";
        }
        try {
            return this.mBinder.onUserPasswordChanged(i2, str) == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public void onUserRemoved(int i2) {
        try {
            this.mBinder.onUserRemoved(i2);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
        }
    }

    public boolean put(String str, byte[] bArr, int i2, int i3) {
        return insert(str, bArr, i2, i3) == 1;
    }

    public boolean reset() {
        try {
            return this.mBinder.reset() == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
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

    public State state(int i2) {
        try {
            int state = this.mBinder.getState(i2);
            if (state == 1) {
                return State.UNLOCKED;
            }
            if (state == 2) {
                return State.LOCKED;
            }
            if (state == 3) {
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

    public boolean unlock(int i2, String str) {
        try {
            int iUnlock = this.mBinder.unlock(i2, str);
            this.mError = iUnlock;
            return iUnlock == 1;
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return false;
        }
    }

    public OperationResult update(IBinder iBinder, KeymasterArguments keymasterArguments, byte[] bArr) {
        try {
            return this.mBinder.update(iBinder, keymasterArguments, bArr);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return null;
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

    public OperationResult begin(String str, int i2, boolean z2, KeymasterArguments keymasterArguments, byte[] bArr) {
        return begin(str, i2, z2, keymasterArguments, bArr, -1);
    }

    public boolean contains(String str) {
        return contains(str, -1);
    }

    public boolean delete(String str) {
        return delete(str, -1);
    }

    public ExportResult exportKey(String str, int i2, KeymasterBlob keymasterBlob, KeymasterBlob keymasterBlob2) {
        return exportKey(str, i2, keymasterBlob, keymasterBlob2, -1);
    }

    public OperationResult finish(IBinder iBinder, KeymasterArguments keymasterArguments, byte[] bArr) {
        return finish(iBinder, keymasterArguments, bArr, null);
    }

    public int generateKey(String str, KeymasterArguments keymasterArguments, byte[] bArr, int i2, KeyCharacteristics keyCharacteristics) {
        return generateKey(str, keymasterArguments, bArr, -1, i2, keyCharacteristics);
    }

    public byte[] get(String str) {
        return get(str, -1);
    }

    public int getKeyCharacteristics(String str, KeymasterBlob keymasterBlob, KeymasterBlob keymasterBlob2, KeyCharacteristics keyCharacteristics) {
        return getKeyCharacteristics(str, keymasterBlob, keymasterBlob2, -1, keyCharacteristics);
    }

    public long getmtime(String str) {
        return getmtime(str, -1);
    }

    public int importKey(String str, KeymasterArguments keymasterArguments, int i2, byte[] bArr, int i3, int i4, KeyCharacteristics keyCharacteristics) {
        try {
            return this.mBinder.importKey(str, keymasterArguments, i2, bArr, i3, i4, keyCharacteristics);
        } catch (RemoteException e2) {
            Log.w(TAG, "Cannot connect to keystore", e2);
            return 4;
        }
    }

    public boolean isEmpty() {
        return isEmpty(UserHandle.myUserId());
    }

    public String[] list(String str) {
        return list(str, -1);
    }

    public boolean lock() {
        return lock(UserHandle.myUserId());
    }

    public void onUserAdded(int i2) {
        onUserAdded(i2, -1);
    }

    public boolean onUserPasswordChanged(String str) {
        return onUserPasswordChanged(UserHandle.getUserId(Process.myUid()), str);
    }

    public boolean unlock(String str) {
        return unlock(UserHandle.getUserId(Process.myUid()), str);
    }

    public int importKey(String str, KeymasterArguments keymasterArguments, int i2, byte[] bArr, int i3, KeyCharacteristics keyCharacteristics) {
        return importKey(str, keymasterArguments, i2, bArr, -1, i3, keyCharacteristics);
    }

    public State state() {
        return state(UserHandle.myUserId());
    }

    public InvalidKeyException getInvalidKeyException(String str, int i2, int i3) {
        return getInvalidKeyException(str, i2, getKeyStoreException(i3));
    }
}
