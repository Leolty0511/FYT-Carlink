package android.hardware.fingerprint;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Binder;
import android.os.CancellationSignal;
import android.os.Handler;
import android.os.IBinder;
import android.os.IRemoteCallback;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.UserHandle;
import android.security.keystore.AndroidKeyStoreProvider;
import android.util.Log;
import android.util.Slog;
import com.android.internal.R;
import java.security.Signature;
import java.util.List;
import javax.crypto.Cipher;
import javax.crypto.Mac;

/* JADX INFO: loaded from: classes.dex */
public class FingerprintManager {
    private static final boolean DEBUG = true;
    public static final int FINGERPRINT_ACQUIRED_GOOD = 0;
    public static final int FINGERPRINT_ACQUIRED_IMAGER_DIRTY = 3;
    public static final int FINGERPRINT_ACQUIRED_INSUFFICIENT = 2;
    public static final int FINGERPRINT_ACQUIRED_PARTIAL = 1;
    public static final int FINGERPRINT_ACQUIRED_TOO_FAST = 5;
    public static final int FINGERPRINT_ACQUIRED_TOO_SLOW = 4;
    public static final int FINGERPRINT_ACQUIRED_VENDOR = 6;
    public static final int FINGERPRINT_ACQUIRED_VENDOR_BASE = 1000;
    public static final int FINGERPRINT_ERROR_CANCELED = 5;
    public static final int FINGERPRINT_ERROR_HW_UNAVAILABLE = 1;
    public static final int FINGERPRINT_ERROR_LOCKOUT = 7;
    public static final int FINGERPRINT_ERROR_LOCKOUT_PERMANENT = 9;
    public static final int FINGERPRINT_ERROR_NO_SPACE = 4;
    public static final int FINGERPRINT_ERROR_TIMEOUT = 3;
    public static final int FINGERPRINT_ERROR_UNABLE_TO_PROCESS = 2;
    public static final int FINGERPRINT_ERROR_UNABLE_TO_REMOVE = 6;
    public static final int FINGERPRINT_ERROR_USER_CANCELED = 10;
    public static final int FINGERPRINT_ERROR_VENDOR = 8;
    public static final int FINGERPRINT_ERROR_VENDOR_BASE = 1000;
    private static final int MSG_ACQUIRED = 101;
    private static final int MSG_AUTHENTICATION_FAILED = 103;
    private static final int MSG_AUTHENTICATION_SUCCEEDED = 102;
    private static final int MSG_ENROLL_RESULT = 100;
    private static final int MSG_ENUMERATED = 106;
    private static final int MSG_ERROR = 104;
    private static final int MSG_REMOVED = 105;
    private static final String TAG = "FingerprintManager";
    private AuthenticationCallback mAuthenticationCallback;
    private Context mContext;
    private CryptoObject mCryptoObject;
    private EnrollmentCallback mEnrollmentCallback;
    private EnumerateCallback mEnumerateCallback;
    private Handler mHandler;
    private RemovalCallback mRemovalCallback;
    private Fingerprint mRemovalFingerprint;
    private IFingerprintService mService;
    private IBinder mToken = new Binder();
    private IFingerprintServiceReceiver mServiceReceiver = new IFingerprintServiceReceiver.Stub() { // from class: android.hardware.fingerprint.FingerprintManager.2
        @Override // android.hardware.fingerprint.IFingerprintServiceReceiver
        public void onAcquired(long j2, int i2, int i3) {
            FingerprintManager.this.mHandler.obtainMessage(101, i2, i3, Long.valueOf(j2)).sendToTarget();
        }

        @Override // android.hardware.fingerprint.IFingerprintServiceReceiver
        public void onAuthenticationFailed(long j2) {
            FingerprintManager.this.mHandler.obtainMessage(103).sendToTarget();
        }

        @Override // android.hardware.fingerprint.IFingerprintServiceReceiver
        public void onAuthenticationSucceeded(long j2, Fingerprint fingerprint, int i2) {
            FingerprintManager.this.mHandler.obtainMessage(102, i2, 0, fingerprint).sendToTarget();
        }

        @Override // android.hardware.fingerprint.IFingerprintServiceReceiver
        public void onEnrollResult(long j2, int i2, int i3, int i4) {
            FingerprintManager.this.mHandler.obtainMessage(100, i4, 0, new Fingerprint(null, i3, i2, j2)).sendToTarget();
        }

        @Override // android.hardware.fingerprint.IFingerprintServiceReceiver
        public void onEnumerated(long j2, int i2, int i3, int i4) {
            FingerprintManager.this.mHandler.obtainMessage(106, i2, i3, Long.valueOf(j2)).sendToTarget();
        }

        @Override // android.hardware.fingerprint.IFingerprintServiceReceiver
        public void onError(long j2, int i2, int i3) {
            FingerprintManager.this.mHandler.obtainMessage(104, i2, i3, Long.valueOf(j2)).sendToTarget();
        }

        @Override // android.hardware.fingerprint.IFingerprintServiceReceiver
        public void onRemoved(long j2, int i2, int i3, int i4) {
            FingerprintManager.this.mHandler.obtainMessage(105, i4, 0, new Fingerprint(null, i3, i2, j2)).sendToTarget();
        }
    };

    /* JADX INFO: renamed from: android.hardware.fingerprint.FingerprintManager$1, reason: invalid class name */
    public class AnonymousClass1 extends IFingerprintServiceLockoutResetCallback.Stub {
        final /* synthetic */ LockoutResetCallback val$callback;
        final /* synthetic */ PowerManager val$powerManager;

        public AnonymousClass1(PowerManager powerManager, LockoutResetCallback lockoutResetCallback) {
            this.val$powerManager = powerManager;
            this.val$callback = lockoutResetCallback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$onLockoutReset$0(LockoutResetCallback lockoutResetCallback, PowerManager.WakeLock wakeLock) {
            try {
                lockoutResetCallback.onLockoutReset();
            } finally {
                wakeLock.release();
            }
        }

        @Override // android.hardware.fingerprint.IFingerprintServiceLockoutResetCallback
        public void onLockoutReset(long j2, IRemoteCallback iRemoteCallback) {
            try {
                final PowerManager.WakeLock wakeLockNewWakeLock = this.val$powerManager.newWakeLock(1, "lockoutResetCallback");
                wakeLockNewWakeLock.acquire();
                Handler handler = FingerprintManager.this.mHandler;
                final LockoutResetCallback lockoutResetCallback = this.val$callback;
                handler.post(new Runnable() { // from class: android.hardware.fingerprint.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        FingerprintManager.AnonymousClass1.lambda$onLockoutReset$0(lockoutResetCallback, wakeLockNewWakeLock);
                    }
                });
            } finally {
                iRemoteCallback.sendResult(null);
            }
        }
    }

    public static abstract class AuthenticationCallback {
        public void onAuthenticationAcquired(int i2) {
        }

        public void onAuthenticationError(int i2, CharSequence charSequence) {
        }

        public void onAuthenticationFailed() {
        }

        public void onAuthenticationHelp(int i2, CharSequence charSequence) {
        }

        public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
        }
    }

    public static class AuthenticationResult {
        private CryptoObject mCryptoObject;
        private Fingerprint mFingerprint;
        private int mUserId;

        public AuthenticationResult(CryptoObject cryptoObject, Fingerprint fingerprint, int i2) {
            this.mCryptoObject = cryptoObject;
            this.mFingerprint = fingerprint;
            this.mUserId = i2;
        }

        public CryptoObject getCryptoObject() {
            return this.mCryptoObject;
        }

        public Fingerprint getFingerprint() {
            return this.mFingerprint;
        }

        public int getUserId() {
            return this.mUserId;
        }
    }

    public static abstract class EnrollmentCallback {
        public void onEnrollmentError(int i2, CharSequence charSequence) {
        }

        public void onEnrollmentHelp(int i2, CharSequence charSequence) {
        }

        public void onEnrollmentProgress(int i2) {
        }
    }

    public static abstract class EnumerateCallback {
        public void onEnumerate(Fingerprint fingerprint) {
        }

        public void onEnumerateError(int i2, CharSequence charSequence) {
        }
    }

    public static abstract class LockoutResetCallback {
        public void onLockoutReset() {
        }
    }

    public class MyHandler extends Handler {
        public /* synthetic */ MyHandler(FingerprintManager fingerprintManager, Context context, AnonymousClass1 anonymousClass1) {
            this(context);
        }

        private void sendAcquiredResult(long j2, int i2, int i3) {
            if (FingerprintManager.this.mAuthenticationCallback != null) {
                FingerprintManager.this.mAuthenticationCallback.onAuthenticationAcquired(i2);
            }
            String acquiredString = FingerprintManager.this.getAcquiredString(i2, i3);
            if (acquiredString == null) {
                return;
            }
            if (i2 == 6) {
                i2 = i3 + 1000;
            }
            if (FingerprintManager.this.mEnrollmentCallback != null) {
                FingerprintManager.this.mEnrollmentCallback.onEnrollmentHelp(i2, acquiredString);
            } else if (FingerprintManager.this.mAuthenticationCallback != null) {
                FingerprintManager.this.mAuthenticationCallback.onAuthenticationHelp(i2, acquiredString);
            }
        }

        private void sendAuthenticatedFailed() {
            if (FingerprintManager.this.mAuthenticationCallback != null) {
                FingerprintManager.this.mAuthenticationCallback.onAuthenticationFailed();
            }
        }

        private void sendAuthenticatedSucceeded(Fingerprint fingerprint, int i2) {
            if (FingerprintManager.this.mAuthenticationCallback != null) {
                FingerprintManager.this.mAuthenticationCallback.onAuthenticationSucceeded(new AuthenticationResult(FingerprintManager.this.mCryptoObject, fingerprint, i2));
            }
        }

        private void sendEnrollResult(Fingerprint fingerprint, int i2) {
            if (FingerprintManager.this.mEnrollmentCallback != null) {
                FingerprintManager.this.mEnrollmentCallback.onEnrollmentProgress(i2);
            }
        }

        private void sendEnumeratedResult(long j2, int i2, int i3) {
            if (FingerprintManager.this.mEnumerateCallback != null) {
                FingerprintManager.this.mEnumerateCallback.onEnumerate(new Fingerprint(null, i3, i2, j2));
            }
        }

        private void sendErrorResult(long j2, int i2, int i3) {
            int i4 = i2 == 8 ? i3 + 1000 : i2;
            if (FingerprintManager.this.mEnrollmentCallback != null) {
                FingerprintManager.this.mEnrollmentCallback.onEnrollmentError(i4, FingerprintManager.this.getErrorString(i2, i3));
                return;
            }
            if (FingerprintManager.this.mAuthenticationCallback != null) {
                FingerprintManager.this.mAuthenticationCallback.onAuthenticationError(i4, FingerprintManager.this.getErrorString(i2, i3));
            } else if (FingerprintManager.this.mRemovalCallback != null) {
                FingerprintManager.this.mRemovalCallback.onRemovalError(FingerprintManager.this.mRemovalFingerprint, i4, FingerprintManager.this.getErrorString(i2, i3));
            } else if (FingerprintManager.this.mEnumerateCallback != null) {
                FingerprintManager.this.mEnumerateCallback.onEnumerateError(i4, FingerprintManager.this.getErrorString(i2, i3));
            }
        }

        private void sendRemovedResult(Fingerprint fingerprint, int i2) {
            if (FingerprintManager.this.mRemovalCallback == null) {
                return;
            }
            if (fingerprint == null) {
                Log.e(FingerprintManager.TAG, "Received MSG_REMOVED, but fingerprint is null");
                return;
            }
            int fingerId = fingerprint.getFingerId();
            int fingerId2 = FingerprintManager.this.mRemovalFingerprint.getFingerId();
            if (fingerId2 != 0 && fingerId != 0 && fingerId != fingerId2) {
                Log.w(FingerprintManager.TAG, "Finger id didn't match: " + fingerId + " != " + fingerId2);
                return;
            }
            int groupId = fingerprint.getGroupId();
            int groupId2 = FingerprintManager.this.mRemovalFingerprint.getGroupId();
            if (groupId == groupId2) {
                FingerprintManager.this.mRemovalCallback.onRemovalSucceeded(fingerprint, i2);
                return;
            }
            Log.w(FingerprintManager.TAG, "Group id didn't match: " + groupId + " != " + groupId2);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 100:
                    sendEnrollResult((Fingerprint) message.obj, message.arg1);
                    break;
                case 101:
                    sendAcquiredResult(((Long) message.obj).longValue(), message.arg1, message.arg2);
                    break;
                case 102:
                    sendAuthenticatedSucceeded((Fingerprint) message.obj, message.arg1);
                    break;
                case 103:
                    sendAuthenticatedFailed();
                    break;
                case 104:
                    sendErrorResult(((Long) message.obj).longValue(), message.arg1, message.arg2);
                    break;
                case 105:
                    sendRemovedResult((Fingerprint) message.obj, message.arg1);
                    break;
                case 106:
                    sendEnumeratedResult(((Long) message.obj).longValue(), message.arg1, message.arg2);
                    break;
            }
        }

        public /* synthetic */ MyHandler(FingerprintManager fingerprintManager, Looper looper, AnonymousClass1 anonymousClass1) {
            this(looper);
        }

        private MyHandler(Context context) {
            super(context.getMainLooper());
        }

        private MyHandler(Looper looper) {
            super(looper);
        }
    }

    public class OnAuthenticationCancelListener implements CancellationSignal.OnCancelListener {
        private CryptoObject mCrypto;

        public OnAuthenticationCancelListener(CryptoObject cryptoObject) {
            this.mCrypto = cryptoObject;
        }

        @Override // android.os.CancellationSignal.OnCancelListener
        public void onCancel() {
            FingerprintManager.this.cancelAuthentication(this.mCrypto);
        }
    }

    public class OnEnrollCancelListener implements CancellationSignal.OnCancelListener {
        private OnEnrollCancelListener() {
        }

        @Override // android.os.CancellationSignal.OnCancelListener
        public void onCancel() {
            FingerprintManager.this.cancelEnrollment();
        }

        public /* synthetic */ OnEnrollCancelListener(FingerprintManager fingerprintManager, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public static abstract class RemovalCallback {
        public void onRemovalError(Fingerprint fingerprint, int i2, CharSequence charSequence) {
        }

        public void onRemovalSucceeded(Fingerprint fingerprint, int i2) {
        }
    }

    public FingerprintManager(Context context, IFingerprintService iFingerprintService) {
        this.mContext = context;
        this.mService = iFingerprintService;
        if (iFingerprintService == null) {
            Slog.v(TAG, "FingerprintManagerService was null");
        }
        this.mHandler = new MyHandler(this, context, (AnonymousClass1) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelAuthentication(CryptoObject cryptoObject) {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService != null) {
            try {
                iFingerprintService.cancelAuthentication(this.mToken, this.mContext.getOpPackageName());
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cancelEnrollment() {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService != null) {
            try {
                iFingerprintService.cancelEnrollment(this.mToken);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getAcquiredString(int i2, int i3) {
        switch (i2) {
            case 0:
                return null;
            case 1:
                return this.mContext.getString(R.string.fingerprint_acquired_partial);
            case 2:
                return this.mContext.getString(R.string.fingerprint_acquired_insufficient);
            case 3:
                return this.mContext.getString(R.string.fingerprint_acquired_imager_dirty);
            case 4:
                return this.mContext.getString(R.string.fingerprint_acquired_too_slow);
            case 5:
                return this.mContext.getString(R.string.fingerprint_acquired_too_fast);
            case 6:
                String[] stringArray = this.mContext.getResources().getStringArray(R.array.fingerprint_acquired_vendor);
                if (i3 < stringArray.length) {
                    return stringArray[i3];
                }
                break;
        }
        Slog.w(TAG, "Invalid acquired message: " + i2 + ", " + i3);
        return null;
    }

    private int getCurrentUserId() {
        try {
            return ActivityManager.getService().getCurrentUser().id;
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getErrorString(int i2, int i3) {
        switch (i2) {
            case 1:
                return this.mContext.getString(R.string.fingerprint_error_hw_not_available);
            case 2:
                return this.mContext.getString(R.string.fingerprint_error_unable_to_process);
            case 3:
                return this.mContext.getString(R.string.fingerprint_error_timeout);
            case 4:
                return this.mContext.getString(R.string.fingerprint_error_no_space);
            case 5:
                return this.mContext.getString(R.string.fingerprint_error_canceled);
            case 7:
                return this.mContext.getString(R.string.fingerprint_error_lockout);
            case 8:
                String[] stringArray = this.mContext.getResources().getStringArray(R.array.fingerprint_error_vendor);
                if (i3 < stringArray.length) {
                    return stringArray[i3];
                }
                break;
            case 9:
                return this.mContext.getString(R.string.fingerprint_error_lockout_permanent);
        }
        Slog.w(TAG, "Invalid error message: " + i2 + ", " + i3);
        return null;
    }

    private void useHandler(Handler handler) {
        AnonymousClass1 anonymousClass1 = null;
        if (handler != null) {
            this.mHandler = new MyHandler(this, handler.getLooper(), anonymousClass1);
        } else if (this.mHandler.getLooper() != this.mContext.getMainLooper()) {
            this.mHandler = new MyHandler(this, this.mContext.getMainLooper(), anonymousClass1);
        }
    }

    public void addLockoutResetCallback(LockoutResetCallback lockoutResetCallback) {
        if (this.mService == null) {
            Log.w(TAG, "addLockoutResetCallback(): Service not connected!");
            return;
        }
        try {
            this.mService.addLockoutResetCallback(new AnonymousClass1((PowerManager) this.mContext.getSystemService(PowerManager.class), lockoutResetCallback));
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void authenticate(CryptoObject cryptoObject, CancellationSignal cancellationSignal, int i2, AuthenticationCallback authenticationCallback, Handler handler) {
        authenticate(cryptoObject, cancellationSignal, i2, authenticationCallback, handler, UserHandle.myUserId());
    }

    public void enroll(byte[] bArr, CancellationSignal cancellationSignal, int i2, int i3, EnrollmentCallback enrollmentCallback) {
        if (i3 == -2) {
            i3 = getCurrentUserId();
        }
        int i4 = i3;
        if (enrollmentCallback == null) {
            throw new IllegalArgumentException("Must supply an enrollment callback");
        }
        if (cancellationSignal != null) {
            if (cancellationSignal.isCanceled()) {
                Log.w(TAG, "enrollment already canceled");
                return;
            }
            cancellationSignal.setOnCancelListener(new OnEnrollCancelListener(this, null));
        }
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService != null) {
            try {
                this.mEnrollmentCallback = enrollmentCallback;
                iFingerprintService.enroll(this.mToken, bArr, i4, this.mServiceReceiver, i2, this.mContext.getOpPackageName());
            } catch (RemoteException e2) {
                Log.w(TAG, "Remote exception in enroll: ", e2);
                enrollmentCallback.onEnrollmentError(1, getErrorString(1, 0));
            }
        }
    }

    public void enumerate(int i2, EnumerateCallback enumerateCallback) {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService != null) {
            try {
                this.mEnumerateCallback = enumerateCallback;
                iFingerprintService.enumerate(this.mToken, i2, this.mServiceReceiver);
            } catch (RemoteException e2) {
                Log.w(TAG, "Remote exception in enumerate: ", e2);
                if (enumerateCallback != null) {
                    enumerateCallback.onEnumerateError(1, getErrorString(1, 0));
                }
            }
        }
    }

    public long getAuthenticatorId() {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            Log.w(TAG, "getAuthenticatorId(): Service not connected!");
            return 0L;
        }
        try {
            return iFingerprintService.getAuthenticatorId(this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public List<Fingerprint> getEnrolledFingerprints(int i2) {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            return null;
        }
        try {
            return iFingerprintService.getEnrolledFingerprints(i2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hasEnrolledFingerprints() {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            return false;
        }
        try {
            return iFingerprintService.hasEnrolledFingerprints(UserHandle.myUserId(), this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean isHardwareDetected() {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            Log.w(TAG, "isFingerprintHardwareDetected(): Service not connected!");
            return false;
        }
        try {
            return iFingerprintService.isHardwareDetected(0L, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public int postEnroll() {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            return 0;
        }
        try {
            return iFingerprintService.postEnroll(this.mToken);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public long preEnroll() {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            return 0L;
        }
        try {
            return iFingerprintService.preEnroll(this.mToken);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void remove(Fingerprint fingerprint, int i2, RemovalCallback removalCallback) {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService != null) {
            try {
                this.mRemovalCallback = removalCallback;
                this.mRemovalFingerprint = fingerprint;
                iFingerprintService.remove(this.mToken, fingerprint.getFingerId(), fingerprint.getGroupId(), i2, this.mServiceReceiver);
            } catch (RemoteException e2) {
                Log.w(TAG, "Remote exception in remove: ", e2);
                if (removalCallback != null) {
                    removalCallback.onRemovalError(fingerprint, 1, getErrorString(1, 0));
                }
            }
        }
    }

    public void rename(int i2, int i3, String str) {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            Log.w(TAG, "rename(): Service not connected!");
            return;
        }
        try {
            iFingerprintService.rename(i2, i3, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void resetTimeout(byte[] bArr) {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            Log.w(TAG, "resetTimeout(): Service not connected!");
            return;
        }
        try {
            iFingerprintService.resetTimeout(bArr);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setActiveUser(int i2) {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService != null) {
            try {
                iFingerprintService.setActiveUser(i2);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public static final class CryptoObject {
        private final Object mCrypto;

        public CryptoObject(Signature signature) {
            this.mCrypto = signature;
        }

        public Cipher getCipher() {
            Object obj = this.mCrypto;
            if (obj instanceof Cipher) {
                return (Cipher) obj;
            }
            return null;
        }

        public Mac getMac() {
            Object obj = this.mCrypto;
            if (obj instanceof Mac) {
                return (Mac) obj;
            }
            return null;
        }

        public long getOpId() {
            Object obj = this.mCrypto;
            if (obj != null) {
                return AndroidKeyStoreProvider.getKeyStoreOperationHandle(obj);
            }
            return 0L;
        }

        public Signature getSignature() {
            Object obj = this.mCrypto;
            if (obj instanceof Signature) {
                return (Signature) obj;
            }
            return null;
        }

        public CryptoObject(Cipher cipher) {
            this.mCrypto = cipher;
        }

        public CryptoObject(Mac mac) {
            this.mCrypto = mac;
        }
    }

    public void authenticate(CryptoObject cryptoObject, CancellationSignal cancellationSignal, int i2, AuthenticationCallback authenticationCallback, Handler handler, int i3) {
        if (authenticationCallback == null) {
            throw new IllegalArgumentException("Must supply an authentication callback");
        }
        if (cancellationSignal != null) {
            if (cancellationSignal.isCanceled()) {
                Log.w(TAG, "authentication already canceled");
                return;
            }
            cancellationSignal.setOnCancelListener(new OnAuthenticationCancelListener(cryptoObject));
        }
        if (this.mService != null) {
            try {
                useHandler(handler);
                this.mAuthenticationCallback = authenticationCallback;
                this.mCryptoObject = cryptoObject;
                this.mService.authenticate(this.mToken, cryptoObject != null ? cryptoObject.getOpId() : 0L, i3, this.mServiceReceiver, i2, this.mContext.getOpPackageName());
            } catch (RemoteException e2) {
                Log.w(TAG, "Remote exception while authenticating: ", e2);
                authenticationCallback.onAuthenticationError(1, getErrorString(1, 0));
            }
        }
    }

    public List<Fingerprint> getEnrolledFingerprints() {
        return getEnrolledFingerprints(UserHandle.myUserId());
    }

    public boolean hasEnrolledFingerprints(int i2) {
        IFingerprintService iFingerprintService = this.mService;
        if (iFingerprintService == null) {
            return false;
        }
        try {
            return iFingerprintService.hasEnrolledFingerprints(i2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }
}
