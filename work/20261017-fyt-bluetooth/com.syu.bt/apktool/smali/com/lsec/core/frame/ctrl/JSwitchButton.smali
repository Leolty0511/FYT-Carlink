.class public Lcom/lsec/core/frame/ctrl/JSwitchButton;
.super Landroid/view/View;
.source "JSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;,
        Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;,
        Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;
    }
.end annotation


# static fields
.field public static final ANIMATION_FRAME_DURATION:I = 0x10

.field public static final MAX_ALPHA:I = 0xff

.field public static final VELOCITY:F = 1000.0f


# instance fields
.field bAttached:Z

.field public bFocusAble:Z

.field public bIsCheckBox:Z

.field public bStateClickDown:Z

.field bWillSetIconName:Z

.field bWillUpdateBackground:Z

.field drawable:[Landroid/graphics/drawable/Drawable;

.field drawable_Bk:Landroid/graphics/drawable/Drawable;

.field drawable_Bottom:Landroid/graphics/drawable/Drawable;

.field drawable_Frame:Landroid/graphics/drawable/Drawable;

.field drawable_Mask:Landroid/graphics/drawable/Drawable;

.field drawable_Normal:Landroid/graphics/drawable/Drawable;

.field iState:I

.field iconNames:[Ljava/lang/String;

.field private mAlpha:I

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationPosition:F

.field private mBk:Landroid/graphics/Bitmap;

.field private mBottom:Landroid/graphics/Bitmap;

.field private mBtnInitPos:F

.field private mBtnNormal:Landroid/graphics/Bitmap;

.field private mBtnOffPos:F

.field private mBtnOnPos:F

.field private mBtnPos:F

.field private mBtnWidth:F

.field private mChecked:Z

.field private mClickTimeout:I

.field public mDrawables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstDownX:F

.field private mFirstDownY:F

.field private mFrame:Landroid/graphics/Bitmap;

.field private mIsConditionSwitch:Z

.field private mMask:Landroid/graphics/Bitmap;

.field private mMaskWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPerformClick:Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;

.field private mRealPos:F

.field private mSaveLayerRectF:Landroid/graphics/RectF;

.field private mScaleX:F

.field private mScaleY:F

.field mStrDrawable:Ljava/lang/String;

.field mStrDrawableFix:Ljava/lang/String;

.field private mTouchSlop:I

.field private mTurningOn:Z

.field private mVelocity:F

.field private mXfermode:Landroid/graphics/PorterDuffXfermode;

.field private page:Lcom/lsec/core/frame/ctrl/JPage;

.field paint:Landroid/graphics/Paint;

.field paras:[I


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Z)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "bIsCheckBox"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 93
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bAttached:Z

    .line 32
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillUpdateBackground:Z

    .line 33
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillSetIconName:Z

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iState:I

    .line 67
    const/16 v0, 0xff

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAlpha:I

    .line 69
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    .line 71
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mIsConditionSwitch:Z

    .line 80
    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mScaleX:F

    .line 81
    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mScaleY:F

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mDrawables:Ljava/util/HashMap;

    .line 94
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 95
    iput-boolean p2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    .line 96
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->initView(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paint:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 100
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/ctrl/JSwitchButton;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    return v0
.end method

.method static synthetic access$1(Lcom/lsec/core/frame/ctrl/JSwitchButton;)Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/frame/ctrl/JSwitchButton;)Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimating:Z

    return v0
.end method

.method static synthetic access$3(Lcom/lsec/core/frame/ctrl/JSwitchButton;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->doAnimation()V

    return-void
.end method

.method private doAnimation()V
    .locals 3

    .prologue
    .line 451
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimationPosition:F

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimatedVelocity:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimationPosition:F

    .line 452
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimationPosition:F

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 453
    invoke-direct {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->stopAnimation()V

    .line 454
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimationPosition:F

    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setCheckedDelayed(Z)V

    .line 461
    :cond_0
    :goto_0
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimationPosition:F

    invoke-direct {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->moveView(F)V

    .line 462
    return-void

    .line 456
    :cond_1
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimationPosition:F

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->stopAnimation()V

    .line 458
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimationPosition:F

    .line 459
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setCheckedDelayed(Z)V

    goto :goto_0
.end method

.method private getRealPos(F)F
    .locals 2
    .param p1, "btnPos"    # F

    .prologue
    .line 312
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float v0, p1, v0

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mClickTimeout:I

    .line 116
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mTouchSlop:I

    .line 118
    const/high16 v0, 0x447a0000    # 1000.0f

    sget-object v1, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mVelocity:F

    .line 119
    return-void
.end method

.method private moveView(F)V
    .locals 1
    .param p1, "position"    # F

    .prologue
    .line 465
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    .line 466
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    invoke-direct {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getRealPos(F)F

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mRealPos:F

    .line 467
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->invalidate()V

    .line 468
    return-void
.end method

.method private setCheckedDelayed(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 204
    sget-object v0, Lcom/lsec/core/util/UiNotifyEvent;->HANDLER_UI:Landroid/os/Handler;

    new-instance v1, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;

    invoke-direct {v1, p0, p0, p1}, Lcom/lsec/core/frame/ctrl/JSwitchButton$RunnableSetChecked;-><init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;Landroid/view/View;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void
.end method

.method private startAnimation(Z)V
    .locals 2
    .param p1, "turnOn"    # Z

    .prologue
    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimating:Z

    .line 430
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mVelocity:F

    neg-float v0, v0

    :goto_0
    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimatedVelocity:F

    .line 431
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimationPosition:F

    .line 432
    new-instance v0, Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;-><init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;)V

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton$SwitchAnimation;->run()V

    .line 433
    return-void

    .line 430
    :cond_0
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mVelocity:F

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAnimating:Z

    .line 437
    return-void
.end method


# virtual methods
.method public getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mScaleX:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 106
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mScaleY:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 108
    .local v0, "h":I
    invoke-static {p1, v1, v0}, Lcom/lsec/core/util/FuncUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bAttached:Z

    .line 521
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 522
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillUpdateBackground:Z

    .line 523
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->updateBackground()V

    .line 526
    :cond_0
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillSetIconName:Z

    if-eqz v0, :cond_1

    .line 527
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillSetIconName:Z

    .line 528
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iconNames:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setIconName([Ljava/lang/String;)V

    .line 531
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 532
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bAttached:Z

    .line 537
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 538
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    if-eqz v0, :cond_6

    .line 319
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable:[Landroid/graphics/drawable/Drawable;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 320
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable:[Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    aget-object v6, v4, v0

    .line 321
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    if-nez v6, :cond_2

    .line 381
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 320
    goto :goto_0

    .line 324
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 325
    .local v10, "w":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 327
    .local v7, "h":I
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paras:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paras:[I

    array-length v0, v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    .line 328
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paras:[I

    aget v10, v0, v3

    .line 329
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paras:[I

    aget v7, v0, v2

    .line 331
    :cond_3
    invoke-virtual {v6, v3, v3, v10, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 333
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lsec/core/frame/app/MyUiItem;

    .line 334
    .local v8, "item":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v8}, Lcom/lsec/core/frame/app/MyUiItem;->getRect()[Landroid/graphics/Rect;

    move-result-object v9

    .line 336
    .local v9, "rec":[Landroid/graphics/Rect;
    if-eqz v9, :cond_5

    array-length v0, v9

    if-lt v0, v2, :cond_5

    .line 337
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 338
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 339
    aget-object v0, v9, v3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v4, v7, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 340
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v0, v0, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 342
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 379
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "h":I
    .end local v8    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v9    # "rec":[Landroid/graphics/Rect;
    .end local v10    # "w":I
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 345
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "h":I
    .restart local v8    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v9    # "rec":[Landroid/graphics/Rect;
    .restart local v10    # "w":I
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 346
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    add-int/lit8 v3, v10, 0x5

    invoke-virtual {v0, v3, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 347
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 349
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 350
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v3, v7, v2}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 351
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v0, v0, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v0, v0, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v2, v2, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 353
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 354
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 358
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "h":I
    .end local v8    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v9    # "rec":[Landroid/graphics/Rect;
    .end local v10    # "w":I
    :cond_6
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    if-eqz v0, :cond_0

    .line 361
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 362
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBk:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    .line 363
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBk:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 365
    :cond_7
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAlpha:I

    .line 366
    const/16 v3, 0x1f

    .line 365
    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 368
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMask:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 369
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 371
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBottom:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mRealPos:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 372
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 373
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mFrame:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 375
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnNormal:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mRealPos:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 376
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 472
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->invalidate()V

    .line 473
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 385
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    if-eqz v2, :cond_1

    .line 386
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 389
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Mask:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 390
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Bk:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    .line 391
    int-to-float v2, p1

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Bk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mScaleX:F

    .line 392
    int-to-float v2, p2

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Bk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mScaleY:F

    .line 398
    :goto_1
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Bk:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 399
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Bk:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBk:Landroid/graphics/Bitmap;

    .line 401
    :cond_2
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Bottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBottom:Landroid/graphics/Bitmap;

    .line 402
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Normal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnNormal:Landroid/graphics/Bitmap;

    .line 403
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Frame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mFrame:Landroid/graphics/Bitmap;

    .line 404
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Mask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMask:Landroid/graphics/Bitmap;

    .line 406
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnWidth:F

    .line 407
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMaskWidth:F

    .line 409
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMaskWidth:F

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnWidth:F

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    .line 410
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnWidth:F

    div-float/2addr v2, v5

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    .line 411
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    :goto_2
    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    .line 412
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    invoke-direct {p0, v2}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getRealPos(F)F

    move-result v2

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mRealPos:F

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "xSave":I
    const/4 v1, 0x0

    .line 416
    .local v1, "ySave":I
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBk:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 417
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBk:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v0, v2, 0x2

    .line 418
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBk:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 421
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mMask:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mSaveLayerRectF:Landroid/graphics/RectF;

    .line 422
    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    goto/16 :goto_0

    .line 394
    .end local v0    # "xSave":I
    .end local v1    # "ySave":I
    :cond_4
    int-to-float v2, p1

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Mask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mScaleX:F

    .line 395
    int-to-float v2, p2

    mul-float/2addr v2, v4

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Mask:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mScaleY:F

    goto/16 :goto_1

    .line 411
    :cond_5
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 221
    iget-boolean v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    if-nez v9, :cond_b

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 223
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 239
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mIsConditionSwitch:Z

    if-eqz v9, :cond_2

    .line 240
    packed-switch v0, :pswitch_data_1

    .line 249
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isEnabled()Z

    move-result v7

    .line 292
    .end local v0    # "action":I
    :goto_2
    return v7

    .line 225
    .restart local v0    # "action":I
    :pswitch_1
    iget-boolean v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bStateClickDown:Z

    if-nez v9, :cond_0

    .line 226
    iput-boolean v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bStateClickDown:Z

    .line 227
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->updateBackground()V

    goto :goto_0

    .line 232
    :pswitch_2
    iget-boolean v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bStateClickDown:Z

    if-eqz v9, :cond_0

    .line 233
    iput-boolean v8, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bStateClickDown:Z

    .line 234
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->updateBackground()V

    goto :goto_0

    .line 242
    :pswitch_3
    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v3

    .line 243
    .local v3, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v3, :cond_1

    .line 244
    invoke-interface {v3, p0}, Lcom/lsec/core/frame/page/IPageNotify;->ResponseClick(Landroid/view/View;)V

    goto :goto_1

    .line 252
    .end local v3    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 253
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 254
    .local v6, "y":F
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mFirstDownX:F

    sub-float v9, v5, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 255
    .local v1, "deltaX":F
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mFirstDownY:F

    sub-float v9, v6, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 256
    .local v2, "deltaY":F
    packed-switch v0, :pswitch_data_2

    .line 288
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->invalidate()V

    .line 289
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isEnabled()Z

    move-result v7

    goto :goto_2

    .line 258
    :pswitch_4
    iput v5, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mFirstDownX:F

    .line 259
    iput v6, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mFirstDownY:F

    .line 260
    iget-boolean v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    if-eqz v7, :cond_4

    iget v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    :goto_4
    iput v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnInitPos:F

    goto :goto_3

    :cond_4
    iget v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    goto :goto_4

    .line 263
    :pswitch_5
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnInitPos:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    add-float/2addr v9, v10

    iget v10, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mFirstDownX:F

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    .line 264
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    iget v10, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_5

    .line 265
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    iput v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    .line 267
    :cond_5
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    iget v10, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_6

    .line 268
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    iput v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    .line 270
    :cond_6
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    iget v10, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    iget v11, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget v11, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    :goto_5
    iput-boolean v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mTurningOn:Z

    .line 271
    iget v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    invoke-direct {p0, v7}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getRealPos(F)F

    move-result v7

    iput v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mRealPos:F

    goto :goto_3

    :cond_7
    move v7, v8

    .line 270
    goto :goto_5

    .line 275
    :pswitch_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-float v4, v10

    .line 276
    .local v4, "time":F
    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v9, v2, v9

    if-gez v9, :cond_9

    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mTouchSlop:I

    int-to-float v9, v9

    cmpg-float v9, v1, v9

    if-gez v9, :cond_9

    iget v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mClickTimeout:I

    int-to-float v9, v9

    cmpg-float v9, v4, v9

    if-gez v9, :cond_9

    .line 277
    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPerformClick:Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;

    if-nez v7, :cond_8

    .line 278
    new-instance v7, Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;-><init>(Lcom/lsec/core/frame/ctrl/JSwitchButton;Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;)V

    iput-object v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPerformClick:Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;

    .line 280
    :cond_8
    iget-object v7, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mPerformClick:Lcom/lsec/core/frame/ctrl/JSwitchButton$PerformClick;

    invoke-virtual {p0, v7}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->post(Ljava/lang/Runnable;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 281
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->performClick()Z

    goto/16 :goto_3

    .line 283
    :cond_9
    iget-boolean v9, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mTurningOn:Z

    if-eqz v9, :cond_a

    :goto_6
    invoke-direct {p0, v8}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->startAnimation(Z)V

    goto/16 :goto_3

    :cond_a
    move v8, v7

    goto :goto_6

    .line 292
    .end local v0    # "action":I
    .end local v1    # "deltaX":F
    .end local v2    # "deltaY":F
    .end local v4    # "time":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto/16 :goto_2

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 240
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    .line 256
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    if-nez v0, :cond_0

    .line 304
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    invoke-direct {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->startAnimation(Z)V

    .line 305
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    if-eq v0, p1, :cond_1

    .line 209
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mChecked:Z

    .line 210
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    if-nez v0, :cond_0

    .line 211
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOnPos:F

    :goto_0
    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    .line 212
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnPos:F

    invoke-direct {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->getRealPos(F)F

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mRealPos:F

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->invalidate()V

    .line 217
    :cond_1
    return-void

    .line 211
    :cond_2
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mBtnOffPos:F

    goto :goto_0
.end method

.method public setCondition(Z)V
    .locals 0
    .param p1, "bConditon"    # Z

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mIsConditionSwitch:Z

    .line 180
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 165
    if-eqz p1, :cond_0

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setFocusable(Z)V

    .line 170
    :goto_0
    if-eqz p1, :cond_1

    const/16 v0, 0xff

    :goto_1
    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mAlpha:I

    .line 171
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setFocusable(Z)V

    goto :goto_0

    .line 170
    :cond_1
    const/16 v0, 0x7f

    goto :goto_1
.end method

.method public setIconName([Ljava/lang/String;)V
    .locals 9
    .param p1, "iconNames"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iconNames:[Ljava/lang/String;

    .line 134
    if-nez p1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bAttached:Z

    if-eqz v3, :cond_5

    .line 138
    iget-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    if-eqz v3, :cond_4

    .line 139
    new-array v3, v5, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable:[Landroid/graphics/drawable/Drawable;

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "i":I
    array-length v3, p1

    :goto_1
    if-lt v2, v3, :cond_3

    .line 150
    :cond_2
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->invalidate()V

    goto :goto_0

    .line 142
    :cond_3
    aget-object v1, p1, v2

    .line 143
    .local v1, "icon":Ljava/lang/String;
    if-gt v0, v8, :cond_2

    .line 146
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v6, v6, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v6, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 152
    .end local v0    # "i":I
    .end local v1    # "icon":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    aget-object v2, p1, v2

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Bottom:Landroid/graphics/drawable/Drawable;

    .line 153
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    aget-object v3, p1, v8

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Normal:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    aget-object v3, p1, v5

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Frame:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    const/4 v3, 0x3

    aget-object v3, p1, v3

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Mask:Landroid/graphics/drawable/Drawable;

    .line 156
    array-length v2, p1

    if-le v2, v6, :cond_0

    .line 157
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    aget-object v3, p1, v6

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v7}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->drawable_Bk:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 160
    :cond_5
    iput-boolean v8, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillSetIconName:Z

    goto :goto_0
.end method

.method public setParas([I)V
    .locals 0
    .param p1, "paras"    # [I

    .prologue
    .line 129
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->paras:[I

    .line 130
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1, "pressed"    # Z

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 124
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bIsCheckBox:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->updateBackground()V

    .line 126
    :cond_0
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 476
    const/4 v0, -0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iState:I

    .line 477
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillUpdateBackground:Z

    .line 478
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mStrDrawable:Ljava/lang/String;

    .line 479
    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    :cond_0
    if-nez p1, :cond_2

    .line 481
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 483
    :cond_2
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->updateBackground()V

    goto :goto_0
.end method

.method public updateBackground()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 488
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bAttached:Z

    if-nez v2, :cond_1

    .line 489
    iput-boolean v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillUpdateBackground:Z

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iput-boolean v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bWillUpdateBackground:Z

    .line 495
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iState:I

    .line 496
    .local v1, "iStateBak":I
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bStateClickDown:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isPressed()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->bFocusAble:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 497
    :cond_2
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iState:I

    .line 501
    :goto_1
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iState:I

    if-eq v1, v2, :cond_0

    .line 502
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mStrDrawable:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 503
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mStrDrawable:Ljava/lang/String;

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mStrDrawableFix:Ljava/lang/String;

    .line 504
    iget v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iState:I

    packed-switch v2, :pswitch_data_0

    .line 512
    :goto_2
    :pswitch_0
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mStrDrawableFix:Ljava/lang/String;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 513
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JSwitchButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 499
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    iput v3, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->iState:I

    goto :goto_1

    .line 508
    :pswitch_1
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mStrDrawableFix:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_p"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lsec/core/frame/ctrl/JSwitchButton;->mStrDrawableFix:Ljava/lang/String;

    goto :goto_2

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
