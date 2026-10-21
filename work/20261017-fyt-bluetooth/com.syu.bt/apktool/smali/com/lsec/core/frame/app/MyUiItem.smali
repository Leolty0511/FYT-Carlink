.class public Lcom/lsec/core/frame/app/MyUiItem;
.super Ljava/lang/Object;
.source "MyUiItem.java"


# static fields
.field public static final FORWORD_Down:I = -0x4

.field public static final FORWORD_Left:I = -0x1

.field public static final FORWORD_Right:I = -0x3

.field public static final FORWORD_Up:I = -0x2


# instance fields
.field mColor:[I

.field mColorBk:[I

.field mId:I

.field public mIntDirs:[I

.field public mIntPrevNext:[I

.field mItemParent:Lcom/lsec/core/frame/app/MyUiItem;

.field public mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

.field mLongClick:Z

.field mPadding:[I

.field mPara:[I

.field public mPlusPadding:I

.field mPos:[I

.field mPosIcon:[I

.field mPtConfig:Landroid/graphics/Point;

.field mRecMark:[I

.field public mRect:[Landroid/graphics/Rect;

.field public mSize:[Lcom/lsec/core/util/MySize;

.field mSizeCurrent:Lcom/lsec/core/util/MySize;

.field public mStrAnim:Ljava/lang/String;

.field mStrDrawable:Ljava/lang/String;

.field mStrDrawableExtra:[Ljava/lang/String;

.field mStrIcon:Ljava/lang/String;

.field mStrPara:[Ljava/lang/String;

.field mStrText:Ljava/lang/String;

.field mStrTextConf:Ljava/lang/String;

.field mType:I

.field mUiItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lsec/core/frame/app/MyUiItem;",
            ">;"
        }
    .end annotation
.end field

.field mVisible:I

.field mWeight:I

.field ui:Lcom/lsec/core/frame/app/MyUi;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/app/MyUi;I)V
    .locals 4
    .param p1, "ui"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "type"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mId:I

    .line 26
    iput v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mType:I

    .line 27
    iput v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mWeight:I

    .line 28
    iput v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mVisible:I

    .line 29
    new-instance v0, Lcom/lsec/core/util/MySize;

    const/16 v1, 0x64

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/lsec/core/util/MySize;-><init>(II)V

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mSizeCurrent:Lcom/lsec/core/util/MySize;

    .line 36
    iput-boolean v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mLongClick:Z

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mIntDirs:[I

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mIntPrevNext:[I

    .line 55
    iput v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPlusPadding:I

    .line 58
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    .line 59
    iput p2, p0, Lcom/lsec/core/frame/app/MyUiItem;->mType:I

    .line 60
    return-void
.end method


# virtual methods
.method public getAnim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrAnim:Ljava/lang/String;

    return-object v0
.end method

.method public getChildAt(I)Lcom/lsec/core/frame/app/MyUiItem;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mUiItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 444
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyUiItem;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 445
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mUiItems:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUiItem;->mUiItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 447
    .restart local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    :cond_0
    return-object v0
.end method

.method public getChildCount()I
    .locals 2

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 428
    .local v0, "iCnt":I
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mUiItems:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mUiItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 431
    :cond_0
    return v0
.end method

.method public getColor()[I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mColor:[I

    return-object v0
.end method

.method public getColorBk()[I
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mColorBk:[I

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mSizeCurrent:Lcom/lsec/core/util/MySize;

    iget v0, v0, Lcom/lsec/core/util/MySize;->height:I

    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mId:I

    return v0
.end method

.method public getLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method public getPadding()[I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPadding:[I

    return-object v0
.end method

.method public getPara()[I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPara:[I

    return-object v0
.end method

.method public getParaStr()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrPara:[Ljava/lang/String;

    return-object v0
.end method

.method public getParentItem()Lcom/lsec/core/frame/app/MyUiItem;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mItemParent:Lcom/lsec/core/frame/app/MyUiItem;

    return-object v0
.end method

.method public getPos()[I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPos:[I

    return-object v0
.end method

.method public getPosIcon()[I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    return-object v0
.end method

.method public getPtConfig()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPtConfig:Landroid/graphics/Point;

    return-object v0
.end method

.method public getRecMark()[I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mRecMark:[I

    return-object v0
.end method

.method public getRect()[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mRect:[Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSize()[Lcom/lsec/core/util/MySize;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mSize:[Lcom/lsec/core/util/MySize;

    return-object v0
.end method

.method public getStrDrawable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrDrawable:Ljava/lang/String;

    return-object v0
.end method

.method public getStrDrawableExtra()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrDrawableExtra:[Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextConf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrTextConf:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mType:I

    return v0
.end method

.method public getVisible()I
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mVisible:I

    return v0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mWeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mSizeCurrent:Lcom/lsec/core/util/MySize;

    iget v0, v0, Lcom/lsec/core/util/MySize;->width:I

    return v0
.end method

.method public isLongClick()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mLongClick:Z

    return v0
.end method

.method public isPadding()Z
    .locals 6

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "bRet":Z
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyUiItem;->getParaStr()[Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "strPara":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 99
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 107
    :cond_0
    :goto_1
    return v0

    .line 99
    :cond_1
    aget-object v2, v1, v3

    .line 100
    .local v2, "strTmp":Ljava/lang/String;
    const-string v5, "setPadding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    const/4 v0, 0x1

    .line 102
    goto :goto_1

    .line 99
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public setAnim(Ljava/lang/String;)V
    .locals 0
    .param p1, "anim"    # Ljava/lang/String;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrAnim:Ljava/lang/String;

    .line 460
    return-void
.end method

.method public setColor([I)V
    .locals 0
    .param p1, "values"    # [I

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mColor:[I

    .line 404
    :cond_0
    return-void
.end method

.method public varargs setColor([Ljava/lang/String;)V
    .locals 7
    .param p1, "color"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 388
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    array-length v5, p1

    if-le v5, v4, :cond_2

    :goto_1
    new-array v3, v4, [I

    .line 392
    .local v3, "values":[I
    const/4 v0, 0x0

    .line 393
    .local v0, "i":I
    array-length v5, p1

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_2
    if-lt v4, v5, :cond_3

    .line 398
    iput-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mColor:[I

    goto :goto_0

    .line 391
    .end local v1    # "i":I
    .end local v3    # "values":[I
    :cond_2
    array-length v4, p1

    goto :goto_1

    .line 393
    .restart local v1    # "i":I
    .restart local v3    # "values":[I
    :cond_3
    aget-object v2, p1, v4

    .line 394
    .local v2, "str":Ljava/lang/String;
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 395
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-static {v2}, Lcom/lsec/core/util/FuncUtils;->myParseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v1

    .line 393
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    :cond_4
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_3
.end method

.method public varargs setColorBk([Ljava/lang/String;)V
    .locals 7
    .param p1, "colorBk"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    .line 308
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    array-length v5, p1

    if-le v5, v4, :cond_2

    :goto_1
    new-array v3, v4, [I

    .line 312
    .local v3, "values":[I
    const/4 v0, 0x0

    .line 313
    .local v0, "i":I
    array-length v5, p1

    const/4 v4, 0x0

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_2
    if-lt v4, v5, :cond_3

    .line 318
    iput-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mColorBk:[I

    goto :goto_0

    .line 311
    .end local v1    # "i":I
    .end local v3    # "values":[I
    :cond_2
    array-length v4, p1

    goto :goto_1

    .line 313
    .restart local v1    # "i":I
    .restart local v3    # "values":[I
    :cond_3
    aget-object v2, p1, v4

    .line 314
    .local v2, "str":Ljava/lang/String;
    array-length v6, v3

    if-ge v1, v6, :cond_4

    .line 315
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-static {v2}, Lcom/lsec/core/util/FuncUtils;->myParseColor(Ljava/lang/String;)I

    move-result v6

    aput v6, v3, v1

    .line 313
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    :cond_4
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_3
.end method

.method public varargs setDirStr(Lcom/lsec/core/frame/app/MyUi;[Ljava/lang/String;)V
    .locals 5
    .param p1, "myUi"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "strDirs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x4

    .line 330
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 331
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v1, v4, :cond_0

    .line 332
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 338
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 333
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUiItem;->mIntDirs:[I

    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    .line 332
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .param p1, "h"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mSizeCurrent:Lcom/lsec/core/util/MySize;

    iput p1, v0, Lcom/lsec/core/util/MySize;->height:I

    .line 129
    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrIcon:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mId:I

    .line 301
    return-void
.end method

.method public setLongClick(Z)V
    .locals 0
    .param p1, "bLongClick"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mLongClick:Z

    .line 88
    return-void
.end method

.method public varargs setPadding([I)V
    .locals 8
    .param p1, "params"    # [I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 178
    if-eqz p1, :cond_1

    .line 179
    array-length v3, p1

    if-ne v3, v5, :cond_1

    .line 180
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPadding:[I

    if-nez v3, :cond_0

    .line 181
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPadding:[I

    .line 183
    :cond_0
    const/4 v0, 0x0

    .line 184
    .local v0, "i":I
    array-length v5, p1

    move v3, v4

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 190
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 184
    .restart local v1    # "i":I
    :cond_2
    aget v2, p1, v3

    .line 185
    .local v2, "val":I
    iget-object v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPadding:[I

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 186
    iget-object v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPadding:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v2, v4}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v6, v1

    .line 184
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public varargs setPara([I)V
    .locals 6
    .param p1, "params"    # [I

    .prologue
    .line 132
    if-eqz p1, :cond_1

    .line 133
    array-length v3, p1

    if-lez v3, :cond_1

    .line 134
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPara:[I

    if-nez v3, :cond_0

    .line 135
    array-length v3, p1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPara:[I

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 138
    .local v0, "i":I
    array-length v4, p1

    const/4 v3, 0x0

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v3, v4, :cond_2

    .line 142
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 138
    .restart local v1    # "i":I
    :cond_2
    aget v2, p1, v3

    .line 139
    .local v2, "val":I
    iget-object v5, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPara:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput v2, v5, v1

    .line 138
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public varargs setParaStr([Ljava/lang/String;)V
    .locals 0
    .param p1, "strPara"    # [Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrPara:[Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setParentItem(Lcom/lsec/core/frame/app/MyUiItem;)V
    .locals 0
    .param p1, "item"    # Lcom/lsec/core/frame/app/MyUiItem;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mItemParent:Lcom/lsec/core/frame/app/MyUiItem;

    .line 64
    return-void
.end method

.method public varargs setPos([I)V
    .locals 8
    .param p1, "params"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 197
    if-eqz p1, :cond_1

    .line 198
    array-length v3, p1

    if-ne v3, v5, :cond_1

    .line 199
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPos:[I

    if-nez v3, :cond_0

    .line 200
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPos:[I

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 203
    .local v0, "i":I
    array-length v5, p1

    move v3, v4

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 209
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 203
    .restart local v1    # "i":I
    :cond_2
    aget v2, p1, v3

    .line 204
    .local v2, "val":I
    iget-object v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPos:[I

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 205
    iget-object v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPos:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v2, v4}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v6, v1

    .line 203
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public varargs setPosIcon([I)V
    .locals 8
    .param p1, "params"    # [I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 212
    if-eqz p1, :cond_1

    .line 213
    array-length v3, p1

    if-ne v3, v5, :cond_1

    .line 214
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    if-nez v3, :cond_0

    .line 215
    new-array v3, v5, [I

    iput-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    .line 217
    :cond_0
    const/4 v0, 0x0

    .line 218
    .local v0, "i":I
    array-length v5, p1

    move v3, v4

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 223
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    const/4 v5, 0x2

    aget v6, v3, v5

    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    aget v4, v7, v4

    add-int/2addr v4, v6

    aput v4, v3, v5

    .line 224
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    const/4 v4, 0x3

    aget v5, v3, v4

    iget-object v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 227
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 218
    .restart local v1    # "i":I
    :cond_2
    aget v2, p1, v3

    .line 219
    .local v2, "val":I
    iget-object v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 220
    iget-object v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPosIcon:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v2, v4}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v6, v1

    .line 218
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public varargs setPrevNextStr(Lcom/lsec/core/frame/app/MyUi;[Ljava/lang/String;)V
    .locals 5
    .param p1, "myUi"    # Lcom/lsec/core/frame/app/MyUi;
    .param p2, "strPrevNexts"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    .line 341
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 342
    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v1, v4, :cond_0

    .line 343
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 357
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 344
    .restart local v0    # "i":I
    :cond_1
    const-string v1, "Left"

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mIntPrevNext:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 343
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :cond_3
    const-string v1, "Up"

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 347
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mIntPrevNext:[I

    const/4 v2, -0x2

    aput v2, v1, v0

    goto :goto_1

    .line 348
    :cond_4
    const-string v1, "Right"

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 349
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mIntPrevNext:[I

    const/4 v2, -0x3

    aput v2, v1, v0

    goto :goto_1

    .line 350
    :cond_5
    const-string v1, "Down"

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 351
    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mIntPrevNext:[I

    const/4 v2, -0x4

    aput v2, v1, v0

    goto :goto_1

    .line 352
    :cond_6
    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    iget-object v2, p0, Lcom/lsec/core/frame/app/MyUiItem;->mIntPrevNext:[I

    iget-object v1, p1, Lcom/lsec/core/frame/app/MyUi;->mCtrlId:Ljava/util/HashMap;

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v2, v0

    goto :goto_1
.end method

.method public varargs setRecMark([I)V
    .locals 8
    .param p1, "params"    # [I

    .prologue
    const/4 v4, 0x0

    .line 153
    if-eqz p1, :cond_1

    .line 154
    array-length v3, p1

    if-lez v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mRecMark:[I

    if-nez v3, :cond_0

    .line 156
    array-length v3, p1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/lsec/core/frame/app/MyUiItem;->mRecMark:[I

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, "i":I
    array-length v5, p1

    move v3, v4

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v3, v5, :cond_2

    .line 163
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 159
    .restart local v1    # "i":I
    :cond_2
    aget v2, p1, v3

    .line 160
    .local v2, "val":I
    iget-object v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mRecMark:[I

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v2, v4}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v6, v1

    .line 159
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public varargs setRect(Landroid/graphics/Point;[I)V
    .locals 11
    .param p1, "ptBase"    # Landroid/graphics/Point;
    .param p2, "params"    # [I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 263
    if-eqz p2, :cond_3

    .line 264
    array-length v4, p2

    if-eqz v4, :cond_3

    .line 265
    const/4 v4, 0x4

    new-array v2, v4, [I

    .line 266
    .local v2, "iData":[I
    const/4 v0, 0x0

    .line 267
    .local v0, "i":I
    array-length v6, p2

    move v4, v5

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v4, v6, :cond_4

    .line 272
    new-instance v4, Landroid/graphics/Point;

    aget v6, v2, v5

    aget v7, v2, v9

    invoke-direct {v4, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPtConfig:Landroid/graphics/Point;

    .line 273
    if-eqz p1, :cond_0

    .line 274
    aget v4, v2, v5

    iget v6, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v6

    aput v4, v2, v5

    .line 275
    aget v4, v2, v9

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v6

    aput v4, v2, v9

    .line 278
    :cond_0
    aget v4, v2, v9

    iget v6, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPlusPadding:I

    add-int/2addr v4, v6

    aput v4, v2, v9

    .line 279
    iget v4, p0, Lcom/lsec/core/frame/app/MyUiItem;->mType:I

    const/16 v6, 0x10

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/lsec/core/frame/app/MyUiItem;->mType:I

    const/16 v6, 0xf

    if-ne v4, v6, :cond_2

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v4

    if-lez v4, :cond_2

    .line 281
    aget v4, v2, v10

    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v6

    div-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v6

    mul-int/2addr v4, v6

    aput v4, v2, v10

    .line 284
    :cond_2
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, 0x2

    aget v6, v2, v6

    aget v7, v2, v10

    invoke-direct {v4, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v4, p0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    .line 285
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    aget v5, v2, v5

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 286
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUiItem;->mLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    aget v5, v2, v9

    iput v5, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 289
    .end local v1    # "i":I
    .end local v2    # "iData":[I
    :cond_3
    return-void

    .line 267
    .restart local v1    # "i":I
    .restart local v2    # "iData":[I
    :cond_4
    aget v3, p2, v4

    .line 268
    .local v3, "val":I
    array-length v7, v2

    if-ge v1, v7, :cond_5

    .line 269
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    int-to-float v7, v3

    iget-object v8, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v8, v8, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v2, v1

    .line 267
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_5
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public varargs setRect(Landroid/graphics/Rect;[I)V
    .locals 8
    .param p1, "rec"    # Landroid/graphics/Rect;
    .param p2, "params"    # [I

    .prologue
    const/4 v5, 0x0

    .line 234
    if-eqz p1, :cond_1

    .line 235
    if-eqz p2, :cond_1

    .line 236
    array-length v4, p2

    if-eqz v4, :cond_1

    .line 237
    const/4 v4, 0x4

    new-array v2, v4, [I

    .line 239
    .local v2, "iData":[I
    const/4 v0, 0x0

    .line 240
    .local v0, "i":I
    array-length v6, p2

    move v4, v5

    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-lt v4, v6, :cond_2

    .line 245
    aget v4, v2, v5

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 246
    iget v4, p0, Lcom/lsec/core/frame/app/MyUiItem;->mPlusPadding:I

    const/4 v5, 0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 247
    const/4 v4, 0x2

    aget v4, v2, v4

    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 248
    const/4 v4, 0x3

    aget v4, v2, v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 250
    iget-object v4, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget v4, v4, Lcom/lsec/core/frame/app/MyUi;->mScale:F

    float-to-double v4, v4

    const-wide v6, 0x3feffffde7210be9L    # 0.999999

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 251
    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->left:I

    if-gt v4, v5, :cond_0

    .line 252
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 254
    :cond_0
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_1

    .line 255
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 260
    .end local v1    # "i":I
    .end local v2    # "iData":[I
    :cond_1
    return-void

    .line 240
    .restart local v1    # "i":I
    .restart local v2    # "iData":[I
    :cond_2
    aget v3, p2, v4

    .line 241
    .local v3, "val":I
    array-length v7, v2

    if-ge v1, v7, :cond_3

    .line 242
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget-object v7, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v7, v3, v5}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v2, v1

    .line 240
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_3
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method

.method public varargs setSize([I)V
    .locals 4
    .param p1, "params"    # [I

    .prologue
    const/4 v3, 0x1

    .line 111
    if-eqz p1, :cond_0

    .line 112
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mSizeCurrent:Lcom/lsec/core/util/MySize;

    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    const/4 v2, 0x0

    aget v2, p1, v2

    invoke-virtual {v1, v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v1

    iput v1, v0, Lcom/lsec/core/util/MySize;->width:I

    .line 114
    iget-object v0, p0, Lcom/lsec/core/frame/app/MyUiItem;->mSizeCurrent:Lcom/lsec/core/util/MySize;

    iget-object v1, p0, Lcom/lsec/core/frame/app/MyUiItem;->ui:Lcom/lsec/core/frame/app/MyUi;

    aget v2, p1, v3

    invoke-virtual {v1, v2, v3}, Lcom/lsec/core/frame/app/MyUi;->getFixValue(IZ)I

    move-result v1

    iput v1, v0, Lcom/lsec/core/util/MySize;->height:I

    .line 117
    :cond_0
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;)V
    .locals 0
    .param p1, "drawable"    # Ljava/lang/String;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrDrawable:Ljava/lang/String;

    .line 365
    return-void
.end method

.method public varargs setStrDrawableExtra([Ljava/lang/String;)V
    .locals 0
    .param p1, "drawableExtra"    # [Ljava/lang/String;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrDrawableExtra:[Ljava/lang/String;

    .line 373
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrText:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setTextConf(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mStrTextConf:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mType:I

    .line 72
    return-void
.end method

.method public setUiItems(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/lsec/core/frame/app/MyUiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "items":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/lsec/core/frame/app/MyUiItem;>;"
    if-eqz p1, :cond_0

    .line 436
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 437
    iput-object p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mUiItems:Landroid/util/SparseArray;

    .line 439
    :cond_0
    return-void
.end method

.method public setVisible(I)V
    .locals 0
    .param p1, "visible"    # I

    .prologue
    .line 451
    iput p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mVisible:I

    .line 452
    return-void
.end method

.method public setWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/lsec/core/frame/app/MyUiItem;->mWeight:I

    .line 76
    return-void
.end method
