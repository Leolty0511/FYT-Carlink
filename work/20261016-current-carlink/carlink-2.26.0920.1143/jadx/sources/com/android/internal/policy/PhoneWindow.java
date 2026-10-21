package com.android.internal.policy;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.SearchManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.session.MediaController;
import android.media.session.MediaSessionLegacyHelper;
import android.mtp.MtpConstants;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.UserHandle;
import android.os.health.ServiceHealthStats;
import android.provider.Settings;
import android.text.TextUtils;
import android.transition.Scene;
import android.transition.Transition;
import android.transition.TransitionInflater;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.util.AndroidRuntimeException;
import android.util.EventLog;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.IRotationWatcher;
import android.view.IWindowManager;
import android.view.InputDevice;
import android.view.InputEvent;
import android.view.InputQueue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewRootImpl;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.android.internal.R;
import com.android.internal.view.menu.ContextMenuBuilder;
import com.android.internal.view.menu.IconMenuPresenter;
import com.android.internal.view.menu.ListMenuPresenter;
import com.android.internal.view.menu.MenuBuilder;
import com.android.internal.view.menu.MenuDialogHelper;
import com.android.internal.view.menu.MenuHelper;
import com.android.internal.view.menu.MenuPresenter;
import com.android.internal.view.menu.MenuView;
import com.android.internal.widget.DecorContentParent;
import com.android.internal.widget.SwipeDismissLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class PhoneWindow extends Window implements MenuBuilder.Callback {
    private static final String ACTION_BAR_TAG = "android:ActionBar";
    private static final int CUSTOM_TITLE_COMPATIBLE_FEATURES = 13505;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_BACKGROUND_FADE_DURATION_MS = 300;
    static final int FLAG_RESOURCE_SET_ICON = 1;
    static final int FLAG_RESOURCE_SET_ICON_FALLBACK = 4;
    static final int FLAG_RESOURCE_SET_LOGO = 2;
    private static final String FOCUSED_ID_TAG = "android:focusedViewId";
    private static final String PANELS_TAG = "android:Panels";
    private static final String TAG = "PhoneWindow";
    private static final String VIEWS_TAG = "android:views";
    private ActionMenuPresenterCallback mActionMenuPresenterCallback;
    private ViewRootImpl.ActivityConfigCallback mActivityConfigCallback;
    private Boolean mAllowEnterTransitionOverlap;
    private Boolean mAllowReturnTransitionOverlap;
    private boolean mAlwaysReadCloseOnTouchAttr;
    private AudioManager mAudioManager;
    private Drawable mBackgroundDrawable;
    private long mBackgroundFadeDurationMillis;
    int mBackgroundFallbackResource;
    int mBackgroundResource;
    private ProgressBar mCircularProgressBar;
    private boolean mClipToOutline;
    private boolean mClosingActionMenu;
    ViewGroup mContentParent;
    private boolean mContentParentExplicitlySet;
    private Scene mContentScene;
    ContextMenuBuilder mContextMenu;
    final PhoneWindowMenuCallback mContextMenuCallback;
    MenuHelper mContextMenuHelper;
    private DecorView mDecor;
    private int mDecorCaptionShade;
    DecorContentParent mDecorContentParent;
    private DrawableFeatureState[] mDrawables;
    private float mElevation;
    private Transition mEnterTransition;
    private Transition mExitTransition;
    TypedValue mFixedHeightMajor;
    TypedValue mFixedHeightMinor;
    TypedValue mFixedWidthMajor;
    TypedValue mFixedWidthMinor;
    private boolean mForceDecorInstall;
    private boolean mForcedNavigationBarColor;
    private boolean mForcedStatusBarColor;
    private int mFrameResource;
    private ProgressBar mHorizontalProgressBar;
    int mIconRes;
    private int mInvalidatePanelMenuFeatures;
    private boolean mInvalidatePanelMenuPosted;
    private final Runnable mInvalidatePanelMenuRunnable;
    boolean mIsFloating;
    private boolean mIsStartingWindow;
    private boolean mIsTranslucent;
    private KeyguardManager mKeyguardManager;
    private LayoutInflater mLayoutInflater;
    private ImageView mLeftIconView;
    private boolean mLoadElevation;
    int mLogoRes;
    private MediaController mMediaController;
    final TypedValue mMinWidthMajor;
    final TypedValue mMinWidthMinor;
    int mNavigationBarColor;
    int mNavigationBarDividerColor;
    int mPanelChordingKey;
    private PanelMenuPresenterCallback mPanelMenuPresenterCallback;
    private PanelFeatureState[] mPanels;
    PanelFeatureState mPreparedPanel;
    private Transition mReenterTransition;
    int mResourcesSetFlags;
    private Transition mReturnTransition;
    private ImageView mRightIconView;
    private Transition mSharedElementEnterTransition;
    private Transition mSharedElementExitTransition;
    private Transition mSharedElementReenterTransition;
    private Transition mSharedElementReturnTransition;
    private Boolean mSharedElementsUseOverlay;
    int mStatusBarColor;
    private boolean mSupportsPictureInPicture;
    InputQueue.Callback mTakeInputQueueCallback;
    SurfaceHolder.Callback2 mTakeSurfaceCallback;
    private int mTextColor;
    private int mTheme;
    private CharSequence mTitle;
    private int mTitleColor;
    private TextView mTitleView;
    private TransitionManager mTransitionManager;
    private int mUiOptions;
    private boolean mUseDecorContext;
    private int mVolumeControlStreamType;
    private static final Transition USE_DEFAULT_TRANSITION = new TransitionSet();
    static final RotationWatcher sRotationWatcher = new RotationWatcher();

    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        private ActionMenuPresenterCallback() {
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z2) {
            PhoneWindow.this.checkCloseActionMenu(menuBuilder);
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback = PhoneWindow.this.getCallback();
            if (callback == null) {
                return false;
            }
            callback.onMenuOpened(8, menuBuilder);
            return true;
        }
    }

    public static final class DrawableFeatureState {
        Drawable child;
        Drawable cur;
        Drawable def;
        final int featureId;
        Drawable local;
        int resid;
        Uri uri;
        int alpha = 255;
        int curAlpha = 255;

        public DrawableFeatureState(int i2) {
            this.featureId = i2;
        }
    }

    public static final class PanelFeatureState {
        int background;
        View createdPanelView;
        DecorView decorView;
        int featureId;
        Bundle frozenActionViewState;
        Bundle frozenMenuState;
        int fullBackground;
        int gravity;
        IconMenuPresenter iconMenuPresenter;
        boolean isCompact;
        boolean isHandled;
        boolean isInExpandedMode;
        boolean isOpen;
        boolean isPrepared;
        ListMenuPresenter listMenuPresenter;
        int listPresenterTheme;
        MenuBuilder menu;
        public boolean qwertyMode;
        boolean refreshDecorView = false;
        boolean refreshMenuContent;
        View shownPanelView;
        boolean wasLastExpanded;
        boolean wasLastOpen;
        int windowAnimations;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        int f371x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        int f372y;

        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.android.internal.policy.PhoneWindow.PanelFeatureState.SavedState.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public SavedState createFromParcel(Parcel parcel) {
                    return SavedState.readFromParcel(parcel);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public SavedState[] newArray(int i2) {
                    return new SavedState[i2];
                }
            };
            int featureId;
            boolean isInExpandedMode;
            boolean isOpen;
            Bundle menuState;

            private SavedState() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static SavedState readFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.featureId = parcel.readInt();
                savedState.isOpen = parcel.readInt() == 1;
                savedState.isInExpandedMode = parcel.readInt() == 1;
                if (savedState.isOpen) {
                    savedState.menuState = parcel.readBundle();
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.featureId);
                parcel.writeInt(this.isOpen ? 1 : 0);
                parcel.writeInt(this.isInExpandedMode ? 1 : 0);
                if (this.isOpen) {
                    parcel.writeBundle(this.menuState);
                }
            }
        }

        public PanelFeatureState(int i2) {
            this.featureId = i2;
        }

        public void applyFrozenState() {
            Bundle bundle;
            MenuBuilder menuBuilder = this.menu;
            if (menuBuilder == null || (bundle = this.frozenMenuState) == null) {
                return;
            }
            menuBuilder.restorePresenterStates(bundle);
            this.frozenMenuState = null;
        }

        public void clearMenuPresenters() {
            MenuBuilder menuBuilder = this.menu;
            if (menuBuilder != null) {
                menuBuilder.removeMenuPresenter(this.iconMenuPresenter);
                this.menu.removeMenuPresenter(this.listMenuPresenter);
            }
            this.iconMenuPresenter = null;
            this.listMenuPresenter = null;
        }

        public MenuView getIconMenuView(Context context, MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (this.iconMenuPresenter == null) {
                IconMenuPresenter iconMenuPresenter = new IconMenuPresenter(context);
                this.iconMenuPresenter = iconMenuPresenter;
                iconMenuPresenter.setCallback(callback);
                this.iconMenuPresenter.setId(R.id.icon_menu_presenter);
                this.menu.addMenuPresenter(this.iconMenuPresenter);
            }
            return this.iconMenuPresenter.getMenuView(this.decorView);
        }

        public MenuView getListMenuView(Context context, MenuPresenter.Callback callback) {
            if (this.menu == null) {
                return null;
            }
            if (!this.isCompact) {
                getIconMenuView(context, callback);
            }
            if (this.listMenuPresenter == null) {
                ListMenuPresenter listMenuPresenter = new ListMenuPresenter(R.layout.list_menu_item_layout, this.listPresenterTheme);
                this.listMenuPresenter = listMenuPresenter;
                listMenuPresenter.setCallback(callback);
                this.listMenuPresenter.setId(R.id.list_menu_presenter);
                this.menu.addMenuPresenter(this.listMenuPresenter);
            }
            IconMenuPresenter iconMenuPresenter = this.iconMenuPresenter;
            if (iconMenuPresenter != null) {
                this.listMenuPresenter.setItemIndexOffset(iconMenuPresenter.getNumActualItemsShown());
            }
            return this.listMenuPresenter.getMenuView(this.decorView);
        }

        public boolean hasPanelItems() {
            View view = this.shownPanelView;
            if (view == null) {
                return false;
            }
            if (this.createdPanelView != null) {
                return true;
            }
            if (this.isCompact || this.isInExpandedMode) {
                return this.listMenuPresenter.getAdapter().getCount() > 0;
            }
            return ((ViewGroup) view).getChildCount() > 0;
        }

        public boolean isInListMode() {
            return this.isInExpandedMode || this.isCompact;
        }

        public void onRestoreInstanceState(Parcelable parcelable) {
            SavedState savedState = (SavedState) parcelable;
            this.featureId = savedState.featureId;
            this.wasLastOpen = savedState.isOpen;
            this.wasLastExpanded = savedState.isInExpandedMode;
            this.frozenMenuState = savedState.menuState;
            this.createdPanelView = null;
            this.shownPanelView = null;
            this.decorView = null;
        }

        public Parcelable onSaveInstanceState() {
            SavedState savedState = new SavedState();
            savedState.featureId = this.featureId;
            savedState.isOpen = this.isOpen;
            savedState.isInExpandedMode = this.isInExpandedMode;
            if (this.menu != null) {
                Bundle bundle = new Bundle();
                savedState.menuState = bundle;
                this.menu.savePresenterStates(bundle);
            }
            return savedState;
        }

        public void setMenu(MenuBuilder menuBuilder) {
            MenuBuilder menuBuilder2 = this.menu;
            if (menuBuilder == menuBuilder2) {
                return;
            }
            if (menuBuilder2 != null) {
                menuBuilder2.removeMenuPresenter(this.iconMenuPresenter);
                this.menu.removeMenuPresenter(this.listMenuPresenter);
            }
            this.menu = menuBuilder;
            if (menuBuilder != null) {
                IconMenuPresenter iconMenuPresenter = this.iconMenuPresenter;
                if (iconMenuPresenter != null) {
                    menuBuilder.addMenuPresenter(iconMenuPresenter);
                }
                ListMenuPresenter listMenuPresenter = this.listMenuPresenter;
                if (listMenuPresenter != null) {
                    menuBuilder.addMenuPresenter(listMenuPresenter);
                }
            }
        }

        public void setStyle(Context context) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(R.styleable.Theme);
            this.background = typedArrayObtainStyledAttributes.getResourceId(46, 0);
            this.fullBackground = typedArrayObtainStyledAttributes.getResourceId(47, 0);
            this.windowAnimations = typedArrayObtainStyledAttributes.getResourceId(93, 0);
            this.isCompact = typedArrayObtainStyledAttributes.getBoolean(306, false);
            this.listPresenterTheme = typedArrayObtainStyledAttributes.getResourceId(307, R.style.Theme_ExpandedMenu);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        private PanelMenuPresenterCallback() {
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z2) {
            MenuBuilder rootMenu = menuBuilder.getRootMenu();
            boolean z3 = rootMenu != menuBuilder;
            PhoneWindow phoneWindow = PhoneWindow.this;
            if (z3) {
                menuBuilder = rootMenu;
            }
            PanelFeatureState panelFeatureStateFindMenuPanel = phoneWindow.findMenuPanel(menuBuilder);
            if (panelFeatureStateFindMenuPanel != null) {
                if (!z3) {
                    PhoneWindow.this.closePanel(panelFeatureStateFindMenuPanel, z2);
                } else {
                    PhoneWindow.this.callOnPanelClosed(panelFeatureStateFindMenuPanel.featureId, panelFeatureStateFindMenuPanel, rootMenu);
                    PhoneWindow.this.closePanel(panelFeatureStateFindMenuPanel, true);
                }
            }
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback;
            if (menuBuilder != null || !PhoneWindow.this.hasFeature(8) || (callback = PhoneWindow.this.getCallback()) == null || PhoneWindow.this.isDestroyed()) {
                return true;
            }
            callback.onMenuOpened(8, menuBuilder);
            return true;
        }
    }

    public static final class PhoneWindowMenuCallback implements MenuBuilder.Callback, MenuPresenter.Callback {
        private static final int FEATURE_ID = 6;
        private boolean mShowDialogForSubmenu;
        private MenuDialogHelper mSubMenuHelper;
        private final PhoneWindow mWindow;

        public PhoneWindowMenuCallback(PhoneWindow phoneWindow) {
            this.mWindow = phoneWindow;
        }

        private void onCloseSubMenu(MenuBuilder menuBuilder) {
            Window.Callback callback = this.mWindow.getCallback();
            if (callback == null || this.mWindow.isDestroyed()) {
                return;
            }
            callback.onPanelClosed(6, menuBuilder.getRootMenu());
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public void onCloseMenu(MenuBuilder menuBuilder, boolean z2) {
            if (menuBuilder.getRootMenu() != menuBuilder) {
                onCloseSubMenu(menuBuilder);
            }
            if (z2) {
                Window.Callback callback = this.mWindow.getCallback();
                if (callback != null && !this.mWindow.isDestroyed()) {
                    callback.onPanelClosed(6, menuBuilder);
                }
                PhoneWindow phoneWindow = this.mWindow;
                if (menuBuilder == phoneWindow.mContextMenu) {
                    phoneWindow.dismissContextMenu();
                }
                MenuDialogHelper menuDialogHelper = this.mSubMenuHelper;
                if (menuDialogHelper != null) {
                    menuDialogHelper.dismiss();
                    this.mSubMenuHelper = null;
                }
            }
        }

        @Override // com.android.internal.view.menu.MenuBuilder.Callback
        public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
            Window.Callback callback = this.mWindow.getCallback();
            return (callback == null || this.mWindow.isDestroyed() || !callback.onMenuItemSelected(6, menuItem)) ? false : true;
        }

        @Override // com.android.internal.view.menu.MenuBuilder.Callback
        public void onMenuModeChange(MenuBuilder menuBuilder) {
        }

        @Override // com.android.internal.view.menu.MenuPresenter.Callback
        public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
            if (menuBuilder == null) {
                return false;
            }
            menuBuilder.setCallback(this);
            if (!this.mShowDialogForSubmenu) {
                return false;
            }
            MenuDialogHelper menuDialogHelper = new MenuDialogHelper(menuBuilder);
            this.mSubMenuHelper = menuDialogHelper;
            menuDialogHelper.show(null);
            return true;
        }

        public void setShowDialogForSubmenu(boolean z2) {
            this.mShowDialogForSubmenu = z2;
        }
    }

    public static class RotationWatcher extends IRotationWatcher.Stub {
        private Handler mHandler;
        private boolean mIsWatching;
        private final Runnable mRotationChanged = new Runnable() { // from class: com.android.internal.policy.PhoneWindow.RotationWatcher.1
            @Override // java.lang.Runnable
            public void run() {
                RotationWatcher.this.dispatchRotationChanged();
            }
        };
        private final ArrayList<WeakReference<PhoneWindow>> mWindows = new ArrayList<>();

        public void addWindow(PhoneWindow phoneWindow) {
            synchronized (this.mWindows) {
                if (this.mIsWatching) {
                    this.mWindows.add(new WeakReference<>(phoneWindow));
                } else {
                    try {
                        WindowManagerHolder.sWindowManager.watchRotation(this, phoneWindow.getContext().getDisplay().getDisplayId());
                        this.mHandler = new Handler();
                        this.mIsWatching = true;
                    } catch (RemoteException e2) {
                        Log.e(PhoneWindow.TAG, "Couldn't start watching for device rotation", e2);
                    }
                    this.mWindows.add(new WeakReference<>(phoneWindow));
                }
                throw th;
            }
        }

        public void dispatchRotationChanged() {
            synchronized (this.mWindows) {
                int i2 = 0;
                while (i2 < this.mWindows.size()) {
                    PhoneWindow phoneWindow = this.mWindows.get(i2).get();
                    if (phoneWindow != null) {
                        phoneWindow.onOptionsPanelRotationChanged();
                        i2++;
                    } else {
                        this.mWindows.remove(i2);
                    }
                }
            }
        }

        @Override // android.view.IRotationWatcher
        public void onRotationChanged(int i2) {
            this.mHandler.post(this.mRotationChanged);
        }

        public void removeWindow(PhoneWindow phoneWindow) {
            synchronized (this.mWindows) {
                int i2 = 0;
                while (i2 < this.mWindows.size()) {
                    PhoneWindow phoneWindow2 = this.mWindows.get(i2).get();
                    if (phoneWindow2 == null || phoneWindow2 == phoneWindow) {
                        this.mWindows.remove(i2);
                    } else {
                        i2++;
                    }
                }
            }
        }
    }

    public static class WindowManagerHolder {
        static final IWindowManager sWindowManager = IWindowManager.Stub.asInterface(ServiceManager.getService(Context.WINDOW_SERVICE));
    }

    public PhoneWindow(Context context) {
        super(context);
        this.mContextMenuCallback = new PhoneWindowMenuCallback(this);
        this.mMinWidthMajor = new TypedValue();
        this.mMinWidthMinor = new TypedValue();
        this.mForceDecorInstall = false;
        this.mContentParentExplicitlySet = false;
        this.mBackgroundResource = 0;
        this.mBackgroundFallbackResource = 0;
        this.mLoadElevation = true;
        this.mFrameResource = 0;
        this.mTextColor = 0;
        this.mStatusBarColor = 0;
        this.mNavigationBarColor = 0;
        this.mNavigationBarDividerColor = 0;
        this.mForcedStatusBarColor = false;
        this.mForcedNavigationBarColor = false;
        this.mTitle = null;
        this.mTitleColor = 0;
        this.mAlwaysReadCloseOnTouchAttr = false;
        this.mVolumeControlStreamType = Integer.MIN_VALUE;
        this.mUiOptions = 0;
        this.mInvalidatePanelMenuRunnable = new Runnable() { // from class: com.android.internal.policy.PhoneWindow.1
            @Override // java.lang.Runnable
            public void run() {
                for (int i2 = 0; i2 <= 13; i2++) {
                    if ((PhoneWindow.this.mInvalidatePanelMenuFeatures & (1 << i2)) != 0) {
                        PhoneWindow.this.doInvalidatePanelMenu(i2);
                    }
                }
                PhoneWindow.this.mInvalidatePanelMenuPosted = false;
                PhoneWindow.this.mInvalidatePanelMenuFeatures = 0;
            }
        };
        this.mEnterTransition = null;
        Transition transition = USE_DEFAULT_TRANSITION;
        this.mReturnTransition = transition;
        this.mExitTransition = null;
        this.mReenterTransition = transition;
        this.mSharedElementEnterTransition = null;
        this.mSharedElementReturnTransition = transition;
        this.mSharedElementExitTransition = null;
        this.mSharedElementReenterTransition = transition;
        this.mBackgroundFadeDurationMillis = -1L;
        this.mTheme = -1;
        this.mDecorCaptionShade = 0;
        this.mUseDecorContext = false;
        this.mLayoutInflater = LayoutInflater.from(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callOnPanelClosed(int i2, PanelFeatureState panelFeatureState, Menu menu) {
        Window.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        if (menu == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.mPanels;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menu = panelFeatureState.menu;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.isOpen) && !isDestroyed()) {
            callback.onPanelClosed(i2, menu);
        }
    }

    private static void clearMenuViews(PanelFeatureState panelFeatureState) {
        panelFeatureState.createdPanelView = null;
        panelFeatureState.refreshDecorView = true;
        panelFeatureState.clearMenuPresenters();
    }

    private synchronized void closeContextMenu() {
        ContextMenuBuilder contextMenuBuilder = this.mContextMenu;
        if (contextMenuBuilder != null) {
            contextMenuBuilder.close();
            dismissContextMenu();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void dismissContextMenu() {
        this.mContextMenu = null;
        MenuHelper menuHelper = this.mContextMenuHelper;
        if (menuHelper != null) {
            menuHelper.dismiss();
            this.mContextMenuHelper = null;
        }
    }

    private ProgressBar getCircularProgressBar(boolean z2) {
        ProgressBar progressBar = this.mCircularProgressBar;
        if (progressBar != null) {
            return progressBar;
        }
        if (this.mContentParent == null && z2) {
            installDecor();
        }
        ProgressBar progressBar2 = (ProgressBar) findViewById(R.id.progress_circular);
        this.mCircularProgressBar = progressBar2;
        if (progressBar2 != null) {
            progressBar2.setVisibility(4);
        }
        return this.mCircularProgressBar;
    }

    private DrawableFeatureState getDrawableState(int i2, boolean z2) {
        if ((getFeatures() & (1 << i2)) == 0) {
            if (z2) {
                throw new RuntimeException("The feature has not been requested");
            }
            return null;
        }
        DrawableFeatureState[] drawableFeatureStateArr = this.mDrawables;
        if (drawableFeatureStateArr == null || drawableFeatureStateArr.length <= i2) {
            DrawableFeatureState[] drawableFeatureStateArr2 = new DrawableFeatureState[i2 + 1];
            if (drawableFeatureStateArr != null) {
                System.arraycopy(drawableFeatureStateArr, 0, drawableFeatureStateArr2, 0, drawableFeatureStateArr.length);
            }
            this.mDrawables = drawableFeatureStateArr2;
            drawableFeatureStateArr = drawableFeatureStateArr2;
        }
        DrawableFeatureState drawableFeatureState = drawableFeatureStateArr[i2];
        if (drawableFeatureState != null) {
            return drawableFeatureState;
        }
        DrawableFeatureState drawableFeatureState2 = new DrawableFeatureState(i2);
        drawableFeatureStateArr[i2] = drawableFeatureState2;
        return drawableFeatureState2;
    }

    private ProgressBar getHorizontalProgressBar(boolean z2) {
        ProgressBar progressBar = this.mHorizontalProgressBar;
        if (progressBar != null) {
            return progressBar;
        }
        if (this.mContentParent == null && z2) {
            installDecor();
        }
        ProgressBar progressBar2 = (ProgressBar) findViewById(R.id.progress_horizontal);
        this.mHorizontalProgressBar = progressBar2;
        if (progressBar2 != null) {
            progressBar2.setVisibility(4);
        }
        return this.mHorizontalProgressBar;
    }

    private KeyguardManager getKeyguardManager() {
        if (this.mKeyguardManager == null) {
            this.mKeyguardManager = (KeyguardManager) getContext().getSystemService(Context.KEYGUARD_SERVICE);
        }
        return this.mKeyguardManager;
    }

    private ImageView getLeftIconView() {
        ImageView imageView = this.mLeftIconView;
        if (imageView != null) {
            return imageView;
        }
        if (this.mContentParent == null) {
            installDecor();
        }
        ImageView imageView2 = (ImageView) findViewById(R.id.left_icon);
        this.mLeftIconView = imageView2;
        return imageView2;
    }

    private int getOptionsPanelGravity() {
        try {
            return WindowManagerHolder.sWindowManager.getPreferredOptionsPanelGravity();
        } catch (RemoteException e2) {
            Log.e(TAG, "Couldn't getOptionsPanelGravity; using default", e2);
            return 81;
        }
    }

    private ImageView getRightIconView() {
        ImageView imageView = this.mRightIconView;
        if (imageView != null) {
            return imageView;
        }
        if (this.mContentParent == null) {
            installDecor();
        }
        ImageView imageView2 = (ImageView) findViewById(R.id.right_icon);
        this.mRightIconView = imageView2;
        return imageView2;
    }

    private Transition getTransition(Transition transition, Transition transition2, int i2) {
        if (transition != transition2) {
            return transition;
        }
        int resourceId = getWindowStyle().getResourceId(i2, -1);
        if (resourceId == -1 || resourceId == 17760256) {
            return transition2;
        }
        Transition transitionInflateTransition = TransitionInflater.from(getContext()).inflateTransition(resourceId);
        if ((transitionInflateTransition instanceof TransitionSet) && ((TransitionSet) transitionInflateTransition).getTransitionCount() == 0) {
            return null;
        }
        return transitionInflateTransition;
    }

    private ViewRootImpl getViewRootImpl() {
        ViewRootImpl viewRootImpl;
        DecorView decorView = this.mDecor;
        if (decorView == null || (viewRootImpl = decorView.getViewRootImpl()) == null) {
            throw new IllegalStateException("view not added");
        }
        return viewRootImpl;
    }

    private void hideProgressBars(ProgressBar progressBar, ProgressBar progressBar2) {
        int localFeatures = getLocalFeatures();
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(getContext(), 17432577);
        animationLoadAnimation.setDuration(1000L);
        if ((localFeatures & 32) != 0 && progressBar2 != null && progressBar2.getVisibility() == 0) {
            progressBar2.startAnimation(animationLoadAnimation);
            progressBar2.setVisibility(4);
        }
        if ((localFeatures & 4) == 0 || progressBar == null || progressBar.getVisibility() != 0) {
            return;
        }
        progressBar.startAnimation(animationLoadAnimation);
        progressBar.setVisibility(4);
    }

    private void installDecor() {
        int i2;
        this.mForceDecorInstall = false;
        DecorView decorView = this.mDecor;
        if (decorView == null) {
            DecorView decorViewGenerateDecor = generateDecor(-1);
            this.mDecor = decorViewGenerateDecor;
            decorViewGenerateDecor.setDescendantFocusability(262144);
            this.mDecor.setIsRootNamespace(true);
            if (!this.mInvalidatePanelMenuPosted && this.mInvalidatePanelMenuFeatures != 0) {
                this.mDecor.postOnAnimation(this.mInvalidatePanelMenuRunnable);
            }
        } else {
            decorView.setWindow(this);
        }
        if (this.mContentParent == null) {
            this.mContentParent = generateLayout(this.mDecor);
            this.mDecor.makeOptionalFitsSystemWindows();
            DecorContentParent decorContentParent = (DecorContentParent) this.mDecor.findViewById(R.id.decor_content_parent);
            if (decorContentParent != null) {
                this.mDecorContentParent = decorContentParent;
                decorContentParent.setWindowCallback(getCallback());
                if (this.mDecorContentParent.getTitle() == null) {
                    this.mDecorContentParent.setWindowTitle(this.mTitle);
                }
                int localFeatures = getLocalFeatures();
                for (int i3 = 0; i3 < 13; i3++) {
                    if (((1 << i3) & localFeatures) != 0) {
                        this.mDecorContentParent.initFeature(i3);
                    }
                }
                this.mDecorContentParent.setUiOptions(this.mUiOptions);
                if ((this.mResourcesSetFlags & 1) != 0 || (this.mIconRes != 0 && !this.mDecorContentParent.hasIcon())) {
                    this.mDecorContentParent.setIcon(this.mIconRes);
                } else if ((this.mResourcesSetFlags & 1) == 0 && this.mIconRes == 0 && !this.mDecorContentParent.hasIcon()) {
                    this.mDecorContentParent.setIcon(getContext().getPackageManager().getDefaultActivityIcon());
                    this.mResourcesSetFlags |= 4;
                }
                if ((this.mResourcesSetFlags & 2) != 0 || (this.mLogoRes != 0 && !this.mDecorContentParent.hasLogo())) {
                    this.mDecorContentParent.setLogo(this.mLogoRes);
                }
                PanelFeatureState panelState = getPanelState(0, false);
                if (!isDestroyed() && ((panelState == null || panelState.menu == null) && !this.mIsStartingWindow)) {
                    invalidatePanelMenu(8);
                }
            } else {
                TextView textView = (TextView) findViewById(16908310);
                this.mTitleView = textView;
                if (textView != null) {
                    if ((getLocalFeatures() & 2) != 0) {
                        View viewFindViewById = findViewById(R.id.title_container);
                        if (viewFindViewById != null) {
                            viewFindViewById.setVisibility(8);
                        } else {
                            this.mTitleView.setVisibility(8);
                        }
                        this.mContentParent.setForeground(null);
                    } else {
                        this.mTitleView.setText(this.mTitle);
                    }
                }
            }
            if (this.mDecor.getBackground() == null && (i2 = this.mBackgroundFallbackResource) != 0) {
                this.mDecor.setBackgroundFallback(i2);
            }
            if (hasFeature(13)) {
                if (this.mTransitionManager == null) {
                    int resourceId = getWindowStyle().getResourceId(27, 0);
                    if (resourceId != 0) {
                        this.mTransitionManager = TransitionInflater.from(getContext()).inflateTransitionManager(resourceId, this.mContentParent);
                    } else {
                        this.mTransitionManager = new TransitionManager();
                    }
                }
                this.mEnterTransition = getTransition(this.mEnterTransition, null, 28);
                Transition transition = this.mReturnTransition;
                Transition transition2 = USE_DEFAULT_TRANSITION;
                this.mReturnTransition = getTransition(transition, transition2, 40);
                this.mExitTransition = getTransition(this.mExitTransition, null, 29);
                this.mReenterTransition = getTransition(this.mReenterTransition, transition2, 41);
                this.mSharedElementEnterTransition = getTransition(this.mSharedElementEnterTransition, null, 30);
                this.mSharedElementReturnTransition = getTransition(this.mSharedElementReturnTransition, transition2, 42);
                this.mSharedElementExitTransition = getTransition(this.mSharedElementExitTransition, null, 31);
                this.mSharedElementReenterTransition = getTransition(this.mSharedElementReenterTransition, transition2, 43);
                if (this.mAllowEnterTransitionOverlap == null) {
                    this.mAllowEnterTransitionOverlap = Boolean.valueOf(getWindowStyle().getBoolean(33, true));
                }
                if (this.mAllowReturnTransitionOverlap == null) {
                    this.mAllowReturnTransitionOverlap = Boolean.valueOf(getWindowStyle().getBoolean(32, true));
                }
                if (this.mBackgroundFadeDurationMillis < 0) {
                    this.mBackgroundFadeDurationMillis = getWindowStyle().getInteger(37, 300);
                }
                if (this.mSharedElementsUseOverlay == null) {
                    this.mSharedElementsUseOverlay = Boolean.valueOf(getWindowStyle().getBoolean(44, true));
                }
            }
        }
    }

    private boolean isTvUserSetupComplete() {
        return (Settings.Secure.getInt(getContext().getContentResolver(), Settings.Secure.USER_SETUP_COMPLETE, 0) != 0) & (Settings.Secure.getInt(getContext().getContentResolver(), Settings.Secure.TV_USER_SETUP_COMPLETE, 0) != 0);
    }

    private boolean launchDefaultSearch(KeyEvent keyEvent) {
        boolean zOnSearchRequested = false;
        if (getContext().getPackageManager().hasSystemFeature(PackageManager.FEATURE_LEANBACK) && !isTvUserSetupComplete()) {
            return false;
        }
        Window.Callback callback = getCallback();
        if (callback != null && !isDestroyed()) {
            sendCloseSystemWindows("search");
            int deviceId = keyEvent.getDeviceId();
            try {
                zOnSearchRequested = callback.onSearchRequested(deviceId != 0 ? new SearchEvent(InputDevice.getDevice(deviceId)) : null);
            } catch (AbstractMethodError e2) {
                Log.e(TAG, "WindowCallback " + callback.getClass().getName() + " does not implement method onSearchRequested(SearchEvent); fa", e2);
                zOnSearchRequested = callback.onSearchRequested();
            }
        }
        if (zOnSearchRequested || (getContext().getResources().getConfiguration().uiMode & 15) != 4) {
            return zOnSearchRequested;
        }
        Bundle bundle = new Bundle();
        bundle.putInt(Intent.EXTRA_ASSIST_INPUT_DEVICE_ID, keyEvent.getDeviceId());
        return ((SearchManager) getContext().getSystemService("search")).launchLegacyAssist(null, UserHandle.myUserId(), bundle);
    }

    private Drawable loadImageURI(Uri uri) {
        try {
            return Drawable.createFromStream(getContext().getContentResolver().openInputStream(uri), null);
        } catch (Exception unused) {
            Log.w(TAG, "Unable to open content: " + uri);
            return null;
        }
    }

    private void registerSwipeCallbacks(ViewGroup viewGroup) {
        if (viewGroup instanceof SwipeDismissLayout) {
            SwipeDismissLayout swipeDismissLayout = (SwipeDismissLayout) viewGroup;
            swipeDismissLayout.setOnDismissedListener(new SwipeDismissLayout.OnDismissedListener() { // from class: com.android.internal.policy.PhoneWindow.2
                @Override // com.android.internal.widget.SwipeDismissLayout.OnDismissedListener
                public void onDismissed(SwipeDismissLayout swipeDismissLayout2) {
                    PhoneWindow.this.dispatchOnWindowSwipeDismissed();
                    PhoneWindow.this.dispatchOnWindowDismissed(false, true);
                }
            });
            swipeDismissLayout.setOnSwipeProgressChangedListener(new SwipeDismissLayout.OnSwipeProgressChangedListener() { // from class: com.android.internal.policy.PhoneWindow.3
                @Override // com.android.internal.widget.SwipeDismissLayout.OnSwipeProgressChangedListener
                public void onSwipeCancelled(SwipeDismissLayout swipeDismissLayout2) {
                    WindowManager.LayoutParams attributes = PhoneWindow.this.getAttributes();
                    if (attributes.f211x == 0 && attributes.alpha == 1.0f) {
                        return;
                    }
                    attributes.f211x = 0;
                    attributes.alpha = 1.0f;
                    PhoneWindow.this.setAttributes(attributes);
                    PhoneWindow.this.setFlags(1024, 1536);
                }

                @Override // com.android.internal.widget.SwipeDismissLayout.OnSwipeProgressChangedListener
                public void onSwipeProgressChanged(SwipeDismissLayout swipeDismissLayout2, float f2, float f3) {
                    WindowManager.LayoutParams attributes = PhoneWindow.this.getAttributes();
                    attributes.f211x = (int) f3;
                    attributes.alpha = f2;
                    PhoneWindow.this.setAttributes(attributes);
                    PhoneWindow.this.setFlags(attributes.f211x == 0 ? 1024 : 512, 1536);
                }
            });
        } else {
            Log.w(TAG, "contentParent is not a SwipeDismissLayout: " + viewGroup);
        }
    }

    private void reopenMenu(boolean z2) {
        boolean z3;
        MenuBuilder menuBuilder;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent == null || !decorContentParent.canShowOverflowMenu() || (ViewConfiguration.get(getContext()).hasPermanentMenuKey() && !this.mDecorContentParent.isOverflowMenuShowPending())) {
            PanelFeatureState panelState = getPanelState(0, false);
            if (panelState == null) {
                return;
            }
            if (z2) {
                z3 = !panelState.isInExpandedMode;
            } else {
                z3 = panelState.isInExpandedMode;
            }
            panelState.refreshDecorView = true;
            closePanel(panelState, false);
            panelState.isInExpandedMode = z3;
            openPanel(panelState, (KeyEvent) null);
            return;
        }
        Window.Callback callback = getCallback();
        if (this.mDecorContentParent.isOverflowMenuShowing() && z2) {
            this.mDecorContentParent.hideOverflowMenu();
            PanelFeatureState panelState2 = getPanelState(0, false);
            if (panelState2 == null || callback == null || isDestroyed()) {
                return;
            }
            callback.onPanelClosed(8, panelState2.menu);
            return;
        }
        if (callback == null || isDestroyed()) {
            return;
        }
        if (this.mInvalidatePanelMenuPosted && (this.mInvalidatePanelMenuFeatures & 1) != 0) {
            this.mDecor.removeCallbacks(this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuRunnable.run();
        }
        PanelFeatureState panelState3 = getPanelState(0, false);
        if (panelState3 == null || (menuBuilder = panelState3.menu) == null || panelState3.refreshMenuContent || !callback.onPreparePanel(0, panelState3.createdPanelView, menuBuilder)) {
            return;
        }
        callback.onMenuOpened(8, panelState3.menu);
        this.mDecorContentParent.showOverflowMenu();
    }

    private void restorePanelState(SparseArray<Parcelable> sparseArray) {
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            int iKeyAt = sparseArray.keyAt(size);
            PanelFeatureState panelState = getPanelState(iKeyAt, false);
            if (panelState != null) {
                panelState.onRestoreInstanceState(sparseArray.get(iKeyAt));
                invalidatePanelMenu(iKeyAt);
            }
        }
    }

    private void savePanelState(SparseArray<Parcelable> sparseArray) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null) {
            return;
        }
        for (int length = panelFeatureStateArr.length - 1; length >= 0; length--) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[length];
            if (panelFeatureState != null) {
                sparseArray.put(length, panelFeatureState.onSaveInstanceState());
            }
        }
    }

    private void showProgressBars(ProgressBar progressBar, ProgressBar progressBar2) {
        int localFeatures = getLocalFeatures();
        if ((localFeatures & 32) != 0 && progressBar2 != null && progressBar2.getVisibility() == 4) {
            progressBar2.setVisibility(0);
        }
        if ((localFeatures & 4) == 0 || progressBar == null || progressBar.getProgress() >= 10000) {
            return;
        }
        progressBar.setVisibility(0);
    }

    private void transitionTo(Scene scene) {
        if (this.mContentScene == null) {
            scene.enter();
        } else {
            this.mTransitionManager.transitionTo(scene);
        }
        this.mContentScene = scene;
    }

    private void updateInt(int i2, int i3, boolean z2) {
        if (this.mContentParent == null) {
            return;
        }
        int i4 = 1 << i2;
        if ((getFeatures() & i4) != 0 || z2) {
            if ((getLocalFeatures() & i4) != 0) {
                onIntChanged(i2, i3);
            } else if (getContainer() != null) {
                getContainer().setChildInt(i2, i3);
            }
        }
    }

    private void updateProgressBars(int i2) {
        ProgressBar circularProgressBar = getCircularProgressBar(true);
        ProgressBar horizontalProgressBar = getHorizontalProgressBar(true);
        int localFeatures = getLocalFeatures();
        if (i2 == -1) {
            if ((localFeatures & 4) != 0) {
                if (horizontalProgressBar != null) {
                    horizontalProgressBar.setVisibility((horizontalProgressBar.isIndeterminate() || horizontalProgressBar.getProgress() < 10000) ? 0 : 4);
                } else {
                    Log.e(TAG, "Horizontal progress bar not located in current window decor");
                }
            }
            if ((localFeatures & 32) != 0) {
                if (circularProgressBar != null) {
                    circularProgressBar.setVisibility(0);
                    return;
                } else {
                    Log.e(TAG, "Circular progress bar not located in current window decor");
                    return;
                }
            }
            return;
        }
        if (i2 == -2) {
            if ((localFeatures & 4) != 0) {
                if (horizontalProgressBar != null) {
                    horizontalProgressBar.setVisibility(8);
                } else {
                    Log.e(TAG, "Horizontal progress bar not located in current window decor");
                }
            }
            if ((localFeatures & 32) != 0) {
                if (circularProgressBar != null) {
                    circularProgressBar.setVisibility(8);
                    return;
                } else {
                    Log.e(TAG, "Circular progress bar not located in current window decor");
                    return;
                }
            }
            return;
        }
        if (i2 == -3) {
            if (horizontalProgressBar != null) {
                horizontalProgressBar.setIndeterminate(true);
                return;
            } else {
                Log.e(TAG, "Horizontal progress bar not located in current window decor");
                return;
            }
        }
        if (i2 == -4) {
            if (horizontalProgressBar != null) {
                horizontalProgressBar.setIndeterminate(false);
                return;
            } else {
                Log.e(TAG, "Horizontal progress bar not located in current window decor");
                return;
            }
        }
        if (i2 < 0 || i2 > 10000) {
            if (20000 > i2 || i2 > 30000) {
                return;
            }
            if (horizontalProgressBar != null) {
                horizontalProgressBar.setSecondaryProgress(i2 - 20000);
            } else {
                Log.e(TAG, "Horizontal progress bar not located in current window decor");
            }
            showProgressBars(horizontalProgressBar, circularProgressBar);
            return;
        }
        if (horizontalProgressBar != null) {
            horizontalProgressBar.setProgress(i2 + 0);
        } else {
            Log.e(TAG, "Horizontal progress bar not located in current window decor");
        }
        if (i2 < 10000) {
            showProgressBars(horizontalProgressBar, circularProgressBar);
        } else {
            hideProgressBars(horizontalProgressBar, circularProgressBar);
        }
    }

    @Override // android.view.Window
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        if (this.mContentParent == null) {
            installDecor();
        }
        if (hasFeature(12)) {
            Log.v(TAG, "addContentView does not support content transitions");
        }
        this.mContentParent.addView(view, layoutParams);
        this.mContentParent.requestApplyInsets();
        Window.Callback callback = getCallback();
        if (callback == null || isDestroyed()) {
            return;
        }
        callback.onContentChanged();
    }

    @Override // android.view.Window
    public void alwaysReadCloseOnTouchAttr() {
        this.mAlwaysReadCloseOnTouchAttr = true;
    }

    public void checkCloseActionMenu(Menu menu) {
        if (this.mClosingActionMenu) {
            return;
        }
        this.mClosingActionMenu = true;
        this.mDecorContentParent.dismissPopups();
        Window.Callback callback = getCallback();
        if (callback != null && !isDestroyed()) {
            callback.onPanelClosed(8, menu);
        }
        this.mClosingActionMenu = false;
    }

    @Override // android.view.Window
    public void clearContentView() {
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.clearContentView();
        }
    }

    @Override // android.view.Window
    public final void closeAllPanels() {
        if (getWindowManager() == null) {
            return;
        }
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null) {
                closePanel(panelFeatureState, true);
            }
        }
        closeContextMenu();
    }

    @Override // android.view.Window
    public final void closePanel(int i2) {
        DecorContentParent decorContentParent;
        if (i2 == 0 && (decorContentParent = this.mDecorContentParent) != null && decorContentParent.canShowOverflowMenu() && !ViewConfiguration.get(getContext()).hasPermanentMenuKey()) {
            this.mDecorContentParent.hideOverflowMenu();
        } else if (i2 == 6) {
            closeContextMenu();
        } else {
            closePanel(getPanelState(i2, true), true);
        }
    }

    @Override // android.view.Window
    public void dispatchWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        super.dispatchWindowAttributesChanged(layoutParams);
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.updateColorViews(null, true);
        }
    }

    public void doInvalidatePanelMenu(int i2) {
        PanelFeatureState panelState;
        PanelFeatureState panelState2 = getPanelState(i2, false);
        if (panelState2 == null) {
            return;
        }
        if (panelState2.menu != null) {
            Bundle bundle = new Bundle();
            panelState2.menu.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState2.frozenActionViewState = bundle;
            }
            panelState2.menu.stopDispatchingItemsChanged();
            panelState2.menu.clear();
        }
        panelState2.refreshMenuContent = true;
        panelState2.refreshDecorView = true;
        if ((i2 != 8 && i2 != 0) || this.mDecorContentParent == null || (panelState = getPanelState(0, false)) == null) {
            return;
        }
        panelState.isPrepared = false;
        preparePanel(panelState, null);
    }

    public void doPendingInvalidatePanelMenu() {
        if (this.mInvalidatePanelMenuPosted) {
            this.mDecor.removeCallbacks(this.mInvalidatePanelMenuRunnable);
            this.mInvalidatePanelMenuRunnable.run();
        }
    }

    public PanelFeatureState findMenuPanel(Menu menu) {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
        for (int i2 = 0; i2 < length; i2++) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
            if (panelFeatureState != null && panelFeatureState.menu == menu) {
                return panelFeatureState;
            }
        }
        return null;
    }

    public DecorView generateDecor(int i2) {
        Context context;
        Context applicationContext;
        if (!this.mUseDecorContext || (applicationContext = getContext().getApplicationContext()) == null) {
            context = getContext();
        } else {
            DecorContext decorContext = new DecorContext(applicationContext, getContext().getResources());
            int i3 = this.mTheme;
            if (i3 != -1) {
                decorContext.setTheme(i3);
            }
            context = decorContext;
        }
        return new DecorView(context, i2, this, getAttributes());
    }

    public ViewGroup generateLayout(DecorView decorView) {
        int resourceId;
        ProgressBar circularProgressBar;
        TypedArray windowStyle = getWindowStyle();
        this.mIsFloating = windowStyle.getBoolean(4, false);
        int i2 = (~getForcedWindowFlags()) & 65792;
        if (this.mIsFloating) {
            setLayout(-2, -2);
            setFlags(0, i2);
        } else {
            setFlags(65792, i2);
        }
        if (windowStyle.getBoolean(3, false)) {
            requestFeature(1);
        } else if (windowStyle.getBoolean(15, false)) {
            requestFeature(8);
        }
        if (windowStyle.getBoolean(17, false)) {
            requestFeature(9);
        }
        if (windowStyle.getBoolean(16, false)) {
            requestFeature(10);
        }
        if (windowStyle.getBoolean(25, false)) {
            requestFeature(11);
        }
        if (windowStyle.getBoolean(9, false)) {
            setFlags(1024, (~getForcedWindowFlags()) & 1024);
        }
        if (windowStyle.getBoolean(23, false)) {
            setFlags(67108864, (~getForcedWindowFlags()) & 67108864);
        }
        if (windowStyle.getBoolean(24, false)) {
            setFlags(134217728, (~getForcedWindowFlags()) & 134217728);
        }
        if (windowStyle.getBoolean(22, false)) {
            setFlags(33554432, (~getForcedWindowFlags()) & 33554432);
        }
        if (windowStyle.getBoolean(14, false)) {
            setFlags(1048576, (~getForcedWindowFlags()) & 1048576);
        }
        if (windowStyle.getBoolean(18, getContext().getApplicationInfo().targetSdkVersion >= 11)) {
            setFlags(8388608, (~getForcedWindowFlags()) & 8388608);
        }
        windowStyle.getValue(19, this.mMinWidthMajor);
        windowStyle.getValue(20, this.mMinWidthMinor);
        if (windowStyle.hasValue(54)) {
            if (this.mFixedWidthMajor == null) {
                this.mFixedWidthMajor = new TypedValue();
            }
            windowStyle.getValue(54, this.mFixedWidthMajor);
        }
        if (windowStyle.hasValue(55)) {
            if (this.mFixedWidthMinor == null) {
                this.mFixedWidthMinor = new TypedValue();
            }
            windowStyle.getValue(55, this.mFixedWidthMinor);
        }
        if (windowStyle.hasValue(52)) {
            if (this.mFixedHeightMajor == null) {
                this.mFixedHeightMajor = new TypedValue();
            }
            windowStyle.getValue(52, this.mFixedHeightMajor);
        }
        if (windowStyle.hasValue(53)) {
            if (this.mFixedHeightMinor == null) {
                this.mFixedHeightMinor = new TypedValue();
            }
            windowStyle.getValue(53, this.mFixedHeightMinor);
        }
        if (windowStyle.getBoolean(26, false)) {
            requestFeature(12);
        }
        if (windowStyle.getBoolean(45, false)) {
            requestFeature(13);
        }
        this.mIsTranslucent = windowStyle.getBoolean(5, false);
        Context context = getContext();
        int i3 = context.getApplicationInfo().targetSdkVersion;
        boolean z2 = i3 < 11;
        boolean z3 = i3 < 14;
        boolean z4 = i3 < 21;
        boolean z5 = context.getResources().getBoolean(R.bool.target_honeycomb_needs_options_menu);
        boolean z6 = !hasFeature(8) || hasFeature(1);
        if (z2 || (z3 && z5 && z6)) {
            setNeedsMenuKey(1);
        } else {
            setNeedsMenuKey(2);
        }
        if (!this.mForcedStatusBarColor) {
            this.mStatusBarColor = windowStyle.getColor(35, -16777216);
        }
        if (!this.mForcedNavigationBarColor) {
            this.mNavigationBarColor = windowStyle.getColor(36, -16777216);
            this.mNavigationBarDividerColor = windowStyle.getColor(50, 0);
        }
        WindowManager.LayoutParams attributes = getAttributes();
        if (!this.mIsFloating) {
            if (!z4 && windowStyle.getBoolean(34, false)) {
                setFlags(Integer.MIN_VALUE, (~getForcedWindowFlags()) & Integer.MIN_VALUE);
            }
            if (this.mDecor.mForceWindowDrawsStatusBarBackground) {
                attributes.privateFlags |= 131072;
            }
        }
        if (windowStyle.getBoolean(46, false)) {
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
        }
        if (windowStyle.getBoolean(49, false)) {
            decorView.setSystemUiVisibility(16 | decorView.getSystemUiVisibility());
        }
        if ((this.mAlwaysReadCloseOnTouchAttr || getContext().getApplicationInfo().targetSdkVersion >= 11) && windowStyle.getBoolean(21, false)) {
            setCloseOnTouchOutsideIfNotSet(true);
        }
        if (!hasSoftInputMode()) {
            attributes.softInputMode = windowStyle.getInt(13, attributes.softInputMode);
        }
        if (windowStyle.getBoolean(11, this.mIsFloating)) {
            if ((getForcedWindowFlags() & 2) == 0) {
                attributes.flags |= 2;
            }
            if (!haveDimAmount()) {
                attributes.dimAmount = windowStyle.getFloat(0, 0.5f);
            }
        }
        if (attributes.windowAnimations == 0) {
            attributes.windowAnimations = windowStyle.getResourceId(8, 0);
        }
        if (getContainer() == null) {
            if (this.mBackgroundDrawable == null) {
                if (this.mBackgroundResource == 0) {
                    this.mBackgroundResource = windowStyle.getResourceId(1, 0);
                }
                if (this.mFrameResource == 0) {
                    this.mFrameResource = windowStyle.getResourceId(2, 0);
                }
                this.mBackgroundFallbackResource = windowStyle.getResourceId(47, 0);
            }
            if (this.mLoadElevation) {
                this.mElevation = windowStyle.getDimension(38, 0.0f);
            }
            this.mClipToOutline = windowStyle.getBoolean(39, false);
            this.mTextColor = windowStyle.getColor(7, 0);
        }
        int localFeatures = getLocalFeatures();
        int i4 = localFeatures & 2048;
        if (i4 != 0) {
            setCloseOnSwipeEnabled(true);
            resourceId = R.layout.screen_swipe_dismiss;
        } else if ((localFeatures & 24) != 0) {
            if (this.mIsFloating) {
                TypedValue typedValue = new TypedValue();
                getContext().getTheme().resolveAttribute(R.attr.dialogTitleIconsDecorLayout, typedValue, true);
                resourceId = typedValue.resourceId;
            } else {
                resourceId = R.layout.screen_title_icons;
            }
            removeFeature(8);
        } else if ((localFeatures & 36) != 0 && (localFeatures & 256) == 0) {
            resourceId = R.layout.screen_progress;
        } else if ((localFeatures & 128) != 0) {
            if (this.mIsFloating) {
                TypedValue typedValue2 = new TypedValue();
                getContext().getTheme().resolveAttribute(R.attr.dialogCustomTitleDecorLayout, typedValue2, true);
                resourceId = typedValue2.resourceId;
            } else {
                resourceId = R.layout.screen_custom_title;
            }
            removeFeature(8);
        } else if ((localFeatures & 2) != 0) {
            resourceId = (localFeatures & 1024) != 0 ? R.layout.screen_simple_overlay_action_mode : R.layout.screen_simple;
        } else if (this.mIsFloating) {
            TypedValue typedValue3 = new TypedValue();
            getContext().getTheme().resolveAttribute(R.attr.dialogTitleDecorLayout, typedValue3, true);
            resourceId = typedValue3.resourceId;
        } else {
            resourceId = (localFeatures & 256) != 0 ? windowStyle.getResourceId(51, R.layout.screen_action_bar) : R.layout.screen_title;
        }
        this.mDecor.startChanging();
        this.mDecor.onResourcesLoaded(this.mLayoutInflater, resourceId);
        ViewGroup viewGroup = (ViewGroup) findViewById(16908290);
        if (viewGroup == null) {
            throw new RuntimeException("Window couldn't find content container view");
        }
        if ((localFeatures & 32) != 0 && (circularProgressBar = getCircularProgressBar(false)) != null) {
            circularProgressBar.setIndeterminate(true);
        }
        if (i4 != 0) {
            registerSwipeCallbacks(viewGroup);
        }
        if (getContainer() == null) {
            this.mDecor.setWindowBackground(this.mBackgroundResource != 0 ? getContext().getDrawable(this.mBackgroundResource) : this.mBackgroundDrawable);
            this.mDecor.setWindowFrame(this.mFrameResource != 0 ? getContext().getDrawable(this.mFrameResource) : null);
            this.mDecor.setElevation(this.mElevation);
            this.mDecor.setClipToOutline(this.mClipToOutline);
            CharSequence charSequence = this.mTitle;
            if (charSequence != null) {
                setTitle(charSequence);
            }
            if (this.mTitleColor == 0) {
                this.mTitleColor = this.mTextColor;
            }
            setTitleColor(this.mTitleColor);
        }
        this.mDecor.finishChanging();
        return viewGroup;
    }

    @Override // android.view.Window
    public boolean getAllowEnterTransitionOverlap() {
        Boolean bool = this.mAllowEnterTransitionOverlap;
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    @Override // android.view.Window
    public boolean getAllowReturnTransitionOverlap() {
        Boolean bool = this.mAllowReturnTransitionOverlap;
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public AudioManager getAudioManager() {
        if (this.mAudioManager == null) {
            this.mAudioManager = (AudioManager) getContext().getSystemService("audio");
        }
        return this.mAudioManager;
    }

    @Override // android.view.Window
    public Scene getContentScene() {
        return this.mContentScene;
    }

    @Override // android.view.Window
    public View getCurrentFocus() {
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            return decorView.findFocus();
        }
        return null;
    }

    public int getDecorCaptionShade() {
        return this.mDecorCaptionShade;
    }

    @Override // android.view.Window
    public final View getDecorView() {
        if (this.mDecor == null || this.mForceDecorInstall) {
            installDecor();
        }
        return this.mDecor;
    }

    @Override // android.view.Window
    public float getElevation() {
        return this.mElevation;
    }

    @Override // android.view.Window
    public Transition getEnterTransition() {
        return this.mEnterTransition;
    }

    @Override // android.view.Window
    public Transition getExitTransition() {
        return this.mExitTransition;
    }

    @Override // android.view.Window
    public LayoutInflater getLayoutInflater() {
        return this.mLayoutInflater;
    }

    public int getLocalFeaturesPrivate() {
        return super.getLocalFeatures();
    }

    @Override // android.view.Window
    public MediaController getMediaController() {
        return this.mMediaController;
    }

    @Override // android.view.Window
    public int getNavigationBarColor() {
        return this.mNavigationBarColor;
    }

    public PanelFeatureState getPanelState(int i2, boolean z2) {
        return getPanelState(i2, z2, null);
    }

    @Override // android.view.Window
    public Transition getReenterTransition() {
        Transition transition = this.mReenterTransition;
        return transition == USE_DEFAULT_TRANSITION ? getExitTransition() : transition;
    }

    @Override // android.view.Window
    public Transition getReturnTransition() {
        Transition transition = this.mReturnTransition;
        return transition == USE_DEFAULT_TRANSITION ? getEnterTransition() : transition;
    }

    @Override // android.view.Window
    public Transition getSharedElementEnterTransition() {
        return this.mSharedElementEnterTransition;
    }

    @Override // android.view.Window
    public Transition getSharedElementExitTransition() {
        return this.mSharedElementExitTransition;
    }

    @Override // android.view.Window
    public Transition getSharedElementReenterTransition() {
        Transition transition = this.mSharedElementReenterTransition;
        return transition == USE_DEFAULT_TRANSITION ? getSharedElementExitTransition() : transition;
    }

    @Override // android.view.Window
    public Transition getSharedElementReturnTransition() {
        Transition transition = this.mSharedElementReturnTransition;
        return transition == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : transition;
    }

    @Override // android.view.Window
    public boolean getSharedElementsUseOverlay() {
        Boolean bool = this.mSharedElementsUseOverlay;
        if (bool == null) {
            return true;
        }
        return bool.booleanValue();
    }

    @Override // android.view.Window
    public int getStatusBarColor() {
        return this.mStatusBarColor;
    }

    @Override // android.view.Window
    public long getTransitionBackgroundFadeDuration() {
        long j2 = this.mBackgroundFadeDurationMillis;
        if (j2 < 0) {
            return 300L;
        }
        return j2;
    }

    @Override // android.view.Window
    public TransitionManager getTransitionManager() {
        return this.mTransitionManager;
    }

    @Override // android.view.Window
    public int getVolumeControlStream() {
        return this.mVolumeControlStreamType;
    }

    public boolean initializePanelContent(PanelFeatureState panelFeatureState) {
        View view = panelFeatureState.createdPanelView;
        if (view != null) {
            panelFeatureState.shownPanelView = view;
            return true;
        }
        if (panelFeatureState.menu == null) {
            return false;
        }
        if (this.mPanelMenuPresenterCallback == null) {
            this.mPanelMenuPresenterCallback = new PanelMenuPresenterCallback();
        }
        MenuView listMenuView = panelFeatureState.isInListMode() ? panelFeatureState.getListMenuView(getContext(), this.mPanelMenuPresenterCallback) : panelFeatureState.getIconMenuView(getContext(), this.mPanelMenuPresenterCallback);
        View view2 = (View) listMenuView;
        panelFeatureState.shownPanelView = view2;
        if (view2 == null) {
            return false;
        }
        int windowAnimations = listMenuView.getWindowAnimations();
        if (windowAnimations != 0) {
            panelFeatureState.windowAnimations = windowAnimations;
        }
        return true;
    }

    public boolean initializePanelDecor(PanelFeatureState panelFeatureState) {
        panelFeatureState.decorView = generateDecor(panelFeatureState.featureId);
        panelFeatureState.gravity = 81;
        panelFeatureState.setStyle(getContext());
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, R.styleable.Window, 0, panelFeatureState.listPresenterTheme);
        float dimension = typedArrayObtainStyledAttributes.getDimension(38, 0.0f);
        if (dimension != 0.0f) {
            panelFeatureState.decorView.setElevation(dimension);
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    public boolean initializePanelMenu(PanelFeatureState panelFeatureState) {
        Resources.Theme themeNewTheme;
        Context context = getContext();
        int i2 = panelFeatureState.featureId;
        if ((i2 == 0 || i2 == 8) && this.mDecorContentParent != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(16843825, typedValue, true);
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(16843671, typedValue, true);
            } else {
                theme.resolveAttribute(16843671, typedValue, true);
                themeNewTheme = null;
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(themeNewTheme);
                context = contextThemeWrapper;
            }
        }
        MenuBuilder menuBuilder = new MenuBuilder(context);
        menuBuilder.setCallback(this);
        panelFeatureState.setMenu(menuBuilder);
        return true;
    }

    @Override // android.view.Window
    public void injectInputEvent(InputEvent inputEvent) {
        getViewRootImpl().dispatchInputEvent(inputEvent);
    }

    @Override // android.view.Window
    public void invalidatePanelMenu(int i2) {
        DecorView decorView;
        this.mInvalidatePanelMenuFeatures = (1 << i2) | this.mInvalidatePanelMenuFeatures;
        if (this.mInvalidatePanelMenuPosted || (decorView = this.mDecor) == null) {
            return;
        }
        decorView.postOnAnimation(this.mInvalidatePanelMenuRunnable);
        this.mInvalidatePanelMenuPosted = true;
    }

    @Override // android.view.Window
    public boolean isFloating() {
        return this.mIsFloating;
    }

    @Override // android.view.Window
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        PanelFeatureState panelState = getPanelState(0, false);
        return (panelState == null || (menuBuilder = panelState.menu) == null || !menuBuilder.isShortcutKey(i2, keyEvent)) ? false : true;
    }

    public boolean isShowingWallpaper() {
        return (getAttributes().flags & 1048576) != 0;
    }

    public boolean isTranslucent() {
        return this.mIsTranslucent;
    }

    @Override // android.view.Window
    public void onActive() {
    }

    @Override // android.view.Window
    public void onConfigurationChanged(Configuration configuration) {
        PanelFeatureState panelState;
        if (this.mDecorContentParent != null || (panelState = getPanelState(0, false)) == null || panelState.menu == null) {
            return;
        }
        if (!panelState.isOpen) {
            clearMenuViews(panelState);
            return;
        }
        Bundle bundle = new Bundle();
        IconMenuPresenter iconMenuPresenter = panelState.iconMenuPresenter;
        if (iconMenuPresenter != null) {
            iconMenuPresenter.saveHierarchyState(bundle);
        }
        ListMenuPresenter listMenuPresenter = panelState.listMenuPresenter;
        if (listMenuPresenter != null) {
            listMenuPresenter.saveHierarchyState(bundle);
        }
        clearMenuViews(panelState);
        reopenMenu(false);
        IconMenuPresenter iconMenuPresenter2 = panelState.iconMenuPresenter;
        if (iconMenuPresenter2 != null) {
            iconMenuPresenter2.restoreHierarchyState(bundle);
        }
        ListMenuPresenter listMenuPresenter2 = panelState.listMenuPresenter;
        if (listMenuPresenter2 != null) {
            listMenuPresenter2.restoreHierarchyState(bundle);
        }
    }

    public void onDrawableChanged(int i2, Drawable drawable, int i3) {
        ImageView rightIconView;
        if (i2 == 3) {
            rightIconView = getLeftIconView();
        } else if (i2 != 4) {
            return;
        } else {
            rightIconView = getRightIconView();
        }
        if (drawable == null) {
            rightIconView.setVisibility(8);
            return;
        }
        drawable.setAlpha(i3);
        rightIconView.setImageDrawable(drawable);
        rightIconView.setVisibility(0);
    }

    public void onIntChanged(int i2, int i3) {
        FrameLayout frameLayout;
        if (i2 == 2 || i2 == 5) {
            updateProgressBars(i3);
        } else {
            if (i2 != 7 || (frameLayout = (FrameLayout) findViewById(R.id.title_container)) == null) {
                return;
            }
            this.mLayoutInflater.inflate(i3, frameLayout);
        }
    }

    public boolean onKeyDown(int i2, int i3, KeyEvent keyEvent) {
        DecorView decorView = this.mDecor;
        KeyEvent.DispatcherState keyDispatcherState = decorView != null ? decorView.getKeyDispatcherState() : null;
        int i4 = 0;
        if (i3 != 4) {
            if (i3 != 79) {
                if (i3 == 82) {
                    if (i2 < 0) {
                        i2 = 0;
                    }
                    onKeyDownPanel(i2, keyEvent);
                    return true;
                }
                if (i3 != 130) {
                    if (i3 == 164 || i3 == 24 || i3 == 25) {
                        MediaController mediaController = this.mMediaController;
                        if (mediaController != null) {
                            if (i3 == 24) {
                                i4 = 1;
                            } else if (i3 == 25) {
                                i4 = -1;
                            } else if (i3 == 164) {
                                i4 = 101;
                            }
                            mediaController.adjustVolume(i4, 1);
                        } else {
                            MediaSessionLegacyHelper.getHelper(getContext()).sendVolumeKeyEvent(keyEvent, this.mVolumeControlStreamType, false);
                        }
                        return true;
                    }
                    if (i3 != 126 && i3 != 127) {
                        switch (i3) {
                        }
                    }
                }
            }
            MediaController mediaController2 = this.mMediaController;
            return mediaController2 != null && mediaController2.dispatchMediaButtonEvent(keyEvent);
        }
        if (keyEvent.getRepeatCount() <= 0 && i2 >= 0) {
            if (keyDispatcherState != null) {
                keyDispatcherState.startTracking(keyEvent, this);
            }
            return true;
        }
        return false;
    }

    public final boolean onKeyDownPanel(int i2, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getRepeatCount() == 0) {
            this.mPanelChordingKey = keyCode;
            PanelFeatureState panelState = getPanelState(i2, false);
            if (panelState != null && !panelState.isOpen) {
                return preparePanel(panelState, keyEvent);
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean onKeyUp(int i2, int i3, KeyEvent keyEvent) {
        PanelFeatureState panelState;
        DecorView decorView = this.mDecor;
        KeyEvent.DispatcherState keyDispatcherState = decorView != null ? decorView.getKeyDispatcherState() : null;
        if (keyDispatcherState != null) {
            keyDispatcherState.handleUpEvent(keyEvent);
        }
        if (i3 != 4) {
            if (i3 != 79) {
                if (i3 == 82) {
                    if (i2 < 0) {
                        i2 = 0;
                    }
                    onKeyUpPanel(i2, keyEvent);
                    return true;
                }
                if (i3 != 130) {
                    if (i3 == 164) {
                        MediaSessionLegacyHelper.getHelper(getContext()).sendVolumeKeyEvent(keyEvent, Integer.MIN_VALUE, false);
                        return true;
                    }
                    if (i3 == 171) {
                        if (this.mSupportsPictureInPicture && !keyEvent.isCanceled()) {
                            getWindowControllerCallback().enterPictureInPictureModeIfPossible();
                        }
                        return true;
                    }
                    if (i3 != 24 && i3 != 25) {
                        if (i3 != 126 && i3 != 127) {
                            switch (i3) {
                                case 84:
                                    if (!getKeyguardManager().inKeyguardRestrictedInputMode()) {
                                        if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                                            launchDefaultSearch(keyEvent);
                                        }
                                        return true;
                                    }
                                    break;
                            }
                        }
                    } else {
                        MediaController mediaController = this.mMediaController;
                        if (mediaController != null) {
                            mediaController.adjustVolume(0, MtpConstants.OPERATION_GET_DEVICE_PROP_DESC);
                        } else {
                            MediaSessionLegacyHelper.getHelper(getContext()).sendVolumeKeyEvent(keyEvent, this.mVolumeControlStreamType, false);
                        }
                        return true;
                    }
                }
            }
            MediaController mediaController2 = this.mMediaController;
            return mediaController2 != null && mediaController2.dispatchMediaButtonEvent(keyEvent);
        }
        if (i2 >= 0 && keyEvent.isTracking() && !keyEvent.isCanceled()) {
            if (i2 == 0 && (panelState = getPanelState(i2, false)) != null && panelState.isInExpandedMode) {
                reopenMenu(true);
                return true;
            }
            closePanel(i2);
            return true;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0080  */
    public final void onKeyUpPanel(int i2, KeyEvent keyEvent) {
        boolean zHideOverflowMenu;
        boolean zPreparePanel;
        DecorContentParent decorContentParent;
        if (this.mPanelChordingKey != 0) {
            this.mPanelChordingKey = 0;
            PanelFeatureState panelState = getPanelState(i2, false);
            if (keyEvent.isCanceled()) {
                return;
            }
            DecorView decorView = this.mDecor;
            if ((decorView == null || decorView.mPrimaryActionMode == null) && panelState != null) {
                if (i2 != 0 || (decorContentParent = this.mDecorContentParent) == null || !decorContentParent.canShowOverflowMenu() || ViewConfiguration.get(getContext()).hasPermanentMenuKey()) {
                    zHideOverflowMenu = panelState.isOpen;
                    if (zHideOverflowMenu || panelState.isHandled) {
                        closePanel(panelState, true);
                    } else if (panelState.isPrepared) {
                        if (panelState.refreshMenuContent) {
                            panelState.isPrepared = false;
                            zPreparePanel = preparePanel(panelState, keyEvent);
                        } else {
                            zPreparePanel = true;
                        }
                        if (zPreparePanel) {
                            EventLog.writeEvent(ServiceHealthStats.MEASUREMENT_START_SERVICE_COUNT, 0);
                            openPanel(panelState, keyEvent);
                            zHideOverflowMenu = true;
                        } else {
                            zHideOverflowMenu = false;
                        }
                    } else {
                        zHideOverflowMenu = false;
                    }
                } else if (this.mDecorContentParent.isOverflowMenuShowing()) {
                    zHideOverflowMenu = this.mDecorContentParent.hideOverflowMenu();
                } else if (isDestroyed() || !preparePanel(panelState, keyEvent)) {
                    zHideOverflowMenu = false;
                } else {
                    zHideOverflowMenu = this.mDecorContentParent.showOverflowMenu();
                }
                if (zHideOverflowMenu) {
                    AudioManager audioManager = (AudioManager) getContext().getSystemService("audio");
                    if (audioManager != null) {
                        audioManager.playSoundEffect(0);
                    } else {
                        Log.w(TAG, "Couldn't get audio manager");
                    }
                }
            }
        }
    }

    @Override // com.android.internal.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState panelFeatureStateFindMenuPanel;
        Window.Callback callback = getCallback();
        if (callback == null || isDestroyed() || (panelFeatureStateFindMenuPanel = findMenuPanel(menuBuilder.getRootMenu())) == null) {
            return false;
        }
        return callback.onMenuItemSelected(panelFeatureStateFindMenuPanel.featureId, menuItem);
    }

    @Override // com.android.internal.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        reopenMenu(true);
    }

    @Override // android.view.Window
    public void onMultiWindowModeChanged() {
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.onConfigurationChanged(getContext().getResources().getConfiguration());
        }
    }

    public void onOptionsPanelRotationChanged() {
        PanelFeatureState panelState = getPanelState(0, false);
        if (panelState == null) {
            return;
        }
        DecorView decorView = panelState.decorView;
        WindowManager.LayoutParams layoutParams = decorView != null ? (WindowManager.LayoutParams) decorView.getLayoutParams() : null;
        if (layoutParams != null) {
            layoutParams.gravity = getOptionsPanelGravity();
            WindowManager windowManager = getWindowManager();
            if (windowManager != null) {
                windowManager.updateViewLayout(panelState.decorView, layoutParams);
            }
        }
    }

    @Override // android.view.Window
    public void onPictureInPictureModeChanged(boolean z2) {
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.updatePictureInPictureOutlineProvider(z2);
        }
    }

    public void onViewRootImplSet(ViewRootImpl viewRootImpl) {
        viewRootImpl.setActivityConfigCallback(this.mActivityConfigCallback);
    }

    @Override // android.view.Window
    public final void openPanel(int i2, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        if (i2 != 0 || (decorContentParent = this.mDecorContentParent) == null || !decorContentParent.canShowOverflowMenu() || ViewConfiguration.get(getContext()).hasPermanentMenuKey()) {
            openPanel(getPanelState(i2, true), keyEvent);
        } else {
            this.mDecorContentParent.showOverflowMenu();
        }
    }

    public void openPanelsAfterRestore() {
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null) {
            return;
        }
        for (int length = panelFeatureStateArr.length - 1; length >= 0; length--) {
            PanelFeatureState panelFeatureState = panelFeatureStateArr[length];
            if (panelFeatureState != null) {
                panelFeatureState.applyFrozenState();
                if (!panelFeatureState.isOpen && panelFeatureState.wasLastOpen) {
                    panelFeatureState.isInExpandedMode = panelFeatureState.wasLastExpanded;
                    openPanel(panelFeatureState, (KeyEvent) null);
                }
            }
        }
    }

    @Override // android.view.Window
    public final View peekDecorView() {
        return this.mDecor;
    }

    @Override // android.view.Window
    public boolean performContextMenuIdentifierAction(int i2, int i3) {
        ContextMenuBuilder contextMenuBuilder = this.mContextMenu;
        if (contextMenuBuilder != null) {
            return contextMenuBuilder.performIdentifierAction(i2, i3);
        }
        return false;
    }

    @Override // android.view.Window
    public boolean performPanelIdentifierAction(int i2, int i3, int i4) {
        MenuBuilder menuBuilder;
        PanelFeatureState panelState = getPanelState(i2, true);
        if (!preparePanel(panelState, new KeyEvent(0, 82)) || (menuBuilder = panelState.menu) == null) {
            return false;
        }
        boolean zPerformIdentifierAction = menuBuilder.performIdentifierAction(i3, i4);
        if (this.mDecorContentParent == null) {
            closePanel(panelState, true);
        }
        return zPerformIdentifierAction;
    }

    @Override // android.view.Window
    public boolean performPanelShortcut(int i2, int i3, KeyEvent keyEvent, int i4) {
        return performPanelShortcut(getPanelState(i2, false), i3, keyEvent, i4);
    }

    public final boolean preparePanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        DecorContentParent decorContentParent3;
        if (isDestroyed()) {
            return false;
        }
        if (panelFeatureState.isPrepared) {
            return true;
        }
        PanelFeatureState panelFeatureState2 = this.mPreparedPanel;
        if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
            closePanel(panelFeatureState2, false);
        }
        Window.Callback callback = getCallback();
        if (callback != null) {
            panelFeatureState.createdPanelView = callback.onCreatePanelView(panelFeatureState.featureId);
        }
        int i2 = panelFeatureState.featureId;
        boolean z2 = i2 == 0 || i2 == 8;
        if (z2 && (decorContentParent3 = this.mDecorContentParent) != null) {
            decorContentParent3.setMenuPrepared();
        }
        if (panelFeatureState.createdPanelView == null) {
            MenuBuilder menuBuilder = panelFeatureState.menu;
            if (menuBuilder == null || panelFeatureState.refreshMenuContent) {
                if (menuBuilder == null && (!initializePanelMenu(panelFeatureState) || panelFeatureState.menu == null)) {
                    return false;
                }
                if (z2 && this.mDecorContentParent != null) {
                    if (this.mActionMenuPresenterCallback == null) {
                        this.mActionMenuPresenterCallback = new ActionMenuPresenterCallback();
                    }
                    this.mDecorContentParent.setMenu(panelFeatureState.menu, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.stopDispatchingItemsChanged();
                if (callback == null || !callback.onCreatePanelMenu(panelFeatureState.featureId, panelFeatureState.menu)) {
                    panelFeatureState.setMenu(null);
                    if (z2 && (decorContentParent = this.mDecorContentParent) != null) {
                        decorContentParent.setMenu(null, this.mActionMenuPresenterCallback);
                    }
                    return false;
                }
                panelFeatureState.refreshMenuContent = false;
            }
            panelFeatureState.menu.stopDispatchingItemsChanged();
            Bundle bundle = panelFeatureState.frozenActionViewState;
            if (bundle != null) {
                panelFeatureState.menu.restoreActionViewStates(bundle);
                panelFeatureState.frozenActionViewState = null;
            }
            if (!callback.onPreparePanel(panelFeatureState.featureId, panelFeatureState.createdPanelView, panelFeatureState.menu)) {
                if (z2 && (decorContentParent2 = this.mDecorContentParent) != null) {
                    decorContentParent2.setMenu(null, this.mActionMenuPresenterCallback);
                }
                panelFeatureState.menu.startDispatchingItemsChanged();
                return false;
            }
            boolean z3 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            panelFeatureState.qwertyMode = z3;
            panelFeatureState.menu.setQwertyMode(z3);
            panelFeatureState.menu.startDispatchingItemsChanged();
        }
        panelFeatureState.isPrepared = true;
        panelFeatureState.isHandled = false;
        this.mPreparedPanel = panelFeatureState;
        return true;
    }

    @Override // android.view.Window
    public void reportActivityRelaunched() {
        DecorView decorView = this.mDecor;
        if (decorView == null || decorView.getViewRootImpl() == null) {
            return;
        }
        this.mDecor.getViewRootImpl().reportActivityRelaunched();
    }

    @Override // android.view.Window
    public boolean requestFeature(int i2) {
        if (this.mContentParentExplicitlySet) {
            throw new AndroidRuntimeException("requestFeature() must be called before adding content");
        }
        int features = getFeatures();
        int i3 = (1 << i2) | features;
        if ((i3 & 128) != 0 && (i3 & (-13506)) != 0) {
            throw new AndroidRuntimeException("You cannot combine custom titles with other title features");
        }
        if ((features & 2) != 0 && i2 == 8) {
            return false;
        }
        int i4 = features & 256;
        if (i4 != 0 && i2 == 1) {
            removeFeature(8);
        }
        if (i4 != 0 && i2 == 11) {
            throw new AndroidRuntimeException("You cannot combine swipe dismissal and the action bar.");
        }
        if ((features & 2048) != 0 && i2 == 8) {
            throw new AndroidRuntimeException("You cannot combine swipe dismissal and the action bar.");
        }
        if (i2 == 5 && getContext().getPackageManager().hasSystemFeature(PackageManager.FEATURE_WATCH)) {
            throw new AndroidRuntimeException("You cannot use indeterminate progress on a watch.");
        }
        return super.requestFeature(i2);
    }

    @Override // android.view.Window
    public void restoreHierarchyState(Bundle bundle) {
        if (this.mContentParent == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(VIEWS_TAG);
        if (sparseParcelableArray != null) {
            this.mContentParent.restoreHierarchyState(sparseParcelableArray);
        }
        int i2 = bundle.getInt(FOCUSED_ID_TAG, -1);
        if (i2 != -1) {
            View viewFindViewById = this.mContentParent.findViewById(i2);
            if (viewFindViewById != null) {
                viewFindViewById.requestFocus();
            } else {
                Log.w(TAG, "Previously focused view reported id " + i2 + " during save, but can't be found during restore.");
            }
        }
        SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray(PANELS_TAG);
        if (sparseParcelableArray2 != null) {
            restorePanelState(sparseParcelableArray2);
        }
        if (this.mDecorContentParent != null) {
            SparseArray<Parcelable> sparseParcelableArray3 = bundle.getSparseParcelableArray(ACTION_BAR_TAG);
            if (sparseParcelableArray3 == null) {
                Log.w(TAG, "Missing saved instance states for action bar views! State will not be restored.");
            } else {
                doPendingInvalidatePanelMenu();
                this.mDecorContentParent.restoreToolbarHierarchyState(sparseParcelableArray3);
            }
        }
    }

    @Override // android.view.Window
    public Bundle saveHierarchyState() {
        Bundle bundle = new Bundle();
        if (this.mContentParent == null) {
            return bundle;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.mContentParent.saveHierarchyState(sparseArray);
        bundle.putSparseParcelableArray(VIEWS_TAG, sparseArray);
        View viewFindFocus = this.mContentParent.findFocus();
        if (viewFindFocus != null && viewFindFocus.getId() != -1) {
            bundle.putInt(FOCUSED_ID_TAG, viewFindFocus.getId());
        }
        SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
        savePanelState(sparseArray2);
        if (sparseArray2.size() > 0) {
            bundle.putSparseParcelableArray(PANELS_TAG, sparseArray2);
        }
        if (this.mDecorContentParent != null) {
            SparseArray<Parcelable> sparseArray3 = new SparseArray<>();
            this.mDecorContentParent.saveToolbarHierarchyState(sparseArray3);
            bundle.putSparseParcelableArray(ACTION_BAR_TAG, sparseArray3);
        }
        return bundle;
    }

    public void sendCloseSystemWindows() {
        sendCloseSystemWindows(getContext(), null);
    }

    @Override // android.view.Window
    public void setAllowEnterTransitionOverlap(boolean z2) {
        this.mAllowEnterTransitionOverlap = Boolean.valueOf(z2);
    }

    @Override // android.view.Window
    public void setAllowReturnTransitionOverlap(boolean z2) {
        this.mAllowReturnTransitionOverlap = Boolean.valueOf(z2);
    }

    @Override // android.view.Window
    public void setAttributes(WindowManager.LayoutParams layoutParams) {
        super.setAttributes(layoutParams);
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.updateLogTag(layoutParams);
        }
    }

    @Override // android.view.Window
    public final void setBackgroundDrawable(Drawable drawable) {
        if (drawable == this.mBackgroundDrawable && this.mBackgroundResource == 0) {
            return;
        }
        this.mBackgroundResource = 0;
        this.mBackgroundDrawable = drawable;
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.setWindowBackground(drawable);
        }
        int i2 = this.mBackgroundFallbackResource;
        if (i2 != 0) {
            this.mDecor.setBackgroundFallback(drawable == null ? i2 : 0);
        }
    }

    @Override // android.view.Window
    public final void setChildDrawable(int i2, Drawable drawable) {
        DrawableFeatureState drawableState = getDrawableState(i2, true);
        drawableState.child = drawable;
        updateDrawable(i2, drawableState, false);
    }

    @Override // android.view.Window
    public final void setChildInt(int i2, int i3) {
        updateInt(i2, i3, false);
    }

    @Override // android.view.Window
    public final void setClipToOutline(boolean z2) {
        this.mClipToOutline = z2;
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.setClipToOutline(z2);
        }
    }

    @Override // android.view.Window
    public void setCloseOnSwipeEnabled(boolean z2) {
        if (hasFeature(11)) {
            ViewGroup viewGroup = this.mContentParent;
            if (viewGroup instanceof SwipeDismissLayout) {
                ((SwipeDismissLayout) viewGroup).setDismissable(z2);
            }
        }
        super.setCloseOnSwipeEnabled(z2);
    }

    @Override // android.view.Window
    public final void setContainer(Window window) {
        super.setContainer(window);
    }

    @Override // android.view.Window
    public void setContentView(int i2) {
        if (this.mContentParent == null) {
            installDecor();
        } else if (!hasFeature(12)) {
            this.mContentParent.removeAllViews();
        }
        if (hasFeature(12)) {
            transitionTo(Scene.getSceneForLayout(this.mContentParent, i2, getContext()));
        } else {
            this.mLayoutInflater.inflate(i2, this.mContentParent);
        }
        this.mContentParent.requestApplyInsets();
        Window.Callback callback = getCallback();
        if (callback != null && !isDestroyed()) {
            callback.onContentChanged();
        }
        this.mContentParentExplicitlySet = true;
    }

    @Override // android.view.Window
    public void setDecorCaptionShade(int i2) {
        this.mDecorCaptionShade = i2;
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.updateDecorCaptionShade();
        }
    }

    @Override // android.view.Window
    public void setDefaultIcon(int i2) {
        if ((this.mResourcesSetFlags & 1) != 0) {
            return;
        }
        this.mIconRes = i2;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            if (decorContentParent.hasIcon() && (this.mResourcesSetFlags & 4) == 0) {
                return;
            }
            if (i2 != 0) {
                this.mDecorContentParent.setIcon(i2);
                this.mResourcesSetFlags &= -5;
            } else {
                this.mDecorContentParent.setIcon(getContext().getPackageManager().getDefaultActivityIcon());
                this.mResourcesSetFlags |= 4;
            }
        }
    }

    @Override // android.view.Window
    public void setDefaultLogo(int i2) {
        if ((this.mResourcesSetFlags & 2) != 0) {
            return;
        }
        this.mLogoRes = i2;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent == null || decorContentParent.hasLogo()) {
            return;
        }
        this.mDecorContentParent.setLogo(i2);
    }

    @Override // android.view.Window
    public void setDefaultWindowFormat(int i2) {
        super.setDefaultWindowFormat(i2);
    }

    @Override // android.view.Window
    public final void setElevation(float f2) {
        this.mElevation = f2;
        WindowManager.LayoutParams attributes = getAttributes();
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.setElevation(f2);
            attributes.setSurfaceInsets(this.mDecor, true, false);
        }
        dispatchWindowAttributesChanged(attributes);
    }

    @Override // android.view.Window
    public void setEnterTransition(Transition transition) {
        this.mEnterTransition = transition;
    }

    @Override // android.view.Window
    public void setExitTransition(Transition transition) {
        this.mExitTransition = transition;
    }

    public final void setFeatureDefaultDrawable(int i2, Drawable drawable) {
        DrawableFeatureState drawableState = getDrawableState(i2, true);
        if (drawableState.def != drawable) {
            drawableState.def = drawable;
            updateDrawable(i2, drawableState, false);
        }
    }

    @Override // android.view.Window
    public final void setFeatureDrawable(int i2, Drawable drawable) {
        DrawableFeatureState drawableState = getDrawableState(i2, true);
        drawableState.resid = 0;
        drawableState.uri = null;
        if (drawableState.local != drawable) {
            drawableState.local = drawable;
            updateDrawable(i2, drawableState, false);
        }
    }

    @Override // android.view.Window
    public void setFeatureDrawableAlpha(int i2, int i3) {
        DrawableFeatureState drawableState = getDrawableState(i2, true);
        if (drawableState.alpha != i3) {
            drawableState.alpha = i3;
            updateDrawable(i2, drawableState, false);
        }
    }

    @Override // android.view.Window
    public final void setFeatureDrawableResource(int i2, int i3) {
        if (i3 == 0) {
            setFeatureDrawable(i2, null);
            return;
        }
        DrawableFeatureState drawableState = getDrawableState(i2, true);
        if (drawableState.resid != i3) {
            drawableState.resid = i3;
            drawableState.uri = null;
            drawableState.local = getContext().getDrawable(i3);
            updateDrawable(i2, drawableState, false);
        }
    }

    @Override // android.view.Window
    public final void setFeatureDrawableUri(int i2, Uri uri) {
        if (uri == null) {
            setFeatureDrawable(i2, null);
            return;
        }
        DrawableFeatureState drawableState = getDrawableState(i2, true);
        Uri uri2 = drawableState.uri;
        if (uri2 == null || !uri2.equals(uri)) {
            drawableState.resid = 0;
            drawableState.uri = uri;
            drawableState.local = loadImageURI(uri);
            updateDrawable(i2, drawableState, false);
        }
    }

    @Override // android.view.Window
    public final void setFeatureInt(int i2, int i3) {
        updateInt(i2, i3, false);
    }

    @Override // android.view.Window
    public void setIcon(int i2) {
        this.mIconRes = i2;
        this.mResourcesSetFlags = (this.mResourcesSetFlags | 1) & (-5);
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.setIcon(i2);
        }
    }

    public void setIsStartingWindow(boolean z2) {
        this.mIsStartingWindow = z2;
    }

    @Override // android.view.Window
    public void setLocalFocus(boolean z2, boolean z3) {
        getViewRootImpl().windowFocusChanged(z2, z3);
    }

    @Override // android.view.Window
    public void setLogo(int i2) {
        this.mLogoRes = i2;
        this.mResourcesSetFlags |= 2;
        DecorContentParent decorContentParent = this.mDecorContentParent;
        if (decorContentParent != null) {
            decorContentParent.setLogo(i2);
        }
    }

    @Override // android.view.Window
    public void setMediaController(MediaController mediaController) {
        this.mMediaController = mediaController;
    }

    @Override // android.view.Window
    public void setNavigationBarColor(int i2) {
        this.mNavigationBarColor = i2;
        this.mForcedNavigationBarColor = true;
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.updateColorViews(null, false);
            this.mDecor.updateNavigationGuardColor();
        }
    }

    @Override // android.view.Window
    public void setReenterTransition(Transition transition) {
        this.mReenterTransition = transition;
    }

    @Override // android.view.Window
    public void setResizingCaptionDrawable(Drawable drawable) {
        this.mDecor.setUserCaptionBackgroundDrawable(drawable);
    }

    @Override // android.view.Window
    public void setReturnTransition(Transition transition) {
        this.mReturnTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementEnterTransition(Transition transition) {
        this.mSharedElementEnterTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementExitTransition(Transition transition) {
        this.mSharedElementExitTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementReenterTransition(Transition transition) {
        this.mSharedElementReenterTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementReturnTransition(Transition transition) {
        this.mSharedElementReturnTransition = transition;
    }

    @Override // android.view.Window
    public void setSharedElementsUseOverlay(boolean z2) {
        this.mSharedElementsUseOverlay = Boolean.valueOf(z2);
    }

    @Override // android.view.Window
    public void setStatusBarColor(int i2) {
        this.mStatusBarColor = i2;
        this.mForcedStatusBarColor = true;
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            decorView.updateColorViews(null, false);
        }
    }

    @Override // android.view.Window
    public void setTheme(int i2) {
        this.mTheme = i2;
        DecorView decorView = this.mDecor;
        if (decorView != null) {
            Context context = decorView.getContext();
            if (context instanceof DecorContext) {
                context.setTheme(i2);
            }
        }
    }

    @Override // android.view.Window
    public void setTitle(CharSequence charSequence) {
        setTitle(charSequence, true);
    }

    @Override // android.view.Window
    @Deprecated
    public void setTitleColor(int i2) {
        TextView textView = this.mTitleView;
        if (textView != null) {
            textView.setTextColor(i2);
        }
        this.mTitleColor = i2;
    }

    @Override // android.view.Window
    public void setTransitionBackgroundFadeDuration(long j2) {
        if (j2 < 0) {
            throw new IllegalArgumentException("negative durations are not allowed");
        }
        this.mBackgroundFadeDurationMillis = j2;
    }

    @Override // android.view.Window
    public void setTransitionManager(TransitionManager transitionManager) {
        this.mTransitionManager = transitionManager;
    }

    @Override // android.view.Window
    public void setUiOptions(int i2) {
        this.mUiOptions = i2;
    }

    @Override // android.view.Window
    public void setVolumeControlStream(int i2) {
        this.mVolumeControlStreamType = i2;
    }

    @Override // android.view.Window
    public boolean superDispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.mDecor.superDispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window
    public boolean superDispatchKeyEvent(KeyEvent keyEvent) {
        return this.mDecor.superDispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window
    public boolean superDispatchKeyShortcutEvent(KeyEvent keyEvent) {
        return this.mDecor.superDispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.view.Window
    public boolean superDispatchTouchEvent(MotionEvent motionEvent) {
        return this.mDecor.superDispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window
    public boolean superDispatchTrackballEvent(MotionEvent motionEvent) {
        return this.mDecor.superDispatchTrackballEvent(motionEvent);
    }

    @Override // android.view.Window
    public void takeInputQueue(InputQueue.Callback callback) {
        this.mTakeInputQueueCallback = callback;
    }

    @Override // android.view.Window
    public void takeKeyEvents(boolean z2) {
        this.mDecor.setFocusable(z2);
    }

    @Override // android.view.Window
    public void takeSurface(SurfaceHolder.Callback2 callback2) {
        this.mTakeSurfaceCallback = callback2;
    }

    @Override // android.view.Window
    public final void togglePanel(int i2, KeyEvent keyEvent) {
        PanelFeatureState panelState = getPanelState(i2, true);
        if (panelState.isOpen) {
            closePanel(panelState, true);
        } else {
            openPanel(panelState, keyEvent);
        }
    }

    public final void updateDrawable(int i2, boolean z2) {
        DrawableFeatureState drawableState = getDrawableState(i2, false);
        if (drawableState != null) {
            updateDrawable(i2, drawableState, z2);
        }
    }

    private PanelFeatureState getPanelState(int i2, boolean z2, PanelFeatureState panelFeatureState) {
        if ((getFeatures() & (1 << i2)) == 0) {
            if (z2) {
                throw new RuntimeException("The feature has not been requested");
            }
            return null;
        }
        PanelFeatureState[] panelFeatureStateArr = this.mPanels;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i2 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.mPanels = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState2 = panelFeatureStateArr[i2];
        if (panelFeatureState2 != null) {
            return panelFeatureState2;
        }
        if (panelFeatureState == null) {
            panelFeatureState = new PanelFeatureState(i2);
        }
        panelFeatureStateArr[i2] = panelFeatureState;
        return panelFeatureState;
    }

    public boolean performPanelShortcut(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent, int i3) {
        MenuBuilder menuBuilder;
        boolean zPerformShortcut = false;
        if (!keyEvent.isSystem() && panelFeatureState != null) {
            if ((panelFeatureState.isPrepared || preparePanel(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.menu) != null) {
                zPerformShortcut = menuBuilder.performShortcut(i2, keyEvent, i3);
            }
            if (zPerformShortcut) {
                panelFeatureState.isHandled = true;
                if ((i3 & 1) == 0 && this.mDecorContentParent == null) {
                    closePanel(panelFeatureState, true);
                }
            }
        }
        return zPerformShortcut;
    }

    public void sendCloseSystemWindows(String str) {
        sendCloseSystemWindows(getContext(), str);
    }

    public void setTitle(CharSequence charSequence, boolean z2) {
        ViewRootImpl viewRootImpl;
        TextView textView = this.mTitleView;
        if (textView != null) {
            textView.setText(charSequence);
        } else {
            DecorContentParent decorContentParent = this.mDecorContentParent;
            if (decorContentParent != null) {
                decorContentParent.setWindowTitle(charSequence);
            }
        }
        this.mTitle = charSequence;
        if (z2) {
            WindowManager.LayoutParams attributes = getAttributes();
            if (TextUtils.equals(charSequence, attributes.accessibilityTitle)) {
                return;
            }
            attributes.accessibilityTitle = TextUtils.stringOrSpannedString(charSequence);
            DecorView decorView = this.mDecor;
            if (decorView != null && (viewRootImpl = decorView.getViewRootImpl()) != null) {
                viewRootImpl.onWindowTitleChanged();
            }
            dispatchWindowAttributesChanged(getAttributes());
        }
    }

    @Override // android.view.Window
    public void setUiOptions(int i2, int i3) {
        this.mUiOptions = (i2 & i3) | (this.mUiOptions & (~i3));
    }

    public static void sendCloseSystemWindows(Context context, String str) {
        if (ActivityManager.isSystemReady()) {
            try {
                ActivityManager.getService().closeSystemDialogs(str);
            } catch (RemoteException unused) {
            }
        }
    }

    private void updateDrawable(int i2, DrawableFeatureState drawableFeatureState, boolean z2) {
        Drawable drawable;
        if (this.mContentParent == null) {
            return;
        }
        int i3 = 1 << i2;
        if ((getFeatures() & i3) != 0 || z2) {
            if (drawableFeatureState != null) {
                drawable = drawableFeatureState.child;
                if (drawable == null) {
                    drawable = drawableFeatureState.local;
                }
                if (drawable == null) {
                    drawable = drawableFeatureState.def;
                }
            } else {
                drawable = null;
            }
            if ((i3 & getLocalFeatures()) == 0) {
                if (getContainer() != null) {
                    if (isActive() || z2) {
                        getContainer().setChildDrawable(i2, drawable);
                        return;
                    }
                    return;
                }
                return;
            }
            if (drawableFeatureState != null) {
                if (drawableFeatureState.cur == drawable && drawableFeatureState.curAlpha == drawableFeatureState.alpha) {
                    return;
                }
                drawableFeatureState.cur = drawable;
                int i4 = drawableFeatureState.alpha;
                drawableFeatureState.curAlpha = i4;
                onDrawableChanged(i2, drawable, i4);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:81:0x011a  */
    /* JADX WARN: Code duplicated, block: B:82:0x0126  */
    private void openPanel(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        int i3;
        WindowManager.LayoutParams layoutParams;
        View view;
        ViewGroup.LayoutParams layoutParams2;
        if (panelFeatureState.isOpen || isDestroyed()) {
            return;
        }
        if (panelFeatureState.featureId == 0) {
            Context context = getContext();
            boolean z2 = (context.getResources().getConfiguration().screenLayout & 15) == 4;
            boolean z3 = context.getApplicationInfo().targetSdkVersion >= 11;
            if (z2 && z3) {
                return;
            }
        }
        Window.Callback callback = getCallback();
        if (callback != null && !callback.onMenuOpened(panelFeatureState.featureId, panelFeatureState.menu)) {
            closePanel(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = getWindowManager();
        if (windowManager != null && preparePanel(panelFeatureState, keyEvent)) {
            DecorView decorView = panelFeatureState.decorView;
            int i4 = -1;
            if (decorView != null && !panelFeatureState.refreshDecorView) {
                if (panelFeatureState.isInListMode() && ((view = panelFeatureState.createdPanelView) == null || (layoutParams2 = view.getLayoutParams()) == null || layoutParams2.width != -1)) {
                    i3 = -2;
                }
                panelFeatureState.isHandled = false;
                layoutParams = new WindowManager.LayoutParams(i3, -2, panelFeatureState.f371x, panelFeatureState.f372y, 1003, 8519680, panelFeatureState.decorView.mDefaultOpacity);
                if (panelFeatureState.isCompact) {
                    layoutParams.gravity = getOptionsPanelGravity();
                    sRotationWatcher.addWindow(this);
                } else {
                    layoutParams.gravity = panelFeatureState.gravity;
                }
                layoutParams.windowAnimations = panelFeatureState.windowAnimations;
                windowManager.addView(panelFeatureState.decorView, layoutParams);
                panelFeatureState.isOpen = true;
            }
            if (decorView == null) {
                if (!initializePanelDecor(panelFeatureState) || panelFeatureState.decorView == null) {
                    return;
                }
            } else if (panelFeatureState.refreshDecorView && decorView.getChildCount() > 0) {
                panelFeatureState.decorView.removeAllViews();
            }
            if (!initializePanelContent(panelFeatureState) || !panelFeatureState.hasPanelItems()) {
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = panelFeatureState.shownPanelView.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            if (layoutParams3.width == -1) {
                i2 = panelFeatureState.fullBackground;
            } else {
                i4 = -2;
                i2 = panelFeatureState.background;
            }
            panelFeatureState.decorView.setWindowBackground(getContext().getDrawable(i2));
            ViewParent parent = panelFeatureState.shownPanelView.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(panelFeatureState.shownPanelView);
            }
            panelFeatureState.decorView.addView(panelFeatureState.shownPanelView, layoutParams3);
            if (!panelFeatureState.shownPanelView.hasFocus()) {
                panelFeatureState.shownPanelView.requestFocus();
            }
            i3 = i4;
            panelFeatureState.isHandled = false;
            layoutParams = new WindowManager.LayoutParams(i3, -2, panelFeatureState.f371x, panelFeatureState.f372y, 1003, 8519680, panelFeatureState.decorView.mDefaultOpacity);
            if (panelFeatureState.isCompact) {
                layoutParams.gravity = getOptionsPanelGravity();
                sRotationWatcher.addWindow(this);
            } else {
                layoutParams.gravity = panelFeatureState.gravity;
            }
            layoutParams.windowAnimations = panelFeatureState.windowAnimations;
            windowManager.addView(panelFeatureState.decorView, layoutParams);
            panelFeatureState.isOpen = true;
        }
    }

    public final void closePanel(PanelFeatureState panelFeatureState, boolean z2) {
        DecorContentParent decorContentParent;
        if (z2 && panelFeatureState.featureId == 0 && (decorContentParent = this.mDecorContentParent) != null && decorContentParent.isOverflowMenuShowing()) {
            checkCloseActionMenu(panelFeatureState.menu);
            return;
        }
        WindowManager windowManager = getWindowManager();
        if (windowManager != null && panelFeatureState.isOpen) {
            DecorView decorView = panelFeatureState.decorView;
            if (decorView != null) {
                windowManager.removeView(decorView);
                if (panelFeatureState.isCompact) {
                    sRotationWatcher.removeWindow(this);
                }
            }
            if (z2) {
                callOnPanelClosed(panelFeatureState.featureId, panelFeatureState, null);
            }
        }
        panelFeatureState.isPrepared = false;
        panelFeatureState.isHandled = false;
        panelFeatureState.isOpen = false;
        panelFeatureState.shownPanelView = null;
        if (panelFeatureState.isInExpandedMode) {
            panelFeatureState.refreshDecorView = true;
            panelFeatureState.isInExpandedMode = false;
        }
        if (this.mPreparedPanel == panelFeatureState) {
            this.mPreparedPanel = null;
            this.mPanelChordingKey = 0;
        }
    }

    @Override // android.view.Window
    public void setContentView(View view) {
        setContentView(view, new ViewGroup.LayoutParams(-1, -1));
    }

    @Override // android.view.Window
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        if (this.mContentParent == null) {
            installDecor();
        } else if (!hasFeature(12)) {
            this.mContentParent.removeAllViews();
        }
        if (hasFeature(12)) {
            view.setLayoutParams(layoutParams);
            transitionTo(new Scene(this.mContentParent, view));
        } else {
            this.mContentParent.addView(view, layoutParams);
        }
        this.mContentParent.requestApplyInsets();
        Window.Callback callback = getCallback();
        if (callback != null && !isDestroyed()) {
            callback.onContentChanged();
        }
        this.mContentParentExplicitlySet = true;
    }

    public PhoneWindow(Context context, Window window, ViewRootImpl.ActivityConfigCallback activityConfigCallback) {
        this(context);
        boolean z2 = true;
        this.mUseDecorContext = true;
        if (window != null) {
            this.mDecor = (DecorView) window.getDecorView();
            this.mElevation = window.getElevation();
            this.mLoadElevation = false;
            this.mForceDecorInstall = true;
            getAttributes().token = window.getAttributes().token;
        }
        if (!(Settings.Global.getInt(context.getContentResolver(), Settings.Global.DEVELOPMENT_FORCE_RESIZABLE_ACTIVITIES, 0) != 0) && !context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_PICTURE_IN_PICTURE)) {
            z2 = false;
        }
        this.mSupportsPictureInPicture = z2;
        this.mActivityConfigCallback = activityConfigCallback;
    }
}
