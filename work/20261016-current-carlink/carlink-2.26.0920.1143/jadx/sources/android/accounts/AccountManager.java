package android.accounts;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.res.Resources;
import android.database.SQLException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import com.android.internal.R;
import com.google.android.collect.Maps;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class AccountManager {
    public static final String ACCOUNT_ACCESS_TOKEN_TYPE = "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE";
    public static final String ACTION_ACCOUNT_REMOVED = "android.accounts.action.ACCOUNT_REMOVED";
    public static final String ACTION_AUTHENTICATOR_INTENT = "android.accounts.AccountAuthenticator";
    public static final String ACTION_VISIBLE_ACCOUNTS_CHANGED = "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED";
    public static final String AUTHENTICATOR_ATTRIBUTES_NAME = "account-authenticator";
    public static final String AUTHENTICATOR_META_DATA_NAME = "android.accounts.AccountAuthenticator";
    public static final int ERROR_CODE_BAD_ARGUMENTS = 7;
    public static final int ERROR_CODE_BAD_AUTHENTICATION = 9;
    public static final int ERROR_CODE_BAD_REQUEST = 8;
    public static final int ERROR_CODE_CANCELED = 4;
    public static final int ERROR_CODE_INVALID_RESPONSE = 5;
    public static final int ERROR_CODE_MANAGEMENT_DISABLED_FOR_ACCOUNT_TYPE = 101;
    public static final int ERROR_CODE_NETWORK_ERROR = 3;
    public static final int ERROR_CODE_REMOTE_EXCEPTION = 1;
    public static final int ERROR_CODE_UNSUPPORTED_OPERATION = 6;
    public static final int ERROR_CODE_USER_RESTRICTED = 100;
    public static final String KEY_ACCOUNTS = "accounts";
    public static final String KEY_ACCOUNT_ACCESS_ID = "accountAccessId";
    public static final String KEY_ACCOUNT_AUTHENTICATOR_RESPONSE = "accountAuthenticatorResponse";
    public static final String KEY_ACCOUNT_MANAGER_RESPONSE = "accountManagerResponse";
    public static final String KEY_ACCOUNT_NAME = "authAccount";
    public static final String KEY_ACCOUNT_SESSION_BUNDLE = "accountSessionBundle";
    public static final String KEY_ACCOUNT_STATUS_TOKEN = "accountStatusToken";
    public static final String KEY_ACCOUNT_TYPE = "accountType";
    public static final String KEY_ANDROID_PACKAGE_NAME = "androidPackageName";
    public static final String KEY_AUTHENTICATOR_TYPES = "authenticator_types";
    public static final String KEY_AUTHTOKEN = "authtoken";
    public static final String KEY_AUTH_FAILED_MESSAGE = "authFailedMessage";
    public static final String KEY_AUTH_TOKEN_LABEL = "authTokenLabelKey";
    public static final String KEY_BOOLEAN_RESULT = "booleanResult";
    public static final String KEY_CALLER_PID = "callerPid";
    public static final String KEY_CALLER_UID = "callerUid";
    public static final String KEY_ERROR_CODE = "errorCode";
    public static final String KEY_ERROR_MESSAGE = "errorMessage";
    public static final String KEY_INTENT = "intent";
    public static final String KEY_LAST_AUTHENTICATED_TIME = "lastAuthenticatedTime";
    public static final String KEY_NOTIFY_ON_FAILURE = "notifyOnAuthFailure";
    public static final String KEY_PASSWORD = "password";
    public static final String KEY_USERDATA = "userdata";
    public static final String LOGIN_ACCOUNTS_CHANGED_ACTION = "android.accounts.LOGIN_ACCOUNTS_CHANGED";
    public static final String PACKAGE_NAME_KEY_LEGACY_NOT_VISIBLE = "android:accounts:key_legacy_not_visible";
    public static final String PACKAGE_NAME_KEY_LEGACY_VISIBLE = "android:accounts:key_legacy_visible";
    private static final String TAG = "AccountManager";
    public static final int VISIBILITY_NOT_VISIBLE = 3;
    public static final int VISIBILITY_UNDEFINED = 0;
    public static final int VISIBILITY_USER_MANAGED_NOT_VISIBLE = 4;
    public static final int VISIBILITY_USER_MANAGED_VISIBLE = 2;
    public static final int VISIBILITY_VISIBLE = 1;
    private final Context mContext;
    private final Handler mMainHandler;
    private final IAccountManager mService;
    private final HashMap<OnAccountsUpdateListener, Handler> mAccountsUpdatedListeners = Maps.newHashMap();
    private final HashMap<OnAccountsUpdateListener, Set<String>> mAccountsUpdatedListenersTypes = Maps.newHashMap();
    private final BroadcastReceiver mAccountsChangedBroadcastReceiver = new BroadcastReceiver() { // from class: android.accounts.AccountManager.20
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Account[] accounts = AccountManager.this.getAccounts();
            synchronized (AccountManager.this.mAccountsUpdatedListeners) {
                for (Map.Entry entry : AccountManager.this.mAccountsUpdatedListeners.entrySet()) {
                    AccountManager.this.postToHandler((Handler) entry.getValue(), (OnAccountsUpdateListener) entry.getKey(), accounts);
                }
            }
        }
    };

    @Retention(RetentionPolicy.SOURCE)
    public @interface AccountVisibility {
    }

    public abstract class AmsTask extends FutureTask<Bundle> implements AccountManagerFuture<Bundle> {
        final Activity mActivity;
        final AccountManagerCallback<Bundle> mCallback;
        final Handler mHandler;
        final IAccountManagerResponse mResponse;

        public class Response extends IAccountManagerResponse.Stub {
            private Response() {
            }

            @Override // android.accounts.IAccountManagerResponse
            public void onError(int i2, String str) {
                if (i2 == 4 || i2 == 100 || i2 == 101) {
                    AmsTask.this.cancel(true);
                } else {
                    AmsTask amsTask = AmsTask.this;
                    amsTask.setException(AccountManager.this.convertErrorToException(i2, str));
                }
            }

            @Override // android.accounts.IAccountManagerResponse
            public void onResult(Bundle bundle) {
                Activity activity;
                Intent intent = (Intent) bundle.getParcelable("intent");
                if (intent != null && (activity = AmsTask.this.mActivity) != null) {
                    activity.startActivity(intent);
                } else {
                    if (!bundle.getBoolean("retry")) {
                        AmsTask.this.set(bundle);
                        return;
                    }
                    try {
                        AmsTask.this.doWork();
                    } catch (RemoteException e2) {
                        throw e2.rethrowFromSystemServer();
                    }
                }
            }
        }

        public AmsTask(Activity activity, Handler handler, AccountManagerCallback<Bundle> accountManagerCallback) {
            super(new Callable<Bundle>() { // from class: android.accounts.AccountManager.AmsTask.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public Bundle call() {
                    throw new IllegalStateException("this should never be called");
                }
            });
            this.mHandler = handler;
            this.mCallback = accountManagerCallback;
            this.mActivity = activity;
            this.mResponse = new Response();
        }

        private Bundle internalGetResult(Long l2, TimeUnit timeUnit) throws OperationCanceledException {
            if (!isDone()) {
                AccountManager.this.ensureNotOnMainThread();
            }
            try {
                try {
                    try {
                        if (l2 == null) {
                            Bundle bundle = get();
                            cancel(true);
                            return bundle;
                        }
                        Bundle bundle2 = get(l2.longValue(), timeUnit);
                        cancel(true);
                        return bundle2;
                    } catch (Throwable th) {
                        cancel(true);
                        throw th;
                    }
                } catch (InterruptedException | TimeoutException unused) {
                    cancel(true);
                    throw new OperationCanceledException();
                }
            } catch (CancellationException unused2) {
                throw new OperationCanceledException();
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                if (cause instanceof UnsupportedOperationException) {
                    throw new AuthenticatorException(cause);
                }
                if (cause instanceof AuthenticatorException) {
                    throw ((AuthenticatorException) cause);
                }
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new IllegalStateException(cause);
            }
        }

        public abstract void doWork();

        @Override // java.util.concurrent.FutureTask
        public void done() {
            AccountManagerCallback<Bundle> accountManagerCallback = this.mCallback;
            if (accountManagerCallback != null) {
                AccountManager.this.postToHandler(this.mHandler, accountManagerCallback, this);
            }
        }

        public final AccountManagerFuture<Bundle> start() {
            try {
                doWork();
            } catch (RemoteException e2) {
                setException(e2);
            }
            return this;
        }

        @Override // java.util.concurrent.FutureTask
        public void set(Bundle bundle) {
            if (bundle == null) {
                Log.e(AccountManager.TAG, "the bundle must not be null", new Exception());
            }
            super.set(bundle);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.accounts.AccountManagerFuture
        public Bundle getResult() {
            return internalGetResult(null, null);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.accounts.AccountManagerFuture
        public Bundle getResult(long j2, TimeUnit timeUnit) {
            return internalGetResult(Long.valueOf(j2), timeUnit);
        }
    }

    public abstract class BaseFutureTask<T> extends FutureTask<T> {
        final Handler mHandler;
        public final IAccountManagerResponse mResponse;

        public class Response extends IAccountManagerResponse.Stub {
            public Response() {
            }

            @Override // android.accounts.IAccountManagerResponse
            public void onError(int i2, String str) {
                if (i2 == 4 || i2 == 100 || i2 == 101) {
                    BaseFutureTask.this.cancel(true);
                } else {
                    BaseFutureTask baseFutureTask = BaseFutureTask.this;
                    baseFutureTask.setException(AccountManager.this.convertErrorToException(i2, str));
                }
            }

            @Override // android.accounts.IAccountManagerResponse
            public void onResult(Bundle bundle) {
                try {
                    Object objBundleToResult = BaseFutureTask.this.bundleToResult(bundle);
                    if (objBundleToResult == null) {
                        return;
                    }
                    BaseFutureTask.this.set(objBundleToResult);
                } catch (AuthenticatorException | ClassCastException unused) {
                    onError(5, "no result in response");
                }
            }
        }

        public BaseFutureTask(Handler handler) {
            super(new Callable<T>() { // from class: android.accounts.AccountManager.BaseFutureTask.1
                @Override // java.util.concurrent.Callable
                public T call() {
                    throw new IllegalStateException("this should never be called");
                }
            });
            this.mHandler = handler;
            this.mResponse = new Response();
        }

        public abstract T bundleToResult(Bundle bundle);

        public abstract void doWork();

        public void postRunnableToHandler(Runnable runnable) {
            Handler handler = this.mHandler;
            if (handler == null) {
                handler = AccountManager.this.mMainHandler;
            }
            handler.post(runnable);
        }

        public void startTask() {
            try {
                doWork();
            } catch (RemoteException e2) {
                setException(e2);
            }
        }
    }

    public abstract class Future2Task<T> extends BaseFutureTask<T> implements AccountManagerFuture<T> {
        final AccountManagerCallback<T> mCallback;

        public Future2Task(Handler handler, AccountManagerCallback<T> accountManagerCallback) {
            super(handler);
            this.mCallback = accountManagerCallback;
        }

        private T internalGetResult(Long l2, TimeUnit timeUnit) throws OperationCanceledException {
            if (!isDone()) {
                AccountManager.this.ensureNotOnMainThread();
            }
            try {
                try {
                    try {
                        if (l2 == null) {
                            T t2 = get();
                            cancel(true);
                            return t2;
                        }
                        T t3 = get(l2.longValue(), timeUnit);
                        cancel(true);
                        return t3;
                    } catch (InterruptedException | CancellationException | TimeoutException unused) {
                        cancel(true);
                        throw new OperationCanceledException();
                    }
                } catch (ExecutionException e2) {
                    Throwable cause = e2.getCause();
                    if (cause instanceof IOException) {
                        throw ((IOException) cause);
                    }
                    if (cause instanceof UnsupportedOperationException) {
                        throw new AuthenticatorException(cause);
                    }
                    if (cause instanceof AuthenticatorException) {
                        throw ((AuthenticatorException) cause);
                    }
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    }
                    if (cause instanceof Error) {
                        throw ((Error) cause);
                    }
                    throw new IllegalStateException(cause);
                }
            } catch (Throwable th) {
                cancel(true);
                throw th;
            }
        }

        @Override // java.util.concurrent.FutureTask
        public void done() {
            if (this.mCallback != null) {
                postRunnableToHandler(new Runnable() { // from class: android.accounts.AccountManager.Future2Task.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Future2Task future2Task = Future2Task.this;
                        future2Task.mCallback.run(future2Task);
                    }
                });
            }
        }

        @Override // android.accounts.AccountManagerFuture
        public T getResult() {
            return internalGetResult(null, null);
        }

        public Future2Task<T> start() {
            startTask();
            return this;
        }

        @Override // android.accounts.AccountManagerFuture
        public T getResult(long j2, TimeUnit timeUnit) {
            return internalGetResult(Long.valueOf(j2), timeUnit);
        }
    }

    public class GetAuthTokenByTypeAndFeaturesTask extends AmsTask implements AccountManagerCallback<Bundle> {
        final String mAccountType;
        final Bundle mAddAccountOptions;
        final String mAuthTokenType;
        final String[] mFeatures;
        volatile AccountManagerFuture<Bundle> mFuture;
        final Bundle mLoginOptions;
        final AccountManagerCallback<Bundle> mMyCallback;
        private volatile int mNumAccounts;

        public GetAuthTokenByTypeAndFeaturesTask(String str, String str2, String[] strArr, Activity activity, Bundle bundle, Bundle bundle2, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
            super(activity, handler, accountManagerCallback);
            this.mFuture = null;
            this.mNumAccounts = 0;
            if (str == null) {
                throw new IllegalArgumentException("account type is null");
            }
            this.mAccountType = str;
            this.mAuthTokenType = str2;
            this.mFeatures = strArr;
            this.mAddAccountOptions = bundle;
            this.mLoginOptions = bundle2;
            this.mMyCallback = this;
        }

        @Override // android.accounts.AccountManager.AmsTask
        public void doWork() {
            AccountManager.this.getAccountByTypeAndFeatures(this.mAccountType, this.mFeatures, new AccountManagerCallback<Bundle>() { // from class: android.accounts.AccountManager.GetAuthTokenByTypeAndFeaturesTask.1
                @Override // android.accounts.AccountManagerCallback
                public void run(AccountManagerFuture<Bundle> accountManagerFuture) {
                    try {
                        Bundle result = accountManagerFuture.getResult();
                        String string = result.getString(AccountManager.KEY_ACCOUNT_NAME);
                        String string2 = result.getString("accountType");
                        if (string != null) {
                            GetAuthTokenByTypeAndFeaturesTask.this.mNumAccounts = 1;
                            Account account = new Account(string, string2);
                            GetAuthTokenByTypeAndFeaturesTask getAuthTokenByTypeAndFeaturesTask = GetAuthTokenByTypeAndFeaturesTask.this;
                            Activity activity = getAuthTokenByTypeAndFeaturesTask.mActivity;
                            if (activity == null) {
                                getAuthTokenByTypeAndFeaturesTask.mFuture = AccountManager.this.getAuthToken(account, getAuthTokenByTypeAndFeaturesTask.mAuthTokenType, false, getAuthTokenByTypeAndFeaturesTask.mMyCallback, getAuthTokenByTypeAndFeaturesTask.mHandler);
                                return;
                            } else {
                                getAuthTokenByTypeAndFeaturesTask.mFuture = AccountManager.this.getAuthToken(account, getAuthTokenByTypeAndFeaturesTask.mAuthTokenType, getAuthTokenByTypeAndFeaturesTask.mLoginOptions, activity, getAuthTokenByTypeAndFeaturesTask.mMyCallback, getAuthTokenByTypeAndFeaturesTask.mHandler);
                                return;
                            }
                        }
                        GetAuthTokenByTypeAndFeaturesTask getAuthTokenByTypeAndFeaturesTask2 = GetAuthTokenByTypeAndFeaturesTask.this;
                        Activity activity2 = getAuthTokenByTypeAndFeaturesTask2.mActivity;
                        if (activity2 != null) {
                            getAuthTokenByTypeAndFeaturesTask2.mFuture = AccountManager.this.addAccount(getAuthTokenByTypeAndFeaturesTask2.mAccountType, getAuthTokenByTypeAndFeaturesTask2.mAuthTokenType, getAuthTokenByTypeAndFeaturesTask2.mFeatures, getAuthTokenByTypeAndFeaturesTask2.mAddAccountOptions, activity2, getAuthTokenByTypeAndFeaturesTask2.mMyCallback, getAuthTokenByTypeAndFeaturesTask2.mHandler);
                            return;
                        }
                        Bundle bundle = new Bundle();
                        bundle.putString(AccountManager.KEY_ACCOUNT_NAME, null);
                        bundle.putString("accountType", null);
                        bundle.putString(AccountManager.KEY_AUTHTOKEN, null);
                        bundle.putBinder(AccountManager.KEY_ACCOUNT_ACCESS_ID, null);
                        try {
                            GetAuthTokenByTypeAndFeaturesTask.this.mResponse.onResult(bundle);
                        } catch (RemoteException unused) {
                        }
                    } catch (AuthenticatorException e2) {
                        GetAuthTokenByTypeAndFeaturesTask.this.setException(e2);
                    } catch (OperationCanceledException e3) {
                        GetAuthTokenByTypeAndFeaturesTask.this.setException(e3);
                    } catch (IOException e4) {
                        GetAuthTokenByTypeAndFeaturesTask.this.setException(e4);
                    }
                }
            }, this.mHandler);
        }

        @Override // android.accounts.AccountManagerCallback
        public void run(AccountManagerFuture<Bundle> accountManagerFuture) {
            try {
                Bundle result = accountManagerFuture.getResult();
                if (this.mNumAccounts != 0) {
                    set(result);
                    return;
                }
                String string = result.getString(AccountManager.KEY_ACCOUNT_NAME);
                String string2 = result.getString("accountType");
                if (!TextUtils.isEmpty(string) && !TextUtils.isEmpty(string2)) {
                    Account account = new Account(string, string2, result.getString(AccountManager.KEY_ACCOUNT_ACCESS_ID));
                    this.mNumAccounts = 1;
                    AccountManager.this.getAuthToken(account, this.mAuthTokenType, (Bundle) null, this.mActivity, this.mMyCallback, this.mHandler);
                    return;
                }
                setException(new AuthenticatorException("account not in result"));
            } catch (AuthenticatorException e2) {
                setException(e2);
            } catch (OperationCanceledException unused) {
                cancel(true);
            } catch (IOException e3) {
                setException(e3);
            }
        }
    }

    public AccountManager(Context context, IAccountManager iAccountManager) {
        this.mContext = context;
        this.mService = iAccountManager;
        this.mMainHandler = new Handler(context.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Exception convertErrorToException(int i2, String str) {
        if (i2 == 3) {
            return new IOException(str);
        }
        if (i2 == 6) {
            return new UnsupportedOperationException(str);
        }
        if (i2 == 5) {
            return new AuthenticatorException(str);
        }
        return i2 == 7 ? new IllegalArgumentException(str) : new AuthenticatorException(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ensureNotOnMainThread() {
        Looper looperMyLooper = Looper.myLooper();
        if (looperMyLooper == null || looperMyLooper != this.mContext.getMainLooper()) {
            return;
        }
        IllegalStateException illegalStateException = new IllegalStateException("calling this from your main thread can lead to deadlock");
        Log.e(TAG, "calling this from your main thread can lead to deadlock and/or ANRs", illegalStateException);
        if (this.mContext.getApplicationInfo().targetSdkVersion >= 8) {
            throw illegalStateException;
        }
    }

    public static AccountManager get(Context context) {
        if (context != null) {
            return (AccountManager) context.getSystemService("account");
        }
        throw new IllegalArgumentException("context is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void getAccountByTypeAndFeatures(final String str, final String[] strArr, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        new AmsTask(null, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.19
            @Override // android.accounts.AccountManager.AmsTask
            public void doWork() {
                AccountManager.this.mService.getAccountByTypeAndFeatures(this.mResponse, str, strArr, AccountManager.this.mContext.getOpPackageName());
            }
        }.start();
    }

    @Deprecated
    public static Intent newChooseAccountIntent(Account account, ArrayList<Account> arrayList, String[] strArr, boolean z2, String str, String str2, String[] strArr2, Bundle bundle) {
        return newChooseAccountIntent(account, arrayList, strArr, str, str2, strArr2, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postToHandler(Handler handler, final AccountManagerCallback<Bundle> accountManagerCallback, final AccountManagerFuture<Bundle> accountManagerFuture) {
        if (handler == null) {
            handler = this.mMainHandler;
        }
        handler.post(new Runnable() { // from class: android.accounts.AccountManager.17
            @Override // java.lang.Runnable
            public void run() {
                accountManagerCallback.run(accountManagerFuture);
            }
        });
    }

    public static Bundle sanitizeResult(Bundle bundle) {
        if (bundle == null || !bundle.containsKey(KEY_AUTHTOKEN) || TextUtils.isEmpty(bundle.getString(KEY_AUTHTOKEN))) {
            return bundle;
        }
        Bundle bundle2 = new Bundle(bundle);
        bundle2.putString(KEY_AUTHTOKEN, "<omitted for logging purposes>");
        return bundle2;
    }

    public AccountManagerFuture<Bundle> addAccount(final String str, final String str2, final String[] strArr, Bundle bundle, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        final Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putString(KEY_ANDROID_PACKAGE_NAME, this.mContext.getPackageName());
        return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.11
            @Override // android.accounts.AccountManager.AmsTask
            public void doWork() {
                AccountManager.this.mService.addAccount(this.mResponse, str, str2, strArr, activity != null, bundle2);
            }
        }.start();
    }

    public AccountManagerFuture<Bundle> addAccountAsUser(final String str, final String str2, final String[] strArr, Bundle bundle, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler, final UserHandle userHandle) {
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        if (userHandle == null) {
            throw new IllegalArgumentException("userHandle is null");
        }
        final Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putString(KEY_ANDROID_PACKAGE_NAME, this.mContext.getPackageName());
        return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.12
            @Override // android.accounts.AccountManager.AmsTask
            public void doWork() {
                AccountManager.this.mService.addAccountAsUser(this.mResponse, str, str2, strArr, activity != null, bundle2, userHandle.getIdentifier());
            }
        }.start();
    }

    public boolean addAccountExplicitly(Account account, String str, Bundle bundle) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            return this.mService.addAccountExplicitly(account, str, bundle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void addOnAccountsUpdatedListener(OnAccountsUpdateListener onAccountsUpdateListener, Handler handler, boolean z2) {
        addOnAccountsUpdatedListener(onAccountsUpdateListener, handler, z2, null);
    }

    public void addSharedAccountsFromParentUser(UserHandle userHandle, UserHandle userHandle2) {
        try {
            this.mService.addSharedAccountsFromParentUser(userHandle.getIdentifier(), userHandle2.getIdentifier(), this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String blockingGetAuthToken(Account account, String str, boolean z2) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("authTokenType is null");
        }
        Bundle result = getAuthToken(account, str, z2, null, null).getResult();
        if (result != null) {
            return result.getString(KEY_AUTHTOKEN);
        }
        Log.e(TAG, "blockingGetAuthToken: null was returned from getResult() for " + account + ", authTokenType " + str);
        return null;
    }

    public void clearPassword(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            this.mService.clearPassword(account);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AccountManagerFuture<Bundle> confirmCredentials(Account account, Bundle bundle, Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        return confirmCredentialsAsUser(account, bundle, activity, accountManagerCallback, handler, Process.myUserHandle());
    }

    public AccountManagerFuture<Bundle> confirmCredentialsAsUser(final Account account, final Bundle bundle, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler, UserHandle userHandle) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        final int identifier = userHandle.getIdentifier();
        return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.14
            @Override // android.accounts.AccountManager.AmsTask
            public void doWork() {
                AccountManager.this.mService.confirmCredentialsAsUser(this.mResponse, account, bundle, activity != null, identifier);
            }
        }.start();
    }

    public AccountManagerFuture<Boolean> copyAccountToUser(final Account account, final UserHandle userHandle, final UserHandle userHandle2, AccountManagerCallback<Boolean> accountManagerCallback, Handler handler) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (userHandle2 == null || userHandle == null) {
            throw new IllegalArgumentException("fromUser and toUser cannot be null");
        }
        return new Future2Task<Boolean>(handler, accountManagerCallback) { // from class: android.accounts.AccountManager.13
            @Override // android.accounts.AccountManager.BaseFutureTask
            public void doWork() {
                AccountManager.this.mService.copyAccountToUser(this.mResponse, account, userHandle.getIdentifier(), userHandle2.getIdentifier());
            }

            @Override // android.accounts.AccountManager.BaseFutureTask
            public Boolean bundleToResult(Bundle bundle) throws AuthenticatorException {
                if (bundle.containsKey(AccountManager.KEY_BOOLEAN_RESULT)) {
                    return Boolean.valueOf(bundle.getBoolean(AccountManager.KEY_BOOLEAN_RESULT));
                }
                throw new AuthenticatorException("no result in response");
            }
        }.start();
    }

    public IntentSender createRequestAccountAccessIntentSenderAsUser(Account account, String str, UserHandle userHandle) {
        try {
            return this.mService.createRequestAccountAccessIntentSenderAsUser(account, str, userHandle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AccountManagerFuture<Bundle> editProperties(final String str, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (str != null) {
            return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.16
                @Override // android.accounts.AccountManager.AmsTask
                public void doWork() {
                    AccountManager.this.mService.editProperties(this.mResponse, str, activity != null);
                }
            }.start();
        }
        throw new IllegalArgumentException("accountType is null");
    }

    public AccountManagerFuture<Bundle> finishSession(Bundle bundle, Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        return finishSessionAsUser(bundle, activity, Process.myUserHandle(), accountManagerCallback, handler);
    }

    public AccountManagerFuture<Bundle> finishSessionAsUser(final Bundle bundle, final Activity activity, final UserHandle userHandle, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (bundle == null) {
            throw new IllegalArgumentException("sessionBundle is null");
        }
        final Bundle bundle2 = new Bundle();
        bundle2.putString(KEY_ANDROID_PACKAGE_NAME, this.mContext.getPackageName());
        return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.23
            @Override // android.accounts.AccountManager.AmsTask
            public void doWork() {
                AccountManager.this.mService.finishSessionAsUser(this.mResponse, bundle, activity != null, bundle2, userHandle.getIdentifier());
            }
        }.start();
    }

    public int getAccountVisibility(Account account, String str) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            return this.mService.getAccountVisibility(account, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Account[] getAccounts() {
        try {
            return this.mService.getAccounts(null, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Map<Account, Integer> getAccountsAndVisibilityForPackage(String str, String str2) {
        try {
            return this.mService.getAccountsAndVisibilityForPackage(str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Account[] getAccountsAsUser(int i2) {
        try {
            return this.mService.getAccountsAsUser(null, i2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Account[] getAccountsByType(String str) {
        return getAccountsByTypeAsUser(str, Process.myUserHandle());
    }

    public AccountManagerFuture<Account[]> getAccountsByTypeAndFeatures(final String str, final String[] strArr, AccountManagerCallback<Account[]> accountManagerCallback, Handler handler) {
        if (str != null) {
            return new Future2Task<Account[]>(handler, accountManagerCallback) { // from class: android.accounts.AccountManager.3
                @Override // android.accounts.AccountManager.BaseFutureTask
                public void doWork() {
                    AccountManager.this.mService.getAccountsByFeatures(this.mResponse, str, strArr, AccountManager.this.mContext.getOpPackageName());
                }

                @Override // android.accounts.AccountManager.BaseFutureTask
                public Account[] bundleToResult(Bundle bundle) throws AuthenticatorException {
                    if (!bundle.containsKey(AccountManager.KEY_ACCOUNTS)) {
                        throw new AuthenticatorException("no result in response");
                    }
                    Parcelable[] parcelableArray = bundle.getParcelableArray(AccountManager.KEY_ACCOUNTS);
                    Account[] accountArr = new Account[parcelableArray.length];
                    for (int i2 = 0; i2 < parcelableArray.length; i2++) {
                        accountArr[i2] = (Account) parcelableArray[i2];
                    }
                    return accountArr;
                }
            }.start();
        }
        throw new IllegalArgumentException("type is null");
    }

    public Account[] getAccountsByTypeAsUser(String str, UserHandle userHandle) {
        try {
            return this.mService.getAccountsAsUser(str, userHandle.getIdentifier(), this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Account[] getAccountsByTypeForPackage(String str, String str2) {
        try {
            return this.mService.getAccountsByTypeForPackage(str, str2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Account[] getAccountsForPackage(String str, int i2) {
        try {
            return this.mService.getAccountsForPackage(str, i2, this.mContext.getOpPackageName());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AccountManagerFuture<Bundle> getAuthToken(final Account account, final String str, Bundle bundle, Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("authTokenType is null");
        }
        final Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putString(KEY_ANDROID_PACKAGE_NAME, this.mContext.getPackageName());
        return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.9
            @Override // android.accounts.AccountManager.AmsTask
            public void doWork() {
                AccountManager.this.mService.getAuthToken(this.mResponse, account, str, false, true, bundle2);
            }
        }.start();
    }

    public AccountManagerFuture<Bundle> getAuthTokenByFeatures(String str, String str2, String[] strArr, Activity activity, Bundle bundle, Bundle bundle2, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (str == null) {
            throw new IllegalArgumentException("account type is null");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("authTokenType is null");
        }
        GetAuthTokenByTypeAndFeaturesTask getAuthTokenByTypeAndFeaturesTask = new GetAuthTokenByTypeAndFeaturesTask(str, str2, strArr, activity, bundle, bundle2, accountManagerCallback, handler);
        getAuthTokenByTypeAndFeaturesTask.start();
        return getAuthTokenByTypeAndFeaturesTask;
    }

    public AccountManagerFuture<String> getAuthTokenLabel(final String str, final String str2, AccountManagerCallback<String> accountManagerCallback, Handler handler) {
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        if (str2 != null) {
            return new Future2Task<String>(handler, accountManagerCallback) { // from class: android.accounts.AccountManager.1
                @Override // android.accounts.AccountManager.BaseFutureTask
                public void doWork() {
                    AccountManager.this.mService.getAuthTokenLabel(this.mResponse, str, str2);
                }

                @Override // android.accounts.AccountManager.BaseFutureTask
                public String bundleToResult(Bundle bundle) throws AuthenticatorException {
                    if (bundle.containsKey(AccountManager.KEY_AUTH_TOKEN_LABEL)) {
                        return bundle.getString(AccountManager.KEY_AUTH_TOKEN_LABEL);
                    }
                    throw new AuthenticatorException("no result in response");
                }
            }.start();
        }
        throw new IllegalArgumentException("authTokenType is null");
    }

    public AuthenticatorDescription[] getAuthenticatorTypes() {
        try {
            return this.mService.getAuthenticatorTypes(UserHandle.getCallingUserId());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AuthenticatorDescription[] getAuthenticatorTypesAsUser(int i2) {
        try {
            return this.mService.getAuthenticatorTypes(i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Map<String, Integer> getPackagesAndVisibilityForAccount(Account account) {
        try {
            if (account != null) {
                return this.mService.getPackagesAndVisibilityForAccount(account);
            }
            throw new IllegalArgumentException("account is null");
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getPassword(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            return this.mService.getPassword(account);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getPreviousName(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            return this.mService.getPreviousName(account);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public Account[] getSharedAccounts(UserHandle userHandle) {
        try {
            return this.mService.getSharedAccountsAsUser(userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String getUserData(Account account, String str) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("key is null");
        }
        try {
            return this.mService.getUserData(account, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean hasAccountAccess(Account account, String str, UserHandle userHandle) {
        try {
            return this.mService.hasAccountAccess(account, str, userHandle);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AccountManagerFuture<Boolean> hasFeatures(final Account account, final String[] strArr, AccountManagerCallback<Boolean> accountManagerCallback, Handler handler) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (strArr != null) {
            return new Future2Task<Boolean>(handler, accountManagerCallback) { // from class: android.accounts.AccountManager.2
                @Override // android.accounts.AccountManager.BaseFutureTask
                public void doWork() {
                    AccountManager.this.mService.hasFeatures(this.mResponse, account, strArr, AccountManager.this.mContext.getOpPackageName());
                }

                @Override // android.accounts.AccountManager.BaseFutureTask
                public Boolean bundleToResult(Bundle bundle) throws AuthenticatorException {
                    if (bundle.containsKey(AccountManager.KEY_BOOLEAN_RESULT)) {
                        return Boolean.valueOf(bundle.getBoolean(AccountManager.KEY_BOOLEAN_RESULT));
                    }
                    throw new AuthenticatorException("no result in response");
                }
            }.start();
        }
        throw new IllegalArgumentException("features is null");
    }

    public void invalidateAuthToken(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        if (str2 != null) {
            try {
                this.mService.invalidateAuthToken(str, str2);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public AccountManagerFuture<Boolean> isCredentialsUpdateSuggested(final Account account, final String str, AccountManagerCallback<Boolean> accountManagerCallback, Handler handler) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("status token is empty");
        }
        return new Future2Task<Boolean>(handler, accountManagerCallback) { // from class: android.accounts.AccountManager.24
            @Override // android.accounts.AccountManager.BaseFutureTask
            public void doWork() {
                AccountManager.this.mService.isCredentialsUpdateSuggested(this.mResponse, account, str);
            }

            @Override // android.accounts.AccountManager.BaseFutureTask
            public Boolean bundleToResult(Bundle bundle) throws AuthenticatorException {
                if (bundle.containsKey(AccountManager.KEY_BOOLEAN_RESULT)) {
                    return Boolean.valueOf(bundle.getBoolean(AccountManager.KEY_BOOLEAN_RESULT));
                }
                throw new AuthenticatorException("no result in response");
            }
        }.start();
    }

    public boolean notifyAccountAuthenticated(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            return this.mService.accountAuthenticated(account);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public String peekAuthToken(Account account, String str) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("authTokenType is null");
        }
        try {
            return this.mService.peekAuthToken(account, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    @Deprecated
    public AccountManagerFuture<Boolean> removeAccount(final Account account, AccountManagerCallback<Boolean> accountManagerCallback, Handler handler) {
        if (account != null) {
            return new Future2Task<Boolean>(handler, accountManagerCallback) { // from class: android.accounts.AccountManager.5
                @Override // android.accounts.AccountManager.BaseFutureTask
                public void doWork() {
                    AccountManager.this.mService.removeAccount(this.mResponse, account, false);
                }

                @Override // android.accounts.AccountManager.BaseFutureTask
                public Boolean bundleToResult(Bundle bundle) throws AuthenticatorException {
                    if (bundle.containsKey(AccountManager.KEY_BOOLEAN_RESULT)) {
                        return Boolean.valueOf(bundle.getBoolean(AccountManager.KEY_BOOLEAN_RESULT));
                    }
                    throw new AuthenticatorException("no result in response");
                }
            }.start();
        }
        throw new IllegalArgumentException("account is null");
    }

    @Deprecated
    public AccountManagerFuture<Boolean> removeAccountAsUser(final Account account, AccountManagerCallback<Boolean> accountManagerCallback, Handler handler, final UserHandle userHandle) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (userHandle != null) {
            return new Future2Task<Boolean>(handler, accountManagerCallback) { // from class: android.accounts.AccountManager.7
                @Override // android.accounts.AccountManager.BaseFutureTask
                public void doWork() {
                    AccountManager.this.mService.removeAccountAsUser(this.mResponse, account, false, userHandle.getIdentifier());
                }

                @Override // android.accounts.AccountManager.BaseFutureTask
                public Boolean bundleToResult(Bundle bundle) throws AuthenticatorException {
                    if (bundle.containsKey(AccountManager.KEY_BOOLEAN_RESULT)) {
                        return Boolean.valueOf(bundle.getBoolean(AccountManager.KEY_BOOLEAN_RESULT));
                    }
                    throw new AuthenticatorException("no result in response");
                }
            }.start();
        }
        throw new IllegalArgumentException("userHandle is null");
    }

    public boolean removeAccountExplicitly(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            return this.mService.removeAccountExplicitly(account);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void removeOnAccountsUpdatedListener(OnAccountsUpdateListener onAccountsUpdateListener) {
        if (onAccountsUpdateListener == null) {
            throw new IllegalArgumentException("listener is null");
        }
        synchronized (this.mAccountsUpdatedListeners) {
            if (!this.mAccountsUpdatedListeners.containsKey(onAccountsUpdateListener)) {
                Log.e(TAG, "Listener was not previously added");
                return;
            }
            Set<String> set = this.mAccountsUpdatedListenersTypes.get(onAccountsUpdateListener);
            String[] strArr = set != null ? (String[]) set.toArray(new String[set.size()]) : null;
            this.mAccountsUpdatedListeners.remove(onAccountsUpdateListener);
            this.mAccountsUpdatedListenersTypes.remove(onAccountsUpdateListener);
            if (this.mAccountsUpdatedListeners.isEmpty()) {
                this.mContext.unregisterReceiver(this.mAccountsChangedBroadcastReceiver);
            }
            try {
                this.mService.unregisterAccountListener(strArr, this.mContext.getOpPackageName());
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
    }

    public boolean removeSharedAccount(Account account, UserHandle userHandle) {
        try {
            return this.mService.removeSharedAccountAsUser(account, userHandle.getIdentifier());
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AccountManagerFuture<Account> renameAccount(final Account account, final String str, AccountManagerCallback<Account> accountManagerCallback, Handler handler) {
        if (account == null) {
            throw new IllegalArgumentException("account is null.");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("newName is empty or null.");
        }
        return new Future2Task<Account>(handler, accountManagerCallback) { // from class: android.accounts.AccountManager.4
            @Override // android.accounts.AccountManager.BaseFutureTask
            public void doWork() {
                AccountManager.this.mService.renameAccount(this.mResponse, account, str);
            }

            @Override // android.accounts.AccountManager.BaseFutureTask
            public Account bundleToResult(Bundle bundle) {
                return new Account(bundle.getString(AccountManager.KEY_ACCOUNT_NAME), bundle.getString("accountType"), bundle.getString(AccountManager.KEY_ACCOUNT_ACCESS_ID));
            }
        }.start();
    }

    public boolean setAccountVisibility(Account account, String str, int i2) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            return this.mService.setAccountVisibility(account, str, i2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setAuthToken(Account account, String str, String str2) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("authTokenType is null");
        }
        try {
            this.mService.setAuthToken(account, str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setPassword(Account account, String str) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        try {
            this.mService.setPassword(account, str);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public void setUserData(Account account, String str, String str2) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (str == null) {
            throw new IllegalArgumentException("key is null");
        }
        try {
            this.mService.setUserData(account, str, str2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public boolean someUserHasAccount(Account account) {
        try {
            return this.mService.someUserHasAccount(account);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AccountManagerFuture<Bundle> startAddAccountSession(final String str, final String str2, final String[] strArr, Bundle bundle, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (str == null) {
            throw new IllegalArgumentException("accountType is null");
        }
        final Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putString(KEY_ANDROID_PACKAGE_NAME, this.mContext.getPackageName());
        return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.21
            @Override // android.accounts.AccountManager.AmsTask
            public void doWork() {
                AccountManager.this.mService.startAddAccountSession(this.mResponse, str, str2, strArr, activity != null, bundle2);
            }
        }.start();
    }

    public AccountManagerFuture<Bundle> startUpdateCredentialsSession(final Account account, final String str, Bundle bundle, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        final Bundle bundle2 = new Bundle();
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putString(KEY_ANDROID_PACKAGE_NAME, this.mContext.getPackageName());
        return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.22
            @Override // android.accounts.AccountManager.AmsTask
            public void doWork() {
                AccountManager.this.mService.startUpdateCredentialsSession(this.mResponse, account, str, activity != null, bundle2);
            }
        }.start();
    }

    public void updateAppPermission(Account account, String str, int i2, boolean z2) {
        try {
            this.mService.updateAppPermission(account, str, i2, z2);
        } catch (RemoteException e2) {
            throw e2.rethrowFromSystemServer();
        }
    }

    public AccountManagerFuture<Bundle> updateCredentials(final Account account, final String str, final Bundle bundle, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (account != null) {
            return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.15
                @Override // android.accounts.AccountManager.AmsTask
                public void doWork() {
                    AccountManager.this.mService.updateCredentials(this.mResponse, account, str, activity != null, bundle);
                }
            }.start();
        }
        throw new IllegalArgumentException("account is null");
    }

    public static Intent newChooseAccountIntent(Account account, List<Account> list, String[] strArr, String str, String str2, String[] strArr2, Bundle bundle) {
        Intent intent = new Intent();
        ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(Resources.getSystem().getString(R.string.config_chooseTypeAndAccountActivity));
        intent.setClassName(componentNameUnflattenFromString.getPackageName(), componentNameUnflattenFromString.getClassName());
        intent.putExtra(ChooseTypeAndAccountActivity.EXTRA_ALLOWABLE_ACCOUNTS_ARRAYLIST, list == null ? null : new ArrayList(list));
        intent.putExtra(ChooseTypeAndAccountActivity.EXTRA_ALLOWABLE_ACCOUNT_TYPES_STRING_ARRAY, strArr);
        intent.putExtra(ChooseTypeAndAccountActivity.EXTRA_ADD_ACCOUNT_OPTIONS_BUNDLE, bundle);
        intent.putExtra(ChooseTypeAndAccountActivity.EXTRA_SELECTED_ACCOUNT, account);
        intent.putExtra(ChooseTypeAndAccountActivity.EXTRA_DESCRIPTION_TEXT_OVERRIDE, str);
        intent.putExtra("authTokenType", str2);
        intent.putExtra(ChooseTypeAndAccountActivity.EXTRA_ADD_ACCOUNT_REQUIRED_FEATURES_STRING_ARRAY, strArr2);
        return intent;
    }

    public void addOnAccountsUpdatedListener(OnAccountsUpdateListener onAccountsUpdateListener, Handler handler, boolean z2, String[] strArr) {
        if (onAccountsUpdateListener == null) {
            throw new IllegalArgumentException("the listener is null");
        }
        synchronized (this.mAccountsUpdatedListeners) {
            if (this.mAccountsUpdatedListeners.containsKey(onAccountsUpdateListener)) {
                throw new IllegalStateException("this listener is already added");
            }
            boolean zIsEmpty = this.mAccountsUpdatedListeners.isEmpty();
            this.mAccountsUpdatedListeners.put(onAccountsUpdateListener, handler);
            if (strArr != null) {
                this.mAccountsUpdatedListenersTypes.put(onAccountsUpdateListener, new HashSet(Arrays.asList(strArr)));
            } else {
                this.mAccountsUpdatedListenersTypes.put(onAccountsUpdateListener, null);
            }
            if (zIsEmpty) {
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction(ACTION_VISIBLE_ACCOUNTS_CHANGED);
                intentFilter.addAction(Intent.ACTION_DEVICE_STORAGE_OK);
                this.mContext.registerReceiver(this.mAccountsChangedBroadcastReceiver, intentFilter);
            }
            try {
                this.mService.registerAccountListener(strArr, this.mContext.getOpPackageName());
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        if (z2) {
            postToHandler(handler, onAccountsUpdateListener, getAccounts());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void postToHandler(Handler handler, final OnAccountsUpdateListener onAccountsUpdateListener, Account[] accountArr) {
        int length = accountArr.length;
        final Account[] accountArr2 = new Account[length];
        System.arraycopy(accountArr, 0, accountArr2, 0, length);
        if (handler == null) {
            handler = this.mMainHandler;
        }
        handler.post(new Runnable() { // from class: android.accounts.AccountManager.18
            @Override // java.lang.Runnable
            public void run() {
                synchronized (AccountManager.this.mAccountsUpdatedListeners) {
                    try {
                        if (AccountManager.this.mAccountsUpdatedListeners.containsKey(onAccountsUpdateListener)) {
                            Set set = (Set) AccountManager.this.mAccountsUpdatedListenersTypes.get(onAccountsUpdateListener);
                            if (set != null) {
                                ArrayList arrayList = new ArrayList();
                                for (Account account : accountArr2) {
                                    if (set.contains(account.type)) {
                                        arrayList.add(account);
                                    }
                                }
                                onAccountsUpdateListener.onAccountsUpdated((Account[]) arrayList.toArray(new Account[arrayList.size()]));
                            } else {
                                onAccountsUpdateListener.onAccountsUpdated(accountArr2);
                            }
                        }
                    } catch (SQLException e2) {
                        Log.e(AccountManager.TAG, "Can't update accounts", e2);
                    }
                }
            }
        });
    }

    public boolean addAccountExplicitly(Account account, String str, Bundle bundle, Map<String, Integer> map) {
        if (account != null) {
            try {
                return this.mService.addAccountExplicitlyWithVisibility(account, str, bundle, map);
            } catch (RemoteException e2) {
                throw e2.rethrowFromSystemServer();
            }
        }
        throw new IllegalArgumentException("account is null");
    }

    public AccountManagerFuture<Bundle> removeAccount(final Account account, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (account != null) {
            return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.6
                @Override // android.accounts.AccountManager.AmsTask
                public void doWork() {
                    AccountManager.this.mService.removeAccount(this.mResponse, account, activity != null);
                }
            }.start();
        }
        throw new IllegalArgumentException("account is null");
    }

    public AccountManagerFuture<Bundle> removeAccountAsUser(final Account account, final Activity activity, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler, final UserHandle userHandle) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (userHandle != null) {
            return new AmsTask(activity, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.8
                @Override // android.accounts.AccountManager.AmsTask
                public void doWork() {
                    AccountManager.this.mService.removeAccountAsUser(this.mResponse, account, activity != null, userHandle.getIdentifier());
                }
            }.start();
        }
        throw new IllegalArgumentException("userHandle is null");
    }

    public AccountManager(Context context, IAccountManager iAccountManager, Handler handler) {
        this.mContext = context;
        this.mService = iAccountManager;
        this.mMainHandler = handler;
    }

    @Deprecated
    public AccountManagerFuture<Bundle> getAuthToken(Account account, String str, boolean z2, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        return getAuthToken(account, str, (Bundle) null, z2, accountManagerCallback, handler);
    }

    public AccountManagerFuture<Bundle> getAuthToken(final Account account, final String str, Bundle bundle, final boolean z2, AccountManagerCallback<Bundle> accountManagerCallback, Handler handler) {
        if (account == null) {
            throw new IllegalArgumentException("account is null");
        }
        if (str != null) {
            final Bundle bundle2 = new Bundle();
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            bundle2.putString(KEY_ANDROID_PACKAGE_NAME, this.mContext.getPackageName());
            return new AmsTask(null, handler, accountManagerCallback) { // from class: android.accounts.AccountManager.10
                @Override // android.accounts.AccountManager.AmsTask
                public void doWork() {
                    AccountManager.this.mService.getAuthToken(this.mResponse, account, str, z2, false, bundle2);
                }
            }.start();
        }
        throw new IllegalArgumentException("authTokenType is null");
    }
}
