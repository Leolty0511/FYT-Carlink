package com.android.internal.widget;

import android.app.admin.DevicePolicyManager;
import android.app.admin.PasswordMetrics;
import android.app.trust.IStrongAuthTracker;
import android.app.trust.TrustManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.UserInfo;
import android.net.wifi.WifiEnterpriseConfig;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.UserManager;
import android.os.storage.IStorageManager;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.security.keystore.KeyProperties;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseIntArray;
import com.android.internal.R;
import com.google.android.collect.Lists;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import libcore.util.HexEncoding;

/* JADX INFO: loaded from: classes3.dex */
public class LockPatternUtils {

    @Deprecated
    public static final String BIOMETRIC_WEAK_EVER_CHOSEN_KEY = "lockscreen.biometricweakeverchosen";
    public static final int CREDENTIAL_TYPE_NONE = -1;
    public static final int CREDENTIAL_TYPE_PASSWORD = 2;
    public static final int CREDENTIAL_TYPE_PATTERN = 1;
    private static final boolean DEBUG = false;
    public static final String DISABLE_LOCKSCREEN_KEY = "lockscreen.disabled";
    private static final String ENABLED_TRUST_AGENTS = "lockscreen.enabledtrustagents";
    public static final int FAILED_ATTEMPTS_BEFORE_RESET = 20;
    public static final int FAILED_ATTEMPTS_BEFORE_WIPE_GRACE = 5;
    public static final long FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS = 1000;
    private static final boolean FRP_CREDENTIAL_ENABLED = true;
    private static final String IS_TRUST_USUALLY_MANAGED = "lockscreen.istrustusuallymanaged";
    public static final String LEGACY_LOCK_PATTERN_ENABLED = "legacy_lock_pattern_enabled";
    public static final String LOCKOUT_ATTEMPT_DEADLINE = "lockscreen.lockoutattemptdeadline";
    public static final String LOCKOUT_ATTEMPT_TIMEOUT_MS = "lockscreen.lockoutattempttimeoutmss";

    @Deprecated
    public static final String LOCKOUT_PERMANENT_KEY = "lockscreen.lockedoutpermanently";

    @Deprecated
    public static final String LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK = "lockscreen.biometric_weak_fallback";
    public static final String LOCKSCREEN_OPTIONS = "lockscreen.options";
    public static final String LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS = "lockscreen.power_button_instantly_locks";

    @Deprecated
    public static final String LOCKSCREEN_WIDGETS_ENABLED = "lockscreen.widgets_enabled";
    public static final String LOCK_PASSWORD_SALT_KEY = "lockscreen.password_salt";
    private static final String LOCK_SCREEN_DEVICE_OWNER_INFO = "lockscreen.device_owner_info";
    private static final String LOCK_SCREEN_OWNER_INFO = "lock_screen_owner_info";
    private static final String LOCK_SCREEN_OWNER_INFO_ENABLED = "lock_screen_owner_info_enabled";
    public static final int MIN_LOCK_PASSWORD_SIZE = 4;
    public static final int MIN_LOCK_PATTERN_SIZE = 4;
    public static final int MIN_PATTERN_REGISTER_FAIL = 4;
    public static final String PASSWORD_HISTORY_KEY = "lockscreen.passwordhistory";

    @Deprecated
    public static final String PASSWORD_TYPE_ALTERNATE_KEY = "lockscreen.password_type_alternate";
    public static final String PASSWORD_TYPE_KEY = "lockscreen.password_type";
    public static final String PATTERN_EVER_CHOSEN_KEY = "lockscreen.patterneverchosen";
    public static final String PROFILE_KEY_NAME_DECRYPT = "profile_key_name_decrypt_";
    public static final String PROFILE_KEY_NAME_ENCRYPT = "profile_key_name_encrypt_";
    public static final String SYNTHETIC_PASSWORD_ENABLED_KEY = "enable-sp";
    public static final String SYNTHETIC_PASSWORD_HANDLE_KEY = "sp-handle";
    public static final String SYNTHETIC_PASSWORD_KEY_PREFIX = "synthetic_password_";
    private static final String TAG = "LockPatternUtils";
    public static final int USER_FRP = -9999;
    private final ContentResolver mContentResolver;
    private final Context mContext;
    private DevicePolicyManager mDevicePolicyManager;
    private final Handler mHandler;
    private ILockSettings mLockSettingsService;
    private UserManager mUserManager;

    public interface CheckCredentialProgressCallback {
        void onEarlyMatched();
    }

    public static final class RequestThrottledException extends Exception {
        private int mTimeoutMs;

        public RequestThrottledException(int i2) {
            this.mTimeoutMs = i2;
        }

        public int getTimeoutMs() {
            return this.mTimeoutMs;
        }
    }

    public static class StrongAuthTracker {
        private static final int ALLOWING_FINGERPRINT = 4;
        public static final int SOME_AUTH_REQUIRED_AFTER_USER_REQUEST = 4;
        public static final int STRONG_AUTH_NOT_REQUIRED = 0;
        public static final int STRONG_AUTH_REQUIRED_AFTER_BOOT = 1;
        public static final int STRONG_AUTH_REQUIRED_AFTER_DPM_LOCK_NOW = 2;
        public static final int STRONG_AUTH_REQUIRED_AFTER_LOCKOUT = 8;
        public static final int STRONG_AUTH_REQUIRED_AFTER_TIMEOUT = 16;
        private final int mDefaultStrongAuthFlags;
        private final H mHandler;
        private final SparseIntArray mStrongAuthRequiredForUser;
        protected final IStrongAuthTracker.Stub mStub;

        public class H extends Handler {
            static final int MSG_ON_STRONG_AUTH_REQUIRED_CHANGED = 1;

            public H(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what != 1) {
                    return;
                }
                StrongAuthTracker.this.handleStrongAuthRequiredChanged(message.arg1, message.arg2);
            }
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface StrongAuthFlags {
        }

        public StrongAuthTracker(Context context) {
            this(context, Looper.myLooper());
        }

        public static int getDefaultFlags(Context context) {
            return context.getResources().getBoolean(R.bool.config_strongAuthRequiredOnBoot) ? 1 : 0;
        }

        public int getStrongAuthForUser(int i2) {
            return this.mStrongAuthRequiredForUser.get(i2, this.mDefaultStrongAuthFlags);
        }

        public void handleStrongAuthRequiredChanged(int i2, int i3) {
            if (i2 != getStrongAuthForUser(i3)) {
                if (i2 == this.mDefaultStrongAuthFlags) {
                    this.mStrongAuthRequiredForUser.delete(i3);
                } else {
                    this.mStrongAuthRequiredForUser.put(i3, i2);
                }
                onStrongAuthRequiredChanged(i3);
            }
        }

        public boolean isFingerprintAllowedForUser(int i2) {
            return (getStrongAuthForUser(i2) & (-5)) == 0;
        }

        public boolean isTrustAllowedForUser(int i2) {
            return getStrongAuthForUser(i2) == 0;
        }

        public void onStrongAuthRequiredChanged(int i2) {
        }

        public StrongAuthTracker(Context context, Looper looper) {
            this.mStrongAuthRequiredForUser = new SparseIntArray();
            this.mStub = new IStrongAuthTracker.Stub() { // from class: com.android.internal.widget.LockPatternUtils.StrongAuthTracker.1
                @Override // android.app.trust.IStrongAuthTracker
                public void onStrongAuthRequiredChanged(int i2, int i3) {
                    StrongAuthTracker.this.mHandler.obtainMessage(1, i2, i3).sendToTarget();
                }
            };
            this.mHandler = new H(looper);
            this.mDefaultStrongAuthFlags = getDefaultFlags(context);
        }
    }

    public LockPatternUtils(Context context) {
        this.mContext = context;
        this.mContentResolver = context.getContentResolver();
        Looper looperMyLooper = Looper.myLooper();
        this.mHandler = looperMyLooper != null ? new Handler(looperMyLooper) : null;
    }

    private boolean checkCredential(String str, int i2, int i3, CheckCredentialProgressCallback checkCredentialProgressCallback) {
        try {
            VerifyCredentialResponse verifyCredentialResponseCheckCredential = getLockSettings().checkCredential(str, i2, i3, wrapCallback(checkCredentialProgressCallback));
            if (verifyCredentialResponseCheckCredential != null && verifyCredentialResponseCheckCredential.getResponseCode() == 0) {
                return true;
            }
            if (verifyCredentialResponseCheckCredential != null && verifyCredentialResponseCheckCredential.getResponseCode() == 1) {
                throw new RequestThrottledException(verifyCredentialResponseCheckCredential.getTimeout());
            }
        } catch (RemoteException | IllegalStateException | NullPointerException unused) {
        }
        return false;
    }

    private int computePasswordQuality(int i2, String str, int i3) {
        if (i2 == 2) {
            return Math.max(i3, PasswordMetrics.computeForPassword(str).quality);
        }
        return i2 == 1 ? 65536 : 0;
    }

    public static boolean frpCredentialEnabled(Context context) {
        return context.getResources().getBoolean(R.bool.config_enableCredentialFactoryResetProtection);
    }

    private boolean getBoolean(String str, boolean z2, int i2) {
        try {
            return getLockSettings().getBoolean(str, z2, i2);
        } catch (RemoteException unused) {
            return z2;
        }
    }

    private long getLong(String str, long j2, int i2) {
        try {
            return getLockSettings().getLong(str, j2, i2);
        } catch (RemoteException unused) {
            return j2;
        }
    }

    private int getRequestedPasswordHistoryLength(int i2) {
        return getDevicePolicyManager().getPasswordHistoryLength(null, i2);
    }

    private String getSalt(int i2) {
        long jNextLong = getLong(LOCK_PASSWORD_SALT_KEY, 0L, i2);
        if (jNextLong == 0) {
            try {
                jNextLong = SecureRandom.getInstance("SHA1PRNG").nextLong();
                setLong(LOCK_PASSWORD_SALT_KEY, jNextLong, i2);
                Log.v(TAG, "Initialized lock password salt for user: " + i2);
            } catch (NoSuchAlgorithmException e2) {
                throw new IllegalStateException("Couldn't get SecureRandom number", e2);
            }
        }
        return Long.toHexString(jNextLong);
    }

    private String getString(String str, int i2) {
        try {
            return getLockSettings().getString(str, null, i2);
        } catch (RemoteException unused) {
            return null;
        }
    }

    private TrustManager getTrustManager() {
        TrustManager trustManager = (TrustManager) this.mContext.getSystemService(Context.TRUST_SERVICE);
        if (trustManager == null) {
            Log.e(TAG, "Can't get TrustManagerService: is it running?", new IllegalStateException("Stack trace:"));
        }
        return trustManager;
    }

    private UserManager getUserManager() {
        if (this.mUserManager == null) {
            this.mUserManager = UserManager.get(this.mContext);
        }
        return this.mUserManager;
    }

    private boolean hasSeparateChallenge(int i2) {
        try {
            return getLockSettings().getSeparateProfileChallengeEnabled(i2);
        } catch (RemoteException unused) {
            Log.e(TAG, "Couldn't get separate profile challenge enabled");
            return false;
        }
    }

    public static boolean isDeviceEncryptionEnabled() {
        return StorageManager.isEncrypted();
    }

    private boolean isDoNotAskCredentialsOnBootSet() {
        return getDevicePolicyManager().getDoNotAskCredentialsOnBoot();
    }

    public static boolean isFileEncryptionEnabled() {
        return StorageManager.isFileEncryptedNativeOrEmulated();
    }

    private boolean isManagedProfile(int i2) {
        UserInfo userInfo = getUserManager().getUserInfo(i2);
        return userInfo != null && userInfo.isManagedProfile();
    }

    private void onAfterChangingPassword(int i2) {
        getTrustManager().reportEnabledTrustAgentsChanged(i2);
    }

    public static String patternStringToBaseZero(String str) {
        if (str == null) {
            return "";
        }
        int length = str.length();
        byte[] bArr = new byte[length];
        byte[] bytes = str.getBytes();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) (bytes[i2] - 49);
        }
        return new String(bArr);
    }

    public static byte[] patternToHash(List<LockPatternView.Cell> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        byte[] bArr = new byte[size];
        for (int i2 = 0; i2 < size; i2++) {
            LockPatternView.Cell cell = list.get(i2);
            bArr[i2] = (byte) (cell.getColumn() + (cell.getRow() * 3));
        }
        try {
            return MessageDigest.getInstance(KeyProperties.DIGEST_SHA1).digest(bArr);
        } catch (NoSuchAlgorithmException unused) {
            return bArr;
        }
    }

    public static String patternToString(List<LockPatternView.Cell> list) {
        if (list == null) {
            return "";
        }
        int size = list.size();
        byte[] bArr = new byte[size];
        for (int i2 = 0; i2 < size; i2++) {
            LockPatternView.Cell cell = list.get(i2);
            bArr[i2] = (byte) (cell.getColumn() + (cell.getRow() * 3) + 49);
        }
        return new String(bArr);
    }

    private boolean savedPasswordExists(int i2) {
        try {
            return getLockSettings().havePassword(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    private boolean savedPatternExists(int i2) {
        try {
            return getLockSettings().havePattern(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    private void setBoolean(String str, boolean z2, int i2) {
        try {
            getLockSettings().setBoolean(str, z2, i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Couldn't write boolean " + str + e2);
        }
    }

    private void setLong(String str, long j2, int i2) {
        try {
            getLockSettings().setLong(str, j2, i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Couldn't write long " + str + e2);
        }
    }

    private void setString(String str, String str2, int i2) {
        try {
            getLockSettings().setString(str, str2, i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Couldn't write string " + str + e2);
        }
    }

    private boolean shouldEncryptWithCredentials(boolean z2) {
        return isCredentialRequiredToDecrypt(z2) && !isDoNotAskCredentialsOnBootSet();
    }

    public static List<LockPatternView.Cell> stringToPattern(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayListNewArrayList = Lists.newArrayList();
        for (byte b2 : str.getBytes()) {
            byte b3 = (byte) (b2 - 49);
            arrayListNewArrayList.add(LockPatternView.Cell.of(b3 / 3, b3 % 3));
        }
        return arrayListNewArrayList;
    }

    private void throwIfCalledOnMainThread() {
        if (Looper.getMainLooper().isCurrentThread()) {
            throw new IllegalStateException("should not be called from the main thread.");
        }
    }

    private void updateCryptoUserInfo(int i2) {
        if (i2 != 0) {
            return;
        }
        String ownerInfo = isOwnerInfoEnabled(i2) ? getOwnerInfo(i2) : "";
        IBinder service = ServiceManager.getService("mount");
        if (service == null) {
            Log.e(TAG, "Could not find the mount service to update the user info");
            return;
        }
        IStorageManager iStorageManagerAsInterface = IStorageManager.Stub.asInterface(service);
        try {
            Log.d(TAG, "Setting owner info");
            iStorageManagerAsInterface.setField(StorageManager.OWNER_INFO_KEY, ownerInfo);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error changing user info", e2);
        }
    }

    private void updateEncryptionPassword(final int i2, final String str) {
        if (isDeviceEncryptionEnabled()) {
            final IBinder service = ServiceManager.getService("mount");
            if (service == null) {
                Log.e(TAG, "Could not find the mount service to update the encryption password");
            } else {
                new AsyncTask<Void, Void, Void>() { // from class: com.android.internal.widget.LockPatternUtils.1
                    @Override // android.os.AsyncTask
                    public Void doInBackground(Void... voidArr) {
                        try {
                            IStorageManager.Stub.asInterface(service).changeEncryptionPassword(i2, str);
                            return null;
                        } catch (RemoteException e2) {
                            Log.e(LockPatternUtils.TAG, "Error changing encryption password", e2);
                            return null;
                        }
                    }
                }.execute(new Void[0]);
            }
        }
    }

    private void updateEncryptionPasswordIfNeeded(String str, int i2, int i3) {
        if (i3 == 0 && isDeviceEncryptionEnabled()) {
            if (shouldEncryptWithCredentials(true)) {
                updateEncryptionPassword(((i2 == 131072) || (i2 == 196608)) ? 3 : 0, str);
            } else {
                clearEncryptionPassword();
            }
        }
    }

    private void updatePasswordHistory(String str, int i2) {
        String string = getString(PASSWORD_HISTORY_KEY, i2);
        String strSubstring = "";
        if (string == null) {
            string = "";
        }
        int requestedPasswordHistoryLength = getRequestedPasswordHistoryLength(i2);
        if (requestedPasswordHistoryLength != 0) {
            byte[] bArrPasswordToHash = passwordToHash(str, i2);
            String str2 = new String(bArrPasswordToHash, StandardCharsets.UTF_8) + "," + string;
            strSubstring = str2.substring(0, Math.min(((bArrPasswordToHash.length * requestedPasswordHistoryLength) + requestedPasswordHistoryLength) - 1, str2.length()));
        }
        setString(PASSWORD_HISTORY_KEY, strSubstring, i2);
        onAfterChangingPassword(i2);
    }

    public static boolean userOwnsFrpCredential(Context context, UserInfo userInfo) {
        return userInfo != null && userInfo.isPrimary() && userInfo.isAdmin() && frpCredentialEnabled(context);
    }

    private byte[] verifyCredential(String str, int i2, long j2, int i3) throws RequestThrottledException {
        try {
            VerifyCredentialResponse verifyCredentialResponseVerifyCredential = getLockSettings().verifyCredential(str, i2, j2, i3);
            if (verifyCredentialResponseVerifyCredential != null && verifyCredentialResponseVerifyCredential.getResponseCode() == 0) {
                return verifyCredentialResponseVerifyCredential.getPayload();
            }
            if (verifyCredentialResponseVerifyCredential != null && verifyCredentialResponseVerifyCredential.getResponseCode() == 1) {
                throw new RequestThrottledException(verifyCredentialResponseVerifyCredential.getTimeout());
            }
            return null;
        } catch (RemoteException unused) {
        }
    }

    private ICheckCredentialProgressCallback wrapCallback(final CheckCredentialProgressCallback checkCredentialProgressCallback) {
        if (checkCredentialProgressCallback == null) {
            return null;
        }
        if (this.mHandler != null) {
            return new ICheckCredentialProgressCallback.Stub() { // from class: com.android.internal.widget.LockPatternUtils.2
                @Override // com.android.internal.widget.ICheckCredentialProgressCallback
                public void onCredentialVerified() {
                    Handler handler = LockPatternUtils.this.mHandler;
                    CheckCredentialProgressCallback checkCredentialProgressCallback2 = checkCredentialProgressCallback;
                    checkCredentialProgressCallback2.getClass();
                    handler.post(new d(checkCredentialProgressCallback2, 2));
                }
            };
        }
        throw new IllegalStateException("Must construct LockPatternUtils on a looper thread to use progress callbacks.");
    }

    public long addEscrowToken(byte[] bArr, int i2) {
        try {
            return getLockSettings().addEscrowToken(bArr, i2);
        } catch (RemoteException unused) {
            return 0L;
        }
    }

    public boolean checkPassword(String str, int i2) {
        return checkPassword(str, i2, null);
    }

    public boolean checkPasswordHistory(String str, int i2) {
        String str2 = new String(passwordToHash(str, i2), StandardCharsets.UTF_8);
        String string = getString(PASSWORD_HISTORY_KEY, i2);
        if (string == null) {
            return false;
        }
        int length = str2.length();
        int requestedPasswordHistoryLength = getRequestedPasswordHistoryLength(i2);
        if (requestedPasswordHistoryLength == 0) {
            return false;
        }
        int i3 = ((length * requestedPasswordHistoryLength) + requestedPasswordHistoryLength) - 1;
        if (string.length() > i3) {
            string = string.substring(0, i3);
        }
        return string.contains(str2);
    }

    public boolean checkPattern(List<LockPatternView.Cell> list, int i2) {
        return checkPattern(list, i2, null);
    }

    public boolean checkVoldPassword(int i2) {
        try {
            return getLockSettings().checkVoldPassword(i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void clearEncryptionPassword() {
        updateEncryptionPassword(1, null);
    }

    public void clearLock(String str, int i2) {
        setLong(PASSWORD_TYPE_KEY, 0L, i2);
        try {
            getLockSettings().setLockCredential(null, -1, str, 0, i2);
        } catch (RemoteException | IllegalStateException | NullPointerException unused) {
        }
        if (i2 == 0) {
            updateEncryptionPassword(1, null);
            setCredentialRequiredToDecrypt(false);
        }
        onAfterChangingPassword(i2);
    }

    public void disableSyntheticPassword() {
        setLong(SYNTHETIC_PASSWORD_ENABLED_KEY, 0L, 0);
    }

    public void enableSyntheticPassword() {
        setLong(SYNTHETIC_PASSWORD_ENABLED_KEY, 1L, 0);
    }

    public int getActivePasswordQuality(int i2) {
        int keyguardStoredPasswordQuality = getKeyguardStoredPasswordQuality(i2);
        if (isLockPasswordEnabled(keyguardStoredPasswordQuality, i2) || isLockPatternEnabled(keyguardStoredPasswordQuality, i2)) {
            return keyguardStoredPasswordQuality;
        }
        return 0;
    }

    public int getCurrentFailedPasswordAttempts(int i2) {
        if (i2 == -9999 && frpCredentialEnabled(this.mContext)) {
            return 0;
        }
        return getDevicePolicyManager().getCurrentFailedPasswordAttempts(i2);
    }

    public String getDeviceOwnerInfo() {
        return getString(LOCK_SCREEN_DEVICE_OWNER_INFO, 0);
    }

    public DevicePolicyManager getDevicePolicyManager() {
        if (this.mDevicePolicyManager == null) {
            DevicePolicyManager devicePolicyManager = (DevicePolicyManager) this.mContext.getSystemService(Context.DEVICE_POLICY_SERVICE);
            this.mDevicePolicyManager = devicePolicyManager;
            if (devicePolicyManager == null) {
                Log.e(TAG, "Can't get DevicePolicyManagerService: is it running?", new IllegalStateException("Stack trace:"));
            }
        }
        return this.mDevicePolicyManager;
    }

    public List<ComponentName> getEnabledTrustAgents(int i2) {
        String string = getString(ENABLED_TRUST_AGENTS, i2);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        String[] strArrSplit = string.split(",");
        ArrayList arrayList = new ArrayList(strArrSplit.length);
        for (String str : strArrSplit) {
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(ComponentName.unflattenFromString(str));
            }
        }
        return arrayList;
    }

    public int getKeyguardStoredPasswordQuality(int i2) {
        return (int) getLong(PASSWORD_TYPE_KEY, 0L, i2);
    }

    public ILockSettings getLockSettings() {
        if (this.mLockSettingsService == null) {
            this.mLockSettingsService = ILockSettings.Stub.asInterface(ServiceManager.getService("lock_settings"));
        }
        return this.mLockSettingsService;
    }

    public long getLockoutAttemptDeadline(int i2) {
        long j2 = getLong(LOCKOUT_ATTEMPT_DEADLINE, 0L, i2);
        long j3 = getLong(LOCKOUT_ATTEMPT_TIMEOUT_MS, 0L, i2);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (j2 < jElapsedRealtime && j2 != 0) {
            setLong(LOCKOUT_ATTEMPT_DEADLINE, 0L, i2);
            setLong(LOCKOUT_ATTEMPT_TIMEOUT_MS, 0L, i2);
            return 0L;
        }
        long j4 = jElapsedRealtime + j3;
        if (j2 <= j4) {
            return j2;
        }
        setLong(LOCKOUT_ATTEMPT_DEADLINE, j4, i2);
        return j4;
    }

    public int getMaximumFailedPasswordsForWipe(int i2) {
        if (i2 == -9999 && frpCredentialEnabled(this.mContext)) {
            return 0;
        }
        return getDevicePolicyManager().getMaximumFailedPasswordsForWipe(null, i2);
    }

    public String getOwnerInfo(int i2) {
        return getString("lock_screen_owner_info", i2);
    }

    public boolean getPowerButtonInstantlyLocks(int i2) {
        return getBoolean(LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS, true, i2);
    }

    public int getRequestedMinimumPasswordLength(int i2) {
        return getDevicePolicyManager().getPasswordMinimumLength(null, i2);
    }

    public int getRequestedPasswordMinimumLetters(int i2) {
        return getDevicePolicyManager().getPasswordMinimumLetters(null, i2);
    }

    public int getRequestedPasswordMinimumLowerCase(int i2) {
        return getDevicePolicyManager().getPasswordMinimumLowerCase(null, i2);
    }

    public int getRequestedPasswordMinimumNonLetter(int i2) {
        return getDevicePolicyManager().getPasswordMinimumNonLetter(null, i2);
    }

    public int getRequestedPasswordMinimumNumeric(int i2) {
        return getDevicePolicyManager().getPasswordMinimumNumeric(null, i2);
    }

    public int getRequestedPasswordMinimumSymbols(int i2) {
        return getDevicePolicyManager().getPasswordMinimumSymbols(null, i2);
    }

    public int getRequestedPasswordMinimumUpperCase(int i2) {
        return getDevicePolicyManager().getPasswordMinimumUpperCase(null, i2);
    }

    public int getRequestedPasswordQuality(int i2) {
        return getDevicePolicyManager().getPasswordQuality(null, i2);
    }

    public int getStrongAuthForUser(int i2) {
        try {
            return getLockSettings().getStrongAuthForUser(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Could not get StrongAuth", e2);
            return StrongAuthTracker.getDefaultFlags(this.mContext);
        }
    }

    public boolean isCredentialRequiredToDecrypt(boolean z2) {
        int i2 = Settings.Global.getInt(this.mContentResolver, Settings.Global.REQUIRE_PASSWORD_TO_DECRYPT, -1);
        if (i2 == -1) {
            return z2;
        }
        return i2 != 0;
    }

    public boolean isDeviceOwnerInfoEnabled() {
        return getDeviceOwnerInfo() != null;
    }

    public boolean isEscrowTokenActive(long j2, int i2) {
        try {
            return getLockSettings().isEscrowTokenActive(j2, i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isFingerprintAllowedForUser(int i2) {
        return (getStrongAuthForUser(i2) & (-5)) == 0;
    }

    @Deprecated
    public boolean isLegacyLockPatternEnabled(int i2) {
        return getBoolean(LEGACY_LOCK_PATTERN_ENABLED, true, i2);
    }

    public boolean isLockPasswordEnabled(int i2) {
        return isLockPasswordEnabled(getKeyguardStoredPasswordQuality(i2), i2);
    }

    public boolean isLockPatternEnabled(int i2) {
        return isLockPatternEnabled(getKeyguardStoredPasswordQuality(i2), i2);
    }

    public boolean isLockScreenDisabled(int i2) {
        if (isSecure(i2)) {
            return false;
        }
        boolean z2 = this.mContext.getResources().getBoolean(R.bool.config_disableLockscreenByDefault);
        boolean z3 = UserManager.isSplitSystemUser() && i2 == 0;
        UserInfo userInfo = getUserManager().getUserInfo(i2);
        return getBoolean("lockscreen.disabled", false, i2) || (z2 && !z3) || (UserManager.isDeviceInDemoMode(this.mContext) && userInfo != null && userInfo.isDemo());
    }

    public boolean isManagedProfileWithUnifiedChallenge(int i2) {
        return isManagedProfile(i2) && !hasSeparateChallenge(i2);
    }

    public boolean isOwnerInfoEnabled(int i2) {
        return getBoolean("lock_screen_owner_info_enabled", false, i2);
    }

    public boolean isPatternEverChosen(int i2) {
        return getBoolean(PATTERN_EVER_CHOSEN_KEY, false, i2);
    }

    public boolean isPowerButtonInstantlyLocksEverChosen(int i2) {
        return getString(LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS, i2) != null;
    }

    public boolean isSecure(int i2) {
        int keyguardStoredPasswordQuality = getKeyguardStoredPasswordQuality(i2);
        return isLockPatternEnabled(keyguardStoredPasswordQuality, i2) || isLockPasswordEnabled(keyguardStoredPasswordQuality, i2);
    }

    public boolean isSeparateProfileChallengeAllowed(int i2) {
        return isManagedProfile(i2) && getDevicePolicyManager().isSeparateProfileChallengeAllowed(i2);
    }

    public boolean isSeparateProfileChallengeAllowedToUnify(int i2) {
        return getDevicePolicyManager().isProfileActivePasswordSufficientForParent(i2);
    }

    public boolean isSeparateProfileChallengeEnabled(int i2) {
        return isManagedProfile(i2) && hasSeparateChallenge(i2);
    }

    public boolean isSyntheticPasswordEnabled() {
        return getLong(SYNTHETIC_PASSWORD_ENABLED_KEY, 0L, 0) != 0;
    }

    public boolean isTactileFeedbackEnabled() {
        return Settings.System.getIntForUser(this.mContentResolver, Settings.System.HAPTIC_FEEDBACK_ENABLED, 1, -2) != 0;
    }

    public boolean isTrustAllowedForUser(int i2) {
        return getStrongAuthForUser(i2) == 0;
    }

    public boolean isTrustUsuallyManaged(int i2) {
        if (!(this.mLockSettingsService instanceof ILockSettings.Stub)) {
            throw new IllegalStateException("May only be called by TrustManagerService. Use TrustManager.isTrustUsuallyManaged()");
        }
        try {
            return getLockSettings().getBoolean(IS_TRUST_USUALLY_MANAGED, false, i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isVisiblePatternEnabled(int i2) {
        return getBoolean("lock_pattern_visible_pattern", false, i2);
    }

    public boolean isVisiblePatternEverChosen(int i2) {
        return getString("lock_pattern_visible_pattern", i2) != null;
    }

    public byte[] passwordToHash(String str, int i2) {
        if (str == null) {
            return null;
        }
        try {
            byte[] bytes = (str + getSalt(i2)).getBytes();
            byte[] bArrDigest = MessageDigest.getInstance(KeyProperties.DIGEST_SHA1).digest(bytes);
            byte[] bArrDigest2 = MessageDigest.getInstance(KeyProperties.DIGEST_MD5).digest(bytes);
            byte[] bArr = new byte[bArrDigest.length + bArrDigest2.length];
            System.arraycopy(bArrDigest, 0, bArr, 0, bArrDigest.length);
            System.arraycopy(bArrDigest2, 0, bArr, bArrDigest.length, bArrDigest2.length);
            return new String(HexEncoding.encode(bArr)).getBytes(StandardCharsets.UTF_8);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError("Missing digest algorithm: ", e2);
        }
    }

    public void registerStrongAuthTracker(StrongAuthTracker strongAuthTracker) {
        try {
            getLockSettings().registerStrongAuthTracker(strongAuthTracker.mStub);
        } catch (RemoteException unused) {
            throw new RuntimeException("Could not register StrongAuthTracker");
        }
    }

    public boolean removeEscrowToken(long j2, int i2) {
        try {
            return getLockSettings().removeEscrowToken(j2, i2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void reportFailedPasswordAttempt(int i2) {
        if (i2 == -9999 && frpCredentialEnabled(this.mContext)) {
            return;
        }
        getDevicePolicyManager().reportFailedPasswordAttempt(i2);
        getTrustManager().reportUnlockAttempt(false, i2);
    }

    public void reportPasswordLockout(int i2, int i3) {
        if (i3 == -9999 && frpCredentialEnabled(this.mContext)) {
            return;
        }
        getTrustManager().reportUnlockLockout(i2, i3);
    }

    public void reportPatternWasChosen(int i2) {
        setBoolean(PATTERN_EVER_CHOSEN_KEY, true, i2);
    }

    public void reportSuccessfulPasswordAttempt(int i2) {
        if (i2 == -9999 && frpCredentialEnabled(this.mContext)) {
            return;
        }
        getDevicePolicyManager().reportSuccessfulPasswordAttempt(i2);
        getTrustManager().reportUnlockAttempt(true, i2);
    }

    public void requireCredentialEntry(int i2) {
        requireStrongAuth(4, i2);
    }

    public void requireStrongAuth(int i2, int i3) {
        try {
            getLockSettings().requireStrongAuth(i2, i3);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error while requesting strong auth: " + e2);
        }
    }

    public void resetKeyStore(int i2) {
        try {
            getLockSettings().resetKeyStore(i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Couldn't reset keystore " + e2);
        }
    }

    public void saveLockPassword(String str, String str2, int i2, int i3) {
        if (str != null) {
            try {
                if (str.length() >= 4) {
                    setLong(PASSWORD_TYPE_KEY, computePasswordQuality(2, str, i2), i3);
                    getLockSettings().setLockCredential(str, 2, str2, i2, i3);
                    updateEncryptionPasswordIfNeeded(str, PasswordMetrics.computeForPassword(str).quality, i3);
                    updatePasswordHistory(str, i3);
                    return;
                }
            } catch (RemoteException | IllegalStateException | NullPointerException e2) {
                Log.e(TAG, "Unable to save lock password " + e2);
                return;
            }
        }
        throw new IllegalArgumentException("password must not be null and at least of length 4");
    }

    public void saveLockPattern(List<LockPatternView.Cell> list, int i2) {
        saveLockPattern(list, null, i2);
    }

    public void setCredentialRequiredToDecrypt(boolean z2) {
        if (!getUserManager().isSystemUser() && !getUserManager().isPrimaryUser()) {
            throw new IllegalStateException("Only the system or primary user may call setCredentialRequiredForDecrypt()");
        }
        if (isDeviceEncryptionEnabled()) {
            Settings.Global.putInt(this.mContext.getContentResolver(), Settings.Global.REQUIRE_PASSWORD_TO_DECRYPT, z2 ? 1 : 0);
        }
    }

    public void setDeviceOwnerInfo(String str) {
        if (str != null && str.isEmpty()) {
            str = null;
        }
        setString(LOCK_SCREEN_DEVICE_OWNER_INFO, str, 0);
    }

    public void setEnabledTrustAgents(Collection<ComponentName> collection, int i2) {
        StringBuilder sb = new StringBuilder();
        for (ComponentName componentName : collection) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(componentName.flattenToShortString());
        }
        setString(ENABLED_TRUST_AGENTS, sb.toString(), i2);
        getTrustManager().reportEnabledTrustAgentsChanged(i2);
    }

    @Deprecated
    public void setLegacyLockPatternEnabled(int i2) {
        setBoolean("lock_pattern_autolock", true, i2);
    }

    public boolean setLockCredentialWithToken(String str, int i2, int i3, long j2, byte[] bArr, int i4) {
        try {
            if (i2 != -1) {
                if (TextUtils.isEmpty(str) || str.length() < 4) {
                    throw new IllegalArgumentException("password must not be null and at least of length 4");
                }
                int iComputePasswordQuality = computePasswordQuality(i2, str, i3);
                if (!getLockSettings().setLockCredentialWithToken(str, i2, j2, bArr, iComputePasswordQuality, i4)) {
                    return false;
                }
                setLong(PASSWORD_TYPE_KEY, iComputePasswordQuality, i4);
                updateEncryptionPasswordIfNeeded(str, iComputePasswordQuality, i4);
                updatePasswordHistory(str, i4);
            } else {
                if (!TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("password must be emtpy for NONE type");
                }
                if (!getLockSettings().setLockCredentialWithToken(null, -1, j2, bArr, 0, i4)) {
                    return false;
                }
                setLong(PASSWORD_TYPE_KEY, 0L, i4);
                if (i4 == 0) {
                    updateEncryptionPassword(1, null);
                    setCredentialRequiredToDecrypt(false);
                }
            }
            onAfterChangingPassword(i4);
            return true;
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to save lock password ", e2);
            e2.rethrowFromSystemServer();
            return false;
        }
    }

    public void setLockScreenDisabled(boolean z2, int i2) {
        setBoolean("lockscreen.disabled", z2, i2);
    }

    public long setLockoutAttemptDeadline(int i2, int i3) {
        long j2 = i3;
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j2;
        if (i2 == -9999) {
            return jElapsedRealtime;
        }
        setLong(LOCKOUT_ATTEMPT_DEADLINE, jElapsedRealtime, i2);
        setLong(LOCKOUT_ATTEMPT_TIMEOUT_MS, j2, i2);
        return jElapsedRealtime;
    }

    public void setOwnerInfo(String str, int i2) {
        setString("lock_screen_owner_info", str, i2);
        updateCryptoUserInfo(i2);
    }

    public void setOwnerInfoEnabled(boolean z2, int i2) {
        setBoolean("lock_screen_owner_info_enabled", z2, i2);
        updateCryptoUserInfo(i2);
    }

    public void setPowerButtonInstantlyLocks(boolean z2, int i2) {
        setBoolean(LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS, z2, i2);
    }

    public void setSeparateProfileChallengeEnabled(int i2, boolean z2, String str) {
        if (isManagedProfile(i2)) {
            try {
                getLockSettings().setSeparateProfileChallengeEnabled(i2, z2, str);
                onAfterChangingPassword(i2);
            } catch (RemoteException unused) {
                Log.e(TAG, "Couldn't update work profile challenge enabled");
            }
        }
    }

    public void setTrustUsuallyManaged(boolean z2, int i2) {
        try {
            getLockSettings().setBoolean(IS_TRUST_USUALLY_MANAGED, z2, i2);
        } catch (RemoteException unused) {
        }
    }

    public void setVisiblePasswordEnabled(boolean z2, int i2) {
        if (i2 != 0) {
            return;
        }
        IBinder service = ServiceManager.getService("mount");
        if (service == null) {
            Log.e(TAG, "Could not find the mount service to update the user info");
            return;
        }
        try {
            IStorageManager.Stub.asInterface(service).setField(StorageManager.PASSWORD_VISIBLE_KEY, z2 ? WifiEnterpriseConfig.ENGINE_ENABLE : WifiEnterpriseConfig.ENGINE_DISABLE);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error changing password visible state", e2);
        }
    }

    public void setVisiblePatternEnabled(boolean z2, int i2) {
        setBoolean("lock_pattern_visible_pattern", z2, i2);
        if (i2 != 0) {
            return;
        }
        IBinder service = ServiceManager.getService("mount");
        if (service == null) {
            Log.e(TAG, "Could not find the mount service to update the user info");
            return;
        }
        try {
            IStorageManager.Stub.asInterface(service).setField(StorageManager.PATTERN_VISIBLE_KEY, z2 ? WifiEnterpriseConfig.ENGINE_ENABLE : WifiEnterpriseConfig.ENGINE_DISABLE);
        } catch (RemoteException e2) {
            Log.e(TAG, "Error changing pattern visible state", e2);
        }
    }

    public void unlockUserWithToken(long j2, byte[] bArr, int i2) {
        try {
            getLockSettings().unlockUserWithToken(j2, bArr, i2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Unable to unlock user with token", e2);
            e2.rethrowFromSystemServer();
        }
    }

    public void unregisterStrongAuthTracker(StrongAuthTracker strongAuthTracker) {
        try {
            getLockSettings().unregisterStrongAuthTracker(strongAuthTracker.mStub);
        } catch (RemoteException e2) {
            Log.e(TAG, "Could not unregister StrongAuthTracker", e2);
        }
    }

    public void userPresent(int i2) {
        try {
            getLockSettings().userPresent(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public byte[] verifyPassword(String str, long j2, int i2) {
        throwIfCalledOnMainThread();
        return verifyCredential(str, 2, j2, i2);
    }

    public byte[] verifyPattern(List<LockPatternView.Cell> list, long j2, int i2) {
        throwIfCalledOnMainThread();
        return verifyCredential(patternToString(list), 1, j2, i2);
    }

    public byte[] verifyTiedProfileChallenge(String str, boolean z2, long j2, int i2) throws RequestThrottledException {
        throwIfCalledOnMainThread();
        try {
            VerifyCredentialResponse verifyCredentialResponseVerifyTiedProfileChallenge = getLockSettings().verifyTiedProfileChallenge(str, z2 ? 1 : 2, j2, i2);
            if (verifyCredentialResponseVerifyTiedProfileChallenge.getResponseCode() == 0) {
                return verifyCredentialResponseVerifyTiedProfileChallenge.getPayload();
            }
            if (verifyCredentialResponseVerifyTiedProfileChallenge.getResponseCode() != 1) {
                return null;
            }
            throw new RequestThrottledException(verifyCredentialResponseVerifyTiedProfileChallenge.getTimeout());
        } catch (RemoteException unused) {
            return null;
        }
    }

    private boolean isLockPasswordEnabled(int i2, int i3) {
        return (i2 == 262144 || i2 == 131072 || i2 == 196608 || i2 == 327680 || i2 == 393216 || i2 == 524288) && savedPasswordExists(i3);
    }

    private boolean isLockPatternEnabled(int i2, int i3) {
        return i2 == 65536 && savedPatternExists(i3);
    }

    public boolean checkPassword(String str, int i2, CheckCredentialProgressCallback checkCredentialProgressCallback) {
        throwIfCalledOnMainThread();
        return checkCredential(str, 2, i2, checkCredentialProgressCallback);
    }

    public boolean checkPattern(List<LockPatternView.Cell> list, int i2, CheckCredentialProgressCallback checkCredentialProgressCallback) {
        throwIfCalledOnMainThread();
        return checkCredential(patternToString(list), 1, i2, checkCredentialProgressCallback);
    }

    public void saveLockPattern(List<LockPatternView.Cell> list, String str, int i2) {
        if (list != null) {
            try {
                if (list.size() >= 4) {
                    setLong(PASSWORD_TYPE_KEY, 65536L, i2);
                    getLockSettings().setLockCredential(patternToString(list), 1, str, 65536, i2);
                    if (i2 == 0 && isDeviceEncryptionEnabled()) {
                        if (shouldEncryptWithCredentials(true)) {
                            updateEncryptionPassword(2, patternToString(list));
                        } else {
                            clearEncryptionPassword();
                        }
                    }
                    reportPatternWasChosen(i2);
                    onAfterChangingPassword(i2);
                    return;
                }
            } catch (RemoteException | IllegalStateException | NullPointerException e2) {
                Log.e(TAG, "Couldn't save lock pattern " + e2);
                return;
            }
        }
        throw new IllegalArgumentException("pattern must not be null and at least 4 dots long.");
    }
}
