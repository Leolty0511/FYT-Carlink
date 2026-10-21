package android.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import com.android.internal.app.WindowDecorActionBar;
import com.android.internal.policy.PhoneWindow;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class Dialog implements DialogInterface, Window.Callback, KeyEvent.Callback, View.OnCreateContextMenuListener, Window.OnWindowDismissedCallback {
    private static final int CANCEL = 68;
    private static final String DIALOG_HIERARCHY_TAG = "android:dialogHierarchy";
    private static final String DIALOG_SHOWING_TAG = "android:dialogShowing";
    private static final int DISMISS = 67;
    private static final int SHOW = 69;
    private static final String TAG = "Dialog";
    private ActionBar mActionBar;
    private ActionMode mActionMode;
    private int mActionModeTypeStarting;
    private String mCancelAndDismissTaken;
    private Message mCancelMessage;
    protected boolean mCancelable;
    private boolean mCanceled;
    final Context mContext;
    private boolean mCreated;
    View mDecor;
    private final Runnable mDismissAction;
    private Message mDismissMessage;
    private final Handler mHandler;
    private final Handler mListenersHandler;
    private DialogInterface.OnKeyListener mOnKeyListener;
    private Activity mOwnerActivity;
    private SearchEvent mSearchEvent;
    private Message mShowMessage;
    private boolean mShowing;
    final Window mWindow;
    private final WindowManager mWindowManager;

    public static final class ListenersHandler extends Handler {
        private final WeakReference<DialogInterface> mDialog;

        public ListenersHandler(Dialog dialog) {
            this.mDialog = new WeakReference<>(dialog);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 67:
                    ((DialogInterface.OnDismissListener) message.obj).onDismiss(this.mDialog.get());
                    break;
                case 68:
                    ((DialogInterface.OnCancelListener) message.obj).onCancel(this.mDialog.get());
                    break;
                case 69:
                    ((DialogInterface.OnShowListener) message.obj).onShow(this.mDialog.get());
                    break;
            }
        }
    }

    public Dialog(Context context) {
        this(context, 0, true);
    }

    private ComponentName getAssociatedActivity() {
        Activity activity = this.mOwnerActivity;
        Context context = getContext();
        while (activity == null && context != null) {
            if (context instanceof Activity) {
                activity = (Activity) context;
            } else {
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
        }
        if (activity == null) {
            return null;
        }
        return activity.getComponentName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0() {
        if (this.mCancelable) {
            cancel();
        }
    }

    private void sendDismissMessage() {
        Message message = this.mDismissMessage;
        if (message != null) {
            Message.obtain(message).sendToTarget();
        }
    }

    private void sendShowMessage() {
        Message message = this.mShowMessage;
        if (message != null) {
            Message.obtain(message).sendToTarget();
        }
    }

    private void updateWindowForCancelable() {
        this.mWindow.setCloseOnSwipeEnabled(this.mCancelable);
    }

    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mWindow.addContentView(view, layoutParams);
    }

    @Override // android.content.DialogInterface
    public void cancel() {
        Message message;
        if (!this.mCanceled && (message = this.mCancelMessage) != null) {
            this.mCanceled = true;
            Message.obtain(message).sendToTarget();
        }
        dismiss();
    }

    public void closeOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            this.mWindow.closePanel(0);
        }
    }

    public void create() {
        if (this.mCreated) {
            return;
        }
        dispatchOnCreate(null);
    }

    @Override // android.content.DialogInterface
    public void dismiss() {
        if (Looper.myLooper() == this.mHandler.getLooper()) {
            dismissDialog();
        } else {
            this.mHandler.post(this.mDismissAction);
        }
    }

    public void dismissDialog() {
        if (this.mDecor == null || !this.mShowing) {
            return;
        }
        if (this.mWindow.isDestroyed()) {
            Log.e(TAG, "Tried to dismissDialog() but the Dialog's window was already destroyed!");
            return;
        }
        try {
            this.mWindowManager.removeViewImmediate(this.mDecor);
        } finally {
            ActionMode actionMode = this.mActionMode;
            if (actionMode != null) {
                actionMode.finish();
            }
            this.mDecor = null;
            this.mWindow.closeAllPanels();
            onStop();
            this.mShowing = false;
            sendDismissMessage();
        }
    }

    @Override // android.view.Window.Callback
    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        if (this.mWindow.superDispatchGenericMotionEvent(motionEvent)) {
            return true;
        }
        return onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListener = this.mOnKeyListener;
        if ((onKeyListener != null && onKeyListener.onKey(this, keyEvent.getKeyCode(), keyEvent)) || this.mWindow.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View view = this.mDecor;
        return keyEvent.dispatch(this, view != null ? view.getKeyDispatcherState() : null, this);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        if (this.mWindow.superDispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return onKeyShortcut(keyEvent.getKeyCode(), keyEvent);
    }

    public void dispatchOnCreate(Bundle bundle) {
        if (this.mCreated) {
            return;
        }
        onCreate(bundle);
        this.mCreated = true;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(this.mContext.getPackageName());
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        accessibilityEvent.setFullScreen(attributes.width == -1 && attributes.height == -1);
        return false;
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.mWindow.superDispatchTouchEvent(motionEvent)) {
            return true;
        }
        return onTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        if (this.mWindow.superDispatchTrackballEvent(motionEvent)) {
            return true;
        }
        return onTrackballEvent(motionEvent);
    }

    public <T extends View> T findViewById(int i2) {
        return (T) this.mWindow.findViewById(i2);
    }

    public ActionBar getActionBar() {
        return this.mActionBar;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public View getCurrentFocus() {
        Window window = this.mWindow;
        if (window != null) {
            return window.getCurrentFocus();
        }
        return null;
    }

    public LayoutInflater getLayoutInflater() {
        return getWindow().getLayoutInflater();
    }

    public final Activity getOwnerActivity() {
        return this.mOwnerActivity;
    }

    public final SearchEvent getSearchEvent() {
        return this.mSearchEvent;
    }

    public final int getVolumeControlStream() {
        return getWindow().getVolumeControlStream();
    }

    public Window getWindow() {
        return this.mWindow;
    }

    public void hide() {
        View view = this.mDecor;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public void invalidateOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            this.mWindow.invalidatePanelMenu(0);
        }
    }

    public boolean isShowing() {
        return this.mShowing;
    }

    @Override // android.view.Window.Callback
    public void onActionModeFinished(ActionMode actionMode) {
        if (actionMode == this.mActionMode) {
            this.mActionMode = null;
        }
    }

    @Override // android.view.Window.Callback
    public void onActionModeStarted(ActionMode actionMode) {
        this.mActionMode = actionMode;
    }

    @Override // android.view.Window.Callback
    public void onAttachedToWindow() {
    }

    public void onBackPressed() {
        if (this.mCancelable) {
            cancel();
        }
    }

    @Override // android.view.Window.Callback
    public void onContentChanged() {
    }

    public boolean onContextItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onContextMenuClosed(Menu menu) {
    }

    public void onCreate(Bundle bundle) {
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
    }

    public boolean onCreateOptionsMenu(Menu menu) {
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean onCreatePanelMenu(int i2, Menu menu) {
        if (i2 == 0) {
            return onCreateOptionsMenu(menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public View onCreatePanelView(int i2) {
        return null;
    }

    @Override // android.view.Window.Callback
    public void onDetachedFromWindow() {
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        return false;
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return false;
        }
        keyEvent.startTracking();
        return true;
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

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4 || !keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        onBackPressed();
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        return false;
    }

    @Override // android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        if (i2 == 8) {
            this.mActionBar.dispatchMenuVisibilityChanged(true);
        }
        return true;
    }

    public boolean onOptionsItemSelected(MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(Menu menu) {
    }

    @Override // android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        if (i2 == 8) {
            this.mActionBar.dispatchMenuVisibilityChanged(false);
        }
    }

    @Override // android.view.Window.Callback
    public final /* synthetic */ void onPointerCaptureChanged(boolean z2) {
        android.view.j.a(this, z2);
    }

    public boolean onPrepareOptionsMenu(Menu menu) {
        return true;
    }

    @Override // android.view.Window.Callback
    public boolean onPreparePanel(int i2, View view, Menu menu) {
        if (i2 != 0 || menu == null) {
            return true;
        }
        return onPrepareOptionsMenu(menu) && menu.hasVisibleItems();
    }

    @Override // android.view.Window.Callback
    public final /* synthetic */ void onProvideKeyboardShortcuts(List list, Menu menu, int i2) {
        android.view.j.b(this, list, menu, i2);
    }

    public void onRestoreInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(DIALOG_HIERARCHY_TAG);
        if (bundle2 == null) {
            return;
        }
        dispatchOnCreate(bundle);
        this.mWindow.restoreHierarchyState(bundle2);
        if (bundle.getBoolean(DIALOG_SHOWING_TAG)) {
            show();
        }
    }

    public Bundle onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putBoolean(DIALOG_SHOWING_TAG, this.mShowing);
        if (this.mCreated) {
            bundle.putBundle(DIALOG_HIERARCHY_TAG, this.mWindow.saveHierarchyState());
        }
        return bundle;
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested(SearchEvent searchEvent) {
        this.mSearchEvent = searchEvent;
        return onSearchRequested();
    }

    public void onStart() {
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(true);
        }
    }

    public void onStop() {
        ActionBar actionBar = this.mActionBar;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(false);
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.mCancelable || !this.mShowing || !this.mWindow.shouldCloseOnTouch(this.mContext, motionEvent)) {
            return false;
        }
        cancel();
        return true;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.Window.Callback
    public void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        View view = this.mDecor;
        if (view != null) {
            this.mWindowManager.updateViewLayout(view, layoutParams);
        }
    }

    @Override // android.view.Window.OnWindowDismissedCallback
    public void onWindowDismissed(boolean z2, boolean z3) {
        dismiss();
    }

    @Override // android.view.Window.Callback
    public void onWindowFocusChanged(boolean z2) {
    }

    @Override // android.view.Window.Callback
    public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        ActionBar actionBar = this.mActionBar;
        if (actionBar == null || this.mActionModeTypeStarting != 0) {
            return null;
        }
        return actionBar.startActionMode(callback);
    }

    public void openContextMenu(View view) {
        view.showContextMenu();
    }

    public void openOptionsMenu() {
        if (this.mWindow.hasFeature(0)) {
            this.mWindow.openPanel(0, null);
        }
    }

    public void registerForContextMenu(View view) {
        view.setOnCreateContextMenuListener(this);
    }

    public final boolean requestWindowFeature(int i2) {
        return getWindow().requestFeature(i2);
    }

    public void setCancelMessage(Message message) {
        this.mCancelMessage = message;
    }

    public void setCancelable(boolean z2) {
        this.mCancelable = z2;
        updateWindowForCancelable();
    }

    public void setCanceledOnTouchOutside(boolean z2) {
        if (z2 && !this.mCancelable) {
            this.mCancelable = true;
            updateWindowForCancelable();
        }
        this.mWindow.setCloseOnTouchOutside(z2);
    }

    public void setContentView(int i2) {
        this.mWindow.setContentView(i2);
    }

    public void setDismissMessage(Message message) {
        this.mDismissMessage = message;
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

    public void setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
        if (this.mCancelAndDismissTaken != null) {
            throw new IllegalStateException(android.accessibilityservice.c.n(new StringBuilder("OnCancelListener is already taken by "), this.mCancelAndDismissTaken, " and can not be replaced."));
        }
        if (onCancelListener != null) {
            this.mCancelMessage = this.mListenersHandler.obtainMessage(68, onCancelListener);
        } else {
            this.mCancelMessage = null;
        }
    }

    public void setOnDismissListener(DialogInterface.OnDismissListener onDismissListener) {
        if (this.mCancelAndDismissTaken != null) {
            throw new IllegalStateException(android.accessibilityservice.c.n(new StringBuilder("OnDismissListener is already taken by "), this.mCancelAndDismissTaken, " and can not be replaced."));
        }
        if (onDismissListener != null) {
            this.mDismissMessage = this.mListenersHandler.obtainMessage(67, onDismissListener);
        } else {
            this.mDismissMessage = null;
        }
    }

    public void setOnKeyListener(DialogInterface.OnKeyListener onKeyListener) {
        this.mOnKeyListener = onKeyListener;
    }

    public void setOnShowListener(DialogInterface.OnShowListener onShowListener) {
        if (onShowListener != null) {
            this.mShowMessage = this.mListenersHandler.obtainMessage(69, onShowListener);
        } else {
            this.mShowMessage = null;
        }
    }

    public final void setOwnerActivity(Activity activity) {
        this.mOwnerActivity = activity;
        getWindow().setVolumeControlStream(this.mOwnerActivity.getVolumeControlStream());
    }

    public void setTitle(CharSequence charSequence) {
        this.mWindow.setTitle(charSequence);
        this.mWindow.getAttributes().setTitle(charSequence);
    }

    public final void setVolumeControlStream(int i2) {
        getWindow().setVolumeControlStream(i2);
    }

    public void show() {
        if (this.mShowing) {
            if (this.mDecor != null) {
                if (this.mWindow.hasFeature(8)) {
                    this.mWindow.invalidatePanelMenu(8);
                }
                this.mDecor.setVisibility(0);
                return;
            }
            return;
        }
        this.mCanceled = false;
        if (this.mCreated) {
            this.mWindow.getDecorView().dispatchConfigurationChanged(this.mContext.getResources().getConfiguration());
        } else {
            dispatchOnCreate(null);
        }
        onStart();
        this.mDecor = this.mWindow.getDecorView();
        if (this.mActionBar == null && this.mWindow.hasFeature(8)) {
            ApplicationInfo applicationInfo = this.mContext.getApplicationInfo();
            this.mWindow.setDefaultIcon(applicationInfo.icon);
            this.mWindow.setDefaultLogo(applicationInfo.logo);
            this.mActionBar = new WindowDecorActionBar(this);
        }
        WindowManager.LayoutParams attributes = this.mWindow.getAttributes();
        if ((attributes.softInputMode & 256) == 0) {
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.copyFrom(attributes);
            layoutParams.softInputMode |= 256;
            attributes = layoutParams;
        }
        this.mWindowManager.addView(this.mDecor, attributes);
        this.mShowing = true;
        sendShowMessage();
    }

    public boolean takeCancelAndDismissListeners(String str, DialogInterface.OnCancelListener onCancelListener, DialogInterface.OnDismissListener onDismissListener) {
        if (this.mCancelAndDismissTaken != null) {
            this.mCancelAndDismissTaken = null;
        } else if (this.mCancelMessage != null || this.mDismissMessage != null) {
            return false;
        }
        setOnCancelListener(onCancelListener);
        setOnDismissListener(onDismissListener);
        this.mCancelAndDismissTaken = str;
        return true;
    }

    public void takeKeyEvents(boolean z2) {
        this.mWindow.takeKeyEvents(z2);
    }

    public void unregisterForContextMenu(View view) {
        view.setOnCreateContextMenuListener(null);
    }

    public Dialog(Context context, int i2) {
        this(context, i2, true);
    }

    public void setContentView(View view) {
        this.mWindow.setContentView(view);
    }

    public Dialog(Context context, int i2, boolean z2) {
        this.mCancelable = true;
        this.mCreated = false;
        this.mShowing = false;
        this.mCanceled = false;
        this.mHandler = new Handler();
        this.mActionModeTypeStarting = 0;
        this.mDismissAction = new f(this, 3);
        if (z2) {
            if (i2 == 0) {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16843528, typedValue, true);
                i2 = typedValue.resourceId;
            }
            this.mContext = new ContextThemeWrapper(context, i2);
        } else {
            this.mContext = context;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        this.mWindowManager = windowManager;
        PhoneWindow phoneWindow = new PhoneWindow(this.mContext);
        this.mWindow = phoneWindow;
        phoneWindow.setCallback(this);
        phoneWindow.setOnWindowDismissedCallback(this);
        phoneWindow.setOnWindowSwipeDismissedCallback(new b(this));
        phoneWindow.setWindowManager(windowManager, null, null);
        phoneWindow.setGravity(17);
        this.mListenersHandler = new ListenersHandler(this);
    }

    @Override // android.view.Window.Callback
    public boolean onSearchRequested() {
        SearchManager searchManager = (SearchManager) this.mContext.getSystemService("search");
        ComponentName associatedActivity = getAssociatedActivity();
        if (associatedActivity == null || searchManager.getSearchableInfo(associatedActivity) == null) {
            return false;
        }
        searchManager.startSearch(null, false, associatedActivity, null, false);
        dismiss();
        return true;
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

    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        this.mWindow.setContentView(view, layoutParams);
    }

    public void setTitle(int i2) {
        setTitle(this.mContext.getText(i2));
    }

    @Deprecated
    public Dialog(Context context, boolean z2, Message message) {
        this(context);
        this.mCancelable = z2;
        updateWindowForCancelable();
        this.mCancelMessage = message;
    }

    public Dialog(Context context, boolean z2, DialogInterface.OnCancelListener onCancelListener) {
        this(context);
        this.mCancelable = z2;
        updateWindowForCancelable();
        setOnCancelListener(onCancelListener);
    }
}
