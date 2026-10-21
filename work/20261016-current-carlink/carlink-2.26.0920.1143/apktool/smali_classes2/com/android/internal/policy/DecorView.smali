.class public Lcom/android/internal/policy/DecorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;
.implements Landroid/view/WindowCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;,
        Lcom/android/internal/policy/DecorView$ColorViewAttributes;,
        Lcom/android/internal/policy/DecorView$ColorViewState;
    }
.end annotation


# static fields
.field private static final DEBUG_MEASURE:Z = false

.field private static final DECOR_SHADOW_FOCUSED_HEIGHT_IN_DIP:I = 0x14

.field private static final DECOR_SHADOW_UNFOCUSED_HEIGHT_IN_DIP:I = 0x5

.field public static final NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

.field private static final PROPERTY_PROFILE_DISPATCHINPUT:Ljava/lang/String; = "persist.sys.dispatch_input"

.field public static final STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field private static final SWEEP_OPEN_MENU:Z = false

.field private static final TAG:Ljava/lang/String; = "DecorView"

.field private static sDebugDispatchInput:Z = false


# instance fields
.field private mAllowUpdateElevation:Z

.field private mApplyFloatingHorizontalInsets:Z

.field private mApplyFloatingVerticalInsets:Z

.field private mAvailableWidth:F

.field private mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

.field private final mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private final mBarEnterExitDuration:I

.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChanging:Z

.field mContentRoot:Landroid/view/ViewGroup;

.field mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mElevationAdjustedForStack:Z

.field private mFadeAnim:Landroid/animation/ObjectAnimator;

.field private final mFeatureId:I

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private final mFloatingInsets:Landroid/graphics/Rect;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final mForceWindowDrawsStatusBarBackground:Z

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mHasCaption:Z

.field private final mHideInterpolator:Landroid/view/animation/Interpolator;

.field private final mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

.field private mIsAddedToWindow:Z

.field private mIsInPictureInPictureMode:Z

.field private mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

.field private mLastBottomInset:I

.field private mLastHasBottomStableInset:Z

.field private mLastHasLeftStableInset:Z

.field private mLastHasRightStableInset:Z

.field private mLastHasTopStableInset:Z

.field private mLastLeftInset:I

.field private mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mLastRightInset:I

.field private mLastShouldAlwaysConsumeNavBar:Z

.field private mLastTopInset:I

.field private mLastWindowFlags:I

.field mLogTag:Ljava/lang/String;

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private final mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mNavigationGuard:Landroid/view/View;

.field private mOutsets:Landroid/graphics/Rect;

.field mPrimaryActionMode:Landroid/view/ActionMode;

.field private mPrimaryActionModePopup:Landroid/widget/PopupWindow;

.field private mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

.field private mResizeMode:I

.field private final mResizeShadowSize:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mRootScrollY:I

.field private final mSemiTransparentStatusBarColor:I

.field private final mShowInterpolator:Landroid/view/animation/Interpolator;

.field private mShowPrimaryActionModePopup:Ljava/lang/Runnable;

.field mStackId:I

.field private final mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

.field private mStatusGuard:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalResizeShadowPaint:Landroid/graphics/Paint;

.field private mWatchingForMenu:Z

.field private mWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowResizeCallbacksAdded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v10, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const/high16 v2, 0x4000000

    .line 5
    .line 6
    const/16 v3, 0x30

    .line 7
    .line 8
    const/4 v4, 0x3

    .line 9
    const/4 v5, 0x5

    .line 10
    const-string v6, "android:status:background"

    .line 11
    .line 12
    const v7, 0x102002f

    .line 13
    .line 14
    .line 15
    const/16 v8, 0x400

    .line 16
    .line 17
    const/4 v9, 0x0

    .line 18
    move-object v0, v10

    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V

    .line 20
    .line 21
    .line 22
    sput-object v10, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 23
    .line 24
    new-instance v0, Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 25
    .line 26
    const/4 v12, 0x2

    .line 27
    const/high16 v13, 0x8000000

    .line 28
    .line 29
    const/16 v14, 0x50

    .line 30
    .line 31
    const/4 v15, 0x5

    .line 32
    const/16 v16, 0x3

    .line 33
    .line 34
    const-string v17, "android:navigation:background"

    .line 35
    .line 36
    const v18, 0x1020030

    .line 37
    .line 38
    .line 39
    const/16 v19, 0x0

    .line 40
    .line 41
    const/16 v20, 0x0

    .line 42
    .line 43
    move-object v11, v0

    .line 44
    invoke-direct/range {v11 .. v20}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;-><init>(IIIIILjava/lang/String;IILcom/android/internal/policy/DecorView$1;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 48
    .line 49
    new-instance v0, Lcom/android/internal/policy/DecorView$1;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/android/internal/policy/DecorView$1;-><init>()V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/policy/PhoneWindow;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 11
    .line 12
    new-instance v2, Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 18
    .line 19
    new-instance v2, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 25
    .line 26
    new-instance v2, Landroid/graphics/Rect;

    .line 27
    .line 28
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 32
    .line 33
    new-instance v2, Landroid/graphics/Rect;

    .line 34
    .line 35
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 41
    .line 42
    new-instance v2, Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 43
    .line 44
    sget-object v3, Lcom/android/internal/policy/DecorView;->STATUS_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 45
    .line 46
    invoke-direct {v2, v3}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 50
    .line 51
    new-instance v2, Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 52
    .line 53
    sget-object v3, Lcom/android/internal/policy/DecorView;->NAVIGATION_BAR_COLOR_VIEW_ATTRIBUTES:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 54
    .line 55
    invoke-direct {v2, v3}, Lcom/android/internal/policy/DecorView$ColorViewState;-><init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 59
    .line 60
    new-instance v2, Lcom/android/internal/widget/BackgroundFallback;

    .line 61
    .line 62
    invoke-direct {v2}, Lcom/android/internal/widget/BackgroundFallback;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 66
    .line 67
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 68
    .line 69
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 70
    .line 71
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 72
    .line 73
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 74
    .line 75
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 80
    .line 81
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 82
    .line 83
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 84
    .line 85
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    .line 86
    .line 87
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 88
    .line 89
    new-instance v2, Landroid/graphics/Rect;

    .line 90
    .line 91
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 97
    .line 98
    const/4 v2, 0x0

    .line 99
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 100
    .line 101
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 102
    .line 103
    const-string v3, "DecorView"

    .line 104
    .line 105
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v3, Landroid/graphics/Rect;

    .line 108
    .line 109
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v3, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 113
    .line 114
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 115
    .line 116
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 117
    .line 118
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 119
    .line 120
    new-instance v1, Landroid/graphics/Paint;

    .line 121
    .line 122
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    .line 126
    .line 127
    new-instance v1, Landroid/graphics/Paint;

    .line 128
    .line 129
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    .line 133
    .line 134
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsAddedToWindow:Z

    .line 135
    .line 136
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 137
    .line 138
    const p2, 0x10c000e

    .line 139
    .line 140
    .line 141
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    iput-object p2, p0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    .line 147
    const p2, 0x10c000f

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    iput-object p2, p0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 155
    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    const v1, 0x10e00d6

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    const v1, 0x112006e

    .line 174
    .line 175
    .line 176
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 177
    .line 178
    .line 179
    move-result p2

    .line 180
    if-eqz p2, :cond_0

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 187
    .line 188
    const/16 v1, 0x18

    .line 189
    .line 190
    if-lt p2, v1, :cond_0

    .line 191
    .line 192
    const/4 p2, 0x1

    .line 193
    goto :goto_0

    .line 194
    :cond_0
    move p2, v0

    .line 195
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    const v1, 0x106014d

    .line 202
    .line 203
    .line 204
    invoke-virtual {p2, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    iput p2, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    .line 209
    .line 210
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/DecorView;->setWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/DecorView;->updateLogTag(Landroid/view/WindowManager$LayoutParams;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const p2, 0x1050158

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 227
    .line 228
    .line 229
    move-result p1

    .line 230
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 231
    .line 232
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initResizingPaints()V

    .line 233
    .line 234
    .line 235
    const-string p1, "persist.sys.dispatch_input"

    .line 236
    .line 237
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    sput-boolean p1, Lcom/android/internal/policy/DecorView;->sDebugDispatchInput:Z

    .line 242
    .line 243
    return-void
.end method

.method public static synthetic access$100(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/internal/policy/DecorView;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/internal/policy/DecorView;)Landroid/animation/ObjectAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/internal/policy/DecorView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/internal/policy/DecorView;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method public static synthetic access$602(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/android/internal/policy/DecorView;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/internal/policy/DecorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/policy/PhoneWindow;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    return-object p0
.end method

.method private calculateStatusBarColor()I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Lcom/android/internal/policy/DecorView;->mSemiTransparentStatusBarColor:I

    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget v2, v2, Lcom/android/internal/policy/PhoneWindow;->mStatusBarColor:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor(III)I

    move-result v0

    return v0
.end method

.method public static calculateStatusBarColor(III)I
    .locals 1

    .line 1
    const/high16 v0, 0x4000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    const/high16 p1, -0x1000000

    :goto_0
    return p1
.end method

.method private cleanupFloatingActionModeViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 29
    .line 30
    :cond_1
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method private cleanupPrimaryActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1

    .line 9
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/android/internal/policy/DecorView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move-object v3, v2

    .line 9
    :goto_0
    if-ltz v0, :cond_1

    .line 10
    .line 11
    if-nez v3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    instance-of v5, v4, Lcom/android/internal/widget/DecorCaptionView;

    .line 18
    .line 19
    if-eqz v5, :cond_0

    .line 20
    .line 21
    move-object v3, v4

    .line 22
    check-cast v3, Lcom/android/internal/widget/DecorCaptionView;

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    if-eq v0, v1, :cond_3

    .line 40
    .line 41
    const/4 v5, 0x2

    .line 42
    if-eq v0, v5, :cond_3

    .line 43
    .line 44
    const/4 v5, 0x4

    .line 45
    if-ne v0, v5, :cond_2

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    move v0, v4

    .line 49
    goto :goto_2

    .line 50
    :cond_3
    :goto_1
    move v0, v1

    .line 51
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_5

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 62
    .line 63
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    if-nez v3, :cond_4

    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    move-object v2, p1

    .line 76
    goto :goto_3

    .line 77
    :cond_4
    move-object v2, v3

    .line 78
    :goto_3
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 79
    .line 80
    invoke-virtual {v2, p1, v1}, Lcom/android/internal/widget/DecorCaptionView;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V

    .line 81
    .line 82
    .line 83
    :cond_5
    if-eqz v2, :cond_6

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_6
    move v1, v4

    .line 87
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 88
    .line 89
    .line 90
    return-object v2
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupFloatingActionModeViews()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 19
    .line 20
    new-instance v1, Lcom/android/internal/view/FloatingActionMode;

    .line 21
    .line 22
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v1, v2, p2, p1, v0}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 28
    .line 29
    new-instance p1, Lcom/android/internal/policy/DecorView$5;

    .line 30
    .line 31
    invoke-direct {p1, p0, v1}, Lcom/android/internal/policy/DecorView$5;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/view/FloatingActionMode;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 35
    .line 36
    return-object v1
.end method

.method private createStandaloneActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_3

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    new-instance v0, Landroid/util/TypedValue;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 31
    .line 32
    .line 33
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const v5, 0x1010431

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    .line 44
    .line 45
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    .line 46
    .line 47
    if-eqz v5, :cond_1

    .line 48
    .line 49
    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 60
    .line 61
    .line 62
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    .line 63
    .line 64
    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 65
    .line 66
    .line 67
    new-instance v4, Landroid/view/ContextThemeWrapper;

    .line 68
    .line 69
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-direct {v4, v6, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 83
    .line 84
    :goto_0
    new-instance v5, Lcom/android/internal/widget/ActionBarContextView;

    .line 85
    .line 86
    invoke-direct {v5, v4}, Lcom/android/internal/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    .line 87
    .line 88
    .line 89
    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 90
    .line 91
    new-instance v5, Landroid/widget/PopupWindow;

    .line 92
    .line 93
    const v6, 0x1110005

    .line 94
    .line 95
    .line 96
    invoke-direct {v5, v4, v2, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    .line 98
    .line 99
    iput-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 100
    .line 101
    const/4 v6, 0x2

    .line 102
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 103
    .line 104
    .line 105
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 106
    .line 107
    iget-object v6, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 113
    .line 114
    const/4 v6, -0x1

    .line 115
    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    const v6, 0x10102eb

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 126
    .line 127
    .line 128
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 143
    .line 144
    invoke-virtual {v4, v0}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 145
    .line 146
    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 148
    .line 149
    const/4 v4, -0x2

    .line 150
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcom/android/internal/policy/DecorView$3;

    .line 154
    .line 155
    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$3;-><init>(Lcom/android/internal/policy/DecorView;)V

    .line 156
    .line 157
    .line 158
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_2
    const v0, 0x1020188

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Landroid/view/ViewStub;

    .line 169
    .line 170
    if-eqz v0, :cond_3

    .line 171
    .line 172
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcom/android/internal/widget/ActionBarContextView;

    .line 177
    .line 178
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 179
    .line 180
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 181
    .line 182
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 183
    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lcom/android/internal/view/StandaloneActionMode;

    .line 190
    .line 191
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 192
    .line 193
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 198
    .line 199
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 200
    .line 201
    if-nez v5, :cond_4

    .line 202
    .line 203
    move v1, v3

    .line 204
    :cond_4
    invoke-direct {v0, v2, v4, p1, v1}, Lcom/android/internal/view/StandaloneActionMode;-><init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V

    .line 205
    .line 206
    .line 207
    return-object v0

    .line 208
    :cond_5
    return-object v2
.end method

.method private dipToPx(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method private drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 35
    .line 36
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    int-to-float v0, v0

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-float v5, v0

    .line 51
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 52
    .line 53
    int-to-float v6, v0

    .line 54
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    .line 55
    .line 56
    move-object v2, p1

    .line 57
    invoke-virtual/range {v2 .. v7}, Landroid/view/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 71
    .line 72
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 73
    .line 74
    sub-int/2addr v0, v2

    .line 75
    int-to-float v0, v0

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    .line 78
    .line 79
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 80
    .line 81
    int-to-float v5, v0

    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    int-to-float v6, v0

    .line 87
    iget-object v7, p0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    .line 88
    .line 89
    move-object v2, p1

    .line 90
    invoke-virtual/range {v2 .. v7}, Landroid/view/RecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 94
    .line 95
    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method private drawableChanged()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 7
    .line 8
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 11
    .line 12
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 13
    .line 14
    add-int/2addr v1, v3

    .line 15
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 16
    .line 17
    iget v4, v2, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    add-int/2addr v3, v4

    .line 20
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 21
    .line 22
    iget v5, v2, Landroid/graphics/Rect;->right:I

    .line 23
    .line 24
    add-int/2addr v4, v5

    .line 25
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 26
    .line 27
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 28
    .line 29
    add-int/2addr v0, v2

    .line 30
    invoke-virtual {p0, v1, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 40
    .line 41
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->hasWindowShadow(I)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, -0x3

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v3, -0x1

    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    if-nez v2, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 68
    .line 69
    iget v5, v4, Landroid/graphics/Rect;->left:I

    .line 70
    .line 71
    if-gtz v5, :cond_7

    .line 72
    .line 73
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 74
    .line 75
    if-gtz v5, :cond_7

    .line 76
    .line 77
    iget v5, v4, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    if-gtz v5, :cond_7

    .line 80
    .line 81
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 82
    .line 83
    if-gtz v4, :cond_7

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eq v1, v3, :cond_6

    .line 94
    .line 95
    if-ne v0, v3, :cond_3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_3
    if-nez v1, :cond_4

    .line 99
    .line 100
    :goto_0
    move v1, v0

    .line 101
    goto :goto_2

    .line 102
    :cond_4
    if-nez v0, :cond_5

    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    invoke-static {v1, v0}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    goto :goto_0

    .line 110
    :cond_6
    :goto_1
    move v1, v3

    .line 111
    :cond_7
    :goto_2
    iput v1, p0, Lcom/android/internal/policy/DecorView;->mDefaultOpacity:I

    .line 112
    .line 113
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 114
    .line 115
    if-gez v0, :cond_8

    .line 116
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setDefaultWindowFormat(I)V

    .line 120
    .line 121
    .line 122
    :cond_8
    return-void
.end method

.method private endOnGoingFadeAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    instance-of p1, p0, Landroid/graphics/drawable/ColorDrawable;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move-object p1, p0

    .line 8
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/16 v2, 0xff

    .line 19
    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v2, p1, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-object p0
.end method

.method public static getColorViewBottomInset(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getColorViewLeftInset(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getColorViewRightInset(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getColorViewTopInset(II)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I
    .locals 1

    .line 1
    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget p1, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    return p1
.end method

.method public static getNavBarSize(III)I
    .locals 1

    .line 1
    invoke-static {p0, p1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move p0, p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    move p0, p2

    .line 16
    :cond_1
    :goto_0
    return p0
.end method

.method public static getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 2
    .line 3
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 10
    .line 11
    iget v2, p3, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 18
    .line 19
    iget p3, p3, Landroid/graphics/Rect;->right:I

    .line 20
    .line 21
    invoke-static {p2, p3}, Lcom/android/internal/policy/DecorView;->getColorViewLeftInset(II)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {v0, p2, v1}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    .line 26
    .line 27
    .line 28
    move-result p3

    .line 29
    invoke-static {v0, p2}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    sub-int p2, p0, p3

    .line 37
    .line 38
    invoke-virtual {p4, p2, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    invoke-virtual {p4, v2, v2, p3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sub-int p2, p1, p3

    .line 53
    .line 54
    invoke-virtual {p4, v2, p2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public static getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-static {p0, p3}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 28
    .line 29
    const/high16 p1, -0x1000000

    .line 30
    .line 31
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 32
    .line 33
    .line 34
    return-object p0
.end method

.method private getStackId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->getWindowStackId()I

    .line 11
    .line 12
    .line 13
    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 16
    .line 17
    const-string v2, "Failed to get the workspace ID of a PhoneWindow."

    .line 18
    .line 19
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    move v0, v1

    .line 23
    :goto_0
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :cond_1
    return v0
.end method

.method private static getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    const-string v1, "\\."

    .line 15
    .line 16
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    array-length v1, p0

    .line 21
    if-lez v1, :cond_1

    .line 22
    .line 23
    array-length v0, p0

    .line 24
    add-int/lit8 v0, v0, -0x1

    .line 25
    .line 26
    aget-object p0, p0, v0

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_1
    return-object v0
.end method

.method private inflateDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const v1, 0x1090052

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/internal/widget/DecorCaptionView;

    .line 18
    .line 19
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method private initResizingPaints()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const v2, 0x1060125

    .line 10
    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const v4, 0x1060124

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    add-int v3, v1, v2

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    div-int/2addr v3, v4

    .line 34
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mHorizontalResizeShadowPaint:Landroid/graphics/Paint;

    .line 35
    .line 36
    new-instance v14, Landroid/graphics/LinearGradient;

    .line 37
    .line 38
    const/4 v7, 0x0

    .line 39
    const/4 v8, 0x0

    .line 40
    const/4 v9, 0x0

    .line 41
    iget v6, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 42
    .line 43
    int-to-float v10, v6

    .line 44
    const/4 v15, 0x3

    .line 45
    new-array v11, v15, [I

    .line 46
    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    aput v1, v11, v16

    .line 50
    .line 51
    const/16 v17, 0x1

    .line 52
    .line 53
    aput v3, v11, v17

    .line 54
    .line 55
    aput v2, v11, v4

    .line 56
    .line 57
    new-array v12, v15, [F

    .line 58
    .line 59
    fill-array-data v12, :array_0

    .line 60
    .line 61
    .line 62
    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 63
    .line 64
    move-object v6, v14

    .line 65
    move-object/from16 v13, v25

    .line 66
    .line 67
    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, v14}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 71
    .line 72
    .line 73
    iget-object v5, v0, Lcom/android/internal/policy/DecorView;->mVerticalResizeShadowPaint:Landroid/graphics/Paint;

    .line 74
    .line 75
    new-instance v6, Landroid/graphics/LinearGradient;

    .line 76
    .line 77
    const/16 v19, 0x0

    .line 78
    .line 79
    const/16 v20, 0x0

    .line 80
    .line 81
    iget v7, v0, Lcom/android/internal/policy/DecorView;->mResizeShadowSize:I

    .line 82
    .line 83
    int-to-float v7, v7

    .line 84
    const/16 v22, 0x0

    .line 85
    .line 86
    new-array v8, v15, [I

    .line 87
    .line 88
    aput v1, v8, v16

    .line 89
    .line 90
    aput v3, v8, v17

    .line 91
    .line 92
    aput v2, v8, v4

    .line 93
    .line 94
    new-array v1, v15, [F

    .line 95
    .line 96
    fill-array-data v1, :array_1

    .line 97
    .line 98
    .line 99
    move-object/from16 v18, v6

    .line 100
    .line 101
    move/from16 v21, v7

    .line 102
    .line 103
    move-object/from16 v23, v8

    .line 104
    .line 105
    move-object/from16 v24, v1

    .line 106
    .line 107
    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    nop

    .line 115
    :array_0
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data

    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeElevation()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static isAddedToWindow(Landroid/view/View;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/internal/policy/DecorView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/internal/policy/DecorView;

    .line 6
    .line 7
    iget-boolean p0, p0, Lcom/android/internal/policy/DecorView;->mIsAddedToWindow:Z

    .line 8
    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
.end method

.method public static isNavBarToLeftEdge(II)Z
    .locals 0

    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNavBarToRightEdge(II)Z
    .locals 0

    if-nez p0, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOutOfBounds(II)Z
    .locals 1

    .line 1
    const/4 v0, -0x5

    .line 2
    if-lt p1, v0, :cond_1

    .line 3
    .line 4
    if-lt p2, v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    add-int/lit8 v0, v0, 0x5

    .line 11
    .line 12
    if-gt p1, v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    add-int/lit8 p1, p1, 0x5

    .line 19
    .line 20
    if-le p2, p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 26
    :goto_1
    return p1
.end method

.method private isOutOfInnerBounds(II)Z
    .locals 1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isResizing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadBackgroundDrawablesIfNeeded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 10
    .line 11
    iget v2, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundResource:I

    .line 12
    .line 13
    iget v3, v1, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 33
    :goto_1
    invoke-static {v0, v2, v3, v1}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v2, "Failed to find background drawable for PhoneWindow="

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const v1, 0x108025c

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 90
    .line 91
    const/4 v1, 0x0

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    return-void
.end method

.method private releaseThreadedRenderer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastBackgroundDrawableCb:Landroid/graphics/drawable/Drawable$Callback;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public static setAddedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/android/internal/policy/DecorView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/android/internal/policy/DecorView;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsAddedToWindow:Z

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private static setColor(Landroid/view/View;IIZZ)V
    .locals 10

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/util/Pair;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-ne v3, p3, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq v0, p4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Landroid/graphics/drawable/InsetDrawable;

    .line 45
    .line 46
    invoke-virtual {p3}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 51
    .line 52
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    .line 60
    .line 61
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 62
    .line 63
    .line 64
    goto :goto_4

    .line 65
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const/high16 v3, 0x3f800000    # 1.0f

    .line 78
    .line 79
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    new-instance v9, Landroid/graphics/drawable/InsetDrawable;

    .line 88
    .line 89
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 90
    .line 91
    invoke-direct {v4, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 92
    .line 93
    .line 94
    if-eqz p3, :cond_2

    .line 95
    .line 96
    if-nez p4, :cond_2

    .line 97
    .line 98
    move v5, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    move v5, v2

    .line 101
    :goto_1
    if-nez p3, :cond_3

    .line 102
    .line 103
    move v6, v0

    .line 104
    goto :goto_2

    .line 105
    :cond_3
    move v6, v2

    .line 106
    :goto_2
    if-eqz p3, :cond_4

    .line 107
    .line 108
    if-eqz p4, :cond_4

    .line 109
    .line 110
    move v7, v0

    .line 111
    goto :goto_3

    .line 112
    :cond_4
    move v7, v2

    .line 113
    :goto_3
    const/4 v8, 0x0

    .line 114
    move-object v3, v9

    .line 115
    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    .line 119
    .line 120
    const/4 v0, 0x2

    .line 121
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 124
    .line 125
    invoke-direct {v3, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 126
    .line 127
    .line 128
    aput-object v3, v0, v2

    .line 129
    .line 130
    aput-object v9, v0, v1

    .line 131
    .line 132
    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 136
    .line 137
    .line 138
    new-instance p1, Landroid/util/Pair;

    .line 139
    .line 140
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_5
    const/4 p2, 0x0

    .line 156
    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    .line 161
    .line 162
    :goto_4
    return-void
.end method

.method private setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2

    .line 1
    const v0, 0x10202ed

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x1080260

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    .line 13
    .line 14
    const v0, 0x10201fd

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v0, 0x108025e

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getDecorCaptionShade()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_1

    .line 12
    .line 13
    new-instance v0, Landroid/util/TypedValue;

    .line 14
    .line 15
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const v2, 0x1010433

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 26
    .line 27
    .line 28
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 29
    .line 30
    invoke-static {p1}, Landroid/graphics/Color;->luminance(I)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    float-to-double v0, p1

    .line 35
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 36
    .line 37
    cmpg-double p1, v0, v2

    .line 38
    .line 39
    if-gez p1, :cond_0

    .line 40
    .line 41
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/internal/policy/DecorView;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method private setHandledActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledPrimaryActionMode(Landroid/view/ActionMode;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private setHandledPrimaryActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->endOnGoingFadeAnimation()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->shouldAnimatePrimaryActionModeView()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 33
    .line 34
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    new-array v1, v1, [F

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 47
    .line 48
    new-instance v0, Lcom/android/internal/policy/DecorView$4;

    .line 49
    .line 50
    invoke-direct {v0, p0}, Lcom/android/internal/policy/DecorView$4;-><init>(Lcom/android/internal/policy/DecorView;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFadeAnim:Landroid/animation/ObjectAnimator;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 63
    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 76
    .line 77
    const/16 v0, 0x20

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 2

    .line 1
    const v0, 0x10202ed

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x1080261

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    .line 13
    .line 14
    const v0, 0x10201fd

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const v0, 0x108025f

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private showContextMenuForChildInternal(Landroid/view/View;FF)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Lcom/android/internal/view/menu/MenuHelper;->dismiss()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 16
    .line 17
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;

    .line 18
    .line 19
    iget-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    new-instance v2, Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-direct {v2, v3}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    iput-object v2, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuBuilder;->clearAll()V

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x1

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    move v0, v3

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    move v0, v2

    .line 62
    :goto_1
    if-eqz v0, :cond_3

    .line 63
    .line 64
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 65
    .line 66
    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-virtual {v4, v5, p1, p2, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showPopup(Landroid/content/Context;Landroid/view/View;FF)Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 78
    .line 79
    iget-object p2, p2, Lcom/android/internal/policy/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    invoke-virtual {p2, p1, p3}, Lcom/android/internal/view/menu/ContextMenuBuilder;->showDialog(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_2
    if-eqz p1, :cond_4

    .line 90
    .line 91
    xor-int/lit8 p2, v0, 0x1

    .line 92
    .line 93
    invoke-virtual {v1, p2}, Lcom/android/internal/policy/PhoneWindow$PhoneWindowMenuCallback;->setShowDialogForSubmenu(Z)V

    .line 94
    .line 95
    .line 96
    invoke-interface {p1, v1}, Lcom/android/internal/view/menu/MenuHelper;->setPresenterCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 97
    .line 98
    .line 99
    :cond_4
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 100
    .line 101
    iput-object p1, p2, Lcom/android/internal/policy/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuHelper;

    .line 102
    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    move v2, v3

    .line 106
    :cond_5
    return v2
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;

    invoke-direct {v0, p0, p2}, Lcom/android/internal/policy/DecorView$ActionModeCallback2Wrapper;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ActionMode$Callback;)V

    .line 4
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/Window;->isDestroyed()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    :try_start_0
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, v0, p3}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez p3, :cond_0

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, v0}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/view/ActionMode;->getType()I

    move-result p1

    if-nez p1, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->cleanupPrimaryActionMode()V

    .line 9
    iput-object p2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/view/ActionMode;->getType()I

    move-result p1

    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    .line 11
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 13
    :cond_2
    iput-object p2, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    :cond_3
    :goto_1
    move-object v1, p2

    goto :goto_2

    .line 14
    :cond_4
    invoke-direct {p0, p3, v0, p1}, Lcom/android/internal/policy/DecorView;->createActionMode(ILandroid/view/ActionMode$Callback2;Landroid/view/View;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 16
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->setHandledActionMode(Landroid/view/ActionMode;)V

    move-object v1, p1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/Window;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 18
    :try_start_2
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V
    :try_end_2
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_6
    return-object v1
.end method

.method private updateAvailableWidth()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 10
    .line 11
    int-to-float v1, v1

    .line 12
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mAvailableWidth:F

    .line 22
    .line 23
    return-void
.end method

.method private updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p6

    .line 10
    .line 11
    move/from16 v5, p7

    .line 12
    .line 13
    move/from16 v6, p8

    .line 14
    .line 15
    move/from16 v7, p10

    .line 16
    .line 17
    iget-object v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 20
    .line 21
    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object v9

    .line 25
    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 26
    .line 27
    move/from16 v10, p2

    .line 28
    .line 29
    invoke-virtual {v8, v10, v9, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isPresent(IIZ)Z

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    iput-boolean v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 34
    .line 35
    iget-object v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 36
    .line 37
    iget-object v10, v0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 38
    .line 39
    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v10

    .line 43
    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 44
    .line 45
    invoke-virtual {v9, v8, v2, v10, v7}, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->isVisible(ZIIZ)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const/4 v9, 0x0

    .line 50
    if-eqz v7, :cond_0

    .line 51
    .line 52
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    if-nez v10, :cond_0

    .line 57
    .line 58
    if-lez p5, :cond_0

    .line 59
    .line 60
    const/4 v10, 0x1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move v10, v9

    .line 63
    :goto_0
    iget-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 64
    .line 65
    const/4 v12, -0x1

    .line 66
    if-eqz v4, :cond_1

    .line 67
    .line 68
    move v13, v12

    .line 69
    goto :goto_1

    .line 70
    :cond_1
    move/from16 v13, p5

    .line 71
    .line 72
    :goto_1
    if-eqz v4, :cond_2

    .line 73
    .line 74
    move/from16 v12, p5

    .line 75
    .line 76
    :cond_2
    iget-object v14, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 77
    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    if-eqz v5, :cond_3

    .line 81
    .line 82
    iget v14, v14, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->seascapeGravity:I

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    iget v14, v14, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->horizontalGravity:I

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget v14, v14, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->verticalGravity:I

    .line 89
    .line 90
    :goto_2
    const/4 v15, 0x4

    .line 91
    if-nez v11, :cond_7

    .line 92
    .line 93
    if-eqz v10, :cond_6

    .line 94
    .line 95
    new-instance v11, Landroid/view/View;

    .line 96
    .line 97
    iget-object v8, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-direct {v11, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 100
    .line 101
    .line 102
    iput-object v11, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 103
    .line 104
    invoke-static {v11, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 108
    .line 109
    iget-object v3, v3, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->transitionName:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v11, v3}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v3, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 115
    .line 116
    iget v3, v3, Lcom/android/internal/policy/DecorView$ColorViewAttributes;->id:I

    .line 117
    .line 118
    invoke-virtual {v11, v3}, Landroid/view/View;->setId(I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v11, v15}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iput v9, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 125
    .line 126
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 127
    .line 128
    invoke-direct {v3, v12, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 129
    .line 130
    .line 131
    if-eqz v5, :cond_5

    .line 132
    .line 133
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_5
    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 137
    .line 138
    :goto_3
    invoke-virtual {v0, v11, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    .line 140
    .line 141
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 142
    .line 143
    .line 144
    const/4 v8, 0x1

    .line 145
    goto :goto_8

    .line 146
    :cond_6
    move v8, v9

    .line 147
    goto :goto_8

    .line 148
    :cond_7
    if-eqz v10, :cond_8

    .line 149
    .line 150
    move v8, v9

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    move v8, v15

    .line 153
    :goto_4
    iget v15, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 154
    .line 155
    if-eq v15, v8, :cond_9

    .line 156
    .line 157
    const/4 v15, 0x1

    .line 158
    goto :goto_5

    .line 159
    :cond_9
    move v15, v9

    .line 160
    :goto_5
    iput v8, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 161
    .line 162
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 167
    .line 168
    if-eqz v5, :cond_a

    .line 169
    .line 170
    goto :goto_6

    .line 171
    :cond_a
    move v9, v6

    .line 172
    :goto_6
    move/from16 p10, v15

    .line 173
    .line 174
    if-eqz v5, :cond_b

    .line 175
    .line 176
    goto :goto_7

    .line 177
    :cond_b
    const/4 v6, 0x0

    .line 178
    :goto_7
    iget v15, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    .line 180
    if-ne v15, v13, :cond_c

    .line 181
    .line 182
    iget v15, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 183
    .line 184
    if-ne v15, v12, :cond_c

    .line 185
    .line 186
    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 187
    .line 188
    if-ne v15, v14, :cond_c

    .line 189
    .line 190
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 191
    .line 192
    if-ne v15, v9, :cond_c

    .line 193
    .line 194
    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 195
    .line 196
    if-eq v15, v6, :cond_d

    .line 197
    .line 198
    :cond_c
    iput v13, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 199
    .line 200
    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 201
    .line 202
    iput v14, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 203
    .line 204
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 205
    .line 206
    iput v6, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 207
    .line 208
    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .line 210
    .line 211
    :cond_d
    if-eqz v10, :cond_e

    .line 212
    .line 213
    invoke-static {v11, v2, v3, v4, v5}, Lcom/android/internal/policy/DecorView;->setColor(Landroid/view/View;IIZZ)V

    .line 214
    .line 215
    .line 216
    :cond_e
    move/from16 v8, p10

    .line 217
    .line 218
    :goto_8
    if-eqz v8, :cond_13

    .line 219
    .line 220
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 225
    .line 226
    .line 227
    const/high16 v3, 0x3f800000    # 1.0f

    .line 228
    .line 229
    if-eqz p9, :cond_11

    .line 230
    .line 231
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-nez v4, :cond_11

    .line 236
    .line 237
    const/4 v4, 0x0

    .line 238
    if-eqz v10, :cond_10

    .line 239
    .line 240
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-eqz v5, :cond_f

    .line 245
    .line 246
    const/4 v5, 0x0

    .line 247
    invoke-virtual {v11, v5}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v11, v4}, Landroid/view/View;->setAlpha(F)V

    .line 251
    .line 252
    .line 253
    :cond_f
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mShowInterpolator:Landroid/view/animation/Interpolator;

    .line 262
    .line 263
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    iget v4, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 268
    .line 269
    int-to-long v4, v4

    .line 270
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 271
    .line 272
    .line 273
    goto :goto_a

    .line 274
    :cond_10
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 279
    .line 280
    .line 281
    move-result-object v3

    .line 282
    iget-object v4, v0, Lcom/android/internal/policy/DecorView;->mHideInterpolator:Landroid/view/animation/Interpolator;

    .line 283
    .line 284
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    iget v4, v0, Lcom/android/internal/policy/DecorView;->mBarEnterExitDuration:I

    .line 289
    .line 290
    int-to-long v4, v4

    .line 291
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    new-instance v4, Lcom/android/internal/policy/DecorView$2;

    .line 296
    .line 297
    invoke-direct {v4, v0, v1}, Lcom/android/internal/policy/DecorView$2;-><init>(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/DecorView$ColorViewState;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 301
    .line 302
    .line 303
    goto :goto_a

    .line 304
    :cond_11
    const/4 v5, 0x0

    .line 305
    invoke-virtual {v11, v3}, Landroid/view/View;->setAlpha(F)V

    .line 306
    .line 307
    .line 308
    if-eqz v10, :cond_12

    .line 309
    .line 310
    move v9, v5

    .line 311
    goto :goto_9

    .line 312
    :cond_12
    const/4 v9, 0x4

    .line 313
    :goto_9
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 314
    .line 315
    .line 316
    :cond_13
    :goto_a
    iput-boolean v7, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    .line 317
    .line 318
    iput v2, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->color:I

    .line 319
    .line 320
    return-void
.end method

.method private updateColorViewTranslations()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    int-to-float v3, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    if-gez v0, :cond_2

    .line 25
    .line 26
    int-to-float v2, v0

    .line 27
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 28
    .line 29
    .line 30
    :cond_3
    return-void
.end method

.method private updateElevation()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    const/high16 v4, 0x40a00000    # 5.0f

    .line 8
    .line 9
    if-ne v1, v2, :cond_2

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/high16 v2, 0x41a00000    # 20.0f

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    move v4, v2

    .line 26
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v2, v4

    .line 32
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    if-ne v1, v2, :cond_3

    .line 43
    .line 44
    invoke-direct {p0, v4}, Lcom/android/internal/policy/DecorView;->dipToPx(F)F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    const/4 v1, 0x0

    .line 52
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    :goto_1
    if-nez v0, :cond_4

    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mElevationAdjustedForStack:Z

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    cmpl-float v0, v0, v1

    .line 66
    .line 67
    if-eqz v0, :cond_5

    .line 68
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setElevation(F)V

    .line 72
    .line 73
    .line 74
    :cond_5
    return-void
.end method

.method private updateNavigationGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8
    .line 9
    const/16 v1, 0x7db

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 20
    .line 21
    const/high16 v1, 0x2000000

    .line 22
    .line 23
    and-int/2addr v0, v1

    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 55
    .line 56
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 59
    .line 60
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    .line 64
    .line 65
    if-nez v0, :cond_1

    .line 66
    .line 67
    new-instance v0, Landroid/view/View;

    .line 68
    .line 69
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 70
    .line 71
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    .line 75
    .line 76
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    const v2, 0x10600a8

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 91
    .line 92
    iget-object v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const v4, 0x800053

    .line 105
    .line 106
    .line 107
    const/4 v5, -0x1

    .line 108
    invoke-direct {v2, v5, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->updateNavigationGuardColor()V

    .line 133
    .line 134
    .line 135
    const/4 v0, 0x1

    .line 136
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p1, v1, v1, v1, v0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    :cond_2
    return-object p1
.end method

.method private updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_a

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 11
    .line 12
    if-eqz v0, :cond_a

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v2, :cond_8

    .line 30
    .line 31
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    new-instance v2, Landroid/graphics/Rect;

    .line 36
    .line 37
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 41
    .line 42
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mTempRect:Landroid/graphics/Rect;

    .line 43
    .line 44
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 47
    .line 48
    invoke-virtual {v4, p1, v2}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    .line 49
    .line 50
    .line 51
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v2, v1

    .line 61
    :goto_0
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 62
    .line 63
    if-eq v4, v2, :cond_4

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 70
    .line 71
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 72
    .line 73
    if-nez v2, :cond_2

    .line 74
    .line 75
    new-instance v2, Landroid/view/View;

    .line 76
    .line 77
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    invoke-direct {v2, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 83
    .line 84
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const v5, 0x10600a8

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 97
    .line 98
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 99
    .line 100
    iget-object v4, v4, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 107
    .line 108
    iget v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 109
    .line 110
    const v7, 0x800033

    .line 111
    .line 112
    .line 113
    const/4 v8, -0x1

    .line 114
    invoke-direct {v5, v8, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    .line 127
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 128
    .line 129
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 130
    .line 131
    if-eq v4, v5, :cond_3

    .line 132
    .line 133
    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    .line 135
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 136
    .line 137
    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    :goto_1
    move v2, v3

    .line 141
    goto :goto_2

    .line 142
    :cond_4
    move v2, v1

    .line 143
    :goto_2
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 144
    .line 145
    if-eqz v4, :cond_5

    .line 146
    .line 147
    move v4, v3

    .line 148
    goto :goto_3

    .line 149
    :cond_5
    move v4, v1

    .line 150
    :goto_3
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 151
    .line 152
    invoke-virtual {v5}, Lcom/android/internal/policy/PhoneWindow;->getLocalFeaturesPrivate()I

    .line 153
    .line 154
    .line 155
    move-result v5

    .line 156
    and-int/lit16 v5, v5, 0x400

    .line 157
    .line 158
    if-nez v5, :cond_6

    .line 159
    .line 160
    move v5, v3

    .line 161
    goto :goto_4

    .line 162
    :cond_6
    move v5, v1

    .line 163
    :goto_4
    if-eqz v5, :cond_7

    .line 164
    .line 165
    if-eqz v4, :cond_7

    .line 166
    .line 167
    goto :goto_5

    .line 168
    :cond_7
    move v3, v1

    .line 169
    :goto_5
    invoke-virtual {p1, v1, v3, v1, v1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets(ZZZZ)Landroid/view/WindowInsets;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    move v3, v2

    .line 174
    goto :goto_6

    .line 175
    :cond_8
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 176
    .line 177
    if-eqz v2, :cond_9

    .line 178
    .line 179
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 180
    .line 181
    move v4, v1

    .line 182
    goto :goto_6

    .line 183
    :cond_9
    move v3, v1

    .line 184
    move v4, v3

    .line 185
    :goto_6
    if-eqz v3, :cond_b

    .line 186
    .line 187
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModeView:Lcom/android/internal/widget/ActionBarContextView;

    .line 188
    .line 189
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    .line 191
    .line 192
    goto :goto_7

    .line 193
    :cond_a
    move v4, v1

    .line 194
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 195
    .line 196
    if-eqz v0, :cond_d

    .line 197
    .line 198
    if-eqz v4, :cond_c

    .line 199
    .line 200
    goto :goto_8

    .line 201
    :cond_c
    const/16 v1, 0x8

    .line 202
    .line 203
    :goto_8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 204
    .line 205
    .line 206
    :cond_d
    return-object p1
.end method


# virtual methods
.method public clearContentView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->removeContentView()V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    :goto_0
    if-ltz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 22
    .line 23
    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 24
    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 30
    .line 31
    if-eq v1, v2, :cond_1

    .line 32
    .line 33
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mStatusGuard:Landroid/view/View;

    .line 34
    .line 35
    if-eq v1, v2, :cond_1

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    .line 38
    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 18
    .line 19
    if-gez v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move v1, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v2

    .line 16
    :goto_0
    sget-boolean v4, Lcom/android/internal/policy/DecorView;->sDebugDispatchInput:Z

    .line 17
    .line 18
    const-string v5, "DecorView"

    .line 19
    .line 20
    if-eqz v4, :cond_1

    .line 21
    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v6, "dispatchKeyEvent, event: "

    .line 25
    .line 26
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :cond_1
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_3

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 48
    .line 49
    iget v4, v4, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 50
    .line 51
    if-lez v4, :cond_2

    .line 52
    .line 53
    if-eq v4, v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 60
    .line 61
    return v3

    .line 62
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 63
    .line 64
    iget-object v6, v4, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 65
    .line 66
    if-eqz v6, :cond_3

    .line 67
    .line 68
    iget-boolean v7, v6, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isOpen:Z

    .line 69
    .line 70
    if-eqz v7, :cond_3

    .line 71
    .line 72
    invoke-virtual {v4, v6, v0, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    return v3

    .line 79
    :cond_3
    sget-boolean v0, Lcom/android/internal/policy/DecorView;->sDebugDispatchInput:Z

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v2, "No window pannel handle, so deliver to activity, mWindow.isDestroyed() "

    .line 86
    .line 87
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 91
    .line 92
    invoke-virtual {v2}, Landroid/view/Window;->isDestroyed()Z

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, ", mWindow.getCallback(): "

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 105
    .line 106
    invoke-virtual {v2}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 121
    .line 122
    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_6

    .line 127
    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    if-eqz v0, :cond_5

    .line 135
    .line 136
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 137
    .line 138
    if-gez v2, :cond_5

    .line 139
    .line 140
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    :goto_1
    if-eqz v0, :cond_6

    .line 150
    .line 151
    return v3

    .line 152
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 153
    .line 154
    if-eqz v1, :cond_7

    .line 155
    .line 156
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    goto :goto_2

    .line 167
    :cond_7
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/policy/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    :goto_2
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 21
    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput-boolean v2, p1, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 25
    .line 26
    :cond_0
    return v2

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 42
    .line 43
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 44
    .line 45
    if-gez v1, :cond_2

    .line 46
    .line 47
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_0
    if-eqz v0, :cond_3

    .line 57
    .line 58
    return v2

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 69
    .line 70
    iget-object v4, v3, Lcom/android/internal/policy/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 71
    .line 72
    if-nez v4, :cond_4

    .line 73
    .line 74
    invoke-virtual {v3, v0, p1}, Lcom/android/internal/policy/PhoneWindow;->preparePanel(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;Landroid/view/KeyEvent;)Z

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v3, v0, v4, p1, v2}, Lcom/android/internal/policy/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    iput-boolean v1, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->isPrepared:Z

    .line 88
    .line 89
    if-eqz p1, :cond_4

    .line 90
    .line 91
    return v2

    .line 92
    :cond_4
    return v1
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPointerCaptureChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/internal/policy/DecorView;->sDebugDispatchInput:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "dispatchTouchEvent, deliver to activity, mWindow.isDestroyed() "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", mWindow.getCallback(): "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "DecorView"

    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 61
    .line 62
    if-gez v1, :cond_1

    .line 63
    .line 64
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    :goto_0
    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 18
    .line 19
    if-gez v1, :cond_0

    .line 20
    .line 21
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    :goto_0
    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public enableCaption(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public finishChanging()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/policy/DecorView;->gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z

    move-result v1

    .line 3
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public gatherTransparentRegion(Lcom/android/internal/policy/DecorView$ColorViewState;Landroid/graphics/Region;)Z
    .locals 1

    .line 4
    iget-object v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->visible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAccessibilityViewId()I
    .locals 1

    const v0, 0x7ffffffe

    return v0
.end method

.method public getCaptionHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowingCaption()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTransitionGroup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 10
    .line 11
    .line 12
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 13
    .line 14
    and-int/lit16 v1, v1, 0x100

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    .line 20
    const/4 v1, -0x2

    .line 21
    const/4 v2, 0x0

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {p1, v0, v2, v3, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 59
    .line 60
    if-ne v0, v1, :cond_1

    .line 61
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 63
    .line 64
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 69
    .line 70
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x1

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateStatusGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->updateNavigationGuard(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    .line 117
    .line 118
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 119
    .line 120
    .line 121
    :cond_2
    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 21
    .line 22
    if-gez v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 28
    .line 29
    const/4 v1, -0x1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->openPanelsAfterRestore()V

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 38
    .line 39
    if-nez v0, :cond_2

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->addWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 46
    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->onConfigurationChange()V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->onViewRootImplSet(Landroid/view/ViewRootImpl;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->closeAllPanels()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStackId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 9
    .line 10
    if-eq v0, p1, :cond_2

    .line 11
    .line 12
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 v0, -0x1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 46
    .line 47
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 50
    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {p0, p1, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 64
    .line 65
    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 66
    .line 67
    invoke-direct {v2, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 79
    .line 80
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->onConfigurationChanged(Z)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1}, Landroid/app/ActivityManager$StackId;->hasWindowDecor(I)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->enableCaption(Z)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateAvailableWidth()V

    .line 95
    .line 96
    .line 97
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public onContentDrawn(IIII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->onContentDrawn(IIII)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 13
    .line 14
    if-gez v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mDecorContentParent:Lcom/android/internal/widget/DecorContentParent;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/android/internal/widget/DecorContentParent;->dismissPopups()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mShowPrimaryActionModePopup:Ljava/lang/Runnable;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 49
    .line 50
    .line 51
    :cond_2
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionModePopup:Landroid/widget/PopupWindow;

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/android/internal/policy/DecorView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 61
    .line 62
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 63
    .line 64
    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 72
    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iget v2, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 76
    .line 77
    if-gez v2, :cond_5

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->close()V

    .line 80
    .line 81
    .line 82
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 83
    .line 84
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->removeWindowCallbacks(Landroid/view/WindowCallbacks;)V

    .line 94
    .line 95
    .line 96
    iput-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mWindowResizeCallbacksAdded:Z

    .line 97
    .line 98
    :cond_6
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->isResizing()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move-object v1, p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 15
    .line 16
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 19
    .line 20
    iget-object v3, v3, Lcom/android/internal/policy/PhoneWindow;->mContentParent:Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/internal/widget/BackgroundFallback;->draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/internal/policy/DecorView;->mHasCaption:Z

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    float-to-int v3, v3

    .line 28
    invoke-direct {p0, v1, v3}, Lcom/android/internal/policy/DecorView;->isOutOfInnerBounds(II)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    return v2

    .line 35
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 36
    .line 37
    if-ltz v1, :cond_1

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    float-to-int v0, v0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    float-to-int p1, p1

    .line 51
    invoke-direct {p0, v0, p1}, Lcom/android/internal/policy/DecorView;->isOutOfBounds(II)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 58
    .line 59
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 62
    .line 63
    .line 64
    return v2

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    return p1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->getOutsets(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 10
    .line 11
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 12
    .line 13
    if-lez p2, :cond_0

    .line 14
    .line 15
    neg-int p2, p2

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 20
    .line 21
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 22
    .line 23
    if-lez p2, :cond_1

    .line 24
    .line 25
    neg-int p2, p2

    .line 26
    invoke-virtual {p0, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-boolean p2, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 30
    .line 31
    if-eqz p2, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 34
    .line 35
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-boolean p2, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 45
    .line 46
    iget p2, p2, Landroid/graphics/Rect;->left:I

    .line 47
    .line 48
    invoke-virtual {p0, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 52
    .line 53
    .line 54
    const/4 p2, 0x1

    .line 55
    iput-boolean p2, p0, Lcom/android/internal/policy/DecorView;->mAllowUpdateElevation:Z

    .line 56
    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget p1, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 60
    .line 61
    if-ne p1, p2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 68
    .line 69
    .line 70
    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x1

    .line 25
    if-ne v1, v3, :cond_0

    .line 26
    .line 27
    move v1, v3

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v1, v2

    .line 30
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 39
    .line 40
    const/4 v6, 0x6

    .line 41
    const/4 v7, 0x5

    .line 42
    const/high16 v8, 0x40000000    # 2.0f

    .line 43
    .line 44
    const/high16 v9, -0x80000000

    .line 45
    .line 46
    if-ne v4, v9, :cond_5

    .line 47
    .line 48
    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 49
    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    iget-object v10, v10, Lcom/android/internal/policy/PhoneWindow;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 56
    .line 57
    :goto_1
    if-eqz v10, :cond_5

    .line 58
    .line 59
    iget v11, v10, Landroid/util/TypedValue;->type:I

    .line 60
    .line 61
    if-eqz v11, :cond_5

    .line 62
    .line 63
    if-ne v11, v7, :cond_2

    .line 64
    .line 65
    invoke-virtual {v10, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    :goto_2
    float-to-int v10, v10

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    if-ne v11, v6, :cond_3

    .line 72
    .line 73
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 74
    .line 75
    int-to-float v12, v11

    .line 76
    int-to-float v11, v11

    .line 77
    invoke-virtual {v10, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    goto :goto_2

    .line 82
    :cond_3
    move v10, v2

    .line 83
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-lez v10, :cond_4

    .line 88
    .line 89
    invoke-static {v10, p1}, Ljava/lang/Math;->min(II)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    move v10, v3

    .line 98
    goto :goto_4

    .line 99
    :cond_4
    iget-object v10, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 100
    .line 101
    iget v11, v10, Landroid/graphics/Rect;->left:I

    .line 102
    .line 103
    sub-int/2addr p1, v11

    .line 104
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 105
    .line 106
    sub-int/2addr p1, v10

    .line 107
    invoke-static {p1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingHorizontalInsets:Z

    .line 112
    .line 113
    :cond_5
    move v10, v2

    .line 114
    :goto_4
    iput-boolean v2, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 115
    .line 116
    if-ne v5, v9, :cond_a

    .line 117
    .line 118
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 119
    .line 120
    if-eqz v1, :cond_6

    .line 121
    .line 122
    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 123
    .line 124
    goto :goto_5

    .line 125
    :cond_6
    iget-object v5, v5, Lcom/android/internal/policy/PhoneWindow;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 126
    .line 127
    :goto_5
    if-eqz v5, :cond_a

    .line 128
    .line 129
    iget v11, v5, Landroid/util/TypedValue;->type:I

    .line 130
    .line 131
    if-eqz v11, :cond_a

    .line 132
    .line 133
    if-ne v11, v7, :cond_7

    .line 134
    .line 135
    invoke-virtual {v5, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    :goto_6
    float-to-int v5, v5

    .line 140
    goto :goto_7

    .line 141
    :cond_7
    if-ne v11, v6, :cond_8

    .line 142
    .line 143
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 144
    .line 145
    int-to-float v12, v11

    .line 146
    int-to-float v11, v11

    .line 147
    invoke-virtual {v5, v12, v11}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 148
    .line 149
    .line 150
    move-result v5

    .line 151
    goto :goto_6

    .line 152
    :cond_8
    move v5, v2

    .line 153
    :goto_7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 154
    .line 155
    .line 156
    move-result v11

    .line 157
    if-lez v5, :cond_9

    .line 158
    .line 159
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    invoke-static {p2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 164
    .line 165
    .line 166
    move-result p2

    .line 167
    goto :goto_8

    .line 168
    :cond_9
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 169
    .line 170
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 175
    .line 176
    and-int/lit16 v5, v5, 0x100

    .line 177
    .line 178
    if-nez v5, :cond_a

    .line 179
    .line 180
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mFloatingInsets:Landroid/graphics/Rect;

    .line 181
    .line 182
    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 183
    .line 184
    sub-int/2addr v11, v5

    .line 185
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    .line 186
    .line 187
    sub-int/2addr v11, p2

    .line 188
    invoke-static {v11, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    iput-boolean v3, p0, Lcom/android/internal/policy/DecorView;->mApplyFloatingVerticalInsets:Z

    .line 193
    .line 194
    :cond_a
    :goto_8
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 195
    .line 196
    invoke-virtual {p0, v5}, Landroid/view/View;->getOutsets(Landroid/graphics/Rect;)V

    .line 197
    .line 198
    .line 199
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 200
    .line 201
    iget v11, v5, Landroid/graphics/Rect;->top:I

    .line 202
    .line 203
    if-gtz v11, :cond_b

    .line 204
    .line 205
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    .line 206
    .line 207
    if-lez v5, :cond_c

    .line 208
    .line 209
    :cond_b
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-eqz v5, :cond_c

    .line 214
    .line 215
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 216
    .line 217
    .line 218
    move-result p2

    .line 219
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 220
    .line 221
    iget v12, v11, Landroid/graphics/Rect;->top:I

    .line 222
    .line 223
    add-int/2addr p2, v12

    .line 224
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    .line 225
    .line 226
    add-int/2addr p2, v11

    .line 227
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 228
    .line 229
    .line 230
    move-result p2

    .line 231
    :cond_c
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 232
    .line 233
    iget v11, v5, Landroid/graphics/Rect;->left:I

    .line 234
    .line 235
    if-gtz v11, :cond_d

    .line 236
    .line 237
    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 238
    .line 239
    if-lez v5, :cond_e

    .line 240
    .line 241
    :cond_d
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_e

    .line 246
    .line 247
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    iget-object v11, p0, Lcom/android/internal/policy/DecorView;->mOutsets:Landroid/graphics/Rect;

    .line 252
    .line 253
    iget v12, v11, Landroid/graphics/Rect;->left:I

    .line 254
    .line 255
    add-int/2addr p1, v12

    .line 256
    iget v11, v11, Landroid/graphics/Rect;->right:I

    .line 257
    .line 258
    add-int/2addr p1, v11

    .line 259
    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 271
    .line 272
    .line 273
    move-result v5

    .line 274
    if-nez v10, :cond_12

    .line 275
    .line 276
    if-ne v4, v9, :cond_12

    .line 277
    .line 278
    if-eqz v1, :cond_f

    .line 279
    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 281
    .line 282
    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 286
    .line 287
    iget-object v1, v1, Lcom/android/internal/policy/PhoneWindow;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 288
    .line 289
    :goto_9
    iget v4, v1, Landroid/util/TypedValue;->type:I

    .line 290
    .line 291
    if-eqz v4, :cond_12

    .line 292
    .line 293
    if-ne v4, v7, :cond_10

    .line 294
    .line 295
    invoke-virtual {v1, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    :goto_a
    float-to-int v0, v0

    .line 300
    goto :goto_b

    .line 301
    :cond_10
    if-ne v4, v6, :cond_11

    .line 302
    .line 303
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 304
    .line 305
    int-to-float v4, v0

    .line 306
    int-to-float v0, v0

    .line 307
    invoke-virtual {v1, v4, v0}, Landroid/util/TypedValue;->getFraction(FF)F

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    goto :goto_a

    .line 312
    :cond_11
    move v0, v2

    .line 313
    :goto_b
    if-ge p1, v0, :cond_12

    .line 314
    .line 315
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    move v2, v3

    .line 320
    :cond_12
    if-eqz v2, :cond_13

    .line 321
    .line 322
    invoke-super {p0, v5, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 323
    .line 324
    .line 325
    :cond_13
    return-void
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->drawResizingShadowIfNeeded(Landroid/view/DisplayListCanvas;)V

    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->onRequestDraw(Z)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public onResourcesLoaded(Landroid/view/LayoutInflater;I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->getStackId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mStackId:I

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    iget-object v4, p0, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    iget-object v5, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    .line 25
    .line 26
    .line 27
    move-result v6

    .line 28
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    move-object v2, p0

    .line 35
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DecorView;->createDecorCaptionView(Landroid/view/LayoutInflater;)Lcom/android/internal/widget/DecorCaptionView;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 50
    .line 51
    const/4 v0, -0x1

    .line 52
    if-eqz p2, :cond_2

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-nez p2, :cond_1

    .line 59
    .line 60
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 61
    .line 62
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 63
    .line 64
    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 71
    .line 72
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 73
    .line 74
    invoke-direct {v1, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    .line 82
    .line 83
    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->initializeElevation()V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public onRootViewScrollYChanged(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/internal/policy/DecorView;->mRootScrollY:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateColorViewTranslations()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowDragResizeEnd()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 7
    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 15

    .line 1
    move-object v13, p0

    .line 2
    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->releaseThreadedRenderer()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getThreadedRenderer()Landroid/view/ThreadedRenderer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->loadBackgroundDrawablesIfNeeded()V

    .line 26
    .line 27
    .line 28
    new-instance v14, Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 29
    .line 30
    iget-object v4, v13, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    iget-object v5, v13, Lcom/android/internal/policy/DecorView;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    iget-object v6, v13, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    iget-object v0, v13, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 43
    .line 44
    invoke-direct {p0, v0}, Lcom/android/internal/policy/DecorView;->getCurrentColor(Lcom/android/internal/policy/DecorView$ColorViewState;)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    move-object v0, v14

    .line 49
    move-object v1, p0

    .line 50
    move-object/from16 v3, p1

    .line 51
    .line 52
    move/from16 v9, p2

    .line 53
    .line 54
    move-object/from16 v10, p3

    .line 55
    .line 56
    move-object/from16 v11, p4

    .line 57
    .line 58
    move/from16 v12, p5

    .line 59
    .line 60
    invoke-direct/range {v0 .. v12}, Lcom/android/internal/policy/BackdropFrameRenderer;-><init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 61
    .line 62
    .line 63
    iput-object v14, v13, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 66
    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    .line 71
    .line 72
    .line 73
    :cond_2
    move/from16 v0, p5

    .line 74
    .line 75
    iput v0, v13, Lcom/android/internal/policy/DecorView;->mResizeMode:I

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->requestInvalidateRootRenderNode()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->hasFeature(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 16
    .line 17
    iget v2, v0, Lcom/android/internal/policy/PhoneWindow;->mPanelChordingKey:I

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->closePanel(I)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget v1, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 41
    .line 42
    if-gez v1, :cond_1

    .line 43
    .line 44
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->onWindowFocusChanged(Z)V

    .line 59
    .line 60
    .line 61
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->updateElevation()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/policy/BackdropFrameRenderer;->setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;

    return-void
.end method

.method public requestKeyboardShortcuts(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->getPanelState(IZ)Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/Window;->isDestroyed()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1, p1, v0, p2}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x6

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    if-ne v0, v1, :cond_2

    .line 26
    .line 27
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v1, 0x1

    .line 32
    if-ne v0, v1, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method public setBackgroundFallback(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/BackgroundFallback;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundFallback:Lcom/android/internal/widget/BackgroundFallback;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/internal/policy/DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    iget-object p4, p0, Lcom/android/internal/policy/DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 19
    .line 20
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    iget v1, p4, Landroid/graphics/Rect;->left:I

    .line 23
    .line 24
    add-int/2addr v0, v1

    .line 25
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 26
    .line 27
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 28
    .line 29
    iget v1, p4, Landroid/graphics/Rect;->top:I

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 33
    .line 34
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 35
    .line 36
    iget v1, p4, Landroid/graphics/Rect;->right:I

    .line 37
    .line 38
    sub-int/2addr v0, v1

    .line 39
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 40
    .line 41
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 42
    .line 43
    iget v1, p4, Landroid/graphics/Rect;->bottom:I

    .line 44
    .line 45
    sub-int/2addr v0, v1

    .line 46
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 47
    .line 48
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 49
    .line 50
    .line 51
    iget-object p3, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 52
    .line 53
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 54
    .line 55
    iget v1, p3, Landroid/graphics/Rect;->left:I

    .line 56
    .line 57
    iget v2, p4, Landroid/graphics/Rect;->left:I

    .line 58
    .line 59
    sub-int/2addr v1, v2

    .line 60
    add-int/2addr v1, v0

    .line 61
    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 62
    .line 63
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 64
    .line 65
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 66
    .line 67
    iget v2, p4, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    sub-int/2addr v1, v2

    .line 70
    add-int/2addr v1, v0

    .line 71
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 72
    .line 73
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    iget v1, p3, Landroid/graphics/Rect;->right:I

    .line 76
    .line 77
    iget v2, p4, Landroid/graphics/Rect;->right:I

    .line 78
    .line 79
    sub-int/2addr v1, v2

    .line 80
    sub-int/2addr v0, v1

    .line 81
    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 82
    .line 83
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 84
    .line 85
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    .line 86
    .line 87
    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    .line 88
    .line 89
    sub-int/2addr p3, p4

    .line 90
    sub-int/2addr v0, p3

    .line 91
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 92
    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 94
    .line 95
    .line 96
    move-result-object p3

    .line 97
    if-eqz p3, :cond_1

    .line 98
    .line 99
    invoke-virtual {p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    return p1
.end method

.method public setOutlineProvider(Landroid/view/ViewOutlineProvider;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 5
    .line 6
    return-void
.end method

.method public setSurfaceFormat(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setFormat(I)V

    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public setSurfaceType(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method public setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackdropFrameRenderer:Lcom/android/internal/policy/BackdropFrameRenderer;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/BackdropFrameRenderer;->setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of v0, p1, Lcom/android/internal/policy/DecorContext;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/android/internal/policy/DecorContext;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/android/internal/policy/DecorContext;->setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_6

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_2

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :cond_1
    :goto_0
    invoke-static {p1, v0}, Lcom/android/internal/policy/DecorView;->enforceNonTranslucentBackground(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 44
    .line 45
    iget v3, v2, Lcom/android/internal/policy/PhoneWindow;->mBackgroundFallbackResource:I

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_4

    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isShowingWallpaper()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    move v0, v1

    .line 63
    :cond_4
    :goto_1
    invoke-static {p1, v1, v3, v0}, Lcom/android/internal/policy/DecorView;->getResizingBackgroundDrawable(Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 68
    .line 69
    :goto_2
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    if-eqz p1, :cond_5

    .line 72
    .line 73
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 76
    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_5
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 82
    .line 83
    .line 84
    :goto_3
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 85
    .line 86
    .line 87
    :cond_6
    return-void
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eq v0, p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/internal/policy/DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/policy/DecorView;->drawableChanged()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public shouldAnimatePrimaryActionModeView()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->showContextMenuForChildInternal(Landroid/view/View;FF)Z

    move-result p1

    return p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 2
    invoke-direct {p0, p0, p1, p2}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DecorView;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/DecorView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public startChanging()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mChanging:Z

    return-void
.end method

.method public superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mPrimaryActionMode:Landroid/view/ActionMode;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    if-ne v0, p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return p1

    .line 23
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DecorView@"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "["

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "]"

    .line 35
    .line 36
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public updateColorViews(Landroid/view/WindowInsets;Z)Landroid/view/WindowInsets;
    .locals 21

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v13

    .line 11
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    or-int v14, v0, v1

    .line 18
    .line 19
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 20
    .line 21
    iget-boolean v0, v0, Lcom/android/internal/policy/PhoneWindow;->mIsFloating:Z

    .line 22
    .line 23
    const/high16 v15, -0x80000000

    .line 24
    .line 25
    const/16 v16, 0x1

    .line 26
    .line 27
    const/16 v17, 0x0

    .line 28
    .line 29
    if-nez v0, :cond_12

    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLaidOut()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    xor-int/lit8 v0, v0, 0x1

    .line 36
    .line 37
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 38
    .line 39
    iget v2, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 40
    .line 41
    xor-int/2addr v1, v2

    .line 42
    and-int/2addr v1, v15

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    move/from16 v1, v16

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move/from16 v1, v17

    .line 49
    .line 50
    :goto_0
    or-int/2addr v0, v1

    .line 51
    iput v2, v11, Lcom/android/internal/policy/DecorView;->mLastWindowFlags:I

    .line 52
    .line 53
    if-eqz v12, :cond_9

    .line 54
    .line 55
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 82
    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-static {v1, v2}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    iput v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    move/from16 v1, v16

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    move/from16 v1, v17

    .line 121
    .line 122
    :goto_1
    iget-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 123
    .line 124
    if-eq v1, v2, :cond_2

    .line 125
    .line 126
    move/from16 v2, v16

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    move/from16 v2, v17

    .line 130
    .line 131
    :goto_2
    or-int/2addr v0, v2

    .line 132
    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastHasTopStableInset:Z

    .line 133
    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_3

    .line 139
    .line 140
    move/from16 v1, v16

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_3
    move/from16 v1, v17

    .line 144
    .line 145
    :goto_3
    iget-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 146
    .line 147
    if-eq v1, v2, :cond_4

    .line 148
    .line 149
    move/from16 v2, v16

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_4
    move/from16 v2, v17

    .line 153
    .line 154
    :goto_4
    or-int/2addr v0, v2

    .line 155
    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastHasBottomStableInset:Z

    .line 156
    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_5

    .line 162
    .line 163
    move/from16 v1, v16

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_5
    move/from16 v1, v17

    .line 167
    .line 168
    :goto_5
    iget-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 169
    .line 170
    if-eq v1, v2, :cond_6

    .line 171
    .line 172
    move/from16 v2, v16

    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_6
    move/from16 v2, v17

    .line 176
    .line 177
    :goto_6
    or-int/2addr v0, v2

    .line 178
    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastHasRightStableInset:Z

    .line 179
    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_7

    .line 185
    .line 186
    move/from16 v1, v16

    .line 187
    .line 188
    goto :goto_7

    .line 189
    :cond_7
    move/from16 v1, v17

    .line 190
    .line 191
    :goto_7
    iget-boolean v2, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 192
    .line 193
    if-eq v1, v2, :cond_8

    .line 194
    .line 195
    move/from16 v2, v16

    .line 196
    .line 197
    goto :goto_8

    .line 198
    :cond_8
    move/from16 v2, v17

    .line 199
    .line 200
    :goto_8
    or-int/2addr v0, v2

    .line 201
    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastHasLeftStableInset:Z

    .line 202
    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->shouldAlwaysConsumeNavBar()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    iput-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    .line 208
    .line 209
    :cond_9
    move/from16 v18, v0

    .line 210
    .line 211
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 212
    .line 213
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 214
    .line 215
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    .line 216
    .line 217
    .line 218
    move-result v19

    .line 219
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 220
    .line 221
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 222
    .line 223
    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->isNavBarToLeftEdge(II)Z

    .line 224
    .line 225
    .line 226
    move-result v20

    .line 227
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 228
    .line 229
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 230
    .line 231
    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 232
    .line 233
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/DecorView;->getNavBarSize(III)I

    .line 234
    .line 235
    .line 236
    move-result v5

    .line 237
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 238
    .line 239
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 240
    .line 241
    iget v3, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarColor:I

    .line 242
    .line 243
    iget v4, v0, Lcom/android/internal/policy/PhoneWindow;->mNavigationBarDividerColor:I

    .line 244
    .line 245
    if-nez v19, :cond_b

    .line 246
    .line 247
    if-eqz v20, :cond_a

    .line 248
    .line 249
    goto :goto_9

    .line 250
    :cond_a
    move/from16 v6, v17

    .line 251
    .line 252
    goto :goto_a

    .line 253
    :cond_b
    :goto_9
    move/from16 v6, v16

    .line 254
    .line 255
    :goto_a
    const/4 v8, 0x0

    .line 256
    if-eqz p2, :cond_c

    .line 257
    .line 258
    if-nez v18, :cond_c

    .line 259
    .line 260
    move/from16 v9, v16

    .line 261
    .line 262
    goto :goto_b

    .line 263
    :cond_c
    move/from16 v9, v17

    .line 264
    .line 265
    :goto_b
    const/4 v10, 0x0

    .line 266
    move-object/from16 v0, p0

    .line 267
    .line 268
    move v2, v14

    .line 269
    move/from16 v7, v20

    .line 270
    .line 271
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V

    .line 272
    .line 273
    .line 274
    if-eqz v19, :cond_d

    .line 275
    .line 276
    iget-object v0, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 277
    .line 278
    iget-boolean v0, v0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 279
    .line 280
    if-eqz v0, :cond_d

    .line 281
    .line 282
    move/from16 v0, v16

    .line 283
    .line 284
    goto :goto_c

    .line 285
    :cond_d
    move/from16 v0, v17

    .line 286
    .line 287
    :goto_c
    if-eqz v20, :cond_e

    .line 288
    .line 289
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mNavigationColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 290
    .line 291
    iget-boolean v1, v1, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 292
    .line 293
    if-eqz v1, :cond_e

    .line 294
    .line 295
    move/from16 v7, v16

    .line 296
    .line 297
    goto :goto_d

    .line 298
    :cond_e
    move/from16 v7, v17

    .line 299
    .line 300
    :goto_d
    if-eqz v0, :cond_f

    .line 301
    .line 302
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 303
    .line 304
    :goto_e
    move v8, v0

    .line 305
    goto :goto_f

    .line 306
    :cond_f
    if-eqz v7, :cond_10

    .line 307
    .line 308
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 309
    .line 310
    goto :goto_e

    .line 311
    :cond_10
    move/from16 v8, v17

    .line 312
    .line 313
    :goto_f
    iget-object v1, v11, Lcom/android/internal/policy/DecorView;->mStatusColorViewState:Lcom/android/internal/policy/DecorView$ColorViewState;

    .line 314
    .line 315
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/DecorView;->calculateStatusBarColor()I

    .line 316
    .line 317
    .line 318
    move-result v3

    .line 319
    const/4 v4, 0x0

    .line 320
    iget v5, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 321
    .line 322
    const/4 v6, 0x0

    .line 323
    if-eqz p2, :cond_11

    .line 324
    .line 325
    if-nez v18, :cond_11

    .line 326
    .line 327
    move/from16 v9, v16

    .line 328
    .line 329
    goto :goto_10

    .line 330
    :cond_11
    move/from16 v9, v17

    .line 331
    .line 332
    :goto_10
    iget-boolean v10, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    .line 333
    .line 334
    move-object/from16 v0, p0

    .line 335
    .line 336
    move v2, v14

    .line 337
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/policy/DecorView;->updateColorViewInt(Lcom/android/internal/policy/DecorView$ColorViewState;IIIIZZIZZ)V

    .line 338
    .line 339
    .line 340
    :cond_12
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 341
    .line 342
    and-int v1, v0, v15

    .line 343
    .line 344
    if-eqz v1, :cond_13

    .line 345
    .line 346
    and-int/lit16 v1, v14, 0x200

    .line 347
    .line 348
    if-nez v1, :cond_13

    .line 349
    .line 350
    and-int/lit8 v1, v14, 0x2

    .line 351
    .line 352
    if-eqz v1, :cond_14

    .line 353
    .line 354
    :cond_13
    iget-boolean v1, v11, Lcom/android/internal/policy/DecorView;->mLastShouldAlwaysConsumeNavBar:Z

    .line 355
    .line 356
    if-eqz v1, :cond_15

    .line 357
    .line 358
    :cond_14
    move/from16 v1, v16

    .line 359
    .line 360
    goto :goto_11

    .line 361
    :cond_15
    move/from16 v1, v17

    .line 362
    .line 363
    :goto_11
    and-int/lit16 v2, v14, 0x400

    .line 364
    .line 365
    if-nez v2, :cond_16

    .line 366
    .line 367
    and-int v2, v14, v15

    .line 368
    .line 369
    if-nez v2, :cond_16

    .line 370
    .line 371
    and-int/lit16 v2, v0, 0x100

    .line 372
    .line 373
    if-nez v2, :cond_16

    .line 374
    .line 375
    const/high16 v2, 0x10000

    .line 376
    .line 377
    and-int/2addr v0, v2

    .line 378
    if-nez v0, :cond_16

    .line 379
    .line 380
    iget-boolean v0, v11, Lcom/android/internal/policy/DecorView;->mForceWindowDrawsStatusBarBackground:Z

    .line 381
    .line 382
    if-eqz v0, :cond_16

    .line 383
    .line 384
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 385
    .line 386
    if-eqz v0, :cond_16

    .line 387
    .line 388
    goto :goto_12

    .line 389
    :cond_16
    move/from16 v16, v17

    .line 390
    .line 391
    :goto_12
    if-eqz v16, :cond_17

    .line 392
    .line 393
    iget v0, v11, Lcom/android/internal/policy/DecorView;->mLastTopInset:I

    .line 394
    .line 395
    goto :goto_13

    .line 396
    :cond_17
    move/from16 v0, v17

    .line 397
    .line 398
    :goto_13
    if-eqz v1, :cond_18

    .line 399
    .line 400
    iget v2, v11, Lcom/android/internal/policy/DecorView;->mLastRightInset:I

    .line 401
    .line 402
    goto :goto_14

    .line 403
    :cond_18
    move/from16 v2, v17

    .line 404
    .line 405
    :goto_14
    if-eqz v1, :cond_19

    .line 406
    .line 407
    iget v3, v11, Lcom/android/internal/policy/DecorView;->mLastBottomInset:I

    .line 408
    .line 409
    goto :goto_15

    .line 410
    :cond_19
    move/from16 v3, v17

    .line 411
    .line 412
    :goto_15
    if-eqz v1, :cond_1a

    .line 413
    .line 414
    iget v1, v11, Lcom/android/internal/policy/DecorView;->mLastLeftInset:I

    .line 415
    .line 416
    goto :goto_16

    .line 417
    :cond_1a
    move/from16 v1, v17

    .line 418
    .line 419
    :goto_16
    iget-object v4, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 420
    .line 421
    if-eqz v4, :cond_1d

    .line 422
    .line 423
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 424
    .line 425
    .line 426
    move-result-object v4

    .line 427
    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 428
    .line 429
    if-eqz v4, :cond_1d

    .line 430
    .line 431
    iget-object v4, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 432
    .line 433
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 434
    .line 435
    .line 436
    move-result-object v4

    .line 437
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 438
    .line 439
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 440
    .line 441
    if-ne v5, v0, :cond_1b

    .line 442
    .line 443
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 444
    .line 445
    if-ne v5, v2, :cond_1b

    .line 446
    .line 447
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 448
    .line 449
    if-ne v5, v3, :cond_1b

    .line 450
    .line 451
    iget v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 452
    .line 453
    if-eq v5, v1, :cond_1c

    .line 454
    .line 455
    :cond_1b
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 456
    .line 457
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 458
    .line 459
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 460
    .line 461
    iput v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 462
    .line 463
    iget-object v5, v11, Lcom/android/internal/policy/DecorView;->mContentRoot:Landroid/view/ViewGroup;

    .line 464
    .line 465
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    .line 467
    .line 468
    if-nez v12, :cond_1c

    .line 469
    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestApplyInsets()V

    .line 471
    .line 472
    .line 473
    :cond_1c
    if-eqz v12, :cond_1d

    .line 474
    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 476
    .line 477
    .line 478
    move-result v4

    .line 479
    sub-int/2addr v4, v1

    .line 480
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 481
    .line 482
    .line 483
    move-result v1

    .line 484
    sub-int/2addr v1, v0

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    sub-int/2addr v0, v2

    .line 490
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 491
    .line 492
    .line 493
    move-result v2

    .line 494
    sub-int/2addr v2, v3

    .line 495
    invoke-virtual {v12, v4, v1, v0, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    goto :goto_17

    .line 500
    :cond_1d
    move-object v0, v12

    .line 501
    :goto_17
    if-eqz v0, :cond_1e

    .line 502
    .line 503
    invoke-virtual {v0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    :cond_1e
    return-object v0
.end method

.method public updateDecorCaptionShade()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mDecorCaptionView:Lcom/android/internal/widget/DecorCaptionView;

    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/DecorView;->setDecorCaptionShade(Landroid/content/Context;Lcom/android/internal/widget/DecorCaptionView;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public updateLogTag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DecorView["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/internal/policy/DecorView;->getTitleSuffix(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "]"

    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/internal/policy/DecorView;->mLogTag:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public updateNavigationGuardColor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mNavigationGuard:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getNavigationBarColor()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x4

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public updatePictureInPictureOutlineProvider(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/Window;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->isTaskRoot()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget-object v0, Lcom/android/internal/policy/DecorView;->PIP_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    .line 23
    .line 24
    invoke-super {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/android/internal/policy/DecorView;->mLastOutlineProvider:Landroid/view/ViewOutlineProvider;

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/DecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DecorView;->mIsInPictureInPictureMode:Z

    .line 40
    .line 41
    return-void
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .locals 1

    iget v0, p0, Lcom/android/internal/policy/DecorView;->mFeatureId:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DecorView;->mWindow:Lcom/android/internal/policy/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
