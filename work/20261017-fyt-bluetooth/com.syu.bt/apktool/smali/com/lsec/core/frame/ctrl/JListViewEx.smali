.class public Lcom/lsec/core/frame/ctrl/JListViewEx;
.super Landroid/widget/ExpandableListView;
.source "JListViewEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;
    }
.end annotation


# instance fields
.field public adapter:Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;

.field bAttached:Z

.field bWillUpdateBackground:Z

.field public idPageRowChild:I

.field public idPageRowGroup:I

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

.field public listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

.field public mActionDown:Z

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

.field public mPositionChild:I

.field public mPositionGroup:I

.field private mScrollState:I

.field mStrDrawable:Ljava/lang/String;

.field private mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

.field private page:Lcom/lsec/core/frame/ctrl/JPage;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPageInfos:Ljava/util/ArrayList;

    .line 34
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bAttached:Z

    .line 35
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bWillUpdateBackground:Z

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mDrawables:Ljava/util/HashMap;

    .line 42
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mActionDown:Z

    .line 46
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 47
    iput-object p0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listViewEx:Lcom/lsec/core/frame/ctrl/JListViewEx;

    .line 48
    new-instance v0, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;-><init>(Lcom/lsec/core/frame/ctrl/JListViewEx;)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->adapter:Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;

    .line 49
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->adapter:Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;

    invoke-virtual {v0, p0}, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->setListViewEx(Lcom/lsec/core/frame/ctrl/JListViewEx;)V

    .line 50
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->adapter:Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 51
    new-instance v0, Lcom/lsec/core/frame/ctrl/JListViewEx$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/frame/ctrl/JListViewEx$1;-><init>(Lcom/lsec/core/frame/ctrl/JListViewEx;)V

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/ctrl/JListViewEx;)Ljava/util/List;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lsec/core/frame/ctrl/JListViewEx;)Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->page:Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lsec/core/frame/ctrl/JListViewEx;)Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lsec/core/frame/ctrl/JListViewEx;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mScrollState:I

    return v0
.end method

.method static synthetic access$4(Lcom/lsec/core/frame/ctrl/JListViewEx;I)V
    .locals 0

    .prologue
    .line 24
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mScrollState:I

    return-void
.end method


# virtual methods
.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 97
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/MyFolder;

    .line 99
    .local v0, "folder":Lcom/lsec/core/util/MyFolder;
    if-eqz v0, :cond_0

    .line 100
    iget-object v1, v0, Lcom/lsec/core/util/MyFolder;->array:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 103
    .end local v0    # "folder":Lcom/lsec/core/util/MyFolder;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getList()Ljava/util/List;
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
    .line 336
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    return-object v0
.end method

.method public getPage()Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->page:Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method public getPositionChild()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPositionChild:I

    return v0
.end method

.method public getPositionGroup()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPositionGroup:I

    return v0
.end method

.method public initSwipePara(I)V
    .locals 1
    .param p1, "rightViewWidth"    # I

    .prologue
    .line 382
    if-lez p1, :cond_0

    .line 383
    new-instance v0, Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

    invoke-direct {v0, p0, p1}, Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;-><init>(Lcom/lsec/core/frame/ctrl/JListViewEx;I)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

    .line 384
    :cond_0
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->adapter:Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->adapter:Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;

    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JListViewEx$ExtAdapter;->notifyDataSetChanged()V

    .line 109
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bAttached:Z

    .line 445
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bWillUpdateBackground:Z

    .line 447
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->updateBackground()V

    .line 449
    :cond_0
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onAttachedToWindow()V

    .line 450
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bAttached:Z

    .line 455
    invoke-super {p0}, Landroid/widget/ExpandableListView;->onDetachedFromWindow()V

    .line 456
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 388
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

    invoke-virtual {v0, p1}, Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x1

    .line 393
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 408
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mSwipeHelper:Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;

    invoke-virtual {v1, p1}, Lcom/lsec/core/frame/ctrl/SwipeListViewHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    :goto_1
    return v0

    .line 400
    :pswitch_1
    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mActionDown:Z

    goto :goto_0

    .line 404
    :pswitch_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mActionDown:Z

    goto :goto_0

    .line 413
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 398
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
    .locals 3
    .param p1, "posGroup"    # I

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mActionDown:Z

    if-nez v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 366
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->getGroupCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 371
    invoke-virtual {p0, p1, v2}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setSelectionFromTop(II)V

    .line 372
    invoke-virtual {p0, p1, v2}, Lcom/lsec/core/frame/ctrl/JListViewEx;->smoothScrollToPositionFromTop(II)V

    .line 375
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 367
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->isGroupExpanded(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->collapseGroup(I)Z

    .line 366
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public scrollToPosition(II)V
    .locals 4
    .param p1, "posGroup"    # I
    .param p2, "posChild"    # I

    .prologue
    const/4 v3, 0x0

    .line 340
    iget-boolean v2, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mActionDown:Z

    if-nez v2, :cond_1

    .line 341
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_1

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->getGroupCount()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 349
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->listFolder:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/util/MyFolder;

    .line 350
    .local v0, "folder":Lcom/lsec/core/util/MyFolder;
    if-eqz v0, :cond_1

    .line 351
    iget-object v2, v0, Lcom/lsec/core/util/MyFolder;->array:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p2, :cond_1

    .line 352
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JListViewEx;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JListViewEx;->expandGroup(I)Z

    .line 355
    :cond_0
    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setSelectionFromTop(II)V

    .line 356
    add-int/lit8 v2, p1, 0x1

    add-int/2addr v2, p2

    invoke-virtual {p0, v2, v3}, Lcom/lsec/core/frame/ctrl/JListViewEx;->smoothScrollToPositionFromTop(II)V

    .line 361
    .end local v0    # "folder":Lcom/lsec/core/util/MyFolder;
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 343
    .restart local v1    # "i":I
    :cond_2
    if-eq p1, v1, :cond_3

    .line 344
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/JListViewEx;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 345
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/JListViewEx;->collapseGroup(I)Z

    .line 342
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setPageRow(II)V
    .locals 0
    .param p1, "idPageRowGroup"    # I
    .param p2, "idPageRowChild"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->idPageRowGroup:I

    .line 73
    iput p2, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->idPageRowChild:I

    .line 74
    return-void
.end method

.method public setPositionChild(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPositionChild:I

    .line 86
    return-void
.end method

.method public setPositionGroup(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mPositionGroup:I

    .line 78
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bWillUpdateBackground:Z

    .line 418
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mStrDrawable:Ljava/lang/String;

    .line 419
    if-eqz p2, :cond_0

    .line 420
    if-nez p1, :cond_1

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->updateBackground()V

    goto :goto_0
.end method

.method public superTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 378
    invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 379
    return-void
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 428
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bAttached:Z

    if-nez v1, :cond_1

    .line 429
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bWillUpdateBackground:Z

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->bWillUpdateBackground:Z

    .line 434
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 435
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JListViewEx;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 437
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListViewEx;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
