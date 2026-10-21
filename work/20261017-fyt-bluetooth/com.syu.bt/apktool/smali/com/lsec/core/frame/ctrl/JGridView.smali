.class public Lcom/lsec/core/frame/ctrl/JGridView;
.super Landroid/widget/GridView;
.source "JGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;
    }
.end annotation


# instance fields
.field public adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

.field bAttached:Z

.field public bDefaultSet:Z

.field bWillUpdateBackground:Z

.field public gridView:Lcom/lsec/core/frame/ctrl/JGridView;

.field private idPageRow:I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private listFolder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lsec/core/util/MyFolder;",
            ">;"
        }
    .end annotation
.end field

.field public mActionDown:Z

.field public mBegin:I

.field public mCnt:I

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

.field public mInScrollView:Z

.field public mIndexFocus:I

.field public mMaxRow:I

.field public mPageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/lsec/core/frame/ctrl/JPage;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPosition:I

.field private mScrollState:I

.field mStrDrawable:Ljava/lang/String;

.field private mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;

.field public strTail:Ljava/lang/String;

.field public strs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 3
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->strs:[Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->list:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->listFolder:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mPageInfos:Ljava/util/ArrayList;

    .line 28
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mBegin:I

    .line 29
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mCnt:I

    .line 30
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    .line 32
    iput v2, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mMaxRow:I

    .line 36
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mInScrollView:Z

    .line 37
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mActionDown:Z

    .line 41
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bAttached:Z

    .line 42
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bWillUpdateBackground:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mDrawables:Ljava/util/HashMap;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->strTail:Ljava/lang/String;

    .line 47
    iput-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bDefaultSet:Z

    .line 51
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 52
    iput-object p0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    .line 53
    new-instance v0, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;-><init>(Lcom/lsec/core/frame/ctrl/JGridView;)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    .line 54
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v0, p0}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->setGridView(Lcom/lsec/core/frame/ctrl/JGridView;)V

    .line 55
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 56
    new-instance v0, Lcom/lsec/core/frame/ctrl/JGridView$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/ctrl/JGridView$1;-><init>(Lcom/lsec/core/frame/ctrl/JGridView;)V

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/ctrl/JGridView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->list:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/frame/ctrl/JGridView;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->idPageRow:I

    return v0
.end method

.method static synthetic access$2(Lcom/lsec/core/frame/ctrl/JGridView;)Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lsec/core/frame/ctrl/JGridView;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mScrollState:I

    return v0
.end method

.method static synthetic access$4(Lcom/lsec/core/frame/ctrl/JGridView;I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mScrollState:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mCnt:I

    goto :goto_0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->list:Ljava/util/List;

    return-object v0
.end method

.method public getListFolder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lsec/core/util/MyFolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->listFolder:Ljava/util/List;

    return-object v0
.end method

.method public getMaxRowDisp()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mMaxRow:I

    return v0
.end method

.method public getPage()Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mPosition:I

    return v0
.end method

.method public initSwipePara(I)V
    .locals 1
    .param p1, "rightViewWidth"    # I

    .prologue
    .line 306
    if-lez p1, :cond_0

    .line 307
    new-instance v0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    invoke-direct {v0, p0, p1}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;-><init>(Lcom/lsec/core/frame/ctrl/JGridView;I)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    .line 308
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    .line 121
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bAttached:Z

    .line 369
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 370
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bWillUpdateBackground:Z

    .line 371
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->updateBackground()V

    .line 374
    :cond_0
    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    .line 375
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bAttached:Z

    .line 380
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 381
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    const/4 v0, 0x1

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 292
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mInScrollView:Z

    if-eqz v1, :cond_0

    .line 293
    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 294
    .local v0, "expandSpec":I
    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    .line 299
    .end local v0    # "expandSpec":I
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 332
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    :goto_1
    return v0

    .line 324
    :pswitch_1
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mActionDown:Z

    goto :goto_0

    .line 328
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mActionDown:Z

    goto :goto_0

    .line 337
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mActionDown:Z

    if-nez v0, :cond_0

    .line 282
    if-ltz p1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->adapter:Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JGridView$GridAdapter;->notifyDataSetChanged()V

    .line 285
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JGridView;->setSelection(I)V

    .line 288
    :cond_0
    return-void
.end method

.method public setMaxRowDisp(I)V
    .locals 0
    .param p1, "iMaxRow"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mMaxRow:I

    .line 91
    return-void
.end method

.method public setPageRow(I)V
    .locals 0
    .param p1, "idPageRow"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->idPageRow:I

    .line 99
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mPosition:I

    .line 103
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mIndexFocus:I

    .line 104
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bWillUpdateBackground:Z

    .line 342
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mStrDrawable:Ljava/lang/String;

    .line 343
    if-eqz p2, :cond_0

    .line 344
    if-nez p1, :cond_1

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->updateBackground()V

    goto :goto_0
.end method

.method public setStrs([Ljava/lang/String;II)V
    .locals 1
    .param p1, "strs"    # [Ljava/lang/String;
    .param p2, "begin"    # I
    .param p3, "end"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->list:Ljava/util/List;

    .line 125
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->strs:[Ljava/lang/String;

    .line 126
    iput p2, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mBegin:I

    .line 127
    sub-int v0, p3, p2

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mCnt:I

    .line 128
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mCnt:I

    if-gez v0, :cond_0

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mCnt:I

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JGridView;->notifyDataSetChanged()V

    .line 132
    return-void
.end method

.method public superTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 303
    return-void
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 352
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bAttached:Z

    if-nez v1, :cond_1

    .line 353
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bWillUpdateBackground:Z

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->bWillUpdateBackground:Z

    .line 358
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JGridView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JGridView;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JGridView;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 361
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JGridView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
