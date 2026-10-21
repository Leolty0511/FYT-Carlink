.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$OnFrameMetricsAvailableListener;,
        Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;,
        Landroid/view/Window$WindowControllerCallback;,
        Landroid/view/Window$OnWindowSwipeDismissedCallback;,
        Landroid/view/Window$OnWindowDismissedCallback;,
        Landroid/view/Window$Callback;
    }
.end annotation


# static fields
.field public static final DECOR_CAPTION_SHADE_AUTO:I = 0x0

.field public static final DECOR_CAPTION_SHADE_DARK:I = 0x2

.field public static final DECOR_CAPTION_SHADE_LIGHT:I = 0x1

.field protected static final DEFAULT_FEATURES:I = 0x41
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_ACTIVITY_TRANSITIONS:I = 0xd

.field public static final FEATURE_CONTENT_TRANSITIONS:I = 0xc

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_MAX:I = 0xd

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final FEATURE_SWIPE_TO_DISMISS:I = 0xb

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final NAVIGATION_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:navigation:background"

.field public static final PROGRESS_END:I = 0x2710
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_SECONDARY_END:I = 0x7530
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_START:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"

.field public static final STATUS_BAR_BACKGROUND_TRANSITION_NAME:Ljava/lang/String; = "android:status:background"


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

.field private mCloseOnSwipeEnabled:Z

.field private mCloseOnTouchOutside:Z

.field private mContainer:Landroid/view/Window;

.field private final mContext:Landroid/content/Context;

.field private mDefaultWindowFormat:I

.field private mDestroyed:Z

.field private mFeatures:I

.field private mForcedWindowFlags:I

.field private mHardwareAccelerated:Z

.field private mHasChildren:Z

.field private mHasSoftInputMode:Z

.field private mHaveDimAmount:Z

.field private mHaveWindowFormat:Z

.field private mIsActive:Z

.field private mLocalFeatures:I

.field private mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

.field private mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

.field private mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

.field private mOverlayWithDecorCaptionEnabled:Z

.field private mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 12
    .line 13
    iput v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 14
    .line 15
    iput-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 21
    .line 22
    iput-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 23
    .line 24
    iput-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    .line 25
    .line 26
    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    .line 27
    .line 28
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 29
    .line 30
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {p1}, Landroid/view/Window;->getDefaultFeatures(Landroid/content/Context;)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    iput p1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 42
    .line 43
    iput p1, p0, Landroid/view/Window;->mFeatures:I

    .line 44
    .line 45
    return-void
.end method

.method public static getDefaultFeatures(Landroid/content/Context;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const v0, 0x1120039

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const v1, 0x1120038

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    or-int/lit8 v0, v0, 0x40

    .line 22
    .line 23
    :cond_0
    return v0
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    float-to-int p2, p2

    .line 11
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    neg-int v2, p1

    .line 24
    if-lt v0, v2, :cond_1

    .line 25
    .line 26
    if-lt p2, v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    add-int/2addr v2, p1

    .line 33
    if-gt v0, v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    add-int/2addr v0, p1

    .line 40
    if-le p2, v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 46
    :goto_1
    return p1
.end method

.method private setPrivateFlags(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 6
    .line 7
    not-int v2, p2

    .line 8
    and-int/2addr v1, v2

    .line 9
    and-int/2addr p1, p2

    .line 10
    or-int/2addr p1, v1

    .line 11
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addFlags(I)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public final addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View;->addFrameMetricsListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 14
    .line 15
    const-string p2, "listener cannot be null"

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p1

    .line 21
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string p2, "can\'t observe a Window without an attached view"

    .line 24
    .line 25
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public addPrivateFlags(I)V
    .locals 0

    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    return-void
.end method

.method public adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6
    .line 7
    const-string v2, ":"

    .line 8
    .line 9
    const/16 v3, 0x20

    .line 10
    .line 11
    const/16 v4, 0x3e8

    .line 12
    .line 13
    if-lt v1, v4, :cond_9

    .line 14
    .line 15
    const/16 v5, 0x7cf

    .line 16
    .line 17
    if-gt v1, v5, :cond_9

    .line 18
    .line 19
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 34
    .line 35
    :cond_0
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_10

    .line 42
    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 49
    .line 50
    const/16 v3, 0x3e9

    .line 51
    .line 52
    if-ne v1, v3, :cond_2

    .line 53
    .line 54
    const-string v1, "Media"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    const/16 v3, 0x3ec

    .line 61
    .line 62
    if-ne v1, v3, :cond_3

    .line 63
    .line 64
    const-string v1, "MediaOvr"

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    if-ne v1, v4, :cond_4

    .line 71
    .line 72
    const-string v1, "Panel"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/16 v3, 0x3ea

    .line 79
    .line 80
    if-ne v1, v3, :cond_5

    .line 81
    .line 82
    const-string v1, "SubPanel"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    const/16 v3, 0x3ed

    .line 89
    .line 90
    if-ne v1, v3, :cond_6

    .line 91
    .line 92
    const-string v1, "AboveSubPanel"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_6
    const/16 v3, 0x3eb

    .line 99
    .line 100
    if-ne v1, v3, :cond_7

    .line 101
    .line 102
    const-string v1, "AtchDlg"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    :goto_0
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 112
    .line 113
    if-eqz v1, :cond_8

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_9
    const/16 v4, 0x7d0

    .line 128
    .line 129
    if-lt v1, v4, :cond_c

    .line 130
    .line 131
    const/16 v4, 0xbb7

    .line 132
    .line 133
    if-gt v1, v4, :cond_c

    .line 134
    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_10

    .line 142
    .line 143
    :cond_a
    const-string v0, "Sys"

    .line 144
    .line 145
    invoke-static {v3, v0}, Landroid/accessibilityservice/c;->q(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v1, :cond_b

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    :cond_b
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_c
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 171
    .line 172
    if-nez v1, :cond_e

    .line 173
    .line 174
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 175
    .line 176
    if-nez v1, :cond_d

    .line 177
    .line 178
    iget-object v1, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_d
    iget-object v1, v1, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 182
    .line 183
    :goto_1
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 184
    .line 185
    :cond_e
    if-eqz v0, :cond_f

    .line 186
    .line 187
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_10

    .line 192
    .line 193
    :cond_f
    iget-object v0, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    .line 194
    .line 195
    if-eqz v0, :cond_10

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    :cond_10
    :goto_2
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 201
    .line 202
    if-nez v0, :cond_11

    .line 203
    .line 204
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 211
    .line 212
    :cond_11
    iget-boolean v0, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    .line 213
    .line 214
    const/high16 v1, 0x1000000

    .line 215
    .line 216
    if-nez v0, :cond_12

    .line 217
    .line 218
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 219
    .line 220
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 221
    .line 222
    and-int/2addr v0, v1

    .line 223
    if-eqz v0, :cond_13

    .line 224
    .line 225
    :cond_12
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 226
    .line 227
    or-int/2addr v0, v1

    .line 228
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 229
    .line 230
    :cond_13
    return-void
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public abstract clearContentView()V
.end method

.method public clearFlags(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public abstract closeAllPanels()V
.end method

.method public abstract closePanel(I)V
.end method

.method public final destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return-void
.end method

.method public final dispatchOnWindowDismissed(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Landroid/view/Window$OnWindowDismissedCallback;->onWindowDismissed(ZZ)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final dispatchOnWindowSwipeDismissed()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/view/Window$OnWindowSwipeDismissedCallback;->onWindowSwipeDismissed()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public getColorMode()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v0

    return v0
.end method

.method public final getContainer()Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public getContentScene()Landroid/transition/Scene;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public getElevation()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFeatures()I
    .locals 1

    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method public final getForcedWindowFlags()I
    .locals 1

    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public final getLocalFeatures()I
    .locals 1

    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public getMediaController()Landroid/media/session/MediaController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getNavigationBarColor()I
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementExitTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReenterTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedElementsUseOverlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract getStatusBarColor()I
.end method

.method public getTransitionBackgroundFadeDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTransitionManager()Landroid/transition/TransitionManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public final getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public final getWindowStyle()Landroid/content/res/TypedArray;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    sget-object v1, Lcom/android/internal/R$styleable;->Window:[I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method

.method public final hasChildren()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public hasFeature(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/Window;->getFeatures()I

    move-result v0

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final hasSoftInputMode()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method public haveDimAmount()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;)V
    .locals 0

    return-void
.end method

.method public abstract invalidatePanelMenu(I)V
.end method

.method public final isActive()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public isCloseOnSwipeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public isOverlayWithDecorCaptionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return v0
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public isWideColorGamut()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getColorMode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

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
    const/4 v1, 0x0

    .line 28
    :goto_0
    return v1
.end method

.method public final makeActive()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, v1, Landroid/view/Window;->mIsActive:Z

    .line 11
    .line 12
    :cond_0
    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    .line 13
    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public notifyRestrictedCaptionAreaCallback(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 11
    .line 12
    iget-object p2, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    invoke-interface {p1, p2}, Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;->onRestrictedCaptionAreaChanged(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onMultiWindowModeChanged()V
.end method

.method public abstract onPictureInPictureModeChanged(Z)V
.end method

.method public abstract openPanel(ILandroid/view/KeyEvent;)V
.end method

.method public abstract peekDecorView()Landroid/view/View;
.end method

.method public abstract performContextMenuIdentifierAction(II)Z
.end method

.method public abstract performPanelIdentifierAction(III)Z
.end method

.method public abstract performPanelShortcut(IILandroid/view/KeyEvent;I)Z
.end method

.method public removeFeature(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int p1, v0, p1

    .line 3
    .line 4
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    .line 5
    .line 6
    not-int v1, p1

    .line 7
    and-int/2addr v0, v1

    .line 8
    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 9
    .line 10
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 11
    .line 12
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget v1, v1, Landroid/view/Window;->mFeatures:I

    .line 17
    .line 18
    not-int v1, v1

    .line 19
    and-int/2addr p1, v1

    .line 20
    :cond_0
    not-int p1, p1

    .line 21
    and-int/2addr p1, v0

    .line 22
    iput p1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 23
    .line 24
    return-void
.end method

.method public final removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->removeFrameMetricsListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public abstract reportActivityRelaunched()V
.end method

.method public requestFeature(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int p1, v0, p1

    .line 3
    .line 4
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    .line 5
    .line 6
    or-int/2addr v1, p1

    .line 7
    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 8
    .line 9
    iget v2, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 10
    .line 11
    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    iget v3, v3, Landroid/view/Window;->mFeatures:I

    .line 16
    .line 17
    not-int v3, v3

    .line 18
    and-int/2addr v3, p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v3, p1

    .line 21
    :goto_0
    or-int/2addr v2, v3

    .line 22
    iput v2, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 23
    .line 24
    and-int/2addr p1, v1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v0, 0x0

    .line 29
    :goto_1
    return v0
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 0

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 0

    return-void
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setClipToOutline(Z)V
    .locals 0

    return-void
.end method

.method public setCloseOnSwipeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnSwipeEnabled:Z

    return-void
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 5
    .line 6
    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setColorMode(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    .line 6
    .line 7
    or-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 10
    .line 11
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 12
    .line 13
    or-int/lit8 v0, v0, 0x2

    .line 14
    .line 15
    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setDecorCaptionShade(I)V
.end method

.method public setDefaultIcon(I)V
    .locals 0

    return-void
.end method

.method public setDefaultLogo(I)V
    .locals 0

    return-void
.end method

.method public setDefaultWindowFormat(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 2
    .line 3
    iget-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 9
    .line 10
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDisableWallpaperTouchEvents(Z)V
    .locals 1

    const/16 v0, 0x800

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public abstract setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setFeatureDrawableAlpha(II)V
.end method

.method public abstract setFeatureDrawableResource(II)V
.end method

.method public abstract setFeatureDrawableUri(ILandroid/net/Uri;)V
.end method

.method public abstract setFeatureInt(II)V
.end method

.method public setFlags(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 6
    .line 7
    not-int v2, p2

    .line 8
    and-int/2addr v1, v2

    .line 9
    and-int/2addr p1, p2

    .line 10
    or-int/2addr p1, v1

    .line 11
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 12
    .line 13
    iget p1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 14
    .line 15
    or-int/2addr p1, p2

    .line 16
    iput p1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setFormat(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 14
    .line 15
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setIcon(I)V
    .locals 0

    return-void
.end method

.method public setLayout(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    .line 7
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public setLocalFocus(ZZ)V
    .locals 0

    return-void
.end method

.method public setLogo(I)V
    .locals 0

    return-void
.end method

.method public setMediaController(Landroid/media/session/MediaController;)V
    .locals 0

    return-void
.end method

.method public abstract setNavigationBarColor(I)V
.end method

.method public setNeedsMenuKey(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mOnWindowDismissedCallback:Landroid/view/Window$OnWindowDismissedCallback;

    return-void
.end method

.method public final setOnWindowSwipeDismissedCallback(Landroid/view/Window$OnWindowSwipeDismissedCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mOnWindowSwipeDismissedCallback:Landroid/view/Window$OnWindowSwipeDismissedCallback;

    return-void
.end method

.method public setOverlayWithDecorCaptionEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/Window;->mOverlayWithDecorCaptionEnabled:Z

    return-void
.end method

.method public setReenterTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public abstract setResizingCaptionDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final setRestrictedCaptionAreaListener(Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/Window;->mOnRestrictedCaptionAreaChangedListener:Landroid/view/Window$OnRestrictedCaptionAreaChangedListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance p1, Landroid/graphics/Rect;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-object p1, p0, Landroid/view/Window;->mRestrictedCaptionAreaRect:Landroid/graphics/Rect;

    .line 13
    .line 14
    return-void
.end method

.method public setReturnTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public setSharedElementEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public setSharedElementExitTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public setSharedElementReenterTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public setSharedElementReturnTransition(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public setSharedElementsUseOverlay(Z)V
    .locals 0

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public abstract setStatusBarColor(I)V
.end method

.method public setSustainedPerformanceMode(Z)V
    .locals 1

    const/high16 v0, 0x40000

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/view/Window;->setPrivateFlags(II)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public setTransitionBackgroundFadeDuration(J)V
    .locals 0

    return-void
.end method

.method public setTransitionManager(Landroid/transition/TransitionManager;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public setType(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setUiOptions(II)V
    .locals 0

    .line 2
    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/Window;->dispatchWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final setWindowControllerCallback(Landroid/view/Window$WindowControllerCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/view/Window;->mWindowControllerCallback:Landroid/view/Window$WindowControllerCallback;

    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    return-void
.end method

.method public setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 0

    .line 2
    iput-object p2, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    .line 3
    iput-object p3, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-nez p4, :cond_0

    const-string p2, "persist.sys.ui.hw"

    const/4 p3, 0x0

    .line 4
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 p3, 0x1

    :cond_1
    iput-boolean p3, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    if-nez p1, :cond_2

    .line 5
    iget-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 6
    :cond_2
    check-cast p1, Landroid/view/WindowManagerImpl;

    invoke-virtual {p1, p0}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object p1

    iput-object p1, p0, Landroid/view/Window;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 p2, 0x4

    .line 20
    if-ne p1, p2, :cond_2

    .line 21
    .line 22
    :cond_1
    move p1, v2

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move p1, v1

    .line 25
    :goto_0
    iget-boolean p2, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 26
    .line 27
    if-eqz p2, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    if-eqz p2, :cond_3

    .line 34
    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    return v2

    .line 38
    :cond_3
    return v1
.end method

.method public abstract superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract takeInputQueue(Landroid/view/InputQueue$Callback;)V
.end method

.method public abstract takeKeyEvents(Z)V
.end method

.method public abstract takeSurface(Landroid/view/SurfaceHolder$Callback2;)V
.end method

.method public abstract togglePanel(ILandroid/view/KeyEvent;)V
.end method
