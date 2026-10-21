package android.app;

import android.R;
import android.content.ComponentCallbacks2;
import android.content.ComponentName;
import android.content.Context;
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
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.StrictMode;
import android.os.UserHandle;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.TextKeyListener;
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
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManagerGlobal;
import android.view.accessibility.AccessibilityEvent;
import android.webkit.WebView;
import j.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import p.b;

/* JADX INFO: loaded from: classes.dex */
public class Activity extends ContextThemeWrapper implements LayoutInflater.Factory2, Window.Callback, KeyEvent.Callback, View.OnCreateContextMenuListener, ComponentCallbacks2 {
    private static final boolean DEBUG_LIFECYCLE = false;
    public static final int DEFAULT_KEYS_DIALER = 1;
    public static final int DEFAULT_KEYS_DISABLE = 0;
    public static final int DEFAULT_KEYS_SEARCH_GLOBAL = 4;
    public static final int DEFAULT_KEYS_SEARCH_LOCAL = 3;
    public static final int DEFAULT_KEYS_SHORTCUT = 2;
    public static final int[] FOCUSED_STATE_SET = {R.attr.state_focused};
    public static final String FRAGMENTS_TAG = "android:fragments";
    public static final int RESULT_CANCELED = 0;
    public static final int RESULT_FIRST_USER = 1;
    public static final int RESULT_OK = -1;
    private static final String SAVED_DIALOGS_TAG = "android:savedDialogs";
    private static final String SAVED_DIALOG_ARGS_KEY_PREFIX = "android:dialog_args_";
    private static final String SAVED_DIALOG_IDS_KEY = "android:savedDialogIds";
    private static final String SAVED_DIALOG_KEY_PREFIX = "android:dialog_";
    private static final String TAG = "Activity";
    private static final String WINDOW_HIERARCHY_TAG = "android:viewHierarchyState";
    public ActivityInfo mActivityInfo;
    public ArrayMap<String, LoaderManagerImpl> mAllLoaderManagers;
    private Application mApplication;
    public boolean mCalled;
    private boolean mChangeCanvasToTranslucent;
    public boolean mCheckedForLoaderManager;
    private ComponentName mComponent;
    public int mConfigChangeFlags;
    public Configuration mCurrentConfig;
    private boolean mDestroyed;
    public String mEmbeddedID;
    private boolean mEnableDefaultActionBarUp;
    public boolean mFinished;
    private int mIdent;
    private Instrumentation mInstrumentation;
    public Intent mIntent;
    public NonConfigurationInstances mLastNonConfigurationInstances;
    public LoaderManagerImpl mLoaderManager;
    public boolean mLoadersStarted;
    public ActivityThread mMainThread;
    private SparseArray<ManagedDialog> mManagedDialogs;
    private MenuInflater mMenuInflater;
    public Activity mParent;
    public boolean mResumed;
    private SearchManager mSearchManager;
    public boolean mStartedActivity;
    private boolean mStopped;
    private CharSequence mTitle;
    private IBinder mToken;
    private TranslucentConversionListener mTranslucentCallback;
    private Thread mUiThread;
    private Window mWindow;
    private WindowManager mWindowManager;
    private boolean mDoReportFullyDrawn = true;
    public boolean mTemporaryPause = false;
    public boolean mChangingConfigurations = false;
    public View mDecor = null;
    public boolean mWindowAdded = false;
    public boolean mVisibleFromServer = false;
    public boolean mVisibleFromClient = true;
    public a mActionBar = null;
    private int mTitleColor = 0;
    public final FragmentManagerImpl mFragments = new FragmentManagerImpl();
    public final FragmentContainer mContainer = new FragmentContainer() { // from class: android.app.Activity.1
        @Override // android.app.FragmentContainer
        public View findViewById(int i2) {
            return Activity.this.findViewById(i2);
        }
    };
    private final ArrayList<ManagedCursor> mManagedCursors = new ArrayList<>();
    public int mResultCode = 0;
    public Intent mResultData = null;
    private boolean mTitleReady = false;
    private int mDefaultKeyMode = 0;
    private SpannableStringBuilder mDefaultKeySsb = null;
    private final Object mInstanceTracker = StrictMode.trackActivity(this);
    public final Handler mHandler = new Handler();

    public static final class ManagedCursor {
        private final Cursor mCursor;
        private boolean mReleased = false;
        private boolean mUpdated = false;

        public ManagedCursor(Cursor cursor) {
            this.mCursor = cursor;
        }
    }

    public static class ManagedDialog {
        public Bundle mArgs;
        public Dialog mDialog;

        private ManagedDialog() {
        }
    }

    public static final class NonConfigurationInstances {
        public Object activity;
        public HashMap<String, Object> children;
        public ArrayList<Fragment> fragments;
        public ArrayMap<String, LoaderManagerImpl> loaders;
    }

    public interface TranslucentConversionListener {
        void onTranslucentConversionComplete(boolean z2);
    }

    private Dialog createDialog(Integer num, Bundle bundle, Bundle bundle2) {
        Dialog dialogOnCreateDialog = onCreateDialog(num.intValue(), bundle2);
        if (dialogOnCreateDialog == null) {
            return null;
        }
        dialogOnCreateDialog.dispatchOnCreate(bundle);
        return dialogOnCreateDialog;
    }

    private void ensureSearchManager() {
        if (this.mSearchManager != null) {
            return;
        }
        this.mSearchManager = new SearchManager(this, null);
    }

    private void initActionBar() {
        Window window = getWindow();
        window.getDecorView();
        if (!isChild() && window.hasFeature(8) && this.mActionBar == null) {
            a aVar = new a(this);
            this.mActionBar = aVar;
            aVar.E(this.mEnableDefaultActionBarUp);
            this.mWindow.setDefaultIcon(this.mActivityInfo.getIconResource());
            this.mWindow.setDefaultLogo(this.mActivityInfo.getLogoResource());
        }
    }

    private IllegalArgumentException missingDialog(int i2) {
        return new IllegalArgumentException("no dialog with id " + i2 + " was ever shown via Activity#showDialog");
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
        return SAVED_DIALOG_ARGS_KEY_PREFIX + i2;
    }

    private static String savedDialogKeyFor(int i2) {
        return SAVED_DIALOG_KEY_PREFIX + i2;
    }

    private void startIntentSenderForResultInner(IntentSender intentSender, int i2, Intent intent, int i3, int i4, Activity activity, Bundle bundle) throws IntentSender.SendIntentException {
        String strResolveTypeIfNeeded;
        if (intent != null) {
            try {
                intent.migrateExtraStreamToClipData();
                intent.prepareToLeaveProcess();
                strResolveTypeIfNeeded = intent.resolveTypeIfNeeded(getContentResolver());
            } catch (RemoteException unused) {
            }
        } else {
            strResolveTypeIfNeeded = null;
        }
        int iStartActivityIntentSender = ActivityManagerNative.getDefault().startActivityIntentSender(this.mMainThread.getApplicationThread(), intentSender, intent, strResolveTypeIfNeeded, this.mToken, activity.mEmbeddedID, i2, i3, i4, bundle);
        if (iStartActivityIntentSender == -6) {
            throw new IntentSender.SendIntentException();
        }
        Instrumentation.checkStartActivityResult(iStartActivityIntentSender, null);
        if (i2 >= 0) {
            this.mStartedActivity = true;
        }
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getWindow().addContentView(view, layoutParams);
        initActionBar();
    }

    public final void attach(Context context, ActivityThread activityThread, Instrumentation instrumentation, IBinder iBinder, Application application, Intent intent, ActivityInfo activityInfo, CharSequence charSequence, Activity activity, String str, NonConfigurationInstances nonConfigurationInstances, Configuration configuration) {
        attach(context, activityThread, instrumentation, iBinder, 0, application, intent, activityInfo, charSequence, activity, str, nonConfigurationInstances, configuration);
    }

    public void closeContextMenu() {
        this.mWindow.closePanel(6);
    }

    public void closeOptionsMenu() {
        this.mWindow.closePanel(0);
    }

    public void convertFromTranslucent() {
        try {
            this.mTranslucentCallback = null;
            if (ActivityManagerNative.getDefault().convertFromTranslucent(this.mToken)) {
                WindowManagerGlobal.getInstance().changeCanvasOpacity(this.mToken, true);
            }
        } catch (RemoteException unused) {
        }
    }

    public void convertToTranslucent(TranslucentConversionListener translucentConversionListener) {
        try {
            this.mTranslucentCallback = translucentConversionListener;
            this.mChangeCanvasToTranslucent = ActivityManagerNative.getDefault().convertToTranslucent(this.mToken);
        } catch (RemoteException unused) {
        }
    }

    public PendingIntent createPendingResult(int i2, Intent intent, int i3) {
        String packageName = getPackageName();
        try {
            intent.prepareToLeaveProcess();
            IActivityManager iActivityManager = ActivityManagerNative.getDefault();
            Activity activity = this.mParent;
            IIntentSender intentSender = iActivityManager.getIntentSender(3, packageName, activity == null ? this.mToken : activity.mToken, this.mEmbeddedID, i2, new Intent[]{intent}, null, i3, null, UserHandle.myUserId());
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

    public void dispatchActivityResult(String str, int i2, int i3, Intent intent) {
        this.mFragments.noteStateNotSaved();
        if (str == null) {
            onActivityResult(i2, i3, intent);
            return;
        }
        Fragment fragmentFindFragmentByWho = this.mFragments.findFragmentByWho(str);
        if (fragmentFindFragmentByWho != null) {
            fragmentFindFragmentByWho.onActivityResult(i2, i3, intent);
        }
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
        onUserInteraction();
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
        printWriter.println(this.mFinished);
        printWriter.print(str2);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.mLoadersStarted);
        printWriter.print(str2);
        printWriter.print("mChangingConfigurations=");
        printWriter.println(this.mChangingConfigurations);
        printWriter.print(str2);
        printWriter.print("mCurrentConfig=");
        printWriter.println(this.mCurrentConfig);
        if (this.mLoaderManager != null) {
            printWriter.print(str);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.mLoaderManager)));
            printWriter.println(":");
            this.mLoaderManager.dump(str + "  ", fileDescriptor, printWriter, strArr);
        }
        this.mFragments.dump(str, fileDescriptor, printWriter, strArr);
        if (getWindow() != null && getWindow().peekDecorView() != null && getWindow().peekDecorView().getViewRootImpl() != null) {
            getWindow().peekDecorView().getViewRootImpl().dump(str, fileDescriptor, printWriter, strArr);
        }
        this.mHandler.getLooper().dump(new PrintWriterPrinter(printWriter), str);
    }

    public View findViewById(int i2) {
        return getWindow().findViewById(i2);
    }

    public void finish() {
        int i2;
        Intent intent;
        Activity activity = this.mParent;
        if (activity != null) {
            activity.finishFromChild(this);
            return;
        }
        synchronized (this) {
            i2 = this.mResultCode;
            intent = this.mResultData;
        }
        if (intent != null) {
            try {
                intent.prepareToLeaveProcess();
            } catch (RemoteException unused) {
                return;
            }
        }
        if (ActivityManagerNative.getDefault().finishActivity(this.mToken, i2, intent)) {
            this.mFinished = true;
        }
    }

    public void finishActivity(int i2) {
        Activity activity = this.mParent;
        if (activity != null) {
            activity.finishActivityFromChild(this, i2);
        } else {
            try {
                ActivityManagerNative.getDefault().finishSubActivity(this.mToken, this.mEmbeddedID, i2);
            } catch (RemoteException unused) {
            }
        }
    }

    public void finishActivityFromChild(Activity activity, int i2) {
        try {
            ActivityManagerNative.getDefault().finishSubActivity(this.mToken, activity.mEmbeddedID, i2);
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
            if (ActivityManagerNative.getDefault().finishActivityAffinity(this.mToken)) {
                this.mFinished = true;
            }
        } catch (RemoteException unused) {
        }
    }

    public void finishFromChild(Activity activity) {
        finish();
    }

    public ActionBar getActionBar() {
        initActionBar();
        return this.mActionBar;
    }

    public final IBinder getActivityToken() {
        Activity activity = this.mParent;
        return activity != null ? activity.getActivityToken() : this.mToken;
    }

    public final Application getApplication() {
        return this.mApplication;
    }

    public ComponentName getCallingActivity() {
        try {
            return ActivityManagerNative.getDefault().getCallingActivity(this.mToken);
        } catch (RemoteException unused) {
            return null;
        }
    }

    public String getCallingPackage() {
        try {
            return ActivityManagerNative.getDefault().getCallingPackage(this.mToken);
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

    public View getCurrentFocus() {
        Window window = this.mWindow;
        if (window != null) {
            return window.getCurrentFocus();
        }
        return null;
    }

    public FragmentManager getFragmentManager() {
        return this.mFragments;
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

    @Deprecated
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
        LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
        if (loaderManagerImpl != null) {
            return loaderManagerImpl;
        }
        this.mCheckedForLoaderManager = true;
        LoaderManagerImpl loaderManager = getLoaderManager("(root)", this.mLoadersStarted, true);
        this.mLoaderManager = loaderManager;
        return loaderManager;
    }

    public String getLocalClassName() {
        String packageName = getPackageName();
        String className = this.mComponent.getClassName();
        int length = packageName.length();
        return (className.startsWith(packageName) && className.length() > length && className.charAt(length) == '.') ? className.substring(length + 1) : className;
    }

    public MenuInflater getMenuInflater() {
        if (this.mMenuInflater == null) {
            initActionBar();
            if (this.mActionBar != null) {
                this.mMenuInflater = new MenuInflater(this.mActionBar.getThemedContext(), this);
            } else {
                this.mMenuInflater = new MenuInflater(this);
            }
        }
        return this.mMenuInflater;
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

    public int getRequestedOrientation() {
        Activity activity = this.mParent;
        if (activity != null) {
            return activity.getRequestedOrientation();
        }
        try {
            return ActivityManagerNative.getDefault().getRequestedOrientation(this.mToken);
        } catch (RemoteException unused) {
            return -1;
        }
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
            return ActivityManagerNative.getDefault().getTaskForActivity(this.mToken, false);
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

    public final int getVolumeControlStream() {
        return getWindow().getVolumeControlStream();
    }

    public Window getWindow() {
        return this.mWindow;
    }

    public WindowManager getWindowManager() {
        return this.mWindowManager;
    }

    public boolean hasWindowFocus() {
        View decorView;
        Window window = getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return false;
        }
        return decorView.hasWindowFocus();
    }

    public void invalidateFragment(String str) {
        LoaderManagerImpl loaderManagerImpl;
        ArrayMap<String, LoaderManagerImpl> arrayMap = this.mAllLoaderManagers;
        if (arrayMap == null || (loaderManagerImpl = arrayMap.get(str)) == null || loaderManagerImpl.mRetaining) {
            return;
        }
        loaderManagerImpl.doDestroy();
        this.mAllLoaderManagers.remove(str);
    }

    public void invalidateOptionsMenu() {
        this.mWindow.invalidatePanelMenu(0);
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
            return ActivityManagerNative.getDefault().isImmersive(this.mToken);
        } catch (RemoteException unused) {
            return false;
        }
    }

    public final boolean isResumed() {
        return this.mResumed;
    }

    public boolean isTaskRoot() {
        try {
            return ActivityManagerNative.getDefault().getTaskForActivity(this.mToken, true) >= 0;
        } catch (RemoteException unused) {
            return false;
        }
    }

    public void makeVisible() {
        if (!this.mWindowAdded) {
            getWindowManager().addView(this.mDecor, getWindow().getAttributes());
            this.mWindowAdded = true;
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
            return ActivityManagerNative.getDefault().moveActivityTaskToBack(this.mToken, z2);
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
            intent2.prepareToLeaveProcess();
        }
        try {
            intent.prepareToLeaveProcess();
            return ActivityManagerNative.getDefault().navigateUpTo(this.mToken, intent, i2, intent2);
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

    public void onActivityResult(int i2, int i3, Intent intent) {
    }

    @Override // android.view.ContextThemeWrapper
    public void onApplyThemeResource(Resources.Theme theme, int i2, boolean z2) {
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
    }

    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
    }

    public void onBackPressed() {
        if (this.mFragments.popBackStackImmediate()) {
            return;
        }
        finish();
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
        a aVar = this.mActionBar;
        if (aVar != null) {
            aVar.D(configuration);
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
            this.mAllLoaderManagers = nonConfigurationInstances.loaders;
        }
        if (this.mActivityInfo.parentActivityName != null) {
            a aVar = this.mActionBar;
            if (aVar == null) {
                this.mEnableDefaultActionBarUp = true;
            } else {
                aVar.E(true);
            }
        }
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable(FRAGMENTS_TAG);
            FragmentManagerImpl fragmentManagerImpl = this.mFragments;
            NonConfigurationInstances nonConfigurationInstances2 = this.mLastNonConfigurationInstances;
            fragmentManagerImpl.restoreAllState(parcelable, nonConfigurationInstances2 != null ? nonConfigurationInstances2.fragments : null);
        }
        this.mFragments.dispatchCreate();
        getApplication().dispatchActivityCreated(this, bundle);
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

    @Deprecated
    public Dialog onCreateDialog(int i2, Bundle bundle) {
        return onCreateDialog(i2);
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

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        if (!"fragment".equals(str)) {
            return onCreateView(str, context, attributeSet);
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, i.a.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(0);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(1, -1);
        String string = typedArrayObtainStyledAttributes.getString(2);
        typedArrayObtainStyledAttributes.recycle();
        int id = view != null ? view.getId() : 0;
        if (id == -1 && resourceId == -1 && string == null) {
            throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
        }
        Fragment fragmentFindFragmentById = resourceId != -1 ? this.mFragments.findFragmentById(resourceId) : null;
        if (fragmentFindFragmentById == null && string != null) {
            fragmentFindFragmentById = this.mFragments.findFragmentByTag(string);
        }
        if (fragmentFindFragmentById == null && id != -1) {
            fragmentFindFragmentById = this.mFragments.findFragmentById(id);
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + attributeValue + " existing=" + fragmentFindFragmentById);
        }
        if (fragmentFindFragmentById == null) {
            fragmentFindFragmentById = Fragment.instantiate(this, attributeValue);
            fragmentFindFragmentById.mFromLayout = true;
            fragmentFindFragmentById.mFragmentId = resourceId != 0 ? resourceId : id;
            fragmentFindFragmentById.mContainerId = id;
            fragmentFindFragmentById.mTag = string;
            fragmentFindFragmentById.mInLayout = true;
            fragmentFindFragmentById.mFragmentManager = this.mFragments;
            fragmentFindFragmentById.onInflate(this, attributeSet, fragmentFindFragmentById.mSavedFragmentState);
            this.mFragments.addFragment(fragmentFindFragmentById, true);
        } else {
            if (fragmentFindFragmentById.mInLayout) {
                throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id) + " with another fragment for " + attributeValue);
            }
            fragmentFindFragmentById.mInLayout = true;
            if (!fragmentFindFragmentById.mRetaining) {
                fragmentFindFragmentById.onInflate(this, attributeSet, fragmentFindFragmentById.mSavedFragmentState);
            }
            this.mFragments.moveToState(fragmentFindFragmentById);
        }
        View view2 = fragmentFindFragmentById.mView;
        if (view2 != null) {
            if (resourceId != 0) {
                view2.setId(resourceId);
            }
            if (fragmentFindFragmentById.mView.getTag() == null) {
                fragmentFindFragmentById.mView.setTag(string);
            }
            return fragmentFindFragmentById.mView;
        }
        throw new IllegalStateException("Fragment " + attributeValue + " did not create a view.");
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
        getApplication().dispatchActivityDestroyed(this);
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
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
            return getWindow().performPanelShortcut(0, i2, keyEvent, 2);
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
        return false;
    }

    @Override // android.view.KeyEvent.Callback
    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (getApplicationInfo().targetSdkVersion < 5 || i2 != 4 || !keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        onBackPressed();
        return true;
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
        this.mFragments.dispatchLowMemory();
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        a aVar;
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
        if (menuItem.getItemId() != 16908332 || (aVar = this.mActionBar) == null || (aVar.getDisplayOptions() & 4) == 0) {
            return false;
        }
        Activity activity = this.mParent;
        return activity == null ? onNavigateUp() : activity.onNavigateUpFromChild(this);
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        if (i2 == 8) {
            initActionBar();
            a aVar = this.mActionBar;
            if (aVar != null) {
                aVar.t(true);
            } else {
                Log.e(TAG, "Tried to open action bar menu with no action bar");
            }
        }
        return true;
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
            initActionBar();
            this.mActionBar.t(false);
        }
    }

    public void onPause() {
        getApplication().dispatchActivityPaused(this);
        this.mCalled = true;
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
        a aVar = this.mActionBar;
        if (aVar != null) {
            aVar.G(true);
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

    public void onProvideAssistData(Bundle bundle) {
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
        Parcelable parcelableSaveAllState = this.mFragments.saveAllState();
        if (parcelableSaveAllState != null) {
            bundle.putParcelable(FRAGMENTS_TAG, parcelableSaveAllState);
        }
        getApplication().dispatchActivitySaveInstanceState(this, bundle);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        startSearch(null, false, null, false);
        return true;
    }

    public void onStart() {
        this.mCalled = true;
        if (!this.mLoadersStarted) {
            this.mLoadersStarted = true;
            LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
            if (loaderManagerImpl != null) {
                loaderManagerImpl.doStart();
            } else if (!this.mCheckedForLoaderManager) {
                this.mLoaderManager = getLoaderManager("(root)", true, false);
            }
            this.mCheckedForLoaderManager = true;
        }
        getApplication().dispatchActivityStarted(this);
    }

    public void onStop() {
        a aVar = this.mActionBar;
        if (aVar != null) {
            aVar.G(false);
        }
        getApplication().dispatchActivityStopped(this);
        this.mTranslucentCallback = null;
        this.mCalled = true;
    }

    public void onTitleChanged(CharSequence charSequence, int i2) {
        Window window;
        if (!this.mTitleReady || (window = getWindow()) == null) {
            return;
        }
        window.setTitle(charSequence);
        if (i2 != 0) {
            window.setTitleColor(i2);
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

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        View view;
        if (this.mParent != null || (view = this.mDecor) == null || view.getParent() == null) {
            return;
        }
        getWindowManager().updateViewLayout(view, layoutParams);
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        initActionBar();
        a aVar = this.mActionBar;
        if (aVar != null) {
            return aVar.K(callback);
        }
        return null;
    }

    public void openContextMenu(View view) {
        view.showContextMenu();
    }

    public void openOptionsMenu() {
        this.mWindow.openPanel(0, null);
    }

    public void overridePendingTransition(int i2, int i3) {
        try {
            ActivityManagerNative.getDefault().overridePendingTransition(this.mToken, getPackageName(), i2, i3);
        } catch (RemoteException unused) {
        }
    }

    public final void performCreate(Bundle bundle) {
        onCreate(bundle);
        this.mVisibleFromClient = !this.mWindow.getWindowStyle().getBoolean(10, false);
        this.mFragments.dispatchActivityCreated();
    }

    public final void performDestroy() {
        this.mDestroyed = true;
        this.mWindow.destroy();
        this.mFragments.dispatchDestroy();
        onDestroy();
        LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
        if (loaderManagerImpl != null) {
            loaderManagerImpl.doDestroy();
        }
    }

    public final void performPause() {
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
        this.mFragments.noteStateNotSaved();
        if (this.mStopped) {
            this.mStopped = false;
            if (this.mToken != null && this.mParent == null) {
                WindowManagerGlobal.getInstance().setStoppedState(this.mToken, false);
            }
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

    public final void performResume() {
        performRestart();
        this.mFragments.execPendingActions();
        this.mLastNonConfigurationInstances = null;
        this.mCalled = false;
        this.mInstrumentation.callActivityOnResume(this);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onResume()");
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

    public final void performSaveInstanceState(Bundle bundle) {
        onSaveInstanceState(bundle);
        saveManagedDialogs(bundle);
    }

    public final void performStart() {
        this.mFragments.noteStateNotSaved();
        this.mCalled = false;
        this.mFragments.execPendingActions();
        this.mInstrumentation.callActivityOnStart(this);
        if (!this.mCalled) {
            throw new SuperNotCalledException("Activity " + this.mComponent.toShortString() + " did not call through to super.onStart()");
        }
        this.mFragments.dispatchStart();
        ArrayMap<String, LoaderManagerImpl> arrayMap = this.mAllLoaderManagers;
        if (arrayMap != null) {
            int size = arrayMap.size();
            LoaderManagerImpl[] loaderManagerImplArr = new LoaderManagerImpl[size];
            for (int i2 = size - 1; i2 >= 0; i2--) {
                loaderManagerImplArr[i2] = this.mAllLoaderManagers.valueAt(i2);
            }
            for (int i3 = 0; i3 < size; i3++) {
                LoaderManagerImpl loaderManagerImpl = loaderManagerImplArr[i3];
                loaderManagerImpl.finishRetain();
                loaderManagerImpl.doReportStart();
            }
        }
    }

    public final void performStop() {
        this.mDoReportFullyDrawn = false;
        if (this.mLoadersStarted) {
            this.mLoadersStarted = false;
            LoaderManagerImpl loaderManagerImpl = this.mLoaderManager;
            if (loaderManagerImpl != null) {
                if (this.mChangingConfigurations) {
                    loaderManagerImpl.doRetain();
                } else {
                    loaderManagerImpl.doStop();
                }
            }
        }
        if (!this.mStopped) {
            Window window = this.mWindow;
            if (window != null) {
                window.closeAllPanels();
            }
            if (this.mToken != null && this.mParent == null) {
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

    public void recreate() {
        if (this.mParent != null) {
            throw new IllegalStateException("Can only be called on top-level activity");
        }
        if (Looper.myLooper() != this.mMainThread.getLooper()) {
            throw new IllegalStateException("Must be called from main thread");
        }
        this.mMainThread.requestRelaunchActivity(this.mToken, null, null, 0, false, null, false);
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
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
                ActivityManagerNative.getDefault().reportActivityFullyDrawn(this.mToken);
            } catch (RemoteException unused) {
            }
        }
    }

    public final boolean requestWindowFeature(int i2) {
        return getWindow().requestFeature(i2);
    }

    public NonConfigurationInstances retainNonConfigurationInstances() {
        Object objOnRetainNonConfigurationInstance = onRetainNonConfigurationInstance();
        HashMap<String, Object> mapOnRetainNonConfigurationChildInstances = onRetainNonConfigurationChildInstances();
        ArrayList<Fragment> arrayListRetainNonConfig = this.mFragments.retainNonConfig();
        ArrayMap<String, LoaderManagerImpl> arrayMap = this.mAllLoaderManagers;
        int i2 = 0;
        if (arrayMap != null) {
            int size = arrayMap.size();
            LoaderManagerImpl[] loaderManagerImplArr = new LoaderManagerImpl[size];
            for (int i3 = size - 1; i3 >= 0; i3--) {
                loaderManagerImplArr[i3] = this.mAllLoaderManagers.valueAt(i3);
            }
            int i4 = 0;
            while (i2 < size) {
                LoaderManagerImpl loaderManagerImpl = loaderManagerImplArr[i2];
                if (loaderManagerImpl.mRetaining) {
                    i4 = 1;
                } else {
                    loaderManagerImpl.doDestroy();
                    this.mAllLoaderManagers.remove(loaderManagerImpl.mWho);
                }
                i2++;
            }
            i2 = i4;
        }
        if (objOnRetainNonConfigurationInstance == null && mapOnRetainNonConfigurationChildInstances == null && arrayListRetainNonConfig == null && i2 == 0) {
            return null;
        }
        NonConfigurationInstances nonConfigurationInstances = new NonConfigurationInstances();
        nonConfigurationInstances.activity = objOnRetainNonConfigurationInstance;
        nonConfigurationInstances.children = mapOnRetainNonConfigurationChildInstances;
        nonConfigurationInstances.fragments = arrayListRetainNonConfig;
        nonConfigurationInstances.loaders = this.mAllLoaderManagers;
        return nonConfigurationInstances;
    }

    public final void runOnUiThread(Runnable runnable) {
        if (Thread.currentThread() != this.mUiThread) {
            this.mHandler.post(runnable);
        } else {
            runnable.run();
        }
    }

    public void setContentView(int i2) {
        getWindow().setContentView(i2);
        initActionBar();
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
            ActivityManagerNative.getDefault().setImmersive(this.mToken, z2);
        } catch (RemoteException unused) {
        }
    }

    public void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public final void setParent(Activity activity) {
        this.mParent = activity;
    }

    @Deprecated
    public void setPersistent(boolean z2) {
    }

    public final void setProgress(int i2) {
        getWindow().setFeatureInt(2, i2 + 0);
    }

    public final void setProgressBarIndeterminate(boolean z2) {
        getWindow().setFeatureInt(2, z2 ? -3 : -4);
    }

    public final void setProgressBarIndeterminateVisibility(boolean z2) {
        getWindow().setFeatureInt(5, z2 ? -1 : -2);
    }

    public final void setProgressBarVisibility(boolean z2) {
        getWindow().setFeatureInt(2, z2 ? -1 : -2);
    }

    public void setRequestedOrientation(int i2) {
        Activity activity = this.mParent;
        if (activity != null) {
            activity.setRequestedOrientation(i2);
        } else {
            try {
                ActivityManagerNative.getDefault().setRequestedOrientation(this.mToken, i2);
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

    public final void setSecondaryProgress(int i2) {
        getWindow().setFeatureInt(2, i2 + Window.PROGRESS_SECONDARY_START);
    }

    public void setTitle(CharSequence charSequence) {
        this.mTitle = charSequence;
        onTitleChanged(charSequence, this.mTitleColor);
        Activity activity = this.mParent;
        if (activity != null) {
            activity.onChildTitleChanged(this, charSequence);
        }
    }

    public void setTitleColor(int i2) {
        this.mTitleColor = i2;
        onTitleChanged(this.mTitle, i2);
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

    public final void setVolumeControlStream(int i2) {
        getWindow().setVolumeControlStream(i2);
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
            return !ActivityManagerNative.getDefault().targetTaskAffinityMatchesActivity(this.mToken, activityInfo.taskAffinity);
        } catch (PackageManager.NameNotFoundException | RemoteException unused) {
            return false;
        }
    }

    @Deprecated
    public final void showDialog(int i2) {
        showDialog(i2, null);
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

    @Override // android.content.ContextWrapper, android.content.Context
    public void startActivityAsUser(Intent intent, UserHandle userHandle) {
        startActivityAsUser(intent, null, userHandle);
    }

    public void startActivityForResult(Intent intent, int i2) {
        startActivityForResult(intent, i2, null);
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

    @Deprecated
    public void startManagingCursor(Cursor cursor) {
        synchronized (this.mManagedCursors) {
            this.mManagedCursors.add(new ManagedCursor(cursor));
        }
    }

    public boolean startNextMatchingActivity(Intent intent) {
        return startNextMatchingActivity(intent, null);
    }

    public void startSearch(String str, boolean z2, Bundle bundle, boolean z3) {
        ensureSearchManager();
        this.mSearchManager.startSearch(str, z2, getComponentName(), bundle, z3);
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

    public final void attach(Context context, ActivityThread activityThread, Instrumentation instrumentation, IBinder iBinder, int i2, Application application, Intent intent, ActivityInfo activityInfo, CharSequence charSequence, Activity activity, String str, NonConfigurationInstances nonConfigurationInstances, Configuration configuration) {
        attachBaseContext(context);
        this.mFragments.attachActivity(this, this.mContainer, null);
        Window windowC = b.c(this);
        this.mWindow = windowC;
        windowC.setCallback(this);
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
        this.mComponent = intent.getComponent();
        this.mActivityInfo = activityInfo;
        this.mTitle = charSequence;
        this.mParent = activity;
        this.mEmbeddedID = str;
        this.mLastNonConfigurationInstances = nonConfigurationInstances;
        this.mWindow.setWindowManager((WindowManager) context.getSystemService(Context.WINDOW_SERVICE), this.mToken, this.mComponent.flattenToString(), (activityInfo.flags & 512) != 0);
        Activity activity2 = this.mParent;
        if (activity2 != null) {
            this.mWindow.setContainer(activity2.getWindow());
        }
        this.mWindowManager = this.mWindow.getWindowManager();
        this.mCurrentConfig = configuration;
    }

    @Deprecated
    public void onPrepareDialog(int i2, Dialog dialog, Bundle bundle) {
        onPrepareDialog(i2, dialog);
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
            throw new RuntimeException("Called be called from a child");
        }
        Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, this, intent, -1, bundle, userHandle);
        if (activityResultExecStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, -1, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
        }
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
        Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, this, intent, i2, bundle);
        if (activityResultExecStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, this.mEmbeddedID, i2, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
        }
        if (i2 >= 0) {
            this.mStartedActivity = true;
        }
        Window window = this.mWindow;
        View viewPeekDecorView = window != null ? window.peekDecorView() : null;
        if (viewPeekDecorView != null) {
            viewPeekDecorView.cancelPendingInputEvents();
        }
    }

    public void startActivityFromChild(Activity activity, Intent intent, int i2, Bundle bundle) {
        Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, activity, intent, i2, bundle);
        if (activityResultExecStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, activity.mEmbeddedID, i2, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
        }
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i2, Bundle bundle) {
        Instrumentation.ActivityResult activityResultExecStartActivity = this.mInstrumentation.execStartActivity(this, this.mMainThread.getApplicationThread(), this.mToken, fragment, intent, i2, bundle);
        if (activityResultExecStartActivity != null) {
            this.mMainThread.sendActivityResult(this.mToken, fragment.mWho, i2, activityResultExecStartActivity.getResultCode(), activityResultExecStartActivity.getResultData());
        }
    }

    public boolean startActivityIfNeeded(Intent intent, int i2, Bundle bundle) {
        int iStartActivity;
        if (this.mParent != null) {
            throw new UnsupportedOperationException("startActivityIfNeeded can only be called from a top-level activity");
        }
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess();
            iStartActivity = ActivityManagerNative.getDefault().startActivity(this.mMainThread.getApplicationThread(), getBasePackageName(), intent, intent.resolveTypeIfNeeded(getContentResolver()), this.mToken, this.mEmbeddedID, i2, 1, null, null, bundle);
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
            startIntentSenderForResultInner(intentSender, i2, intent, i3, i4, this, bundle);
        } else if (bundle != null) {
            activity.startIntentSenderFromChild(this, intentSender, i2, intent, i3, i4, i5, bundle);
        } else {
            activity.startIntentSenderFromChild(this, intentSender, i2, intent, i3, i4, i5);
        }
    }

    public void startIntentSenderFromChild(Activity activity, IntentSender intentSender, int i2, Intent intent, int i3, int i4, int i5, Bundle bundle) throws IntentSender.SendIntentException {
        startIntentSenderForResultInner(intentSender, i2, intent, i3, i4, activity, bundle);
    }

    public boolean startNextMatchingActivity(Intent intent, Bundle bundle) {
        if (this.mParent != null) {
            throw new UnsupportedOperationException("startNextMatchingActivity can only be called from a top-level activity");
        }
        try {
            intent.migrateExtraStreamToClipData();
            intent.prepareToLeaveProcess();
            return ActivityManagerNative.getDefault().startNextMatchingActivity(this.mToken, intent, bundle);
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

    public void setContentView(View view) {
        getWindow().setContentView(view);
        initActionBar();
    }

    public LoaderManagerImpl getLoaderManager(String str, boolean z2, boolean z3) {
        if (this.mAllLoaderManagers == null) {
            this.mAllLoaderManagers = new ArrayMap<>();
        }
        LoaderManagerImpl loaderManagerImpl = this.mAllLoaderManagers.get(str);
        if (loaderManagerImpl != null) {
            loaderManagerImpl.updateActivity(this);
            return loaderManagerImpl;
        }
        if (!z3) {
            return loaderManagerImpl;
        }
        LoaderManagerImpl loaderManagerImpl2 = new LoaderManagerImpl(str, this, z2);
        this.mAllLoaderManagers.put(str, loaderManagerImpl2);
        return loaderManagerImpl2;
    }

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        getWindow().setContentView(view, layoutParams);
        initActionBar();
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
}
