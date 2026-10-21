.class public Lcom/syu/bt/ctrl/CircleMenuLayout;
.super Landroid/view/ViewGroup;
.source "CircleMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;,
        Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;,
        Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;
    }
.end annotation


# static fields
.field private static final FLINGABLE_VALUE:I = 0x12c

.field private static final NOCLICK_VALUE:I = 0x3

.field private static final RADIO_DEFAULT_CHILD_DIMENSION:F = 0.2f

.field private static final RADIO_PADDING_LAYOUT:F = 0.083333336f


# instance fields
.field private RADIO_DEFAULT_CENTERITEM_DIMENSION:F

.field bkDrawable:Landroid/graphics/drawable/Drawable;

.field circle:Lcom/syu/bt/ctrl/CircleMenuView;

.field private isFling:Z

.field private mDownTime:J

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

.field private mFlingRunnable:Lcom/syu/bt/ctrl/CircleMenuLayout$AutoFlingRunnable;

.field private mFlingableValue:I

.field private mItemImgs:[Ljava/lang/String;

.field private mLastX:F

.field private mLastY:F

.field private mMenuItemCount:I

.field private mOnMenuItemClickListener:Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;

.field private mOnMenuItemLongClickListener:Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;

.field private mPadding:F

.field private mRadius:I

.field private mStartAngle:D

.field private mTmpAngle:F

.field pointDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/syu/bt/ctrl/CircleMenuLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bk"    # Landroid/graphics/drawable/Drawable;
    .param p3, "point"    # Landroid/graphics/drawable/Drawable;
    .param p4, "resIds"    # [Ljava/lang/String;

    .prologue
    const/16 v8, 0x258

    const/16 v7, 0x190

    const/4 v6, -0x2

    .line 104
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    const v3, 0x3eaaaaab

    iput v3, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->RADIO_DEFAULT_CENTERITEM_DIMENSION:F

    .line 57
    const/16 v3, 0x12c

    iput v3, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mFlingableValue:I

    .line 65
    const-wide/high16 v4, 0x404b000000000000L    # 54.0

    iput-wide v4, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mStartAngle:D

    .line 410
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mDrawables:Ljava/util/HashMap;

    .line 106
    if-eqz p2, :cond_0

    .line 107
    iput-object p2, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->bkDrawable:Landroid/graphics/drawable/Drawable;

    .line 109
    :cond_0
    if-eqz p3, :cond_1

    .line 110
    iput-object p3, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->pointDrawable:Landroid/graphics/drawable/Drawable;

    .line 115
    :cond_1
    invoke-virtual {p0, p4}, Lcom/syu/bt/ctrl/CircleMenuLayout;->setMenuItemIconsAndTexts([Ljava/lang/String;)V

    .line 117
    new-instance v3, Lcom/syu/bt/ctrl/CircleMenuView;

    invoke-direct {v3, p1, p3}, Lcom/syu/bt/ctrl/CircleMenuView;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    .line 120
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 121
    .local v0, "laParams":Landroid/view/ViewGroup$LayoutParams;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "layout":Landroid/widget/LinearLayout;
    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 124
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    const/16 v4, 0x780

    if-lt v3, v4, :cond_2

    .line 125
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    invoke-virtual {v3, v2}, Lcom/syu/bt/ctrl/CircleMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const/16 v3, 0x271a

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 131
    invoke-virtual {p0, v1, v0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object v3, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    return-void

    .line 127
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->RADIO_DEFAULT_CENTERITEM_DIMENSION:F

    .line 57
    const/16 v0, 0x12c

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mFlingableValue:I

    .line 65
    const-wide/high16 v0, 0x404b000000000000L    # 54.0

    iput-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mStartAngle:D

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mDrawables:Ljava/util/HashMap;

    .line 95
    invoke-virtual {p0, v2, v2, v2, v2}, Lcom/syu/bt/ctrl/CircleMenuLayout;->setPadding(IIII)V

    .line 96
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/ctrl/CircleMenuLayout;Z)V
    .locals 0

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->isFling:Z

    return-void
.end method

.method static synthetic access$1(Lcom/syu/bt/ctrl/CircleMenuLayout;)D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mStartAngle:D

    return-wide v0
.end method

.method static synthetic access$2(Lcom/syu/bt/ctrl/CircleMenuLayout;D)V
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mStartAngle:D

    return-void
.end method

.method static synthetic access$3(Lcom/syu/bt/ctrl/CircleMenuLayout;)Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mOnMenuItemClickListener:Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/syu/bt/ctrl/CircleMenuLayout;)Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mOnMenuItemLongClickListener:Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;

    return-object v0
.end method

.method private addMenuItems()V
    .locals 12

    .prologue
    const/16 v11, 0x78

    const/16 v10, 0x50

    const/4 v6, -0x2

    .line 412
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 414
    .local v3, "laParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v6, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mMenuItemCount:I

    if-lt v1, v6, :cond_0

    .line 468
    return-void

    .line 416
    :cond_0
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 418
    .local v0, "btn":Landroid/widget/Button;
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 419
    .local v5, "linearLayout":Landroid/widget/LinearLayout;
    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 420
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v6

    iget-object v6, v6, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v7, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mItemImgs:[Ljava/lang/String;

    aget-object v7, v7, v1

    iget-object v8, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mDrawables:Ljava/util/HashMap;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 424
    iget-object v6, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mItemImgs:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getButtonId(Ljava/lang/String;)I

    move-result v2

    .line 425
    .local v2, "j":I
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setId(I)V

    .line 426
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 427
    new-instance v6, Lcom/syu/bt/ctrl/CircleMenuLayout$1;

    invoke-direct {v6, p0, v2}, Lcom/syu/bt/ctrl/CircleMenuLayout$1;-><init>(Lcom/syu/bt/ctrl/CircleMenuLayout;I)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    new-instance v6, Lcom/syu/bt/ctrl/CircleMenuLayout$2;

    invoke-direct {v6, p0, v2}, Lcom/syu/bt/ctrl/CircleMenuLayout$2;-><init>(Lcom/syu/bt/ctrl/CircleMenuLayout;I)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 457
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    const/16 v7, 0x780

    if-lt v6, v7, :cond_1

    .line 458
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 462
    .local v4, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    invoke-virtual {p0, v5, v3}, Lcom/syu/bt/ctrl/CircleMenuLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 460
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    goto :goto_1
.end method

.method private getAngle(FF)F
    .locals 10
    .param p1, "xTouch"    # F
    .param p2, "yTouch"    # F

    .prologue
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 360
    float-to-double v4, p1

    iget v6, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    int-to-double v6, v6

    div-double/2addr v6, v8

    sub-double v0, v4, v6

    .line 361
    .local v0, "x":D
    float-to-double v4, p2

    iget v6, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    int-to-double v6, v6

    div-double/2addr v6, v8

    sub-double v2, v4, v6

    .line 363
    .local v2, "y":D
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    div-double v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v6

    double-to-float v4, v4

    return v4
.end method

.method private getDefaultWidth()I
    .locals 4

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 536
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 537
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 538
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private getQuadrant(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 374
    iget v2, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p1, v2

    float-to-int v0, v2

    .line 375
    .local v0, "tmpX":I
    iget v2, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, p2, v2

    float-to-int v1, v2

    .line 376
    .local v1, "tmpY":I
    if-ltz v0, :cond_1

    .line 377
    if-ltz v1, :cond_0

    const/4 v2, 0x4

    .line 379
    :goto_0
    return v2

    .line 377
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 379
    :cond_1
    if-ltz v1, :cond_2

    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 295
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 297
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 341
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getButtonId(Ljava/lang/String;)I
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x27a2

    .line 479
    const-string v1, "bt_dial0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v0

    .line 481
    :cond_1
    const-string v1, "bt_dial1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 482
    const/16 v0, 0x27a3

    goto :goto_0

    .line 483
    :cond_2
    const-string v1, "bt_dial2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 484
    const/16 v0, 0x27a4

    goto :goto_0

    .line 485
    :cond_3
    const-string v1, "bt_dial3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 486
    const/16 v0, 0x27a5

    goto :goto_0

    .line 487
    :cond_4
    const-string v1, "bt_dial4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 488
    const/16 v0, 0x27a6

    goto :goto_0

    .line 489
    :cond_5
    const-string v1, "bt_dial5"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 490
    const/16 v0, 0x27a7

    goto :goto_0

    .line 491
    :cond_6
    const-string v1, "bt_dial6"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 492
    const/16 v0, 0x27a8

    goto :goto_0

    .line 493
    :cond_7
    const-string v1, "bt_dial7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 494
    const/16 v0, 0x27a9

    goto :goto_0

    .line 495
    :cond_8
    const-string v1, "bt_dial8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 496
    const/16 v0, 0x27aa

    goto :goto_0

    .line 497
    :cond_9
    const-string v1, "bt_dial9"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 498
    const/16 v0, 0x27ab

    goto :goto_0

    .line 499
    :cond_a
    const-string v1, "bt_dialx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 500
    const/16 v0, 0x27ac

    goto :goto_0

    .line 501
    :cond_b
    const-string v1, "bt_dialj"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 502
    const/16 v0, 0x27ad

    goto :goto_0

    .line 503
    :cond_c
    const-string v1, "bt_dialdial"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 504
    const/16 v0, 0x27c3

    goto/16 :goto_0

    .line 505
    :cond_d
    const-string v1, "bt_dialdel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const/16 v0, 0x27b3

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 18
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget v9, v0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    .line 251
    .local v9, "layoutRadius":I
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getChildCount()I

    move-result v7

    .line 254
    .local v7, "childCount":I
    int-to-float v13, v9

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v13, v14

    float-to-int v5, v13

    .line 255
    .local v5, "cWidth":I
    const/16 v13, 0x168

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getChildCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    div-int/2addr v13, v14

    int-to-float v4, v13

    .line 256
    .local v4, "angleDelay":F
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mStartAngle:D

    const-wide v16, 0x4076800000000000L    # 360.0

    rem-double v2, v14, v16

    .line 257
    .local v2, "angle":D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v7, :cond_0

    .line 279
    return-void

    .line 258
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 259
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v13

    const/16 v14, 0x271a

    if-ne v13, v14, :cond_2

    .line 260
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v13

    invoke-virtual {v13}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    const/16 v14, 0x780

    if-lt v13, v14, :cond_1

    .line 261
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x258

    const/16 v16, 0x258

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 257
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x190

    const/16 v16, 0x190

    move/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 264
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v13

    const/16 v14, 0x27b3

    if-ne v13, v14, :cond_3

    .line 265
    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    sub-double/2addr v2, v14

    .line 266
    int-to-float v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    sub-float v11, v13, v14

    .line 267
    .local v11, "tmp":F
    div-int/lit8 v13, v9, 0x2

    float-to-double v14, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const/high16 v16, 0x3f000000    # 0.5f

    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int v10, v13, v14

    .line 268
    .local v10, "left":I
    div-int/lit8 v13, v9, 0x2

    float-to-double v14, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const/high16 v16, 0x3f000000    # 0.5f

    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int v12, v13, v14

    .line 269
    .local v12, "top":I
    add-int v13, v10, v5

    add-int v14, v12, v5

    invoke-virtual {v6, v10, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 270
    float-to-double v14, v4

    add-double/2addr v2, v14

    .line 271
    goto :goto_1

    .line 272
    .end local v10    # "left":I
    .end local v11    # "tmp":F
    .end local v12    # "top":I
    :cond_3
    int-to-float v13, v9

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    sub-float v11, v13, v14

    .line 273
    .restart local v11    # "tmp":F
    div-int/lit8 v13, v9, 0x2

    float-to-double v14, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const/high16 v16, 0x3f000000    # 0.5f

    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int v10, v13, v14

    .line 274
    .restart local v10    # "left":I
    div-int/lit8 v13, v9, 0x2

    float-to-double v14, v11

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    const/high16 v16, 0x3f000000    # 0.5f

    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v14, v14

    add-int v12, v13, v14

    .line 275
    .restart local v12    # "top":I
    add-int v13, v10, v5

    add-int v14, v12, v5

    invoke-virtual {v6, v10, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 276
    float-to-double v14, v4

    add-double/2addr v2, v14

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 141
    const/4 v9, 0x0

    .line 142
    .local v9, "resWidth":I
    const/4 v8, 0x0

    .line 147
    .local v8, "resHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 148
    .local v10, "width":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 150
    .local v11, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 151
    .local v4, "height":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 156
    .local v5, "heightMode":I
    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_0

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v5, v12, :cond_4

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getSuggestedMinimumWidth()I

    move-result v9

    .line 160
    if-nez v9, :cond_1

    invoke-direct {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getDefaultWidth()I

    move-result v9

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getSuggestedMinimumHeight()I

    move-result v8

    .line 164
    if-nez v8, :cond_2

    invoke-direct {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getDefaultWidth()I

    move-result v8

    .line 170
    :cond_2
    :goto_0
    iget-object v12, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->bkDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    .line 171
    iget-object v12, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->bkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 172
    iget-object v12, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->bkDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 173
    const-string v12, "HJT"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "resWidth:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "resHeight:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v12

    invoke-virtual {v12}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    const/16 v13, 0x780

    if-lt v12, v13, :cond_3

    .line 176
    const/16 v9, 0x258

    .line 177
    const/16 v8, 0x258

    .line 181
    :cond_3
    invoke-virtual {p0, v9, v8}, Lcom/syu/bt/ctrl/CircleMenuLayout;->setMeasuredDimension(II)V

    .line 184
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getMeasuredHeight()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    .line 185
    const-string v12, "HJT"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "mRadius:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "resWidth:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "resHeight:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getChildCount()I

    move-result v3

    .line 189
    .local v3, "count":I
    iget v12, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    int-to-float v12, v12

    const v13, 0x3e4ccccd    # 0.2f

    mul-float/2addr v12, v13

    float-to-int v2, v12

    .line 191
    .local v2, "childSize":I
    const/high16 v1, 0x40000000    # 2.0f

    .line 194
    .local v1, "childMode":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v3, :cond_5

    .line 208
    const v12, 0x3daaaaab

    iget v13, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    iput v12, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mPadding:F

    .line 209
    return-void

    .line 167
    .end local v1    # "childMode":I
    .end local v2    # "childSize":I
    .end local v3    # "count":I
    .end local v6    # "i":I
    :cond_4
    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v9, v8

    goto/16 :goto_0

    .line 195
    .restart local v1    # "childMode":I
    .restart local v2    # "childSize":I
    .restart local v3    # "count":I
    .restart local v6    # "i":I
    :cond_5
    invoke-virtual {p0, v6}, Lcom/syu/bt/ctrl/CircleMenuLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_6

    .line 194
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 202
    :cond_6
    const/4 v7, -0x1

    .line 204
    .local v7, "makeMeasureSpec":I
    iget v12, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mRadius:I

    int-to-float v12, v12

    iget v13, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->RADIO_DEFAULT_CENTERITEM_DIMENSION:F

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v12, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 205
    invoke-virtual {v0, v7, v7}, Landroid/view/View;->measure(II)V

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public setCircleAngle(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->circle:Lcom/syu/bt/ctrl/CircleMenuView;

    invoke-virtual {v0, p1}, Lcom/syu/bt/ctrl/CircleMenuView;->reDrawPicByNum(I)V

    .line 475
    :cond_0
    return-void
.end method

.method public setFlingableValue(I)V
    .locals 0
    .param p1, "mFlingableValue"    # I

    .prologue
    .line 517
    iput p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mFlingableValue:I

    .line 518
    return-void
.end method

.method public setMenuItemIconsAndTexts([Ljava/lang/String;)V
    .locals 1
    .param p1, "resIds"    # [Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mItemImgs:[Ljava/lang/String;

    .line 391
    if-nez p1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 394
    :cond_0
    array-length v0, p1

    iput v0, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mMenuItemCount:I

    .line 395
    invoke-direct {p0}, Lcom/syu/bt/ctrl/CircleMenuLayout;->addMenuItems()V

    goto :goto_0
.end method

.method public setMenuItemLayoutId(I)V
    .locals 0
    .param p1, "mMenuItemLayoutId"    # I

    .prologue
    .line 405
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "mOnMenuItemClickListener"    # Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mOnMenuItemClickListener:Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemClickListener;

    .line 238
    return-void
.end method

.method public setOnMenuItemLongClickListener(Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;)V
    .locals 0
    .param p1, "mOnMenuItemLongClickListener"    # Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mOnMenuItemLongClickListener:Lcom/syu/bt/ctrl/CircleMenuLayout$OnMenuItemLongClickListener;

    .line 243
    return-void
.end method

.method public setPadding(F)V
    .locals 0
    .param p1, "mPadding"    # F

    .prologue
    .line 526
    iput p1, p0, Lcom/syu/bt/ctrl/CircleMenuLayout;->mPadding:F

    .line 527
    return-void
.end method
