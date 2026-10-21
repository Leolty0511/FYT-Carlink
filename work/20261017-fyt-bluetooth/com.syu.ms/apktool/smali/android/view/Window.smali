.class public abstract Landroid/view/Window;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Window$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_FEATURES:I = 0x41

.field public static final FEATURE_ACTION_BAR:I = 0x8

.field public static final FEATURE_ACTION_BAR_OVERLAY:I = 0x9

.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_CONTEXT_MENU:I = 0x6

.field public static final FEATURE_CUSTOM_TITLE:I = 0x7

.field public static final FEATURE_INDETERMINATE_PROGRESS:I = 0x5

.field public static final FEATURE_LEFT_ICON:I = 0x3

.field public static final FEATURE_MAX:I = 0xa

.field public static final FEATURE_NO_TITLE:I = 0x1

.field public static final FEATURE_OPTIONS_PANEL:I = 0x0

.field public static final FEATURE_PROGRESS:I = 0x2

.field public static final FEATURE_RIGHT_ICON:I = 0x4

.field public static final ID_ANDROID_CONTENT:I = 0x1020002

.field public static final PROGRESS_END:I = 0x2710

.field public static final PROGRESS_INDETERMINATE_OFF:I = -0x4

.field public static final PROGRESS_INDETERMINATE_ON:I = -0x3

.field public static final PROGRESS_SECONDARY_END:I = 0x7530

.field public static final PROGRESS_SECONDARY_START:I = 0x4e20

.field public static final PROGRESS_START:I = 0x0

.field public static final PROGRESS_VISIBILITY_OFF:I = -0x2

.field public static final PROGRESS_VISIBILITY_ON:I = -0x1

.field private static final PROPERTY_HARDWARE_UI:Ljava/lang/String; = "persist.sys.ui.hw"


# instance fields
.field private mActiveChild:Landroid/view/Window;

.field private mAppName:Ljava/lang/String;

.field private mAppToken:Landroid/os/IBinder;

.field private mCallback:Landroid/view/Window$Callback;

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

.field private mSetCloseOnTouchOutside:Z

.field private final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowStyle:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 3
    iput-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    .line 4
    iput-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    .line 5
    iput-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    .line 6
    iput v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    const/16 v1, 0x41

    .line 7
    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 8
    iput v1, p0, Landroid/view/Window;->mLocalFeatures:I

    .line 9
    iput-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 10
    iput-boolean v0, p0, Landroid/view/Window;->mHaveDimAmount:Z

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    .line 12
    iput-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 13
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 14
    iput-object p1, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 3
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    neg-int v2, p1

    if-lt v0, v2, :cond_1

    if-lt p2, v2, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    if-le p2, v0, :cond_0

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

.method private setPrivateFlags(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 3
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public addFlags(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public addPrivateFlags(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p1}, Landroid/view/Window;->setPrivateFlags(II)V

    return-void
.end method

.method public adjustLayoutParamsForSubWindow(Landroid/view/WindowManager$LayoutParams;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_8

    const/16 v3, 0x7cf

    if-gt v1, v3, :cond_8

    .line 3
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 7
    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_2

    const-string v0, "Media"

    goto :goto_0

    :cond_2
    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_3

    const-string v0, "MediaOvr"

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    const-string v0, "Panel"

    goto :goto_0

    :cond_4
    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_5

    const-string v0, "SubPanel"

    goto :goto_0

    :cond_5
    const/16 v1, 0x3eb

    if-ne v0, v1, :cond_6

    const-string v0, "AtchDlg"

    goto :goto_0

    .line 8
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v1, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12
    :cond_8
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v1, :cond_a

    .line 13
    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-nez v1, :cond_9

    iget-object v1, p0, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    goto :goto_1

    :cond_9
    iget-object v1, v1, Landroid/view/Window;->mAppToken:Landroid/os/IBinder;

    :goto_1
    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    :cond_a
    if-eqz v0, :cond_b

    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Landroid/view/Window;->mAppName:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    :cond_c
    :goto_2
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 17
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 18
    :cond_d
    iget-boolean v0, p0, Landroid/view/Window;->mHardwareAccelerated:Z

    if-eqz v0, :cond_e

    .line 19
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_e
    return-void
.end method

.method public abstract alwaysReadCloseOnTouchAttr()V
.end method

.method public clearFlags(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
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

    .line 1
    iput-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getAttributes()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public final getCallback()Landroid/view/Window$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public final getContainer()Landroid/view/Window;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getCurrentFocus()Landroid/view/View;
.end method

.method public abstract getDecorView()Landroid/view/View;
.end method

.method public final getFeatures()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    return v0
.end method

.method public final getForcedWindowFlags()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/Window;->mForcedWindowFlags:I

    return v0
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public final getLocalFeatures()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    return v0
.end method

.method public abstract getVolumeControlStream()I
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .line 1
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

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    sget-object v1, Li/a;->Window:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/view/Window;->mWindowStyle:Landroid/content/res/TypedArray;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final hasChildren()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/Window;->mHasChildren:Z

    return v0
.end method

.method public hasFeature(I)Z
    .locals 2

    .line 1
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

    .line 1
    iget-boolean v0, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    return v0
.end method

.method public haveDimAmount()Z
    .locals 1

    .line 1
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

    .line 1
    iget-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    return v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/Window;->mDestroyed:Z

    return v0
.end method

.method public abstract isFloating()Z
.end method

.method public abstract isShortcutKey(ILandroid/view/KeyEvent;)Z
.end method

.method public final makeActive()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, v1, Landroid/view/Window;->mIsActive:Z

    .line 4
    :cond_0
    iput-object p0, v0, Landroid/view/Window;->mActiveChild:Landroid/view/Window;

    :cond_1
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/view/Window;->mIsActive:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/Window;->onActive()V

    return-void
.end method

.method public abstract onActive()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
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

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 2
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/view/Window;->mFeatures:I

    not-int v1, v1

    and-int/2addr p1, v1

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/Window;->mLocalFeatures:I

    return-void
.end method

.method public requestFeature(I)Z
    .locals 4

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1
    iget v1, p0, Landroid/view/Window;->mFeatures:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/view/Window;->mFeatures:I

    .line 2
    iget v2, p0, Landroid/view/Window;->mLocalFeatures:I

    iget-object v3, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz v3, :cond_0

    iget v3, v3, Landroid/view/Window;->mFeatures:I

    not-int v3, v3

    and-int/2addr v3, p1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/Window;->mLocalFeatures:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public abstract restoreHierarchyState(Landroid/os/Bundle;)V
.end method

.method public abstract saveHierarchyState()Landroid/os/Bundle;
.end method

.method public setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 2
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Landroid/view/Window;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setBackgroundDrawableResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Window;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    return-void
.end method

.method public abstract setChildDrawable(ILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract setChildInt(II)V
.end method

.method public setCloseOnTouchOutside(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    return-void
.end method

.method public setCloseOnTouchOutsideIfNotSet(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    if-nez v0, :cond_0

    .line 2
    iput-boolean p1, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/view/Window;->mSetCloseOnTouchOutside:Z

    :cond_0
    return-void
.end method

.method public setContainer(Landroid/view/Window;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/view/Window;->mContainer:Landroid/view/Window;

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/Window;->mFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mFeatures:I

    .line 3
    iget v0, p0, Landroid/view/Window;->mLocalFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/Window;->mLocalFeatures:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Landroid/view/Window;->mHasChildren:Z

    :cond_0
    return-void
.end method

.method public abstract setContentView(I)V
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
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
    iget-boolean v0, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 4
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 5
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setDimAmount(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/view/Window;->mHaveDimAmount:Z

    .line 4
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
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

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    not-int v2, p2

    and-int/2addr v1, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, 0x40000000    # 2.0f

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    .line 3
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4
    :cond_0
    iget p1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/Window;->mForcedWindowFlags:I

    .line 5
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setFormat(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    goto :goto_0

    .line 4
    :cond_0
    iget p1, p0, Landroid/view/Window;->mDefaultWindowFormat:I

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Landroid/view/Window;->mHaveWindowFormat:Z

    .line 6
    :goto_0
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_1

    .line 7
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
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

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
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

.method public setSoftInputMode(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/view/Window;->mHasSoftInputMode:Z

    .line 5
    :goto_0
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract setTitleColor(I)V
.end method

.method public setType(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    return-void
.end method

.method public setUiOptions(II)V
    .locals 0

    return-void
.end method

.method public abstract setVolumeControlStream(I)V
.end method

.method public setWindowAnimations(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 3
    iget-object p1, p0, Landroid/view/Window;->mCallback:Landroid/view/Window$Callback;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
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

    const/4 p2, 0x0

    if-nez p4, :cond_0

    const-string p3, "persist.sys.ui.hw"

    .line 4
    invoke-static {p3, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Landroid/view/Window;->mHardwareAccelerated:Z

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
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/Window;->mCloseOnTouchOutside:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/view/Window;->isOutOfBounds(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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
