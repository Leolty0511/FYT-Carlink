package android.app;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.GraphicBuffer;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.IRemoteCallback;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.transition.Transition;
import android.transition.TransitionListenerAdapter;
import android.transition.TransitionManager;
import android.util.Pair;
import android.util.Slog;
import android.view.AppTransitionAnimationSpec;
import android.view.IAppTransitionAnimationSpecsFuture;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.android.internal.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class ActivityOptions {
    public static final int ANIM_CLIP_REVEAL = 11;
    public static final int ANIM_CUSTOM = 1;
    public static final int ANIM_CUSTOM_IN_PLACE = 10;
    public static final int ANIM_DEFAULT = 6;
    public static final int ANIM_LAUNCH_TASK_BEHIND = 7;
    public static final int ANIM_NONE = 0;
    public static final int ANIM_SCALE_UP = 2;
    public static final int ANIM_SCENE_TRANSITION = 5;
    public static final int ANIM_THUMBNAIL_ASPECT_SCALE_DOWN = 9;
    public static final int ANIM_THUMBNAIL_ASPECT_SCALE_UP = 8;
    public static final int ANIM_THUMBNAIL_SCALE_DOWN = 4;
    public static final int ANIM_THUMBNAIL_SCALE_UP = 3;
    public static final String EXTRA_USAGE_TIME_REPORT = "android.activity.usage_time";
    public static final String EXTRA_USAGE_TIME_REPORT_PACKAGES = "android.usage_time_packages";
    private static final String KEY_ANIMATION_FINISHED_LISTENER = "android:activity.animationFinishedListener";
    public static final String KEY_ANIM_ENTER_RES_ID = "android:activity.animEnterRes";
    public static final String KEY_ANIM_EXIT_RES_ID = "android:activity.animExitRes";
    public static final String KEY_ANIM_HEIGHT = "android:activity.animHeight";
    public static final String KEY_ANIM_IN_PLACE_RES_ID = "android:activity.animInPlaceRes";
    private static final String KEY_ANIM_SPECS = "android:activity.animSpecs";
    public static final String KEY_ANIM_START_LISTENER = "android:activity.animStartListener";
    public static final String KEY_ANIM_START_X = "android:activity.animStartX";
    public static final String KEY_ANIM_START_Y = "android:activity.animStartY";
    public static final String KEY_ANIM_THUMBNAIL = "android:activity.animThumbnail";
    public static final String KEY_ANIM_TYPE = "android:activity.animType";
    public static final String KEY_ANIM_WIDTH = "android:activity.animWidth";
    private static final String KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING = "android:activity.disallowEnterPictureInPictureWhileLaunching";
    private static final String KEY_DOCK_CREATE_MODE = "android:activity.dockCreateMode";
    private static final String KEY_EXIT_COORDINATOR_INDEX = "android:activity.exitCoordinatorIndex";
    private static final String KEY_INSTANT_APP_VERIFICATION_BUNDLE = "android:instantapps.installerbundle";
    public static final String KEY_LAUNCH_BOUNDS = "android:activity.launchBounds";
    private static final String KEY_LAUNCH_DISPLAY_ID = "android.activity.launchDisplayId";
    private static final String KEY_LAUNCH_STACK_ID = "android.activity.launchStackId";
    private static final String KEY_LAUNCH_TASK_ID = "android.activity.launchTaskId";
    public static final String KEY_PACKAGE_NAME = "android:activity.packageName";
    private static final String KEY_RESULT_CODE = "android:activity.resultCode";
    private static final String KEY_RESULT_DATA = "android:activity.resultData";
    private static final String KEY_ROTATION_ANIMATION_HINT = "android:activity.rotationAnimationHint";
    private static final String KEY_SPECS_FUTURE = "android:activity.specsFuture";
    private static final String KEY_TASK_OVERLAY = "android.activity.taskOverlay";
    private static final String KEY_TASK_OVERLAY_CAN_RESUME = "android.activity.taskOverlayCanResume";
    private static final String KEY_TRANSITION_COMPLETE_LISTENER = "android:activity.transitionCompleteListener";
    private static final String KEY_TRANSITION_IS_RETURNING = "android:activity.transitionIsReturning";
    private static final String KEY_TRANSITION_SHARED_ELEMENTS = "android:activity.sharedElementNames";
    private static final String KEY_USAGE_TIME_REPORT = "android:activity.usageTimeReport";
    private static final String TAG = "ActivityOptions";
    int animTypeOverride;
    private AppTransitionAnimationSpec[] mAnimSpecs;
    private IRemoteCallback mAnimationFinishedListener;
    private IRemoteCallback mAnimationStartedListener;
    private int mAnimationType;
    private Bundle mAppVerificationBundle;
    private int mCustomEnterResId;
    private int mCustomExitResId;
    private int mCustomInPlaceResId;
    private boolean mDisallowEnterPictureInPictureWhileLaunching;
    private int mDockCreateMode;
    private int mExitCoordinatorIndex;
    private int mHeight;
    private boolean mIsReturning;
    private Rect mLaunchBounds;
    private int mLaunchDisplayId;
    private int mLaunchStackId;
    private int mLaunchTaskId;
    private String mPackageName;
    private int mResultCode;
    private Intent mResultData;
    private int mRotationAnimationHint;
    private ArrayList<String> mSharedElementNames;
    private IAppTransitionAnimationSpecsFuture mSpecsFuture;
    private int mStartX;
    private int mStartY;
    private boolean mTaskOverlay;
    private boolean mTaskOverlayCanResume;
    private Bitmap mThumbnail;
    private ResultReceiver mTransitionReceiver;
    private PendingIntent mUsageTimeReport;
    private int mWidth;

    public static class HideWindowListener extends TransitionListenerAdapter implements ExitTransitionCoordinator.HideSharedElementsCallback {
        private final ExitTransitionCoordinator mExit;
        private boolean mSharedElementHidden;
        private ArrayList<View> mSharedElements;
        private boolean mTransitionEnded;
        private final boolean mWaitingForTransition;
        private final Window mWindow;

        public HideWindowListener(Window window, ExitTransitionCoordinator exitTransitionCoordinator) {
            this.mWindow = window;
            this.mExit = exitTransitionCoordinator;
            this.mSharedElements = new ArrayList<>(exitTransitionCoordinator.mSharedElements);
            Transition exitTransition = window.getExitTransition();
            if (exitTransition != null) {
                exitTransition.addListener(this);
                this.mWaitingForTransition = true;
            } else {
                this.mWaitingForTransition = false;
            }
            View decorView = window.getDecorView();
            if (decorView != null) {
                if (decorView.getTag(R.id.cross_task_transition) != null) {
                    throw new IllegalStateException("Cannot start a transition while one is running");
                }
                decorView.setTagInternal(R.id.cross_task_transition, exitTransitionCoordinator);
            }
        }

        private void hideWhenDone() {
            if (this.mSharedElementHidden) {
                if (!this.mWaitingForTransition || this.mTransitionEnded) {
                    this.mExit.resetViews();
                    int size = this.mSharedElements.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        this.mSharedElements.get(i2).requestLayout();
                    }
                    View decorView = this.mWindow.getDecorView();
                    if (decorView != null) {
                        decorView.setTagInternal(R.id.cross_task_transition, null);
                        decorView.setVisibility(8);
                    }
                }
            }
        }

        @Override // android.app.ExitTransitionCoordinator.HideSharedElementsCallback
        public void hideSharedElements() {
            this.mSharedElementHidden = true;
            hideWhenDone();
        }

        @Override // android.transition.TransitionListenerAdapter, android.transition.Transition.TransitionListener
        public void onTransitionEnd(Transition transition) {
            this.mTransitionEnded = true;
            hideWhenDone();
            transition.removeListener(this);
        }
    }

    public interface OnAnimationFinishedListener {
        void onAnimationFinished();
    }

    public interface OnAnimationStartedListener {
        void onAnimationStarted();
    }

    private ActivityOptions() {
        this.mAnimationType = 0;
        this.mLaunchDisplayId = -1;
        this.mLaunchStackId = -1;
        this.mLaunchTaskId = -1;
        this.mDockCreateMode = 0;
        this.mRotationAnimationHint = -1;
        this.animTypeOverride = 0;
    }

    public static ActivityOptions fromBundle(Bundle bundle) {
        if (bundle != null) {
            return new ActivityOptions(bundle);
        }
        return null;
    }

    private static ActivityOptions makeAspectScaledThumbnailAnimation(View view, Bitmap bitmap, int i2, int i3, int i4, int i5, Handler handler, OnAnimationStartedListener onAnimationStartedListener, boolean z2) {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mPackageName = view.getContext().getPackageName();
        activityOptions.mAnimationType = z2 ? 8 : 9;
        activityOptions.mThumbnail = bitmap;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        activityOptions.mStartX = iArr[0] + i2;
        activityOptions.mStartY = iArr[1] + i3;
        activityOptions.mWidth = i4;
        activityOptions.mHeight = i5;
        activityOptions.setOnAnimationStartedListener(handler, onAnimationStartedListener);
        return activityOptions;
    }

    public static ActivityOptions makeBasic() {
        return new ActivityOptions();
    }

    public static ActivityOptions makeClipRevealAnimation(View view, int i2, int i3, int i4, int i5) {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mAnimationType = 11;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        activityOptions.mStartX = iArr[0] + i2;
        activityOptions.mStartY = iArr[1] + i3;
        activityOptions.mWidth = i4;
        activityOptions.mHeight = i5;
        return activityOptions;
    }

    public static ActivityOptions makeCustomAnimation(Context context, int i2, int i3) {
        return makeCustomAnimation(context, i2, i3, null, null);
    }

    public static ActivityOptions makeCustomInPlaceAnimation(Context context, int i2) {
        if (i2 == 0) {
            throw new RuntimeException("You must specify a valid animation.");
        }
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mPackageName = context.getPackageName();
        activityOptions.mAnimationType = 10;
        activityOptions.mCustomInPlaceResId = i2;
        return activityOptions;
    }

    public static ActivityOptions makeMultiThumbFutureAspectScaleAnimation(Context context, Handler handler, IAppTransitionAnimationSpecsFuture iAppTransitionAnimationSpecsFuture, OnAnimationStartedListener onAnimationStartedListener, boolean z2) {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mPackageName = context.getPackageName();
        activityOptions.mAnimationType = z2 ? 8 : 9;
        activityOptions.mSpecsFuture = iAppTransitionAnimationSpecsFuture;
        activityOptions.setOnAnimationStartedListener(handler, onAnimationStartedListener);
        return activityOptions;
    }

    public static ActivityOptions makeScaleUpAnimation(View view, int i2, int i3, int i4, int i5) {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mPackageName = view.getContext().getPackageName();
        activityOptions.mAnimationType = 2;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        activityOptions.mStartX = iArr[0] + i2;
        activityOptions.mStartY = iArr[1] + i3;
        activityOptions.mWidth = i4;
        activityOptions.mHeight = i5;
        return activityOptions;
    }

    public static ActivityOptions makeSceneTransitionAnimation(Activity activity, View view, String str) {
        return makeSceneTransitionAnimation(activity, Pair.create(view, str));
    }

    public static ActivityOptions makeTaskLaunchBehind() {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mAnimationType = 7;
        return activityOptions;
    }

    private static ActivityOptions makeThumbnailAnimation(View view, Bitmap bitmap, int i2, int i3, OnAnimationStartedListener onAnimationStartedListener, boolean z2) {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mPackageName = view.getContext().getPackageName();
        activityOptions.mAnimationType = z2 ? 3 : 4;
        activityOptions.mThumbnail = bitmap;
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        activityOptions.mStartX = iArr[0] + i2;
        activityOptions.mStartY = iArr[1] + i3;
        activityOptions.setOnAnimationStartedListener(view.getHandler(), onAnimationStartedListener);
        return activityOptions;
    }

    public static ActivityOptions makeThumbnailAspectScaleDownAnimation(View view, Bitmap bitmap, int i2, int i3, int i4, int i5, Handler handler, OnAnimationStartedListener onAnimationStartedListener) {
        return makeAspectScaledThumbnailAnimation(view, bitmap, i2, i3, i4, i5, handler, onAnimationStartedListener, false);
    }

    public static ActivityOptions makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int i2, int i3) {
        return makeThumbnailScaleUpAnimation(view, bitmap, i2, i3, null);
    }

    private void setOnAnimationFinishedListener(final Handler handler, final OnAnimationFinishedListener onAnimationFinishedListener) {
        if (onAnimationFinishedListener != null) {
            this.mAnimationFinishedListener = new IRemoteCallback.Stub() { // from class: android.app.ActivityOptions.2
                @Override // android.os.IRemoteCallback
                public void sendResult(Bundle bundle) {
                    handler.post(new Runnable() { // from class: android.app.ActivityOptions.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onAnimationFinishedListener.onAnimationFinished();
                        }
                    });
                }
            };
        }
    }

    private void setOnAnimationStartedListener(final Handler handler, final OnAnimationStartedListener onAnimationStartedListener) {
        if (onAnimationStartedListener != null) {
            this.mAnimationStartedListener = new IRemoteCallback.Stub() { // from class: android.app.ActivityOptions.1
                @Override // android.os.IRemoteCallback
                public void sendResult(Bundle bundle) {
                    handler.post(new Runnable() { // from class: android.app.ActivityOptions.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onAnimationStartedListener.onAnimationStarted();
                        }
                    });
                }
            };
        }
    }

    @SafeVarargs
    public static ActivityOptions startSharedElementAnimation(Window window, Pair<View, String>... pairArr) {
        ExitTransitionCoordinator exitTransitionCoordinatorMakeSceneTransitionAnimation;
        ActivityOptions activityOptions = new ActivityOptions();
        if (window.getDecorView() != null && (exitTransitionCoordinatorMakeSceneTransitionAnimation = makeSceneTransitionAnimation((Activity) null, window, activityOptions, (SharedElementCallback) null, pairArr)) != null) {
            exitTransitionCoordinatorMakeSceneTransitionAnimation.setHideSharedElementsCallback(new HideWindowListener(window, exitTransitionCoordinatorMakeSceneTransitionAnimation));
            exitTransitionCoordinatorMakeSceneTransitionAnimation.startExit();
        }
        return activityOptions;
    }

    public static void stopSharedElementAnimation(Window window) {
        ExitTransitionCoordinator exitTransitionCoordinator;
        View decorView = window.getDecorView();
        if (decorView == null || (exitTransitionCoordinator = (ExitTransitionCoordinator) decorView.getTag(R.id.cross_task_transition)) == null) {
            return;
        }
        exitTransitionCoordinator.cancelPendingTransitions();
        decorView.setTagInternal(R.id.cross_task_transition, null);
        TransitionManager.endTransitions((ViewGroup) decorView);
        exitTransitionCoordinator.resetViews();
        exitTransitionCoordinator.clearState();
        decorView.setVisibility(0);
    }

    public void abort() {
        IRemoteCallback iRemoteCallback = this.mAnimationStartedListener;
        if (iRemoteCallback != null) {
            try {
                iRemoteCallback.sendResult(null);
            } catch (RemoteException unused) {
            }
        }
    }

    public boolean canTaskOverlayResume() {
        return this.mTaskOverlayCanResume;
    }

    public boolean disallowEnterPictureInPictureWhileLaunching() {
        return this.mDisallowEnterPictureInPictureWhileLaunching;
    }

    public ActivityOptions forTargetActivity() {
        if (this.mAnimationType != 5) {
            return null;
        }
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.update(this);
        return activityOptions;
    }

    public AppTransitionAnimationSpec[] getAnimSpecs() {
        return this.mAnimSpecs;
    }

    public IRemoteCallback getAnimationFinishedListener() {
        return this.mAnimationFinishedListener;
    }

    public int getAnimationType() {
        return this.mAnimationType;
    }

    public int getCustomEnterResId() {
        return this.mCustomEnterResId;
    }

    public int getCustomExitResId() {
        return this.mCustomExitResId;
    }

    public int getCustomInPlaceResId() {
        return this.mCustomInPlaceResId;
    }

    public int getDockCreateMode() {
        return this.mDockCreateMode;
    }

    public int getExitCoordinatorKey() {
        return this.mExitCoordinatorIndex;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public Rect getLaunchBounds() {
        return this.mLaunchBounds;
    }

    public int getLaunchDisplayId() {
        return this.mLaunchDisplayId;
    }

    public int getLaunchStackId() {
        return this.mLaunchStackId;
    }

    public boolean getLaunchTaskBehind() {
        return this.mAnimationType == 7;
    }

    public int getLaunchTaskId() {
        return this.mLaunchTaskId;
    }

    public IRemoteCallback getOnAnimationStartListener() {
        return this.mAnimationStartedListener;
    }

    public String getPackageName() {
        return this.mPackageName;
    }

    public int getResultCode() {
        return this.mResultCode;
    }

    public Intent getResultData() {
        return this.mResultData;
    }

    public ResultReceiver getResultReceiver() {
        return this.mTransitionReceiver;
    }

    public int getRotationAnimationHint() {
        return this.mRotationAnimationHint;
    }

    public ArrayList<String> getSharedElementNames() {
        return this.mSharedElementNames;
    }

    public IAppTransitionAnimationSpecsFuture getSpecsFuture() {
        return this.mSpecsFuture;
    }

    public int getStartX() {
        return this.mStartX;
    }

    public int getStartY() {
        return this.mStartY;
    }

    public boolean getTaskOverlay() {
        return this.mTaskOverlay;
    }

    public GraphicBuffer getThumbnail() {
        Bitmap bitmap = this.mThumbnail;
        if (bitmap != null) {
            return bitmap.createGraphicBufferHandle();
        }
        return null;
    }

    public PendingIntent getUsageTimeReport() {
        return this.mUsageTimeReport;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public boolean isCrossTask() {
        return this.mExitCoordinatorIndex < 0;
    }

    public boolean isReturning() {
        return this.mIsReturning;
    }

    public Bundle popAppVerificationBundle() {
        Bundle bundle = this.mAppVerificationBundle;
        this.mAppVerificationBundle = null;
        return bundle;
    }

    public void requestUsageTimeReport(PendingIntent pendingIntent) {
        this.mUsageTimeReport = pendingIntent;
    }

    public ActivityOptions setAppVerificationBundle(Bundle bundle) {
        this.mAppVerificationBundle = bundle;
        return this;
    }

    public void setDisallowEnterPictureInPictureWhileLaunching(boolean z2) {
        this.mDisallowEnterPictureInPictureWhileLaunching = z2;
    }

    public void setDockCreateMode(int i2) {
        this.mDockCreateMode = i2;
    }

    public ActivityOptions setLaunchBounds(Rect rect) {
        this.mLaunchBounds = rect != null ? new Rect(rect) : null;
        return this;
    }

    public ActivityOptions setLaunchDisplayId(int i2) {
        this.mLaunchDisplayId = i2;
        return this;
    }

    public void setLaunchStackId(int i2) {
        this.mLaunchStackId = i2;
    }

    public void setLaunchTaskId(int i2) {
        this.mLaunchTaskId = i2;
    }

    public void setRotationAnimationHint(int i2) {
        this.mRotationAnimationHint = i2;
    }

    public void setTaskOverlay(boolean z2, boolean z3) {
        this.mTaskOverlay = z2;
        this.mTaskOverlayCanResume = z3;
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        String str = this.mPackageName;
        if (str != null) {
            bundle.putString(KEY_PACKAGE_NAME, str);
        }
        Rect rect = this.mLaunchBounds;
        if (rect != null) {
            bundle.putParcelable(KEY_LAUNCH_BOUNDS, rect);
        }
        bundle.putInt(KEY_ANIM_TYPE, this.mAnimationType);
        PendingIntent pendingIntent = this.mUsageTimeReport;
        if (pendingIntent != null) {
            bundle.putParcelable(KEY_USAGE_TIME_REPORT, pendingIntent);
        }
        switch (this.mAnimationType) {
            case 1:
                bundle.putInt(KEY_ANIM_ENTER_RES_ID, this.mCustomEnterResId);
                bundle.putInt(KEY_ANIM_EXIT_RES_ID, this.mCustomExitResId);
                IRemoteCallback iRemoteCallback = this.mAnimationStartedListener;
                bundle.putBinder(KEY_ANIM_START_LISTENER, iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                break;
            case 2:
            case 11:
                bundle.putInt(KEY_ANIM_START_X, this.mStartX);
                bundle.putInt(KEY_ANIM_START_Y, this.mStartY);
                bundle.putInt(KEY_ANIM_WIDTH, this.mWidth);
                bundle.putInt(KEY_ANIM_HEIGHT, this.mHeight);
                break;
            case 3:
            case 4:
            case 8:
            case 9:
                Bitmap bitmap = this.mThumbnail;
                if (bitmap != null) {
                    Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.HARDWARE, false);
                    if (bitmapCopy != null) {
                        bundle.putParcelable(KEY_ANIM_THUMBNAIL, bitmapCopy.createGraphicBufferHandle());
                    } else {
                        Slog.w(TAG, "Failed to copy thumbnail");
                    }
                }
                bundle.putInt(KEY_ANIM_START_X, this.mStartX);
                bundle.putInt(KEY_ANIM_START_Y, this.mStartY);
                bundle.putInt(KEY_ANIM_WIDTH, this.mWidth);
                bundle.putInt(KEY_ANIM_HEIGHT, this.mHeight);
                IRemoteCallback iRemoteCallback2 = this.mAnimationStartedListener;
                bundle.putBinder(KEY_ANIM_START_LISTENER, iRemoteCallback2 != null ? iRemoteCallback2.asBinder() : null);
                break;
            case 5:
                ResultReceiver resultReceiver = this.mTransitionReceiver;
                if (resultReceiver != null) {
                    bundle.putParcelable(KEY_TRANSITION_COMPLETE_LISTENER, resultReceiver);
                }
                bundle.putBoolean(KEY_TRANSITION_IS_RETURNING, this.mIsReturning);
                bundle.putStringArrayList(KEY_TRANSITION_SHARED_ELEMENTS, this.mSharedElementNames);
                bundle.putParcelable(KEY_RESULT_DATA, this.mResultData);
                bundle.putInt(KEY_RESULT_CODE, this.mResultCode);
                bundle.putInt(KEY_EXIT_COORDINATOR_INDEX, this.mExitCoordinatorIndex);
                break;
            case 10:
                bundle.putInt(KEY_ANIM_IN_PLACE_RES_ID, this.mCustomInPlaceResId);
                break;
        }
        bundle.putInt(KEY_LAUNCH_DISPLAY_ID, this.mLaunchDisplayId);
        bundle.putInt(KEY_LAUNCH_STACK_ID, this.mLaunchStackId);
        bundle.putInt(KEY_LAUNCH_TASK_ID, this.mLaunchTaskId);
        bundle.putBoolean(KEY_TASK_OVERLAY, this.mTaskOverlay);
        bundle.putBoolean(KEY_TASK_OVERLAY_CAN_RESUME, this.mTaskOverlayCanResume);
        bundle.putInt(KEY_DOCK_CREATE_MODE, this.mDockCreateMode);
        bundle.putBoolean(KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING, this.mDisallowEnterPictureInPictureWhileLaunching);
        AppTransitionAnimationSpec[] appTransitionAnimationSpecArr = this.mAnimSpecs;
        if (appTransitionAnimationSpecArr != null) {
            bundle.putParcelableArray(KEY_ANIM_SPECS, appTransitionAnimationSpecArr);
        }
        IRemoteCallback iRemoteCallback3 = this.mAnimationFinishedListener;
        if (iRemoteCallback3 != null) {
            bundle.putBinder(KEY_ANIMATION_FINISHED_LISTENER, iRemoteCallback3.asBinder());
        }
        IAppTransitionAnimationSpecsFuture iAppTransitionAnimationSpecsFuture = this.mSpecsFuture;
        if (iAppTransitionAnimationSpecsFuture != null) {
            bundle.putBinder(KEY_SPECS_FUTURE, iAppTransitionAnimationSpecsFuture.asBinder());
        }
        bundle.putInt(KEY_ROTATION_ANIMATION_HINT, this.mRotationAnimationHint);
        Bundle bundle2 = this.mAppVerificationBundle;
        if (bundle2 != null) {
            bundle.putBundle(KEY_INSTANT_APP_VERIFICATION_BUNDLE, bundle2);
        }
        return bundle;
    }

    public String toString() {
        return "ActivityOptions(" + hashCode() + "), mPackageName=" + this.mPackageName + ", mAnimationType=" + this.mAnimationType + ", mStartX=" + this.mStartX + ", mStartY=" + this.mStartY + ", mWidth=" + this.mWidth + ", mHeight=" + this.mHeight;
    }

    public void update(ActivityOptions activityOptions) {
        String str = activityOptions.mPackageName;
        if (str != null) {
            this.mPackageName = str;
        }
        this.mUsageTimeReport = activityOptions.mUsageTimeReport;
        this.mTransitionReceiver = null;
        this.mSharedElementNames = null;
        this.mIsReturning = false;
        this.mResultData = null;
        this.mResultCode = 0;
        this.mExitCoordinatorIndex = 0;
        this.mAnimationType = activityOptions.mAnimationType;
        switch (activityOptions.mAnimationType) {
            case 1:
                this.mCustomEnterResId = activityOptions.mCustomEnterResId;
                this.mCustomExitResId = activityOptions.mCustomExitResId;
                this.mThumbnail = null;
                IRemoteCallback iRemoteCallback = this.mAnimationStartedListener;
                if (iRemoteCallback != null) {
                    try {
                        iRemoteCallback.sendResult(null);
                        break;
                    } catch (RemoteException unused) {
                    }
                }
                this.mAnimationStartedListener = activityOptions.mAnimationStartedListener;
                break;
            case 2:
                this.mStartX = activityOptions.mStartX;
                this.mStartY = activityOptions.mStartY;
                this.mWidth = activityOptions.mWidth;
                this.mHeight = activityOptions.mHeight;
                IRemoteCallback iRemoteCallback2 = this.mAnimationStartedListener;
                if (iRemoteCallback2 != null) {
                    try {
                        iRemoteCallback2.sendResult(null);
                        break;
                    } catch (RemoteException unused2) {
                    }
                }
                this.mAnimationStartedListener = null;
                break;
            case 3:
            case 4:
            case 8:
            case 9:
                this.mThumbnail = activityOptions.mThumbnail;
                this.mStartX = activityOptions.mStartX;
                this.mStartY = activityOptions.mStartY;
                this.mWidth = activityOptions.mWidth;
                this.mHeight = activityOptions.mHeight;
                IRemoteCallback iRemoteCallback3 = this.mAnimationStartedListener;
                if (iRemoteCallback3 != null) {
                    try {
                        iRemoteCallback3.sendResult(null);
                        break;
                    } catch (RemoteException unused3) {
                    }
                }
                this.mAnimationStartedListener = activityOptions.mAnimationStartedListener;
                break;
            case 5:
                this.mTransitionReceiver = activityOptions.mTransitionReceiver;
                this.mSharedElementNames = activityOptions.mSharedElementNames;
                this.mIsReturning = activityOptions.mIsReturning;
                this.mThumbnail = null;
                this.mAnimationStartedListener = null;
                this.mResultData = activityOptions.mResultData;
                this.mResultCode = activityOptions.mResultCode;
                this.mExitCoordinatorIndex = activityOptions.mExitCoordinatorIndex;
                break;
            case 10:
                this.mCustomInPlaceResId = activityOptions.mCustomInPlaceResId;
                break;
        }
        this.mAnimSpecs = activityOptions.mAnimSpecs;
        this.mAnimationFinishedListener = activityOptions.mAnimationFinishedListener;
        this.mSpecsFuture = activityOptions.mSpecsFuture;
    }

    public static ActivityOptions makeCustomAnimation(Context context, int i2, int i3, Handler handler, OnAnimationStartedListener onAnimationStartedListener) {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mPackageName = context.getPackageName();
        activityOptions.mAnimationType = 1;
        activityOptions.mCustomEnterResId = i2;
        activityOptions.mCustomExitResId = i3;
        activityOptions.setOnAnimationStartedListener(handler, onAnimationStartedListener);
        return activityOptions;
    }

    @SafeVarargs
    public static ActivityOptions makeSceneTransitionAnimation(Activity activity, Pair<View, String>... pairArr) {
        ActivityOptions activityOptions = new ActivityOptions();
        makeSceneTransitionAnimation(activity, activity.getWindow(), activityOptions, activity.mExitTransitionListener, pairArr);
        return activityOptions;
    }

    public static ActivityOptions makeThumbnailAspectScaleDownAnimation(View view, AppTransitionAnimationSpec[] appTransitionAnimationSpecArr, Handler handler, OnAnimationStartedListener onAnimationStartedListener, OnAnimationFinishedListener onAnimationFinishedListener) {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mPackageName = view.getContext().getPackageName();
        activityOptions.mAnimationType = 9;
        activityOptions.mAnimSpecs = appTransitionAnimationSpecArr;
        activityOptions.setOnAnimationStartedListener(handler, onAnimationStartedListener);
        activityOptions.setOnAnimationFinishedListener(handler, onAnimationFinishedListener);
        return activityOptions;
    }

    private static ActivityOptions makeThumbnailScaleUpAnimation(View view, Bitmap bitmap, int i2, int i3, OnAnimationStartedListener onAnimationStartedListener) {
        return makeThumbnailAnimation(view, bitmap, i2, i3, onAnimationStartedListener, true);
    }

    public static void abort(ActivityOptions activityOptions) {
        if (activityOptions != null) {
            activityOptions.abort();
        }
    }

    public static ExitTransitionCoordinator makeSceneTransitionAnimation(Activity activity, Window window, ActivityOptions activityOptions, SharedElementCallback sharedElementCallback, Pair<View, String>[] pairArr) {
        if (!window.hasFeature(13)) {
            activityOptions.mAnimationType = 6;
            return null;
        }
        activityOptions.mAnimationType = 5;
        ArrayList<String> arrayList = new ArrayList<>();
        ArrayList arrayList2 = new ArrayList();
        if (pairArr != null) {
            for (Pair<View, String> pair : pairArr) {
                String str = pair.second;
                if (str != null) {
                    arrayList.add(str);
                    View view = pair.first;
                    if (view != null) {
                        arrayList2.add(view);
                    } else {
                        throw new IllegalArgumentException("Shared element must not be null");
                    }
                } else {
                    throw new IllegalArgumentException("Shared element name must not be null");
                }
            }
        }
        ExitTransitionCoordinator exitTransitionCoordinator = new ExitTransitionCoordinator(activity, window, sharedElementCallback, arrayList, arrayList, arrayList2, false);
        activityOptions.mTransitionReceiver = exitTransitionCoordinator;
        activityOptions.mSharedElementNames = arrayList;
        activityOptions.mIsReturning = activity == null;
        if (activity == null) {
            activityOptions.mExitCoordinatorIndex = -1;
        } else {
            activityOptions.mExitCoordinatorIndex = activity.mActivityTransitionState.addExitTransitionCoordinator(exitTransitionCoordinator);
        }
        return exitTransitionCoordinator;
    }

    public ActivityOptions(Bundle bundle) {
        this.mAnimationType = 0;
        this.mLaunchDisplayId = -1;
        this.mLaunchStackId = -1;
        this.mLaunchTaskId = -1;
        this.mDockCreateMode = 0;
        this.mRotationAnimationHint = -1;
        this.animTypeOverride = 0;
        bundle.setDefusable(true);
        this.mPackageName = bundle.getString(KEY_PACKAGE_NAME);
        try {
            this.mUsageTimeReport = (PendingIntent) bundle.getParcelable(KEY_USAGE_TIME_REPORT);
        } catch (RuntimeException e2) {
            Slog.w(TAG, e2);
        }
        this.mLaunchBounds = (Rect) bundle.getParcelable(KEY_LAUNCH_BOUNDS);
        int i2 = bundle.getInt(KEY_ANIM_TYPE);
        this.mAnimationType = i2;
        switch (i2) {
            case 1:
                this.mCustomEnterResId = bundle.getInt(KEY_ANIM_ENTER_RES_ID, 0);
                this.mCustomExitResId = bundle.getInt(KEY_ANIM_EXIT_RES_ID, 0);
                this.mAnimationStartedListener = IRemoteCallback.Stub.asInterface(bundle.getBinder(KEY_ANIM_START_LISTENER));
                break;
            case 2:
            case 11:
                this.mStartX = bundle.getInt(KEY_ANIM_START_X, 0);
                this.mStartY = bundle.getInt(KEY_ANIM_START_Y, 0);
                this.mWidth = bundle.getInt(KEY_ANIM_WIDTH, 0);
                this.mHeight = bundle.getInt(KEY_ANIM_HEIGHT, 0);
                break;
            case 3:
            case 4:
            case 8:
            case 9:
                GraphicBuffer graphicBuffer = (GraphicBuffer) bundle.getParcelable(KEY_ANIM_THUMBNAIL);
                if (graphicBuffer != null) {
                    this.mThumbnail = Bitmap.createHardwareBitmap(graphicBuffer);
                }
                this.mStartX = bundle.getInt(KEY_ANIM_START_X, 0);
                this.mStartY = bundle.getInt(KEY_ANIM_START_Y, 0);
                this.mWidth = bundle.getInt(KEY_ANIM_WIDTH, 0);
                this.mHeight = bundle.getInt(KEY_ANIM_HEIGHT, 0);
                this.mAnimationStartedListener = IRemoteCallback.Stub.asInterface(bundle.getBinder(KEY_ANIM_START_LISTENER));
                break;
            case 5:
                this.mTransitionReceiver = (ResultReceiver) bundle.getParcelable(KEY_TRANSITION_COMPLETE_LISTENER);
                this.mIsReturning = bundle.getBoolean(KEY_TRANSITION_IS_RETURNING, false);
                this.mSharedElementNames = bundle.getStringArrayList(KEY_TRANSITION_SHARED_ELEMENTS);
                this.mResultData = (Intent) bundle.getParcelable(KEY_RESULT_DATA);
                this.mResultCode = bundle.getInt(KEY_RESULT_CODE);
                this.mExitCoordinatorIndex = bundle.getInt(KEY_EXIT_COORDINATOR_INDEX);
                break;
            case 10:
                this.mCustomInPlaceResId = bundle.getInt(KEY_ANIM_IN_PLACE_RES_ID, 0);
                break;
        }
        this.mLaunchDisplayId = bundle.getInt(KEY_LAUNCH_DISPLAY_ID, -1);
        this.mLaunchStackId = bundle.getInt(KEY_LAUNCH_STACK_ID, -1);
        this.mLaunchTaskId = bundle.getInt(KEY_LAUNCH_TASK_ID, -1);
        this.mTaskOverlay = bundle.getBoolean(KEY_TASK_OVERLAY, false);
        this.mTaskOverlayCanResume = bundle.getBoolean(KEY_TASK_OVERLAY_CAN_RESUME, false);
        this.mDockCreateMode = bundle.getInt(KEY_DOCK_CREATE_MODE, 0);
        this.mDisallowEnterPictureInPictureWhileLaunching = bundle.getBoolean(KEY_DISALLOW_ENTER_PICTURE_IN_PICTURE_WHILE_LAUNCHING, false);
        if (bundle.containsKey(KEY_ANIM_SPECS)) {
            Parcelable[] parcelableArray = bundle.getParcelableArray(KEY_ANIM_SPECS);
            this.mAnimSpecs = new AppTransitionAnimationSpec[parcelableArray.length];
            for (int length = parcelableArray.length - 1; length >= 0; length--) {
                this.mAnimSpecs[length] = (AppTransitionAnimationSpec) parcelableArray[length];
            }
        }
        if (bundle.containsKey(KEY_ANIMATION_FINISHED_LISTENER)) {
            this.mAnimationFinishedListener = IRemoteCallback.Stub.asInterface(bundle.getBinder(KEY_ANIMATION_FINISHED_LISTENER));
        }
        this.mRotationAnimationHint = bundle.getInt(KEY_ROTATION_ANIMATION_HINT);
        this.mAppVerificationBundle = bundle.getBundle(KEY_INSTANT_APP_VERIFICATION_BUNDLE);
        if (bundle.containsKey(KEY_SPECS_FUTURE)) {
            this.mSpecsFuture = IAppTransitionAnimationSpecsFuture.Stub.asInterface(bundle.getBinder(KEY_SPECS_FUTURE));
        }
        ActivityOptionsHelper.appendAdditionalOptions(this, bundle);
    }

    public static ActivityOptions makeSceneTransitionAnimation(Activity activity, ExitTransitionCoordinator exitTransitionCoordinator, ArrayList<String> arrayList, int i2, Intent intent) {
        ActivityOptions activityOptions = new ActivityOptions();
        activityOptions.mAnimationType = 5;
        activityOptions.mSharedElementNames = arrayList;
        activityOptions.mTransitionReceiver = exitTransitionCoordinator;
        activityOptions.mIsReturning = true;
        activityOptions.mResultCode = i2;
        activityOptions.mResultData = intent;
        activityOptions.mExitCoordinatorIndex = activity.mActivityTransitionState.addExitTransitionCoordinator(exitTransitionCoordinator);
        return activityOptions;
    }
}
