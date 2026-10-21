package android.app;

import android.app.assist.AssistContent;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.media.session.MediaController;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcelable;
import android.os.PersistableBundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.StrictMode;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
import android.transition.Scene;
import android.transition.TransitionManager;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.EventLog;
import android.util.Log;
import android.util.PrintWriterPrinter;
import android.util.SparseArray;
import android.util.SuperNotCalledException;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.DragAndDropPermissions;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.KeyboardShortcutInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityEvent;
import android.view.autofill.AutofillManager;
import android.view.autofill.AutofillPopupWindow;
import android.view.autofill.IAutofillWindowPresenter;
import android.webkit.WebView;
import android.widget.Toast;
import android.widget.Toolbar;
import com.android.internal.R;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.app.IVoiceInteractor;
import com.android.internal.app.ToolbarActionBar;
import com.android.internal.app.WindowDecorActionBar;
import com.android.internal.policy.DecorView;
import com.android.internal.policy.PhoneWindow;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Activity extends ContextThemeWrapper implements LayoutInflater.Factory2, Window.Callback, KeyEvent.Callback, View.OnCreateContextMenuListener, ComponentCallbacks2, Window.OnWindowDismissedCallback, Window.WindowControllerCallback, AutofillManager.AutofillClient {
    private static final String AUTOFILL_RESET_NEEDED = "@android:autofillResetNeeded";
    private static final String AUTO_FILL_AUTH_WHO_PREFIX = "@android:autoFillAuth:";
    private static final boolean DEBUG_LIFECYCLE = false;
    public static final int DEFAULT_KEYS_DIALER = 1;
    public static final int DEFAULT_KEYS_DISABLE = 0;
    public static final int DEFAULT_KEYS_SEARCH_GLOBAL = 4;
    public static final int DEFAULT_KEYS_SEARCH_LOCAL = 3;
    public static final int DEFAULT_KEYS_SHORTCUT = 2;
    public static final int DONT_FINISH_TASK_WITH_ACTIVITY = 0;
    public static final int FINISH_TASK_WITH_ACTIVITY = 2;
    public static final int FINISH_TASK_WITH_ROOT_ACTIVITY = 1;
    protected static final int[] FOCUSED_STATE_SET = {16842908};
    static final String FRAGMENTS_TAG = "android:fragments";
    private static final String HAS_CURENT_PERMISSIONS_REQUEST_KEY = "android:hasCurrentPermissionsRequest";
    private static final String KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME = "com.android.systemui";
    private static final String LAST_AUTOFILL_ID = "android:lastAutofillId";
    private static final String REQUEST_PERMISSIONS_WHO_PREFIX = "@android:requestPermissions:";
    public static final int RESULT_CANCELED = 0;
    public static final int RESULT_FIRST_USER = 1;
    public static final int RESULT_OK = -1;
    private static final String SAVED_DIALOGS_TAG = "android:savedDialogs";
    private static final String SAVED_DIALOG_ARGS_KEY_PREFIX = "android:dialog_args_";
    private static final String SAVED_DIALOG_IDS_KEY = "android:savedDialogIds";
    private static final String SAVED_DIALOG_KEY_PREFIX = "android:dialog_";
    private static final String TAG = "Activity";
    private static final String WINDOW_HIERARCHY_TAG = "android:viewHierarchyState";
    ActivityInfo mActivityInfo;
    private Application mApplication;
    private boolean mAutoFillResetNeeded;
    private AutofillManager mAutofillManager;
    private AutofillPopupWindow mAutofillPopupWindow;
    boolean mCalled;
    private boolean mChangeCanvasToTranslucent;
    private ComponentName mComponent;
    int mConfigChangeFlags;
    Configuration mCurrentConfig;
    private boolean mDestroyed;
    String mEmbeddedID;
    private boolean mEnableDefaultActionBarUp;
    SharedElementCallback mEnterTransitionListener;
    SharedElementCallback mExitTransitionListener;
    boolean mFinished;
    private boolean mHasCurrentPermissionsRequest;
    private int mIdent;
    private Instrumentation mInstrumentation;
    Intent mIntent;
    private int mLastAutofillId;
    NonConfigurationInstances mLastNonConfigurationInstances;
    ActivityThread mMainThread;
    private SparseArray<ManagedDialog> mManagedDialogs;
    private MenuInflater mMenuInflater;
    Activity mParent;
    String mReferrer;
    private boolean mRestoredFromBundle;
    boolean mResumed;
    private SearchEvent mSearchEvent;
    private SearchManager mSearchManager;
    boolean mStartedActivity;
    boolean mStopped;
    private CharSequence mTitle;
    private IBinder mToken;
    private TranslucentConversionListener mTranslucentCallback;
    private Thread mUiThread;
    private VoiceInteractor mVoiceInteractor;
    private Window mWindow;
    private WindowManager mWindowManager;
    private boolean mDoReportFullyDrawn = true;
    private boolean mCanEnterPictureInPicture = false;
    boolean mTemporaryPause = false;
    boolean mChangingConfigurations = false;
    View mDecor = null;
    boolean mWindowAdded = false;
    boolean mVisibleFromServer = false;
    boolean mVisibleFromClient = true;
    ActionBar mActionBar = null;
    private int mTitleColor = 0;
    final Handler mHandler = new Handler();
    final FragmentController mFragments = FragmentController.createController(new HostCallbacks());

    @GuardedBy("mManagedCursors")
    private final ArrayList<ManagedCursor> mManagedCursors = new ArrayList<>();

    @GuardedBy("this")
    int mResultCode = 0;

    @GuardedBy("this")
    Intent mResultData = null;
    private boolean mTitleReady = false;
    private int mActionModeTypeStarting = 0;
    private int mDefaultKeyMode = 0;
    private SpannableStringBuilder mDefaultKeySsb = null;
    private ActivityManager.TaskDescription mTaskDescription = new ActivityManager.TaskDescription();
    private final Object mInstanceTracker = StrictMode.trackActivity(this);
    ActivityTransitionState mActivityTransitionState = new ActivityTransitionState();

    @Retention(RetentionPolicy.SOURCE)
    public @interface DefaultKeyMode {
    }

    public class HostCallbacks extends FragmentHostCallback<Activity> {
        public HostCallbacks() {
            super(Activity.this);
        }

        @Override // android.app.FragmentHostCallback
        public void onAttachFragment(Fragment fragment) {
            Activity.this.onAttachFragment(fragment);
        }

        @Override // android.app.FragmentHostCallback
        public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            Activity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // android.app.FragmentHostCallback, android.app.FragmentContainer
        public <T extends View> T onFindViewById(int i2) {
            return (T) Activity.this.findViewById(i2);
        }

        @Override // android.app.FragmentHostCallback
        public LayoutInflater onGetLayoutInflater() {
            LayoutInflater layoutInflater = Activity.this.getLayoutInflater();
            return onUseFragmentManagerInflaterFactory() ? layoutInflater.cloneInContext(Activity.this) : layoutInflater;
        }

        @Override // android.app.FragmentHostCallback
        public int onGetWindowAnimations() {
            Window window = Activity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // android.app.FragmentHostCallback, android.app.FragmentContainer
        public boolean onHasView() {
            Window window = Activity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // android.app.FragmentHostCallback
        public boolean onHasWindowAnimations() {
            return Activity.this.getWindow() != null;
        }

        @Override // android.app.FragmentHostCallback
        public void onInvalidateOptionsMenu() {
            Activity.this.invalidateOptionsMenu();
        }

        @Override // android.app.FragmentHostCallback
        public void onRequestPermissionsFromFragment(Fragment fragment, String[] strArr, int i2) {
            Activity.this.startActivityForResult(Activity.REQUEST_PERMISSIONS_WHO_PREFIX + fragment.mWho, Activity.this.getPackageManager().buildRequestPermissionsIntent(strArr), i2, null);
        }

        @Override // android.app.FragmentHostCallback
        public boolean onShouldSaveFragmentState(Fragment fragment) {
            return !Activity.this.isFinishing();
        }

        @Override // android.app.FragmentHostCallback
        public void onStartActivityAsUserFromFragment(Fragment fragment, Intent intent, int i2, Bundle bundle, UserHandle userHandle) {
            Activity.this.startActivityAsUserFromFragment(fragment, intent, i2, bundle, userHandle);
        }

        @Override // android.app.FragmentHostCallback
        public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i2, Bundle bundle) {
            Activity.this.startActivityFromFragment(fragment, intent, i2, bundle);
        }

        @Override // android.app.FragmentHostCallback
        public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
            Activity activity = Activity.this;
            Activity activity2 = activity.mParent;
            if (activity2 == null) {
                activity.startIntentSenderForResultInner(intentSender, fragment.mWho, i2, intent, i3, i4, bundle);
            } else if (bundle != null) {
                activity2.startIntentSenderFromChildFragment(fragment, intentSender, i2, intent, i3, i4, i5, bundle);
            }
        }

        @Override // android.app.FragmentHostCallback
        public boolean onUseFragmentManagerInflaterFactory() {
            return Activity.this.getApplicationInfo().targetSdkVersion >= 21;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.app.FragmentHostCallback
        public Activity onGetHost() {
            return Activity.this;
        }
    }

    public static final class ManagedCursor {
        private final Cursor mCursor;
        private boolean mReleased = false;
        private boolean mUpdated = false;

        public ManagedCursor(Cursor cursor) {
            this.mCursor = cursor;
        }
    }

    public static class ManagedDialog {
        Bundle mArgs;
        Dialog mDialog;

        private ManagedDialog() {
        }
    }

    public static final class NonConfigurationInstances {
        Object activity;
        HashMap<String, Object> children;
        FragmentManagerNonConfig fragments;
        ArrayMap<String, LoaderManager> loaders;
        VoiceInteractor voiceInteractor;
    }

    public interface TranslucentConversionListener {
        void onTranslucentConversionComplete(boolean z2);
    }

    public Activity() {
        SharedElementCallback sharedElementCallback = SharedElementCallback.NULL_CALLBACK;
        this.mEnterTransitionListener = sharedElementCallback;
        this.mExitTransitionListener = sharedElementCallback;
        this.mLastAutofillId = View.LAST_APP_AUTOFILL_ID;
    }

    private void cancelInputsAndStartExitTransition(Bundle bundle) {
        Window window = this.mWindow;
        View viewPeekDecorView = window != null ? window.peekDecorView() : null;
        if (viewPeekDecorView != null) {
            viewPeekDecorView.cancelPendingInputEvents();
        }
        if (bundle == null || isTopOfTask()) {
            return;
        }
        this.mActivityTransitionState.startExitOutTransition(this, bundle);
    }

    private Dialog createDialog(Integer num, Bundle bundle, Bundle bundle2) {
        Dialog dialogOnCreateDialog = onCreateDialog(num.intValue(), bundle2);
        if (dialogOnCreateDialog == null) {
            return null;
        }
        dialogOnCreateDialog.dispatchOnCreate(bundle);
        return dialogOnCreateDialog;
    }

    private boolean deviceSupportsPictureInPictureMode() {
        return getPackageManager().hasSystemFeature(PackageManager.FEATURE_PICTURE_IN_PICTURE);
    }

    private void dispatchRequestPermissionsResult(int i2, Intent intent) {
        this.mHasCurrentPermissionsRequest = false;
        onRequestPermissionsResult(i2, intent != null ? intent.getStringArrayExtra(PackageManager.EXTRA_REQUEST_PERMISSIONS_NAMES) : new String[0], intent != null ? intent.getIntArrayExtra(PackageManager.EXTRA_REQUEST_PERMISSIONS_RESULTS) : new int[0]);
    }

    private void dispatchRequestPermissionsResultToFragment(int i2, Intent intent, Fragment fragment) {
        fragment.onRequestPermissionsResult(i2, intent != null ? intent.getStringArrayExtra(PackageManager.EXTRA_REQUEST_PERMISSIONS_NAMES) : new String[0], intent != null ? intent.getIntArrayExtra(PackageManager.EXTRA_REQUEST_PERMISSIONS_RESULTS) : new int[0]);
    }

    private void ensureSearchManager() {
        if (this.mSearchManager != null) {
            return;
        }
        try {
            this.mSearchManager = new SearchManager(this, null);
        } catch (ServiceManager.ServiceNotFoundException e2) {
            throw new IllegalStateException(e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001b A[Catch: RemoteException -> 0x0025, TRY_LEAVE, TryCatch #0 {RemoteException -> 0x0025, blocks: (B:8:0x000c, B:9:0x000f, B:11:0x001b), top: B:24:0x000c }] */
    private void finish(int i2) {
        int i3;
        Intent intent;
        Activity activity = this.mParent;
        if (activity == null) {
            synchronized (this) {
                i3 = this.mResultCode;
                intent = this.mResultData;
            }
            if (intent != null) {
                try {
                    intent.prepareToLeaveProcess(this);
                    if (ActivityManager.getService().finishActivity(this.mToken, i3, intent, i2)) {
                        this.mFinished = true;
                    }
                } catch (RemoteException unused) {
                }
            } else if (ActivityManager.getService().finishActivity(this.mToken, i3, intent, i2)) {
                this.mFinished = true;
            }
        } else {
            activity.finishFromChild(this);
        }
        Intent intent2 = this.mIntent;
        if (intent2 == null || !intent2.hasExtra(AutofillManager.EXTRA_RESTORE_SESSION_TOKEN)) {
            return;
        }
        getAutofillManager().onPendingSaveUi(2, this.mIntent.getIBinderExtra(AutofillManager.EXTRA_RESTORE_SESSION_TOKEN));
    }

    private AutofillManager getAutofillManager() {
        if (this.mAutofillManager == null) {
            this.mAutofillManager = (AutofillManager) getSystemService(AutofillManager.class);
        }
        return this.mAutofillManager;
    }

    private static native String getDlWarning();

    private void initWindowDecorActionBar() {
        Window window = getWindow();
        window.getDecorView();
        if (!isChild() && window.hasFeature(8) && this.mActionBar == null) {
            WindowDecorActionBar windowDecorActionBar = new WindowDecorActionBar(this);
            this.mActionBar = windowDecorActionBar;
            windowDecorActionBar.setDefaultDisplayHomeAsUpEnabled(this.mEnableDefaultActionBarUp);
            this.mWindow.setDefaultIcon(this.mActivityInfo.getIconResource());
            this.mWindow.setDefaultLogo(this.mActivityInfo.getLogoResource());
        }
    }

    private boolean isTopOfTask() {
        if (this.mToken != null && this.mWindow != null) {
            try {
                return ActivityManager.getService().isTopOfTask(getActivityToken());
            } catch (RemoteException unused) {
            }
        }
        return false;
    }

    private IllegalArgumentException missingDialog(int i2) {
        return new IllegalArgumentException(android.accessibilityservice.c.e("no dialog with id ", i2, " was ever shown via Activity#showDialog"));
    }

    private void restoreHasCurrentPermissionRequest(Bundle bundle) {
        if (bundle != null) {
            this.mHasCurrentPermissionsRequest = bundle.getBoolean(HAS_CURENT_PERMISSIONS_REQUEST_KEY, false);
        }
    }

    private void restoreManagedDialogs(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(SAVED_DIALOGS_TAG);
        if (bundle2 == null) {
            return;
        }
        int[] intArray = bundle2.getIntArray(SAVED_DIALOG_IDS_KEY);
        this.mManagedDialogs = new SparseArray<>(intArray.length);
        for (int i2 : intArray) {
            Integer numValueOf = Integer.valueOf(i2);
            Bundle bundle3 = bundle2.getBundle(savedDialogKeyFor(numValueOf.intValue()));
            if (bundle3 != null) {
                ManagedDialog managedDialog = new ManagedDialog();
                Bundle bundle4 = bundle2.getBundle(savedDialogArgsKeyFor(numValueOf.intValue()));
                managedDialog.mArgs = bundle4;
                Dialog dialogCreateDialog = createDialog(numValueOf, bundle3, bundle4);
                managedDialog.mDialog = dialogCreateDialog;
                if (dialogCreateDialog != null) {
                    this.mManagedDialogs.put(numValueOf.intValue(), managedDialog);
                    onPrepareDialog(numValueOf.intValue(), managedDialog.mDialog, managedDialog.mArgs);
                    managedDialog.mDialog.onRestoreInstanceState(bundle3);
                }
            }
        }
    }

    private void saveManagedDialogs(Bundle bundle) {
        int size;
        SparseArray<ManagedDialog> sparseArray = this.mManagedDialogs;
        if (sparseArray == null || (size = sparseArray.size()) == 0) {
            return;
        }
        Bundle bundle2 = new Bundle();
        int[] iArr = new int[this.mManagedDialogs.size()];
        for (int i2 = 0; i2 < size; i2++) {
            int iKeyAt = this.mManagedDialogs.keyAt(i2);
            iArr[i2] = iKeyAt;
            ManagedDialog managedDialogValueAt = this.mManagedDialogs.valueAt(i2);
            bundle2.putBundle(savedDialogKeyFor(iKeyAt), managedDialogValueAt.mDialog.onSaveInstanceState());
            if (managedDialogValueAt.mArgs != null) {
                bundle2.putBundle(savedDialogArgsKeyFor(iKeyAt), managedDialogValueAt.mArgs);
            }
        }
        bundle2.putIntArray(SAVED_DIALOG_IDS_KEY, iArr);
        bundle.putBundle(SAVED_DIALOGS_TAG, bundle2);
    }

    private static String savedDialogArgsKeyFor(int i2) {
        return android.accessibilityservice.c.d(SAVED_DIALOG_ARGS_KEY_PREFIX, i2);
    }

    private static String savedDialogKeyFor(int i2) {
        return android.accessibilityservice.c.d(SAVED_DIALOG_KEY_PREFIX, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startIntentSenderForResultInner(IntentSender intentSender, String str, int i2, Intent intent, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        String strResolveTypeIfNeeded;
        if (intent != null) {
            try {
                intent.migrateExtraStreamToClipData();
                intent.prepareToLeaveProcess(this);
                strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
            } catch (RemoteException unused) {
            }
        } else {
            strResolveTypeIfNeeded = null;
        }
        int iStartActivityIntentSender = ActivityManager.getService().startActivityIntentSender(this.mMainThread.getApplicationThread(), intentSender != null ? intentSender.getTarget() : null, intentSender != null ? intentSender.getWhitelistToken() : null, intent, strResolveTypeIfNeeded, this.mToken, str, i2, i3, i4, bundle);
        if (iStartActivityIntentSender == -96) {
            throw new IntentSender.SendIntentException();
        }
        Instrumentation.checkStartActivityResult(iStartActivityIntentSender, null);
        if (i2 >= 0) {
            this.mStartedActivity = true;
        }
    }

    private void storeHasCurrentPermissionRequest(Bundle bundle) {
        if (bundle == null || !this.mHasCurrentPermissionsRequest) {
            return;
        }
        bundle.putBoolean(HAS_CURENT_PERMISSIONS_REQUEST_KEY, true);
    }

    private Bundle transferSpringboardActivityOptions(Bundle bundle) {
        Window window;
        ActivityOptions activityOptions;
        return (bundle != null || (window = this.mWindow) == null || window.isActive() || (activityOptions = getActivityOptions()) == null || activityOptions.getAnimationType() != 5) ? bundle : activityOptions.toBundle();
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getWindow().addContentView(view, layoutParams);
        initWindowDecorActionBar();
    }

    public final void attach(Context context, ActivityThread activityThread, Instrumentation instrumentation, IBinder iBinder, int i2, Application application, Intent intent, ActivityInfo activityInfo, CharSequence charSequence, Activity activity, String str, NonConfigurationInstances nonConfigurationInstances, Configuration configuration, String str2, IVoiceInteractor iVoiceInteractor, Window window, ViewRootImpl.ActivityConfigCallback activityConfigCallback) {
        attachBaseContext(context);
        this.mFragments.attachHost(null);
        PhoneWindow phoneWindow = new PhoneWindow(this, window, activityConfigCallback);
        this.mWindow = phoneWindow;
        phoneWindow.setWindowControllerCallback(this);
        this.mWindow.setCallback(this);
        this.mWindow.setOnWindowDismissedCallback(this);
        this.mWindow.getLayoutInflater().setPrivateFactory(this);
        int i3 = activityInfo.softInputMode;
        if (i3 != 0) {
            this.mWindow.setSoftInputMode(i3);
        }
        int i4 = activityInfo.uiOptions;
        if (i4 != 0) {
            this.mWindow.setUiOptions(i4);
        }
        this.mUiThread = Thread.currentThread();
        this.mMainThread = activityThread;
        this.mInstrumentation = instrumentation;
        this.mToken = iBinder;
        this.mIdent = i2;
        this.mApplication = application;
        this.mIntent = intent;
        this.mReferrer = str2;
        this.mComponent = intent.getComponent();
        this.mActivityInfo = activityInfo;
        this.mTitle = charSequence;
        this.mParent = activity;
        this.mEmbeddedID = str;
        this.mLastNonConfigurationInstances = nonConfigurationInstances;
        if (iVoiceInteractor != null) {
            if (nonConfigurationInstances != null) {
                this.mVoiceInteractor = nonConfigurationInstances.voiceInteractor;
            } else {
                this.mVoiceInteractor = new VoiceInteractor(iVoiceInteractor, this, this, Looper.myLooper());
            }
        }
        this.mWindow.setWindowManager((WindowManager) context.getSystemService(Context.WINDOW_SERVICE), this.mToken, this.mComponent.flattenToString(), (activityInfo.flags & 512) != 0);
        Activity activity2 = this.mParent;
        if (activity2 != null) {
            this.mWindow.setContainer(activity2.getWindow());
        }
        this.mWindowManager = this.mWindow.getWindowManager();
        this.mCurrentConfig = configuration;
        this.mWindow.setColorMode(activityInfo.colorMode);
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        context.setAutofillClient(this);
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public final void autofillCallbackAuthenticate(int i2, IntentSender intentSender, Intent intent) {
        try {
            startIntentSenderForResultInner(intentSender, AUTO_FILL_AUTH_WHO_PREFIX, i2, intent, 0, 0, null);
        } catch (IntentSender.SendIntentException e2) {
            Log.e(TAG, "authenticate() failed for intent:" + intentSender, e2);
        }
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public final boolean autofillCallbackRequestHideFillUi() {
        AutofillPopupWindow autofillPopupWindow = this.mAutofillPopupWindow;
        if (autofillPopupWindow == null) {
            return false;
        }
        autofillPopupWindow.dismiss();
        this.mAutofillPopupWindow = null;
        return true;
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public final boolean autofillCallbackRequestShowFillUi(View view, int i2, int i3, Rect rect, IAutofillWindowPresenter iAutofillWindowPresenter) {
        boolean zIsShowing;
        AutofillPopupWindow autofillPopupWindow = this.mAutofillPopupWindow;
        if (autofillPopupWindow == null) {
            this.mAutofillPopupWindow = new AutofillPopupWindow(iAutofillWindowPresenter);
            zIsShowing = false;
        } else {
            zIsShowing = autofillPopupWindow.isShowing();
        }
        this.mAutofillPopupWindow.update(view, 0, 0, i2, i3, rect);
        return !zIsShowing && this.mAutofillPopupWindow.isShowing();
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public final void autofillCallbackResetableStateAvailable() {
        this.mAutoFillResetNeeded = true;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public boolean canStartActivityForResult() {
        return true;
    }

    public void closeContextMenu() {
        if (this.mWindow.hasFeature(6)) {
            this.mWindow.closePanel(6);
        }
    }

    public void closeOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            ActionBar actionBar = this.mActionBar;
            if (actionBar == null || !actionBar.closeOptionsMenu()) {
                this.mWindow.closePanel(0);
            }
        }
    }

    public void convertFromTranslucent() {
        try {
            this.mTranslucentCallback = null;
            if (ActivityManager.getService().convertFromTranslucent(this.mToken)) {
                WindowManagerGlobal.getInstance().changeCanvasOpacity(this.mToken, true);
            }
        } catch (RemoteException unused) {
        }
    }

    public boolean convertToTranslucent(TranslucentConversionListener translucentConversionListener, ActivityOptions activityOptions) {
        TranslucentConversionListener translucentConversionListener2;
        boolean z2 = false;
        try {
            this.mTranslucentCallback = translucentConversionListener;
            this.mChangeCanvasToTranslucent = ActivityManager.getService().convertToTranslucent(this.mToken, activityOptions == null ? null : activityOptions.toBundle());
            WindowManagerGlobal.getInstance().changeCanvasOpacity(this.mToken, false);
            z2 = true;
        } catch (RemoteException unused) {
            this.mChangeCanvasToTranslucent = false;
        }
        if (!this.mChangeCanvasToTranslucent && (translucentConversionListener2 = this.mTranslucentCallback) != null) {
            translucentConversionListener2.onTranslucentConversionComplete(z2);
        }
        return this.mChangeCanvasToTranslucent;
    }

    public PendingIntent createPendingResult(int i2, Intent intent, int i3) {
        String packageName = getPackageName();
        try {
            intent.prepareToLeaveProcess(this);
            IActivityManager service = ActivityManager.getService();
            Activity activity = this.mParent;
            IIntentSender intentSender = service.getIntentSender(3, packageName, activity == null ? this.mToken : activity.mToken, this.mEmbeddedID, i2, new Intent[]{intent}, null, i3, null, UserHandle.myUserId());
            if (intentSender != null) {
                return new PendingIntent(intentSender);
            }
            return null;
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Deprecated
    public final void dismissDialog(int i2) {
        SparseArray<ManagedDialog> sparseArray = this.mManagedDialogs;
        if (sparseArray == null) {
            throw missingDialog(i2);
        }
        ManagedDialog managedDialog = sparseArray.get(i2);
        if (managedDialog == null) {
            throw missingDialog(i2);
        }
        managedDialog.mDialog.dismiss();
    }

    public final void dismissKeyboardShortcutsHelper() {
        Intent intent = new Intent(Intent.ACTION_DISMISS_KEYBOARD_SHORTCUTS);
        intent.setPackage(KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME);
        sendBroadcastAsUser(intent, UserHandle.SYSTEM);
    }

    public void dispatchActivityResult(String str, int i2, int i3, Intent intent) {
        this.mFragments.noteStateNotSaved();
        if (str == null) {
            onActivityResult(i2, i3, intent);
            return;
        }
        if (str.startsWith(REQUEST_PERMISSIONS_WHO_PREFIX)) {
            String strSubstring = str.substring(28);
            if (TextUtils.isEmpty(strSubstring)) {
                dispatchRequestPermissionsResult(i2, intent);
                return;
            }
            Fragment fragmentFindFragmentByWho = this.mFragments.findFragmentByWho(strSubstring);
            if (fragmentFindFragmentByWho != null) {
                dispatchRequestPermissionsResultToFragment(i2, intent, fragmentFindFragmentByWho);
                return;
            }
            return;
        }
        if (str.startsWith("@android:view:")) {
            for (ViewRootImpl viewRootImpl : WindowManagerGlobal.getInstance().getRootViews(getActivityToken())) {
                if (viewRootImpl.getView() != null && viewRootImpl.getView().dispatchActivityResult(str, i2, i3, intent)) {
                    return;
                }
            }
            return;
        }
        if (str.startsWith(AUTO_FILL_AUTH_WHO_PREFIX)) {
            if (i3 != -1) {
                intent = null;
            }
            getAutofillManager().onAuthenticationResult(i2, intent);
        } else {
            Fragment fragmentFindFragmentByWho2 = this.mFragments.findFragmentByWho(str);
            if (fragmentFindFragmentByWho2 != null) {
                fragmentFindFragmentByWho2.onActivityResult(i2, i3, intent);
            }
        }
    }

    public void dispatchEnterAnimationComplete() {
        onEnterAnimationComplete();
        if (getWindow() == null || getWindow().getDecorView() == null) {
            return;
        }
        getWindow().getDecorView().getViewTreeObserver().dispatchOnEnterAnimationComplete();
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        onUserInteraction();
        if (getWindow().superDispatchGenericMotionEvent(motionEvent)) {
            return true;
        }
        return onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        ActionBar actionBar;
        onUserInteraction();
        if (keyEvent.getKeyCode() == 82 && (actionBar = this.mActionBar) != null && actionBar.onMenuKeyEvent(keyEvent)) {
            return true;
        }
        Window window = getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = this.mDecor;
        if (decorView == null) {
            decorView = window.getDecorView();
        }
        return keyEvent.dispatch(this, decorView != null ? decorView.getKeyDispatcherState() : null, this);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        onUserInteraction();
        if (getWindow().superDispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return onKeyShortcut(keyEvent.getKeyCode(), keyEvent);
    }

    public void dispatchMovedToDisplay(int i2, Configuration configuration) {
        updateDisplay(i2);
        onMovedToDisplay(i2, configuration);
    }

    public final void dispatchMultiWindowModeChanged(boolean z2, Configuration configuration) {
        this.mFragments.dispatchMultiWindowModeChanged(z2, configuration);
        Window window = this.mWindow;
        if (window != null) {
            window.onMultiWindowModeChanged();
        }
        onMultiWindowModeChanged(z2, configuration);
    }

    public final void dispatchPictureInPictureModeChanged(boolean z2, Configuration configuration) {
        this.mFragments.dispatchPictureInPictureModeChanged(z2, configuration);
        Window window = this.mWindow;
        if (window != null) {
            window.onPictureInPictureModeChanged(z2);
        }
        onPictureInPictureModeChanged(z2, configuration);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(getPackageName());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        accessibilityEvent.setFullScreen(attributes.width == -1 && attributes.height == -1);
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            accessibilityEvent.getText().add(title);
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            onUserInteraction();
        }
        if (getWindow().superDispatchTouchEvent(motionEvent)) {
            return true;
        }
        return onTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        onUserInteraction();
        if (getWindow().superDispatchTrackballEvent(motionEvent)) {
            return true;
        }
        return onTrackballEvent(motionEvent);
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dumpInner(str, fileDescriptor, printWriter, strArr);
    }

    public void dumpInner(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("Local Activity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        printWriter.print(" mFinished=");
        android.accessibilityservice.c.y(printWriter, this.mFinished, str2, "mChangingConfigurations=");
        android.accessibilityservice.c.y(printWriter, this.mChangingConfigurations, str2, "mCurrentConfig=");
        printWriter.println(this.mCurrentConfig);
        this.mFragments.dumpLoaders(str2, fileDescriptor, printWriter, strArr);
        this.mFragments.getFragmentManager().dump(str2, fileDescriptor, printWriter, strArr);
        VoiceInteractor voiceInteractor = this.mVoiceInteractor;
        if (voiceInteractor != null) {
            voiceInteractor.dump(str2, fileDescriptor, printWriter, strArr);
        }
        if (getWindow() != null && getWindow().peekDecorView() != null && getWindow().peekDecorView().getViewRootImpl() != null) {
            getWindow().peekDecorView().getViewRootImpl().dump(str, fileDescriptor, printWriter, strArr);
        }
        this.mHandler.getLooper().dump(new PrintWriterPrinter(printWriter), str);
        AutofillManager autofillManager = getAutofillManager();
        if (autofillManager != null) {
            autofillManager.dump(str, printWriter);
        }
    }

    @Deprecated
    public void enterPictureInPictureMode() {
        enterPictureInPictureMode(new PictureInPictureParams.Builder().build());
    }

    @Override // android.view.Window.WindowControllerCallback
    public void enterPictureInPictureModeIfPossible() {
        if (this.mActivityInfo.supportsPictureInPicture()) {
            enterPictureInPictureMode();
        }
    }

    @Override // android.view.Window.WindowControllerCallback
    public void exitFreeformMode() {
        ActivityManager.getService().exitFreeformMode(this.mToken);
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public View findViewByAutofillIdTraversal(int i2) {
        View viewFindViewByAutofillIdTraversal;
        ArrayList<ViewRootImpl> rootViews = WindowManagerGlobal.getInstance().getRootViews(getActivityToken());
        for (int i3 = 0; i3 < rootViews.size(); i3++) {
            View view = rootViews.get(i3).getView();
            if (view != null && (viewFindViewByAutofillIdTraversal = view.findViewByAutofillIdTraversal(i2)) != null) {
                return viewFindViewByAutofillIdTraversal;
            }
        }
        return null;
    }

    public <T extends View> T findViewById(int i2) {
        return (T) getWindow().findViewById(i2);
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public View[] findViewsByAutofillIdTraversal(int[] iArr) {
        View[] viewArr = new View[iArr.length];
        ArrayList<ViewRootImpl> rootViews = WindowManagerGlobal.getInstance().getRootViews(getActivityToken());
        for (int i2 = 0; i2 < rootViews.size(); i2++) {
            View view = rootViews.get(i2).getView();
            if (view != null) {
                for (int i3 = 0; i3 < iArr.length; i3++) {
                    if (viewArr[i3] == null) {
                        viewArr[i3] = view.findViewByAutofillIdTraversal(iArr[i3]);
                    }
                }
            }
        }
        return viewArr;
    }

    public void finishActivity(int i2) {
        Activity activity = this.mParent;
        if (activity != null) {
            activity.finishActivityFromChild(this, i2);
        } else {
            try {
                ActivityManager.getService().finishSubActivity(this.mToken, this.mEmbeddedID, i2);
            } catch (RemoteException unused) {
            }
        }
    }

    public void finishActivityFromChild(Activity activity, int i2) {
        try {
            ActivityManager.getService().finishSubActivity(this.mToken, activity.mEmbeddedID, i2);
        } catch (RemoteException unused) {
        }
    }

    public void finishAffinity() {
        if (this.mParent != null) {
            throw new IllegalStateException("Can not be called from an embedded activity");
        }
        if (this.mResultCode != 0 || this.mResultData != null) {
            throw new IllegalStateException("Can not be called to deliver a result");
        }
        try {
            if (ActivityManager.getService().finishActivityAffinity(this.mToken)) {
                this.mFinished = true;
            }
        } catch (RemoteException unused) {
        }
    }

    public void finishAfterTransition() {
        if (this.mActivityTransitionState.startExitBackTransition(this)) {
            return;
        }
        finish();
    }

    public void finishAndRemoveTask() {
        finish(1);
    }

    public void finishFromChild(Activity activity) {
        finish();
    }

    public ActionBar getActionBar() {
        initWindowDecorActionBar();
        return this.mActionBar;
    }

    public ActivityOptions getActivityOptions() {
        try {
            return ActivityOptions.fromBundle(ActivityManager.getService().getActivityOptions(this.mToken));
        } catch (RemoteException unused) {
            return null;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final IBinder getActivityToken() {
        Activity activity = this.mParent;
        return activity != null ? activity.getActivityToken() : this.mToken;
    }

    public final Application getApplication() {
        return this.mApplication;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AutofillManager.AutofillClient getAutofillClient() {
        return this;
    }

    public ComponentName getCallingActivity() {
        try {
            return ActivityManager.getService().getCallingActivity(this.mToken);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String getCallingPackage() {
        try {
            return ActivityManager.getService().getCallingPackage(this.mToken);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public int getChangingConfigurations() {
        return this.mConfigChangeFlags;
    }

    public ComponentName getComponentName() {
        return this.mComponent;
    }

    public Scene getContentScene() {
        return getWindow().getContentScene();
    }

    public TransitionManager getContentTransitionManager() {
        return getWindow().getTransitionManager();
    }

    public View getCurrentFocus() {
        Window window = this.mWindow;
        if (window != null) {
            return window.getCurrentFocus();
        }
        return null;
    }

    public FragmentManager getFragmentManager() {
        return this.mFragments.getFragmentManager();
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public HashMap<String, Object> getLastNonConfigurationChildInstances() {
        NonConfigurationInstances nonConfigurationInstances = this.mLastNonConfigurationInstances;
        if (nonConfigurationInstances != null) {
            return nonConfigurationInstances.children;
        }
        return null;
    }

    public Object getLastNonConfigurationInstance() {
        NonConfigurationInstances nonConfigurationInstances = this.mLastNonConfigurationInstances;
        if (nonConfigurationInstances != null) {
            return nonConfigurationInstances.activity;
        }
        return null;
    }

    public LayoutInflater getLayoutInflater() {
        return getWindow().getLayoutInflater();
    }

    public LoaderManager getLoaderManager() {
        return this.mFragments.getLoaderManager();
    }

    public String getLocalClassName() {
        String packageName = getPackageName();
        String className = this.mComponent.getClassName();
        int length = packageName.length();
        return (className.startsWith(packageName) && className.length() > length && className.charAt(length) == '.') ? className.substring(length + 1) : className;
    }

    public int getMaxNumPictureInPictureActions() {
        try {
            return ActivityManagerNative.getDefault().getMaxNumPictureInPictureActions(this.mToken);
        } catch (RemoteException unused) {
            return 0;
        }
    }

    public final MediaController getMediaController() {
        return getWindow().getMediaController();
    }

    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                this.mMenuInflater = new MenuInflater(actionBar.getThemedContext(), this);
            } else {
                this.mMenuInflater = new MenuInflater(this);
            }
        }
        return this.mMenuInflater;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public int getNextAutofillId() {
        if (this.mLastAutofillId == 2147483646) {
            this.mLastAutofillId = View.LAST_APP_AUTOFILL_ID;
        }
        int i2 = this.mLastAutofillId + 1;
        this.mLastAutofillId = i2;
        return i2;
    }

    public final Activity getParent() {
        return this.mParent;
    }

    public Intent getParentActivityIntent() {
        String str = this.mActivityInfo.parentActivityName;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ComponentName componentName = new ComponentName(this, str);
        try {
            return getPackageManager().getActivityInfo(componentName, 0).parentActivityName == null ? Intent.makeMainActivity(componentName) : new Intent().setComponent(componentName);
        } catch (PackageManager.NameNotFoundException unused) {
            Log.e(TAG, "getParentActivityIntent: bad parentActivityName '" + str + "' in manifest");
            return null;
        }
    }

    public SharedPreferences getPreferences(int i2) {
        return getSharedPreferences(getLocalClassName(), i2);
    }

    public Uri getReferrer() {
        Intent intent = getIntent();
        try {
            Uri uri = (Uri) intent.getParcelableExtra(Intent.EXTRA_REFERRER);
            if (uri != null) {
                return uri;
            }
            String stringExtra = intent.getStringExtra(Intent.EXTRA_REFERRER_NAME);
            if (stringExtra != null) {
                return Uri.parse(stringExtra);
            }
        } catch (BadParcelableException unused) {
            Log.w(TAG, "Cannot read referrer from intent; intent extras contain unknown custom Parcelable objects");
        }
        if (this.mReferrer != null) {
            return new Uri.Builder().scheme("android-app").authority(this.mReferrer).build();
        }
        return null;
    }

    public int getRequestedOrientation() {
        Activity activity = this.mParent;
        if (activity != null) {
            return activity.getRequestedOrientation();
        }
        try {
            return ActivityManager.getService().getRequestedOrientation(this.mToken);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public final SearchEvent getSearchEvent() {
        return this.mSearchEvent;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (getBaseContext() == null) {
            throw new IllegalStateException("System services not available to Activities before onCreate()");
        }
        if (Context.WINDOW_SERVICE.equals(str)) {
            return this.mWindowManager;
        }
        if (!"search".equals(str)) {
            return super.getSystemService(str);
        }
        ensureSearchManager();
        return this.mSearchManager;
    }

    public int getTaskId() {
        try {
            return ActivityManager.getService().getTaskForActivity(this.mToken, false);
        } catch (RemoteException unused) {
            return -1;
        }
    }

    public final CharSequence getTitle() {
        return this.mTitle;
    }

    public final int getTitleColor() {
        return this.mTitleColor;
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public boolean[] getViewVisibility(int[] iArr) {
        boolean[] zArr = new boolean[iArr.length];
        View[] viewArrFindViewsByAutofillIdTraversal = findViewsByAutofillIdTraversal(iArr);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            View view = viewArrFindViewsByAutofillIdTraversal[i2];
            if (view != null) {
                zArr[i2] = true;
                while (true) {
                    if (!(view instanceof DecorView) || view.getViewRootImpl() != view.getParent()) {
                        if (view.getVisibility() != 0) {
                            zArr[i2] = false;
                            break;
                        }
                        if (!(view.getParent() instanceof View)) {
                            break;
                        }
                        view = (View) view.getParent();
                    } else {
                        break;
                    }
                }
            } else {
                zArr[i2] = false;
            }
        }
        return zArr;
    }

    public VoiceInteractor getVoiceInteractor() {
        return this.mVoiceInteractor;
    }

    public final int getVolumeControlStream() {
        return getWindow().getVolumeControlStream();
    }

    public Window getWindow() {
        return this.mWindow;
    }

    public WindowManager getWindowManager() {
        return this.mWindowManager;
    }

    @Override // android.view.Window.WindowControllerCallback
    public int getWindowStackId() {
        return ActivityManager.getService().getActivityStackId(this.mToken);
    }

    public boolean hasWindowFocus() {
        View decorView;
        Window window = getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return false;
        }
        return decorView.hasWindowFocus();
    }

    public void invalidateOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            ActionBar actionBar = this.mActionBar;
            if (actionBar == null || !actionBar.invalidateOptionsMenu()) {
                this.mWindow.invalidatePanelMenu(0);
            }
        }
    }

    public boolean isActivityTransitionRunning() {
        return this.mActivityTransitionState.isTransitionRunning();
    }

    @Deprecated
    public boolean isBackgroundVisibleBehind() {
        return false;
    }

    public boolean isChangingConfigurations() {
        return this.mChangingConfigurations;
    }

    public final boolean isChild() {
        return this.mParent != null;
    }

    public boolean isDestroyed() {
        return this.mDestroyed;
    }

    public boolean isFinishing() {
        return this.mFinished;
    }

    public boolean isImmersive() {
        try {
            return ActivityManager.getService().isImmersive(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isInMultiWindowMode() {
        try {
            return ActivityManager.getService().isInMultiWindowMode(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isInPictureInPictureMode() {
        try {
            return ActivityManager.getService().isInPictureInPictureMode(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isLocalVoiceInteractionSupported() {
        try {
            return ActivityManager.getService().supportsLocalVoiceInteraction();
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean isOverlayWithDecorCaptionEnabled() {
        return this.mWindow.isOverlayWithDecorCaptionEnabled();
    }

    public final boolean isResumed() {
        return this.mResumed;
    }

    @Override // android.view.Window.WindowControllerCallback
    public boolean isTaskRoot() {
        try {
            return ActivityManager.getService().getTaskForActivity(this.mToken, true) >= 0;
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public boolean isVisibleForAutofill() {
        return !this.mStopped;
    }

    public boolean isVoiceInteraction() {
        return this.mVoiceInteractor != null;
    }

    public boolean isVoiceInteractionRoot() {
        try {
            return this.mVoiceInteractor != null && ActivityManager.getService().isRootVoiceInteraction(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void makeVisible() {
        if (!this.mWindowAdded) {
            getWindowManager().addView(this.mDecor, getWindow().getAttributes());
            this.mWindowAdded = true;
            DecorView.setAddedToWindow(this.mDecor);
        }
        this.mDecor.setVisibility(0);
    }

    @Deprecated
    public final Cursor managedQuery(Uri uri, String[] strArr, String str, String str2) {
        Cursor cursorQuery = getContentResolver().query(uri, strArr, str, null, str2);
        if (cursorQuery != null) {
            startManagingCursor(cursorQuery);
        }
        return cursorQuery;
    }

    public boolean moveTaskToBack(boolean z2) {
        try {
            return ActivityManager.getService().moveActivityTaskToBack(this.mToken, z2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean navigateUpTo(Intent intent) {
        int i2;
        Intent intent2;
        Activity activity = this.mParent;
        if (activity != null) {
            return activity.navigateUpToFromChild(this, intent);
        }
        if (intent.getComponent() == null) {
            ComponentName componentNameResolveActivity = intent.resolveActivity(getPackageManager());
            if (componentNameResolveActivity == null) {
                return false;
            }
            Intent intent3 = new Intent(intent);
            intent3.setComponent(componentNameResolveActivity);
            intent = intent3;
        }
        synchronized (this) {
            i2 = this.mResultCode;
            intent2 = this.mResultData;
        }
        if (intent2 != null) {
            intent2.prepareToLeaveProcess(this);
        }
        try {
            intent.prepareToLeaveProcess(this);
            return ActivityManager.getService().navigateUpTo(this.mToken, intent, i2, intent2);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean navigateUpToFromChild(Activity activity, Intent intent) {
        return navigateUpTo(intent);
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
    }

    public void onActivityReenter(int i2, Intent intent) {
    }

    public void onActivityResult(int i2, int i3, Intent intent) {
    }

    @Override // android.view.ContextThemeWrapper
    public void onApplyThemeResource(Resources.Theme theme, int i2, boolean z2) {
        int color;
        Activity activity = this.mParent;
        if (activity == null) {
            super.onApplyThemeResource(theme, i2, z2);
        } else {
            try {
                theme.setTo(activity.getTheme());
            } catch (Exception unused) {
            }
            theme.applyStyle(i2, false);
        }
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(R.styleable.ActivityTaskDescription);
        if (this.mTaskDescription.getPrimaryColor() == 0 && (color = typedArrayObtainStyledAttributes.getColor(1, 0)) != 0 && Color.alpha(color) == 255) {
            this.mTaskDescription.setPrimaryColor(color);
        }
        int color2 = typedArrayObtainStyledAttributes.getColor(0, 0);
        if (color2 != 0 && Color.alpha(color2) == 255) {
            this.mTaskDescription.setBackgroundColor(color2);
        }
        int color3 = typedArrayObtainStyledAttributes.getColor(2, 0);
        if (color3 != 0) {
            this.mTaskDescription.setStatusBarColor(color3);
        }
        int color4 = typedArrayObtainStyledAttributes.getColor(3, 0);
        if (color4 != 0) {
            this.mTaskDescription.setNavigationBarColor(color4);
        }
        typedArrayObtainStyledAttributes.recycle();
        setTaskDescription(this.mTaskDescription);
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
    }

    public void onBackPressed() {
        ActionBar actionBar = this.mActionBar;
        if (actionBar == null || !actionBar.collapseActionView()) {
            FragmentManager fragmentManager = this.mFragments.getFragmentManager();
            if (fragmentManager.isStateSaved() || !fragmentManager.popBackStackImmediate()) {
                finishAfterTransition();
            }
        }
    }

    @Deprecated
    public void onBackgroundVisibleBehindChanged(boolean z2) {
    }

    public void onChildTitleChanged(Activity activity, CharSequence charSequence) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.mCalled = true;
        this.mFragments.dispatchConfigurationChanged(configuration);
        Window window = this.mWindow;
        if (window != null) {
            window.onConfigurationChanged(configuration);
        }
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.onConfigurationChanged(configuration);
        }
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        Activity activity = this.mParent;
        if (activity != null) {
            return activity.onContextItemSelected(menuItem);
        }
        return false;
    }

    public void onContextMenuClosed(Menu menu) {
        Activity activity = this.mParent;
        if (activity != null) {
            activity.onContextMenuClosed(menu);
        }
    }

    public void onCreate(Bundle bundle) {
        NonConfigurationInstances nonConfigurationInstances = this.mLastNonConfigurationInstances;
        if (nonConfigurationInstances != null) {
            this.mFragments.restoreLoaderNonConfig(nonConfigurationInstances.loaders);
        }
        if (this.mActivityInfo.parentActivityName != null) {
            ActionBar actionBar = this.mActionBar;
            if (actionBar == null) {
                this.mEnableDefaultActionBarUp = true;
            } else {
                actionBar.setDefaultDisplayHomeAsUpEnabled(true);
            }
        }
        if (bundle != null) {
            this.mAutoFillResetNeeded = bundle.getBoolean(AUTOFILL_RESET_NEEDED, false);
            this.mLastAutofillId = bundle.getInt(LAST_AUTOFILL_ID, View.LAST_APP_AUTOFILL_ID);
            if (this.mAutoFillResetNeeded) {
                getAutofillManager().onCreate(bundle);
            }
            Parcelable parcelable = bundle.getParcelable(FRAGMENTS_TAG);
            FragmentController fragmentController = this.mFragments;
            NonConfigurationInstances nonConfigurationInstances2 = this.mLastNonConfigurationInstances;
            fragmentController.restoreAllState(parcelable, nonConfigurationInstances2 != null ? nonConfigurationInstances2.fragments : null);
        }
        this.mFragments.dispatchCreate();
        getApplication().dispatchActivityCreated(this, bundle);
        VoiceInteractor voiceInteractor = this.mVoiceInteractor;
        if (voiceInteractor != null) {
            voiceInteractor.attachActivity(this);
        }
        this.mRestoredFromBundle = bundle != null;
        this.mCalled = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
    }

    public CharSequence onCreateDescription() {
        return null;
    }

    @Deprecated
    public Dialog onCreateDialog(int i2) {
        return null;
    }

    public void onCreateNavigateUpTaskStack(TaskStackBuilder taskStackBuilder) {
        taskStackBuilder.addParentStack(this);
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        Activity activity = this.mParent;
        if (activity != null) {
            return activity.onCreateOptionsMenu(menu);
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 == 0) {
            return onCreateOptionsMenu(menu) | this.mFragments.dispatchCreateOptionsMenu(menu, getMenuInflater());
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public View onCreatePanelView(int i2) {
        return null;
    }

    public boolean onCreateThumbnail(Bitmap bitmap, Canvas canvas) {
        return false;
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
        SparseArray<ManagedDialog> sparseArray = this.mManagedDialogs;
        if (sparseArray != null) {
            int size = sparseArray.size();
            for (int i2 = 0; i2 < size; i2++) {
                ManagedDialog managedDialogValueAt = this.mManagedDialogs.valueAt(i2);
                if (managedDialogValueAt.mDialog.isShowing()) {
                    managedDialogValueAt.mDialog.dismiss();
                }
            }
            this.mManagedDialogs = null;
        }
        synchronized (this.mManagedCursors) {
            int size2 = this.mManagedCursors.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ManagedCursor managedCursor = this.mManagedCursors.get(i3);
                if (managedCursor != null) {
                    managedCursor.mCursor.close();
                }
            }
            this.mManagedCursors.clear();
        }
        SearchManager searchManager = this.mSearchManager;
        if (searchManager != null) {
            searchManager.stopSearch();
        }
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.onDestroy();
        }
        getApplication().dispatchActivityDestroyed(this);
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
    }

    public void onEnterAnimationComplete() {
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        boolean zOnKeyDown;
        boolean z2 = true;
        if (i2 == 4) {
            if (getApplicationInfo().targetSdkVersion >= 5) {
                keyEvent.startTracking();
            } else {
                onBackPressed();
            }
            return true;
        }
        int i3 = this.mDefaultKeyMode;
        if (i3 == 0) {
            return false;
        }
        if (i3 == 2) {
            Window window = getWindow();
            return window.hasFeature(0) && window.performPanelShortcut(0, i2, keyEvent, 2);
        }
        if (i2 == 61) {
            return false;
        }
        if (keyEvent.getRepeatCount() != 0 || keyEvent.isSystem()) {
            zOnKeyDown = false;
        } else {
            zOnKeyDown = TextKeyListener.getInstance().onKeyDown(null, this.mDefaultKeySsb, i2, keyEvent);
            if (!zOnKeyDown || this.mDefaultKeySsb.length() <= 0) {
                z2 = false;
            } else {
                String string = this.mDefaultKeySsb.toString();
                int i4 = this.mDefaultKeyMode;
                if (i4 == 1) {
                    Intent intent = new Intent(Intent.ACTION_DIAL, Uri.parse(WebView.SCHEME_TEL + string));
                    intent.addFlags(268435456);
                    startActivity(intent);
                } else if (i4 == 3) {
                    startSearch(string, false, null, false);
                } else if (i4 == 4) {
                    startSearch(string, false, null, true);
                }
            }
        }
        if (z2) {
            this.mDefaultKeySsb.clear();
            this.mDefaultKeySsb.clearSpans();
            Selection.setSelection(this.mDefaultKeySsb, 0);
        }
        return zOnKeyDown;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyLongPress(int i2, KeyEvent keyEvent) {
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyMultiple(int i2, int i3, KeyEvent keyEvent) {
        return false;
    }

    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        ActionBar actionBar = getActionBar();
        return actionBar != null && actionBar.onKeyShortcut(i2, keyEvent);
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (getApplicationInfo().targetSdkVersion < 5 || i2 != 4 || !keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        onBackPressed();
        return true;
    }

    public void onLocalVoiceInteractionStarted() {
    }

    public void onLocalVoiceInteractionStopped() {
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
        this.mFragments.dispatchLowMemory();
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        ActionBar actionBar;
        CharSequence titleCondensed = menuItem.getTitleCondensed();
        if (i2 != 0) {
            if (i2 != 6) {
                return false;
            }
            if (titleCondensed != null) {
                EventLog.writeEvent(50000, 1, titleCondensed.toString());
            }
            if (onContextItemSelected(menuItem)) {
                return true;
            }
            return this.mFragments.dispatchContextItemSelected(menuItem);
        }
        if (titleCondensed != null) {
            EventLog.writeEvent(50000, 0, titleCondensed.toString());
        }
        if (onOptionsItemSelected(menuItem) || this.mFragments.dispatchOptionsItemSelected(menuItem)) {
            return true;
        }
        if (menuItem.getItemId() != 16908332 || (actionBar = this.mActionBar) == null || (actionBar.getDisplayOptions() & 4) == 0) {
            return false;
        }
        Activity activity = this.mParent;
        return activity == null ? onNavigateUp() : activity.onNavigateUpFromChild(this);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        if (i2 == 8) {
            initWindowDecorActionBar();
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.dispatchMenuVisibilityChanged(true);
            } else {
                Log.e(TAG, "Tried to open action bar menu with no action bar");
            }
        }
        return true;
    }

    public void onMovedToDisplay(int i2, Configuration configuration) {
    }

    @Deprecated
    public void onMultiWindowModeChanged(boolean z2) {
    }

    public boolean onNavigateUp() {
        Intent parentActivityIntent = getParentActivityIntent();
        if (parentActivityIntent == null) {
            return false;
        }
        if (this.mActivityInfo.taskAffinity == null) {
            finish();
            return true;
        }
        if (!shouldUpRecreateTask(parentActivityIntent)) {
            navigateUpTo(parentActivityIntent);
            return true;
        }
        TaskStackBuilder taskStackBuilderCreate = TaskStackBuilder.create(this);
        onCreateNavigateUpTaskStack(taskStackBuilderCreate);
        onPrepareNavigateUpTaskStack(taskStackBuilderCreate);
        taskStackBuilderCreate.startActivities();
        if (this.mResultCode == 0 && this.mResultData == null) {
            finishAffinity();
            return true;
        }
        Log.i(TAG, "onNavigateUp only finishing topmost activity to return a result");
        finish();
        return true;
    }

    public boolean onNavigateUpFromChild(Activity activity) {
        return onNavigateUp();
    }

    public void onNewActivityOptions(ActivityOptions activityOptions) {
        this.mActivityTransitionState.setEnterActivityOptions(this, activityOptions);
        if (this.mStopped) {
            return;
        }
        this.mActivityTransitionState.enterReady(this);
    }

    public void onNewIntent(Intent intent) {
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        Activity activity = this.mParent;
        if (activity != null) {
            return activity.onOptionsItemSelected(menuItem);
        }
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
        Activity activity = this.mParent;
        if (activity != null) {
            activity.onOptionsMenuClosed(menu);
        }
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        if (i2 == 0) {
            this.mFragments.dispatchOptionsMenuClosed(menu);
            onOptionsMenuClosed(menu);
        } else if (i2 == 6) {
            onContextMenuClosed(menu);
        } else {
            if (i2 != 8) {
                return;
            }
            initWindowDecorActionBar();
            this.mActionBar.dispatchMenuVisibilityChanged(false);
        }
    }

    public void onPause() {
        getApplication().dispatchActivityPaused(this);
        this.mCalled = true;
    }

    @Deprecated
    public void onPictureInPictureModeChanged(boolean z2) {
    }

    @Override // android.view.Window.Callback
    public final /* synthetic */ void onPointerCaptureChanged(boolean z2) {
        android.view.j.a(this, z2);
    }

    public void onPostCreate(Bundle bundle) {
        if (!isChild()) {
            this.mTitleReady = true;
            onTitleChanged(getTitle(), getTitleColor());
        }
        this.mCalled = true;
    }

    public void onPostResume() {
        Window window = getWindow();
        if (window != null) {
            window.makeActive();
        }
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(true);
        }
        this.mCalled = true;
    }

    @Deprecated
    public void onPrepareDialog(int i2, Dialog dialog) {
        dialog.setOwnerActivity(this);
    }

    public void onPrepareNavigateUpTaskStack(TaskStackBuilder taskStackBuilder) {
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        Activity activity = this.mParent;
        if (activity != null) {
            return activity.onPrepareOptionsMenu(menu);
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i2, View view, Menu menu) {
        if (i2 != 0 || menu == null) {
            return true;
        }
        return onPrepareOptionsMenu(menu) | this.mFragments.dispatchPrepareOptionsMenu(menu);
    }

    public void onProvideAssistContent(AssistContent assistContent) {
    }

    public void onProvideAssistData(Bundle bundle) {
    }

    @Override // android.view.Window.Callback
    public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i2) {
        if (menu == null) {
            return;
        }
        int size = menu.size();
        KeyboardShortcutGroup keyboardShortcutGroup = null;
        for (int i3 = 0; i3 < size; i3++) {
            MenuItem item = menu.getItem(i3);
            CharSequence title = item.getTitle();
            char alphabeticShortcut = item.getAlphabeticShortcut();
            int alphabeticModifiers = item.getAlphabeticModifiers();
            if (title != null && alphabeticShortcut != 0) {
                if (keyboardShortcutGroup == null) {
                    int i4 = this.mApplication.getApplicationInfo().labelRes;
                    keyboardShortcutGroup = new KeyboardShortcutGroup(i4 != 0 ? getString(i4) : null);
                }
                keyboardShortcutGroup.addItem(new KeyboardShortcutInfo(title, alphabeticShortcut, alphabeticModifiers));
            }
        }
        if (keyboardShortcutGroup != null) {
            list.add(keyboardShortcutGroup);
        }
    }

    public Uri onProvideReferrer() {
        return null;
    }

    public void onRequestPermissionsResult(int i2, String[] strArr, int[] iArr) {
    }

    public void onRestart() {
        this.mCalled = true;
    }

    public void onRestoreInstanceState(Bundle bundle) {
        Bundle bundle2;
        if (this.mWindow == null || (bundle2 = bundle.getBundle(WINDOW_HIERARCHY_TAG)) == null) {
            return;
        }
        this.mWindow.restoreHierarchyState(bundle2);
    }

    public void onResume() {
        getApplication().dispatchActivityResumed(this);
        this.mActivityTransitionState.onResume(this, isTopOfTask());
        this.mCalled = true;
    }

    public HashMap<String, Object> onRetainNonConfigurationChildInstances() {
        return null;
    }

    public Object onRetainNonConfigurationInstance() {
        return null;
    }

    public void onSaveInstanceState(Bundle bundle) {
        bundle.putBundle(WINDOW_HIERARCHY_TAG, this.mWindow.saveHierarchyState());
        bundle.putInt(LAST_AUTOFILL_ID, this.mLastAutofillId);
        Parcelable parcelableSaveAllState = this.mFragments.saveAllState();
        if (parcelableSaveAllState != null) {
            bundle.putParcelable(FRAGMENTS_TAG, parcelableSaveAllState);
        }
        if (this.mAutoFillResetNeeded) {
            bundle.putBoolean(AUTOFILL_RESET_NEEDED, true);
            getAutofillManager().onSaveInstanceState(bundle);
        }
        getApplication().dispatchActivitySaveInstanceState(this, bundle);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested(SearchEvent searchEvent) {
        this.mSearchEvent = searchEvent;
        boolean zOnSearchRequested = onSearchRequested();
        this.mSearchEvent = null;
        return zOnSearchRequested;
    }

    public void onStart() {
        AutofillManager autofillManager;
        this.mCalled = true;
        this.mFragments.doLoaderStart();
        getApplication().dispatchActivityStarted(this);
        if (!this.mAutoFillResetNeeded || (autofillManager = getAutofillManager()) == null) {
            return;
        }
        autofillManager.onVisibleForAutofill();
    }

    public void onStateNotSaved() {
    }

    public void onStop() {
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(false);
        }
        this.mActivityTransitionState.onStop();
        getApplication().dispatchActivityStopped(this);
        this.mTranslucentCallback = null;
        this.mCalled = true;
        if (isFinishing()) {
            if (this.mAutoFillResetNeeded) {
                getAutofillManager().commit();
                return;
            }
            Intent intent = this.mIntent;
            if (intent == null || !intent.hasExtra(AutofillManager.EXTRA_RESTORE_SESSION_TOKEN)) {
                return;
            }
            getAutofillManager().onPendingSaveUi(1, this.mIntent.getIBinderExtra(AutofillManager.EXTRA_RESTORE_SESSION_TOKEN));
        }
    }

    public void onTitleChanged(CharSequence charSequence, int i2) {
        if (this.mTitleReady) {
            Window window = getWindow();
            if (window != null) {
                window.setTitle(charSequence);
                if (i2 != 0) {
                    window.setTitleColor(i2);
                }
            }
            ActionBar actionBar = this.mActionBar;
            if (actionBar != null) {
                actionBar.setWindowTitle(charSequence);
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mWindow.shouldCloseOnTouch(this, motionEvent)) {
            return false;
        }
        finish();
        return true;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return false;
    }

    public void onTranslucentConversionComplete(boolean z2) {
        TranslucentConversionListener translucentConversionListener = this.mTranslucentCallback;
        if (translucentConversionListener != null) {
            translucentConversionListener.onTranslucentConversionComplete(z2);
            this.mTranslucentCallback = null;
        }
        if (this.mChangeCanvasToTranslucent) {
            WindowManagerGlobal.getInstance().changeCanvasOpacity(this.mToken, false);
        }
    }

    @Override // android.content.ComponentCallbacks2
    public void onTrimMemory(int i2) {
        this.mCalled = true;
        this.mFragments.dispatchTrimMemory(i2);
    }

    public void onUserInteraction() {
    }

    public void onUserLeaveHint() {
    }

    @Deprecated
    public void onVisibleBehindCanceled() {
        this.mCalled = true;
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        View view;
        if (this.mParent != null || (view = this.mDecor) == null || view.getParent() == null) {
            return;
        }
        getWindowManager().updateViewLayout(view, layoutParams);
    }

    @Override // android.view.Window.OnWindowDismissedCallback
    public void onWindowDismissed(boolean z2, boolean z3) {
        finish(z2 ? 2 : 0);
        if (z3) {
            overridePendingTransition(0, 0);
        }
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        if (this.mActionModeTypeStarting != 0) {
            return null;
        }
        initWindowDecorActionBar();
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            return actionBar.startActionMode(callback);
        }
        return null;
    }

    public void openContextMenu(View view) {
        view.showContextMenu();
    }

    public void openOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            ActionBar actionBar = this.mActionBar;
            if (actionBar == null || !actionBar.openOptionsMenu()) {
                this.mWindow.openPanel(0, null);
            }
        }
    }

    public void overridePendingTransition(int i2, int i3) {
        try {
            ActivityManager.getService().overridePendingTransition(this.mToken, getPackageName(), i2, i3);
        } catch (RemoteException unused) {
        }
    }

    final void performCreate(Bundle bundle) {
        performCreate(bundle, null);
    }

    final void performDestroy() {
        this.mDestroyed = true;
        this.mWindow.destroy();
        this.mFragments.dispatchDestroy();
        onDestroy();
        this.mFragments.doLoaderDestroy();
        VoiceInteractor voiceInteractor = this.mVoiceInteractor;
        if (voiceInteractor != null) {
            voiceInteractor.detachActivity();
        }
    }

    public final void performNewIntent(Intent intent) {
        this.mCanEnterPictureInPicture = true;
        onNewIntent(intent);
    }

    final void performPause() {
        this.mDoReportFullyDrawn = false;
        this.mFragments.dispatchPause();
        this.mCalled = false;
        onPause();
        this.mResumed = false;
        if (this.mCalled || getApplicationInfo().targetSdkVersion < 9) {
            this.mResumed = false;
            return;
        }
        throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onPause()");
    }

    public final void performRestart() {
        this.mCanEnterPictureInPicture = true;
        this.mFragments.noteStateNotSaved();
        if (this.mToken != null && this.mParent == null) {
            WindowManagerGlobal.getInstance().setStoppedState(this.mToken, false);
        }
        if (this.mStopped) {
            this.mStopped = false;
            synchronized (this.mManagedCursors) {
                int size = this.mManagedCursors.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ManagedCursor managedCursor = this.mManagedCursors.get(i2);
                    if (managedCursor.mReleased || managedCursor.mUpdated) {
                        if (!managedCursor.mCursor.requery() && getApplicationInfo().targetSdkVersion >= 14) {
                            throw new IllegalStateException("trying to requery an already closed cursor  " + managedCursor.mCursor);
                        }
                        managedCursor.mReleased = false;
                        managedCursor.mUpdated = false;
                    }
                }
            }
            this.mCalled = false;
            this.mInstrumentation.callActivityOnRestart(this);
            if (this.mCalled) {
                performStart();
                return;
            }
            throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onRestart()");
        }
    }

    public final void performRestoreInstanceState(Bundle bundle) {
        onRestoreInstanceState(bundle);
        restoreManagedDialogs(bundle);
    }

    final void performResume() {
        performRestart();
        this.mFragments.execPendingActions();
        this.mLastNonConfigurationInstances = null;
        this.mCalled = false;
        this.mInstrumentation.callActivityOnResume(this);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onResume()");
        }
        if (!this.mVisibleFromClient && !this.mFinished) {
            Log.w(TAG, "An activity without a UI must call finish() before onResume() completes");
            if (getApplicationInfo().targetSdkVersion > 22) {
                throw new IllegalStateException("Activity " + this.mComponent.toShortString() + " did not call finish() prior to onResume() completing");
            }
        }
        this.mCalled = false;
        this.mFragments.dispatchResume();
        this.mFragments.execPendingActions();
        onPostResume();
        if (this.mCalled) {
            return;
        }
        throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onPostResume()");
    }

    final void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        saveManagedDialogs(bundle);
        this.mActivityTransitionState.saveState(bundle);
        storeHasCurrentPermissionRequest(bundle);
    }

    final void performStart() {
        String dlWarning;
        this.mActivityTransitionState.setEnterActivityOptions(this, getActivityOptions());
        this.mFragments.noteStateNotSaved();
        this.mCalled = false;
        this.mFragments.execPendingActions();
        this.mInstrumentation.callActivityOnStart(this);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onStart()");
        }
        this.mFragments.dispatchStart();
        this.mFragments.reportLoaderStart();
        boolean z2 = SystemProperties.getInt("ro.bionic.ld.warning", 0) == 1;
        boolean z3 = (this.mApplication.getApplicationInfo().flags & 2) != 0;
        if ((z3 || z2) && (dlWarning = getDlWarning()) != null) {
            String string = getApplicationInfo().loadLabel(getPackageManager()).toString();
            String strConcat = "Detected problems with app native libraries\n(please consult log for detail):\n".concat(dlWarning);
            if (z3) {
                new AlertDialog.Builder(this).setTitle(string).setMessage(strConcat).setPositiveButton(17039370, (DialogInterface.OnClickListener) null).setCancelable(false).show();
            } else {
                Toast.makeText(this, string + "\n" + strConcat, 1).show();
            }
        }
        this.mActivityTransitionState.enterReady(this);
    }

    public final void performStop(boolean z2) {
        this.mDoReportFullyDrawn = false;
        this.mFragments.doLoaderStop(this.mChangingConfigurations);
        this.mCanEnterPictureInPicture = false;
        if (!this.mStopped) {
            Window window = this.mWindow;
            if (window != null) {
                window.closeAllPanels();
            }
            if (!z2 && this.mToken != null && this.mParent == null) {
                WindowManagerGlobal.getInstance().setStoppedState(this.mToken, true);
            }
            this.mFragments.dispatchStop();
            this.mCalled = false;
            this.mInstrumentation.callActivityOnStop(this);
            if (!this.mCalled) {
                throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onStop()");
            }
            synchronized (this.mManagedCursors) {
                int size = this.mManagedCursors.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ManagedCursor managedCursor = this.mManagedCursors.get(i2);
                    if (!managedCursor.mReleased) {
                        managedCursor.mCursor.deactivate();
                        managedCursor.mReleased = true;
                    }
                }
            }
            this.mStopped = true;
        }
        this.mResumed = false;
    }

    public final void performUserLeaving() {
        onUserInteraction();
        onUserLeaveHint();
    }

    public void postponeEnterTransition() {
        this.mActivityTransitionState.postponeEnterTransition();
    }

    public void recreate() {
        if (this.mParent != null) {
            throw new IllegalStateException("Can only be called on top-level activity");
        }
        if (Looper.myLooper() != this.mMainThread.getLooper()) {
            throw new IllegalStateException("Must be called from main thread");
        }
        try {
            ActivityManager.getService().requestActivityRelaunch(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public boolean releaseInstance() {
        try {
            return ActivityManager.getService().releaseActivityInstance(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public final void removeDialog(int i2) {
        ManagedDialog managedDialog;
        SparseArray<ManagedDialog> sparseArray = this.mManagedDialogs;
        if (sparseArray == null || (managedDialog = sparseArray.get(i2)) == null) {
            return;
        }
        managedDialog.mDialog.dismiss();
        this.mManagedDialogs.remove(i2);
    }

    public void reportFullyDrawn() {
        if (this.mDoReportFullyDrawn) {
            this.mDoReportFullyDrawn = false;
            try {
                ActivityManager.getService().reportActivityFullyDrawn(this.mToken, this.mRestoredFromBundle);
            } catch (RemoteException unused) {
            }
        }
    }

    public DragAndDropPermissions requestDragAndDropPermissions(DragEvent dragEvent) {
        DragAndDropPermissions dragAndDropPermissionsObtain = DragAndDropPermissions.obtain(dragEvent);
        if (dragAndDropPermissionsObtain == null || !dragAndDropPermissionsObtain.take(getActivityToken())) {
            return null;
        }
        return dragAndDropPermissionsObtain;
    }

    public final void requestPermissions(String[] strArr, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException("requestCode should be >= 0");
        }
        if (this.mHasCurrentPermissionsRequest) {
            Log.w(TAG, "Can reqeust only one set of permissions at a time");
            onRequestPermissionsResult(i2, new String[0], new int[0]);
        } else {
            startActivityForResult(REQUEST_PERMISSIONS_WHO_PREFIX, getPackageManager().buildRequestPermissionsIntent(strArr), i2, null);
            this.mHasCurrentPermissionsRequest = true;
        }
    }

    public final void requestShowKeyboardShortcuts() {
        Intent intent = new Intent(Intent.ACTION_SHOW_KEYBOARD_SHORTCUTS);
        intent.setPackage(KEYBOARD_SHORTCUTS_RECEIVER_PKG_NAME);
        sendBroadcastAsUser(intent, UserHandle.SYSTEM);
    }

    @Deprecated
    public boolean requestVisibleBehind(boolean z2) {
        return false;
    }

    public final boolean requestWindowFeature(int i2) {
        return getWindow().requestFeature(i2);
    }

    public NonConfigurationInstances retainNonConfigurationInstances() {
        Object objOnRetainNonConfigurationInstance = onRetainNonConfigurationInstance();
        HashMap<String, Object> mapOnRetainNonConfigurationChildInstances = onRetainNonConfigurationChildInstances();
        FragmentManagerNonConfig fragmentManagerNonConfigRetainNestedNonConfig = this.mFragments.retainNestedNonConfig();
        this.mFragments.doLoaderStart();
        this.mFragments.doLoaderStop(true);
        ArrayMap<String, LoaderManager> arrayMapRetainLoaderNonConfig = this.mFragments.retainLoaderNonConfig();
        if (objOnRetainNonConfigurationInstance == null && mapOnRetainNonConfigurationChildInstances == null && fragmentManagerNonConfigRetainNestedNonConfig == null && arrayMapRetainLoaderNonConfig == null && this.mVoiceInteractor == null) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances = new NonConfigurationInstances();
        nonConfigurationInstances.activity = objOnRetainNonConfigurationInstance;
        nonConfigurationInstances.children = mapOnRetainNonConfigurationChildInstances;
        nonConfigurationInstances.fragments = fragmentManagerNonConfigRetainNestedNonConfig;
        nonConfigurationInstances.loaders = arrayMapRetainLoaderNonConfig;
        VoiceInteractor voiceInteractor = this.mVoiceInteractor;
        if (voiceInteractor != null) {
            voiceInteractor.retainInstance();
            nonConfigurationInstances.voiceInteractor = this.mVoiceInteractor;
        }
        return nonConfigurationInstances;
    }

    @Override // android.view.autofill.AutofillManager.AutofillClient
    public final void runOnUiThread(Runnable runnable) {
        if (Thread.currentThread() != this.mUiThread) {
            this.mHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void setActionBar(Toolbar toolbar) {
        ActionBar actionBar = getActionBar();
        if (actionBar instanceof WindowDecorActionBar) {
            throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_ACTION_BAR and set android:windowActionBar to false in your theme to use a Toolbar instead.");
        }
        this.mMenuInflater = null;
        if (actionBar != null) {
            actionBar.onDestroy();
        }
        if (toolbar != null) {
            ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, getTitle(), this);
            this.mActionBar = toolbarActionBar;
            this.mWindow.setCallback(toolbarActionBar.getWrappedWindowCallback());
        } else {
            this.mActionBar = null;
            this.mWindow.setCallback(this);
        }
        invalidateOptionsMenu();
    }

    public void setContentTransitionManager(TransitionManager transitionManager) {
        getWindow().setTransitionManager(transitionManager);
    }

    public void setContentView(int i2) {
        getWindow().setContentView(i2);
        initWindowDecorActionBar();
    }

    public final void setDefaultKeyMode(int i2) {
        this.mDefaultKeyMode = i2;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3 && i2 != 4) {
                        throw new IllegalArgumentException();
                    }
                }
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            this.mDefaultKeySsb = spannableStringBuilder;
            Selection.setSelection(spannableStringBuilder, 0);
            return;
        }
        this.mDefaultKeySsb = null;
    }

    public void setDisablePreviewScreenshots(boolean z2) {
        try {
            ActivityManager.getService().setDisablePreviewScreenshots(this.mToken, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to call setDisablePreviewScreenshots", e2);
        }
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        if (sharedElementCallback == null) {
            sharedElementCallback = SharedElementCallback.NULL_CALLBACK;
        }
        this.mEnterTransitionListener = sharedElementCallback;
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        if (sharedElementCallback == null) {
            sharedElementCallback = SharedElementCallback.NULL_CALLBACK;
        }
        this.mExitTransitionListener = sharedElementCallback;
    }

    public final void setFeatureDrawable(int i2, Drawable drawable) {
        getWindow().setFeatureDrawable(i2, drawable);
    }

    public final void setFeatureDrawableAlpha(int i2, int i3) {
        getWindow().setFeatureDrawableAlpha(i2, i3);
    }

    public final void setFeatureDrawableResource(int i2, int i3) {
        getWindow().setFeatureDrawableResource(i2, i3);
    }

    public final void setFeatureDrawableUri(int i2, Uri uri) {
        getWindow().setFeatureDrawableUri(i2, uri);
    }

    public void setFinishOnTouchOutside(boolean z2) {
        this.mWindow.setCloseOnTouchOutside(z2);
    }

    public void setImmersive(boolean z2) {
        try {
            ActivityManager.getService().setImmersive(this.mToken, z2);
        } catch (RemoteException unused) {
        }
    }

    public void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public final void setMediaController(MediaController mediaController) {
        getWindow().setMediaController(mediaController);
    }

    public void setOverlayWithDecorCaptionEnabled(boolean z2) {
        this.mWindow.setOverlayWithDecorCaptionEnabled(z2);
    }

    public final void setParent(Activity activity) {
        this.mParent = activity;
    }

    @Deprecated
    public void setPersistent(boolean z2) {
    }

    @Deprecated
    public void setPictureInPictureArgs(PictureInPictureArgs pictureInPictureArgs) {
        setPictureInPictureParams(PictureInPictureArgs.convert(pictureInPictureArgs));
    }

    public void setPictureInPictureParams(PictureInPictureParams pictureInPictureParams) {
        try {
            if (deviceSupportsPictureInPictureMode()) {
                if (pictureInPictureParams == null) {
                    throw new IllegalArgumentException("Expected non-null picture-in-picture params");
                }
                ActivityManagerNative.getDefault().setPictureInPictureParams(this.mToken, pictureInPictureParams);
            }
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public final void setProgress(int i2) {
        getWindow().setFeatureInt(2, i2 + 0);
    }

    @Deprecated
    public final void setProgressBarIndeterminate(boolean z2) {
        getWindow().setFeatureInt(2, z2 ? -3 : -4);
    }

    @Deprecated
    public final void setProgressBarIndeterminateVisibility(boolean z2) {
        getWindow().setFeatureInt(5, z2 ? -1 : -2);
    }

    @Deprecated
    public final void setProgressBarVisibility(boolean z2) {
        getWindow().setFeatureInt(2, z2 ? -1 : -2);
    }

    public void setRequestedOrientation(int i2) {
        Activity activity = this.mParent;
        if (activity != null) {
            activity.setRequestedOrientation(i2);
        } else {
            try {
                ActivityManager.getService().setRequestedOrientation(this.mToken, i2);
            } catch (RemoteException unused) {
            }
        }
    }

    public final void setResult(int i2) {
        synchronized (this) {
            this.mResultCode = i2;
            this.mResultData = null;
        }
    }

    @Deprecated
    public final void setSecondaryProgress(int i2) {
        getWindow().setFeatureInt(2, i2 + 20000);
    }

    public void setShowWhenLocked(boolean z2) {
        try {
            ActivityManager.getService().setShowWhenLocked(this.mToken, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to call setShowWhenLocked", e2);
        }
    }

    public void setTaskDescription(ActivityManager.TaskDescription taskDescription) {
        ActivityManager.TaskDescription taskDescription2 = this.mTaskDescription;
        if (taskDescription2 != taskDescription) {
            taskDescription2.copyFromPreserveHiddenFields(taskDescription);
            if (taskDescription.getIconFilename() == null && taskDescription.getIcon() != null) {
                int launcherLargeIconSizeInner = ActivityManager.getLauncherLargeIconSizeInner(this);
                this.mTaskDescription.setIcon(Bitmap.createScaledBitmap(taskDescription.getIcon(), launcherLargeIconSizeInner, launcherLargeIconSizeInner, true));
            }
        }
        try {
            ActivityManager.getService().setTaskDescription(this.mToken, this.mTaskDescription);
        } catch (RemoteException unused) {
        }
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        super.setTheme(i2);
        this.mWindow.setTheme(i2);
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        onTitleChanged(charSequence, this.mTitleColor);
        Activity activity = this.mParent;
        if (activity != null) {
            activity.onChildTitleChanged(this, charSequence);
        }
    }

    @Deprecated
    public void setTitleColor(int i2) {
        this.mTitleColor = i2;
        onTitleChanged(this.mTitle, i2);
    }

    public void setTurnScreenOn(boolean z2) {
        try {
            ActivityManager.getService().setTurnScreenOn(this.mToken, z2);
        } catch (RemoteException e2) {
            Log.e(TAG, "Failed to call setTurnScreenOn", e2);
        }
    }

    public void setVisible(boolean z2) {
        if (this.mVisibleFromClient != z2) {
            this.mVisibleFromClient = z2;
            if (this.mVisibleFromServer) {
                if (z2) {
                    makeVisible();
                } else {
                    this.mDecor.setVisibility(4);
                }
            }
        }
    }

    public void setVoiceInteractor(IVoiceInteractor iVoiceInteractor) {
        VoiceInteractor voiceInteractor = this.mVoiceInteractor;
        if (voiceInteractor != null) {
            for (VoiceInteractor.Request request : voiceInteractor.getActiveRequests()) {
                request.cancel();
                request.clear();
            }
        }
        if (iVoiceInteractor == null) {
            this.mVoiceInteractor = null;
        } else {
            this.mVoiceInteractor = new VoiceInteractor(iVoiceInteractor, this, this, Looper.myLooper());
        }
    }

    public final void setVolumeControlStream(int i2) {
        getWindow().setVolumeControlStream(i2);
    }

    public void setVrModeEnabled(boolean z2, ComponentName componentName) throws PackageManager.NameNotFoundException {
        try {
            if (ActivityManager.getService().setVrMode(this.mToken, z2, componentName) == 0) {
            } else {
                throw new PackageManager.NameNotFoundException(componentName.flattenToString());
            }
        } catch (RemoteException unused) {
        }
    }

    public boolean shouldShowRequestPermissionRationale(String str) {
        return getPackageManager().shouldShowRequestPermissionRationale(str);
    }

    public boolean shouldUpRecreateTask(Intent intent) {
        try {
            PackageManager packageManager = getPackageManager();
            ComponentName component = intent.getComponent();
            if (component == null) {
                component = intent.resolveActivity(packageManager);
            }
            ActivityInfo activityInfo = packageManager.getActivityInfo(component, 0);
            if (activityInfo.taskAffinity == null) {
                return false;
            }
            return ActivityManager.getService().shouldUpRecreateTask(this.mToken, activityInfo.taskAffinity);
        } catch (PackageManager.NameNotFoundException | RemoteException unused) {
            return false;
        }
    }

    public boolean showAssist(Bundle bundle) {
        try {
            return ActivityManager.getService().showAssistFromActivity(this.mToken, bundle);
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public final void showDialog(int i2) {
        showDialog(i2, null);
    }

    public void showLockTaskEscapeMessage() {
        try {
            ActivityManager.getService().showLockTaskEscapeMessage(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    public ActionMode startActionMode(ActionMode.Callback callback) {
        return this.mWindow.getDecorView().startActionMode(callback);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivities(Intent[] intentArr) {
        startActivities(intentArr, null);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        startActivity(intent, null);
    }

    public void startActivityAsCaller(Intent intent, Bundle bundle, boolean z2, int i2) {
        if (this.mParent != null) {
            throw new RuntimeException("Can't be called from a child");
        }
        Bundle bundleTransferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult activityResultExecStartActivityAsCaller = this.mInstrumentation.execStartActivityAsCaller(this, this.mMainThread.getApplicationThread(), this.mToken, this, intent, -1, bundleTransferSpringboardActivityOptions, z2, i2);
        if (activityResultExecStartActivityAsCaller != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, -1, activityResultExecStartActivityAsCaller.getResultCode(), activityResultExecStartActivityAsCaller.getResultData());
        }
        cancelInputsAndStartExitTransition(bundleTransferSpringboardActivityOptions);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivityAsUser(Intent intent, UserHandle userHandle) {
        startActivityAsUser(intent, null, userHandle);
    }

    public void startActivityAsUserFromFragment(Fragment fragment, Intent intent, int i2, Bundle bundle, UserHandle userHandle) {
        startActivityForResultAsUser(intent, fragment.mWho, i2, bundle, userHandle);
    }

    public void startActivityForResult(Intent intent, int i2) {
        startActivityForResult(intent, i2, null);
    }

    public void startActivityForResultAsUser(Intent intent, int i2, UserHandle userHandle) {
        startActivityForResultAsUser(intent, i2, null, userHandle);
    }

    public void startActivityFromChild(Activity activity, Intent intent, int i2) {
        startActivityFromChild(activity, intent, i2, null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i2) {
        startActivityFromFragment(fragment, intent, i2, null);
    }

    public boolean startActivityIfNeeded(Intent intent, int i2) {
        return startActivityIfNeeded(intent, i2, null);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        startIntentSender(intentSender, intent, i2, i3, i4, null);
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5) throws IntentSender.SendIntentException {
        startIntentSenderForResult(intentSender, i2, intent, i3, i4, i5, null);
    }

    public void startIntentSenderFromChild(Activity activity, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5) throws IntentSender.SendIntentException {
        startIntentSenderFromChild(activity, intentSender, i2, intent, i3, i4, i5, null);
    }

    public void startIntentSenderFromChildFragment(Fragment fragment, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
        startIntentSenderForResultInner(intentSender, fragment.mWho, i2, intent, i3, i4, bundle);
    }

    public void startLocalVoiceInteraction(Bundle bundle) {
        try {
            ActivityManager.getService().startLocalVoiceInteraction(this.mToken, bundle);
        } catch (RemoteException unused) {
        }
    }

    public void startLockTask() {
        try {
            ActivityManager.getService().startLockTaskModeByToken(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public void startManagingCursor(Cursor cursor) {
        synchronized (this.mManagedCursors) {
            this.mManagedCursors.add(new ManagedCursor(cursor));
        }
    }

    public boolean startNextMatchingActivity(Intent intent) {
        return startNextMatchingActivity(intent, null);
    }

    public void startPostponedEnterTransition() {
        this.mActivityTransitionState.startPostponedEnterTransition();
    }

    public void startSearch(String str, boolean z2, Bundle bundle, boolean z3) {
        ensureSearchManager();
        this.mSearchManager.startSearch(str, z2, getComponentName(), bundle, z3);
    }

    public void stopLocalVoiceInteraction() {
        try {
            ActivityManager.getService().stopLocalVoiceInteraction(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    public void stopLockTask() {
        try {
            ActivityManager.getService().stopLockTaskMode();
        } catch (RemoteException unused) {
        }
    }

    @Deprecated
    public void stopManagingCursor(Cursor cursor) {
        synchronized (this.mManagedCursors) {
            int size = this.mManagedCursors.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (this.mManagedCursors.get(i2).mCursor == cursor) {
                    this.mManagedCursors.remove(i2);
                    break;
                }
            }
        }
    }

    public void takeKeyEvents(boolean z2) {
        getWindow().takeKeyEvents(z2);
    }

    public void triggerSearch(String str, Bundle bundle) {
        ensureSearchManager();
        this.mSearchManager.triggerSearch(str, getComponentName(), bundle);
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    @Deprecated
    public boolean enterPictureInPictureMode(PictureInPictureArgs pictureInPictureArgs) {
        return enterPictureInPictureMode(PictureInPictureArgs.convert(pictureInPictureArgs));
    }

    @Deprecated
    public Dialog onCreateDialog(int i2, Bundle bundle) {
        return onCreateDialog(i2);
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return !"fragment".equals(str) ? onCreateView(str, context, attributeSet) : this.mFragments.onCreateView(view, str, context, attributeSet);
    }

    public void onMultiWindowModeChanged(boolean z2, Configuration configuration) {
        onMultiWindowModeChanged(z2);
    }

    public void onPictureInPictureModeChanged(boolean z2, Configuration configuration) {
        onPictureInPictureModeChanged(z2);
    }

    @Deprecated
    public void onPrepareDialog(int i2, Dialog dialog, Bundle bundle) {
        onPrepareDialog(i2, dialog);
    }

    public final void performCreate(Bundle bundle, PersistableBundle persistableBundle) {
        this.mCanEnterPictureInPicture = true;
        restoreHasCurrentPermissionRequest(bundle);
        if (persistableBundle != null) {
            onCreate(bundle, persistableBundle);
        } else {
            onCreate(bundle);
        }
        this.mActivityTransitionState.readState(bundle);
        this.mVisibleFromClient = !this.mWindow.getWindowStyle().getBoolean(10, false);
        this.mFragments.dispatchActivityCreated();
        this.mActivityTransitionState.setEnterActivityOptions(this, getActivityOptions());
    }

    @Deprecated
    public final boolean showDialog(int i2, Bundle bundle) {
        if (this.mManagedDialogs == null) {
            this.mManagedDialogs = new SparseArray<>();
        }
        ManagedDialog managedDialog = this.mManagedDialogs.get(i2);
        if (managedDialog == null) {
            managedDialog = new ManagedDialog();
            Dialog dialogCreateDialog = createDialog(Integer.valueOf(i2), null, bundle);
            managedDialog.mDialog = dialogCreateDialog;
            if (dialogCreateDialog == null) {
                return false;
            }
            this.mManagedDialogs.put(i2, managedDialog);
        }
        managedDialog.mArgs = bundle;
        onPrepareDialog(i2, managedDialog.mDialog, bundle);
        managedDialog.mDialog.show();
        return true;
    }

    public ActionMode startActionMode(ActionMode.Callback callback, int i2) {
        return this.mWindow.getDecorView().startActionMode(callback, i2);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivities(Intent[] intentArr, Bundle bundle) {
        this.mInstrumentation.execStartActivities(this, this.mMainThread.getApplicationThread(), this.mToken, this, intentArr, bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent, Bundle bundle) {
        if (bundle != null) {
            startActivityForResult(intent, -1, bundle);
        } else {
            startActivityForResult(intent, -1);
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivityAsUser(Intent intent, Bundle bundle, UserHandle userHandle) {
        if (this.mParent != null) {
            throw new RuntimeException("Can't be called from a child");
        }
        Bundle bundleTransferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, this.mEmbeddedID, intent, -1, bundleTransferSpringboardActivityOptions, userHandle);
        if (activityResultExecStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, -1, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
        }
        cancelInputsAndStartExitTransition(bundleTransferSpringboardActivityOptions);
    }

    public void startActivityForResult(Intent intent, int i2, Bundle bundle) {
        Activity activity = this.mParent;
        if (activity != null) {
            if (bundle != null) {
                activity.startActivityFromChild(this, intent, i2, bundle);
                return;
            } else {
                activity.startActivityFromChild(this, intent, i2);
                return;
            }
        }
        Bundle bundleTransferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, this, intent, i2, bundleTransferSpringboardActivityOptions);
        if (activityResultExecStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, i2, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
        }
        if (i2 >= 0) {
            this.mStartedActivity = true;
        }
        cancelInputsAndStartExitTransition(bundleTransferSpringboardActivityOptions);
    }

    public void startActivityForResultAsUser(Intent intent, int i2, Bundle bundle, UserHandle userHandle) {
        startActivityForResultAsUser(intent, this.mEmbeddedID, i2, bundle, userHandle);
    }

    public void startActivityFromChild(Activity activity, Intent intent, int i2, Bundle bundle) {
        Bundle bundleTransferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, activity, intent, i2, bundleTransferSpringboardActivityOptions);
        if (activityResultExecStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, activity.mEmbeddedID, i2, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
        }
        cancelInputsAndStartExitTransition(bundleTransferSpringboardActivityOptions);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i2, Bundle bundle) {
        startActivityForResult(fragment.mWho, intent, i2, bundle);
    }

    public boolean startActivityIfNeeded(Intent intent, int i2, Bundle bundle) {
        int iStartActivity;
        if (this.mParent != null) {
            throw new UnsupportedOperationException("startActivityIfNeeded can only be called from a top-level activity");
        }
        try {
            Uri uriOnProvideReferrer = onProvideReferrer();
            if (uriOnProvideReferrer != null) {
                intent.putExtra(Intent.EXTRA_REFERRER, uriOnProvideReferrer);
            }
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess(this);
            iStartActivity = ActivityManager.getService().startActivity(this.mMainThread.getApplicationThread(), getBasePackageName(), intent, intent.resolveTypeIfNeeded(getContentResolver()), this.mToken, this.mEmbeddedID, i2, 1, null, bundle);
        } catch (RemoteException unused) {
            iStartActivity = 1;
        }
        Instrumentation.checkStartActivityResult(iStartActivity, intent);
        if (i2 >= 0) {
            this.mStartedActivity = true;
        }
        return iStartActivity != 1;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startIntentSender(IntentSender intentSender, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (bundle != null) {
            startIntentSenderForResult(intentSender, -1, intent, i2, i3, i4, bundle);
        } else {
            startIntentSenderForResult(intentSender, -1, intent, i2, i3, i4);
        }
    }

    public void startIntentSenderForResult(IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
        Activity activity = this.mParent;
        if (activity == null) {
            startIntentSenderForResultInner(intentSender, this.mEmbeddedID, i2, intent, i3, i4, bundle);
        } else if (bundle != null) {
            activity.startIntentSenderFromChild(this, intentSender, i2, intent, i3, i4, i5, bundle);
        } else {
            activity.startIntentSenderFromChild(this, intentSender, i2, intent, i3, i4, i5);
        }
    }

    public void startIntentSenderFromChild(Activity activity, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
        startIntentSenderForResultInner(intentSender, activity.mEmbeddedID, i2, intent, i3, i4, bundle);
    }

    public boolean startNextMatchingActivity(Intent intent, Bundle bundle) {
        if (this.mParent != null) {
            throw new UnsupportedOperationException("startNextMatchingActivity can only be called from a top-level activity");
        }
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess(this);
            return ActivityManager.getService().startNextMatchingActivity(this.mToken, intent, bundle);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public boolean enterPictureInPictureMode(PictureInPictureParams pictureInPictureParams) {
        try {
            if (!deviceSupportsPictureInPictureMode()) {
                return false;
            }
            if (pictureInPictureParams != null) {
                if (this.mCanEnterPictureInPicture) {
                    return ActivityManagerNative.getDefault().enterPictureInPictureMode(this.mToken, pictureInPictureParams);
                }
                throw new IllegalStateException("Activity must be resumed to enter picture-in-picture");
            }
            throw new IllegalArgumentException("Expected non-null picture-in-picture params");
        } catch (RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public final Cursor managedQuery(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor cursorQuery = getContentResolver().query(uri, strArr, str, strArr2, str2);
        if (cursorQuery != null) {
            startManagingCursor(cursorQuery);
        }
        return cursorQuery;
    }

    public final void performRestoreInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        onRestoreInstanceState(bundle, persistableBundle);
        if (bundle != null) {
            restoreManagedDialogs(bundle);
        }
    }

    public void setContentView(View view) {
        getWindow().setContentView(view);
        initWindowDecorActionBar();
    }

    public void startActivityForResultAsUser(Intent intent, String str, int i2, Bundle bundle, UserHandle userHandle) {
        if (this.mParent == null) {
            Bundle bundleTransferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
            Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, str, intent, i2, bundleTransferSpringboardActivityOptions, userHandle);
            if (activityResultExecStartActivity != null) {
                this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, i2, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
            }
            if (i2 >= 0) {
                this.mStartedActivity = true;
            }
            cancelInputsAndStartExitTransition(bundleTransferSpringboardActivityOptions);
            return;
        }
        throw new RuntimeException("Can't be called from a child");
    }

    public void onRestoreInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        if (bundle != null) {
            onRestoreInstanceState(bundle);
        }
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        if ((getResources().getConfiguration().uiMode & 15) == 4) {
            return false;
        }
        startSearch(null, false, null, false);
        return true;
    }

    public void onPostCreate(Bundle bundle, PersistableBundle persistableBundle) {
        onPostCreate(bundle);
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i2) {
        try {
            this.mActionModeTypeStarting = i2;
            return onWindowStartingActionMode(callback);
        } finally {
            this.mActionModeTypeStarting = 0;
        }
    }

    public final void performSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        onSaveInstanceState(bundle, persistableBundle);
        saveManagedDialogs(bundle);
        storeHasCurrentPermissionRequest(bundle);
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getWindow().setContentView(view, layoutParams);
        initWindowDecorActionBar();
    }

    public final void setResult(int i2, Intent intent) {
        synchronized (this) {
            this.mResultCode = i2;
            this.mResultData = intent;
        }
    }

    public void setTitle(int i2) {
        setTitle(getText(i2));
    }

    public void onSaveInstanceState(Bundle bundle, PersistableBundle persistableBundle) {
        onSaveInstanceState(bundle);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivityForResult(String str, Intent intent, int i2, Bundle bundle) {
        Uri uriOnProvideReferrer = onProvideReferrer();
        if (uriOnProvideReferrer != null) {
            intent.putExtra(Intent.EXTRA_REFERRER, uriOnProvideReferrer);
        }
        Bundle bundleTransferSpringboardActivityOptions = transferSpringboardActivityOptions(bundle);
        Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, str, intent, i2, bundleTransferSpringboardActivityOptions);
        if (activityResultExecStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, str, i2, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
        }
        cancelInputsAndStartExitTransition(bundleTransferSpringboardActivityOptions);
    }

    public void finish() {
        finish(0);
    }

    public void onCreate(Bundle bundle, PersistableBundle persistableBundle) {
        onCreate(bundle);
    }
}
