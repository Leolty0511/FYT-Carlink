.class public Lcom/syu/bt/ctrl/JSwitchButon2;
.super Landroid/view/View;
.source "JSwitchButon2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;
    }
.end annotation


# instance fields
.field final MAX_VELOCITYX:I

.field final MIN_FLING:I

.field public i_step:I

.field isChang:Z

.field isFling:Z

.field mDisx:F

.field public mDisx_p:F

.field mDownx:F

.field mDowny:F

.field mGenericMotionListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field mLastX:F

.field mLastY:F

.field mLisenter:Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;

.field public mRunnableInvalidate:Ljava/lang/Runnable;

.field mSliderRect:Landroid/graphics/Rect;

.field public mSwitch:Z

.field mSwitchHeight:I

.field mSwitchOff:Landroid/graphics/drawable/Drawable;

.field mSwitchOn:Landroid/graphics/drawable/Drawable;

.field mSwitchSlider:Landroid/graphics/drawable/Drawable;

.field mSwitchWidth:I

.field maxMoveLen:I

.field moved:Z

.field realSize:[I

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUiItem;)V
    .locals 12
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "item"    # Lcom/lsec/core/frame/app/MyUiItem;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    iget-object v3, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v3, v3, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    iput-boolean v7, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    .line 28
    const/4 v3, 0x6

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    .line 31
    iput-boolean v8, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->isChang:Z

    .line 32
    iput-boolean v7, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->moved:Z

    .line 36
    const-string v3, ""

    iput-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->tag:Ljava/lang/String;

    .line 38
    const/16 v3, 0x12

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->MIN_FLING:I

    .line 39
    const/16 v3, 0x1f4

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->MAX_VELOCITYX:I

    .line 41
    new-instance v3, Lcom/syu/bt/ctrl/JSwitchButon2$1;

    invoke-direct {v3, p0}, Lcom/syu/bt/ctrl/JSwitchButon2$1;-><init>(Lcom/syu/bt/ctrl/JSwitchButon2;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mGenericMotionListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 123
    const/4 v3, 0x0

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx_p:F

    .line 124
    iput v8, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->i_step:I

    .line 142
    new-instance v3, Lcom/syu/bt/ctrl/JSwitchButon2$2;

    invoke-direct {v3, p0}, Lcom/syu/bt/ctrl/JSwitchButon2$2;-><init>(Lcom/syu/bt/ctrl/JSwitchButon2;)V

    iput-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mRunnableInvalidate:Ljava/lang/Runnable;

    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, "pointer":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 66
    .local v1, "on":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 68
    .local v0, "off":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v3

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v3

    array-length v3, v3

    if-le v3, v10, :cond_0

    .line 70
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v4

    aget v4, v4, v7

    aput v4, v3, v7

    .line 71
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v4

    aget v4, v4, v8

    aput v4, v3, v8

    .line 72
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v4

    aget v4, v4, v9

    aput v4, v3, v9

    .line 73
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    const/4 v4, 0x3

    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v5

    const/4 v6, 0x3

    aget v5, v5, v6

    aput v5, v3, v4

    .line 74
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    const/4 v4, 0x4

    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v5

    const/4 v6, 0x4

    aget v5, v5, v6

    aput v5, v3, v4

    .line 75
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getPara()[I

    move-result-object v4

    aget v4, v4, v10

    aput v4, v3, v10

    .line 79
    :cond_0
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 80
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    iget-object v4, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v4, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 81
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-le v3, v8, :cond_1

    .line 82
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v4, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 83
    invoke-virtual {p2}, Lcom/lsec/core/frame/app/MyUiItem;->getStrDrawableExtra()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {p1, v3, v4, v11}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    :cond_1
    if-eqz v2, :cond_2

    .line 88
    iput-object v2, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchSlider:Landroid/graphics/drawable/Drawable;

    .line 90
    :cond_2
    if-eqz v1, :cond_3

    .line 91
    iput-object v1, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOn:Landroid/graphics/drawable/Drawable;

    .line 93
    :cond_3
    if-eqz v0, :cond_4

    .line 94
    iput-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOff:Landroid/graphics/drawable/Drawable;

    .line 96
    :cond_4
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOff:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 98
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    aget v3, v3, v9

    if-lez v3, :cond_8

    .line 99
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    aget v3, v3, v9

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchWidth:I

    .line 104
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOn:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 106
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    aget v3, v3, v10

    if-lez v3, :cond_9

    .line 107
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    aget v3, v3, v10

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchHeight:I

    .line 114
    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchSlider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 116
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    aget v3, v3, v7

    if-lez v3, :cond_a

    .line 117
    iget v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchWidth:I

    iget-object v4, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    aget v4, v4, v7

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->maxMoveLen:I

    .line 122
    :cond_7
    :goto_2
    return-void

    .line 101
    :cond_8
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOff:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchWidth:I

    goto :goto_0

    .line 109
    :cond_9
    iget-object v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOn:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchHeight:I

    goto :goto_1

    .line 119
    :cond_a
    iget v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchWidth:I

    iget-object v4, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchSlider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->maxMoveLen:I

    goto :goto_2
.end method


# virtual methods
.method public getSwitchTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->tag:Ljava/lang/String;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 157
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 158
    invoke-virtual {p0, p0}, Lcom/syu/bt/ctrl/JSwitchButon2;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSwitchButon2;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mGenericMotionListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 160
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mLisenter:Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Lcom/syu/bt/ctrl/JSwitchButon2$3;

    invoke-direct {v0, p0}, Lcom/syu/bt/ctrl/JSwitchButon2$3;-><init>(Lcom/syu/bt/ctrl/JSwitchButon2;)V

    iput-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mLisenter:Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;

    .line 173
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 127
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->maxMoveLen:I

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx_p:F

    .line 128
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    .line 129
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mLisenter:Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;

    if-eqz v0, :cond_0

    .line 130
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mLisenter:Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;

    invoke-interface {v0}, Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;->onSwitchOn()V

    .line 135
    :cond_0
    :goto_2
    iput v1, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->i_step:I

    .line 136
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mRunnableInvalidate:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-static {v1, v0, v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 140
    return-void

    .line 127
    :cond_1
    iget v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->maxMoveLen:I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 128
    goto :goto_1

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mLisenter:Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;

    invoke-interface {v0}, Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;->onSwitchOff()V

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 224
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 225
    const/high16 v12, 0x3f800000    # 1.0f

    .line 226
    .local v12, "scale":F
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->isChang:Z

    .line 227
    .local v6, "changed":Z
    if-eqz v6, :cond_0

    .line 228
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/syu/bt/ctrl/JSwitchButon2;->isChang:Z

    .line 231
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/ctrl/JSwitchButon2;->getRight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/ctrl/JSwitchButon2;->getLeft()I

    move-result v20

    sub-int v5, v19, v20

    .line 232
    .local v5, "availableWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/ctrl/JSwitchButon2;->getBottom()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/syu/bt/ctrl/JSwitchButon2;->getTop()I

    move-result v20

    sub-int v4, v19, v20

    .line 234
    .local v4, "availableHeight":I
    div-int/lit8 v17, v5, 0x2

    .line 235
    .local v17, "x":I
    div-int/lit8 v18, v4, 0x2

    .line 237
    .local v18, "y":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOn:Landroid/graphics/drawable/Drawable;

    .line 238
    .local v9, "mDial":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 239
    .local v16, "w":I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 240
    .local v7, "h":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v19, v19, v20

    if-lez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v19, v19, v20

    if-lez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget v19, v19, v20

    if-lez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget v19, v19, v20

    if-lez v19, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget v16, v19, v20

    .line 242
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x5

    aget v7, v19, v20

    .line 244
    :cond_1
    :goto_2
    const/4 v13, 0x0

    .line 245
    .local v13, "scaled":Z
    move-object/from16 v0, p0

    iget v11, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx:F

    .line 247
    .local v11, "sDisx":F
    move/from16 v0, v16

    if-lt v5, v0, :cond_2

    if-ge v4, v7, :cond_3

    .line 248
    :cond_2
    const/4 v13, 0x1

    .line 249
    int-to-float v0, v5

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    int-to-float v0, v4

    move/from16 v20, v0

    int-to-float v0, v7

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 252
    div-float/2addr v11, v12

    .line 255
    :cond_3
    div-int/lit8 v19, v16, 0x2

    sub-int v19, v17, v19

    div-int/lit8 v20, v7, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v16, 0x2

    add-int v21, v21, v17

    div-int/lit8 v22, v7, 0x2

    add-int v22, v22, v18

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchSlider:Landroid/graphics/drawable/Drawable;

    .line 260
    .local v14, "slider":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    .line 261
    .local v15, "sw":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v19, v19, v20

    if-lez v19, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v15, v19, v20

    .line 265
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSliderRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 266
    new-instance v19, Landroid/graphics/Rect;

    div-int/lit8 v20, v16, 0x2

    sub-int v20, v17, v20

    div-int/lit8 v21, v7, 0x2

    sub-int v21, v18, v21

    div-int/lit8 v22, v16, 0x2

    sub-int v22, v17, v22

    add-int v22, v22, v15

    div-int/lit8 v23, v7, 0x2

    add-int v23, v23, v18

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/syu/bt/ctrl/JSwitchButon2;->mSliderRect:Landroid/graphics/Rect;

    .line 267
    :cond_5
    const-string v19, "gan"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, " 22 JSwitchButon2 onDraw  mDisx = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " x = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " y = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " w = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " sw = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-object/from16 v0, p0

    iget v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx:F

    move/from16 v19, v0

    const/16 v20, 0x0

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSliderRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v19, v19, v11

    move/from16 v0, v19

    float-to-int v8, v0

    .line 270
    .local v8, "left":I
    div-int/lit8 v19, v16, 0x2

    add-int v19, v19, v17

    sub-int v19, v19, v15

    div-int/lit8 v20, v16, 0x2

    sub-int v20, v17, v20

    move/from16 v0, v20

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v20

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 271
    add-int v10, v8, v15

    .line 272
    .local v10, "right":I
    div-int/lit8 v19, v16, 0x2

    add-int v19, v19, v17

    move/from16 v0, v19

    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSliderRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    div-int/lit8 v20, v7, 0x2

    sub-int v20, v18, v20

    div-int/lit8 v21, v7, 0x2

    add-int v21, v21, v18

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v8, v1, v10, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 276
    .end local v8    # "left":I
    .end local v10    # "right":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSliderRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 277
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 278
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 280
    if-eqz v13, :cond_7

    .line 281
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 283
    :cond_7
    return-void

    .line 237
    .end local v7    # "h":I
    .end local v9    # "mDial":Landroid/graphics/drawable/Drawable;
    .end local v11    # "sDisx":F
    .end local v13    # "scaled":Z
    .end local v14    # "slider":Landroid/graphics/drawable/Drawable;
    .end local v15    # "sw":I
    .end local v16    # "w":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOff:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 241
    .restart local v7    # "h":I
    .restart local v9    # "mDial":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "w":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v16, v19, v20

    goto/16 :goto_1

    .line 242
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/syu/bt/ctrl/JSwitchButon2;->realSize:[I

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget v7, v19, v20

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v9, 0x0

    .line 201
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 202
    .local v5, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 203
    .local v6, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 204
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 206
    .local v2, "heightSize":I
    const/high16 v0, 0x3f800000    # 1.0f

    .line 207
    .local v0, "hScale":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 209
    .local v4, "vScale":F
    if-eqz v5, :cond_0

    iget v7, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchWidth:I

    if-ge v6, v7, :cond_0

    .line 210
    int-to-float v7, v6

    iget v8, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchWidth:I

    int-to-float v8, v8

    div-float v0, v7, v8

    .line 213
    :cond_0
    if-eqz v1, :cond_1

    iget v7, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchHeight:I

    if-ge v2, v7, :cond_1

    .line 214
    int-to-float v7, v2

    iget v8, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchHeight:I

    int-to-float v8, v8

    div-float v4, v7, v8

    .line 217
    :cond_1
    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 219
    .local v3, "scale":F
    iget v7, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchWidth:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    invoke-static {v7, p1, v9}, Lcom/syu/bt/ctrl/JSwitchButon2;->resolveSizeAndState(III)I

    move-result v7

    iget v8, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchHeight:I

    int-to-float v8, v8

    mul-float/2addr v8, v3

    float-to-int v8, v8

    invoke-static {v8, p2, v9}, Lcom/syu/bt/ctrl/JSwitchButon2;->resolveSizeAndState(III)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/syu/bt/ctrl/JSwitchButon2;->setMeasuredDimension(II)V

    .line 220
    return-void
.end method

.method public setOnSwitchStateLisenter(Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;)V
    .locals 0
    .param p1, "mLisenter"    # Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mLisenter:Lcom/syu/bt/ctrl/JSwitchButon2$OnSwitchStateLisenter;

    .line 287
    return-void
.end method

.method public setSwitch(Z)V
    .locals 1
    .param p1, "mSwitch"    # Z

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    if-eq p1, v0, :cond_0

    .line 192
    iput-boolean p1, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitch:Z

    .line 193
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->maxMoveLen:I

    :goto_0
    int-to-float v0, v0

    iput v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mDisx:F

    .line 194
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSwitchButon2;->invalidate()V

    .line 196
    :cond_0
    return-void

    .line 193
    :cond_1
    iget v0, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->maxMoveLen:I

    neg-int v0, v0

    goto :goto_0
.end method

.method public setSwitchBk(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "on"    # Landroid/graphics/drawable/Drawable;
    .param p3, "off"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->tag:Ljava/lang/String;

    .line 181
    if-eqz p2, :cond_0

    .line 182
    iput-object p2, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOn:Landroid/graphics/drawable/Drawable;

    .line 184
    :cond_0
    if-eqz p3, :cond_1

    .line 185
    iput-object p3, p0, Lcom/syu/bt/ctrl/JSwitchButon2;->mSwitchOff:Landroid/graphics/drawable/Drawable;

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/ctrl/JSwitchButon2;->invalidate()V

    .line 188
    return-void
.end method
