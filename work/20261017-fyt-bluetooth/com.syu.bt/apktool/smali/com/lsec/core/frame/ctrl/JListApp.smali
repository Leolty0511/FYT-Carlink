.class public Lcom/lsec/core/frame/ctrl/JListApp;
.super Landroid/view/ViewGroup;
.source "JListApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnKeyListener;"
    }
.end annotation


# static fields
.field private static final APPS_PAGE_SIZE:I = 0xa

.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private PageNum:I

.field bAttached:Z

.field bWillUpdateBackground:Z

.field private idPageRow:I

.field private indicator:Lcom/lsec/core/frame/ctrl/JIndicator;

.field public mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mAppsAdapter:[Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

.field private mCurScreen:I

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

.field private mLastMotionX:F

.field private mScroller:Landroid/widget/Scroller;

.field mStrDrawable:Ljava/lang/String;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field public page:Lcom/lsec/core/frame/ctrl/JPage;

.field public viewAppSelect:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;)V
    .locals 2
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v0, p1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAllAppsList:Ljava/util/ArrayList;

    .line 45
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchState:I

    .line 53
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bAttached:Z

    .line 54
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bWillUpdateBackground:Z

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mDrawables:Ljava/util/HashMap;

    .line 59
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    .line 60
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->initViews()V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/lsec/core/frame/ctrl/JListApp;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->idPageRow:I

    return v0
.end method


# virtual methods
.method public ShowGridView()V
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->removeAllViews()V

    .line 331
    const/4 v0, 0x0

    .local v0, "page":I
    :goto_0
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->PageNum:I

    if-lt v0, v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->indicator:Lcom/lsec/core/frame/ctrl/JIndicator;

    iget v2, p0, Lcom/lsec/core/frame/ctrl/JListApp;->PageNum:I

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JIndicator;->setTotal(I)V

    .line 335
    iget v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/JListApp;->snapToScreen(I)V

    .line 336
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListApp;->addPage(I)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addApps(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 321
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->changeAdapter()V

    .line 326
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->ShowGridView()V

    .line 327
    return-void

    .line 322
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 323
    .local v2, "item":Landroid/content/pm/ResolveInfo;
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addPage(I)V
    .locals 4
    .param p1, "pageTmp"    # I

    .prologue
    const/4 v3, 0x5

    .line 343
    new-instance v0, Landroid/widget/GridView;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v2, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 344
    .local v0, "gridView":Landroid/widget/GridView;
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v1

    .line 345
    .local v1, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v1, :cond_0

    .line 346
    invoke-interface {v1, v0}, Lcom/lsec/core/frame/page/IPageNotify;->InitAppGridView(Landroid/widget/GridView;)V

    .line 348
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 349
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 350
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 351
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 352
    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 353
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setGravity(I)V

    .line 354
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSmoothScrollbarEnabled(Z)V

    .line 355
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAppsAdapter:[Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 357
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListApp;->addView(Landroid/view/View;)V

    .line 358
    return-void
.end method

.method public changeAdapter()V
    .locals 12

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 362
    .local v7, "apps":I
    rem-int/lit8 v6, v7, 0xa

    .line 363
    .local v6, "Extra":I
    if-nez v6, :cond_0

    .line 364
    div-int/lit8 v0, v7, 0xa

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->PageNum:I

    .line 368
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAppsAdapter:[Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

    .line 369
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->PageNum:I

    new-array v0, v0, [Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAppsAdapter:[Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

    .line 370
    const/4 v10, 0x0

    .local v10, "pageTmp":I
    :goto_1
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->PageNum:I

    if-lt v10, v0, :cond_1

    .line 386
    return-void

    .line 366
    .end local v10    # "pageTmp":I
    :cond_0
    div-int/lit8 v0, v7, 0xa

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->PageNum:I

    goto :goto_0

    .line 371
    .restart local v10    # "pageTmp":I
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 372
    .local v3, "mInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    mul-int/lit8 v5, v10, 0xa

    .line 373
    .local v5, "start":I
    add-int/lit8 v8, v5, 0xa

    .line 375
    .local v8, "end":I
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->PageNum:I

    add-int/lit8 v0, v0, -0x1

    if-ne v10, v0, :cond_2

    .line 376
    if-nez v6, :cond_4

    .line 379
    :cond_2
    :goto_2
    move v9, v5

    .line 380
    .local v9, "i":I
    :goto_3
    if-lt v9, v5, :cond_3

    if-lt v9, v8, :cond_5

    .line 384
    :cond_3
    iget-object v11, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAppsAdapter:[Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

    new-instance v0, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v2, v1, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;-><init>(Lcom/lsec/core/frame/ctrl/JListApp;Landroid/content/Context;Ljava/util/ArrayList;Lcom/lsec/core/frame/ctrl/JListApp;I)V

    aput-object v0, v11, v10

    .line 370
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 376
    .end local v9    # "i":I
    :cond_4
    add-int v8, v5, v6

    goto :goto_2

    .line 381
    .restart local v9    # "i":I
    :cond_5
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public computeScroll()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lsec/core/frame/ctrl/JListApp;->scrollTo(II)V

    .line 139
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->postInvalidate()V

    .line 141
    :cond_0
    return-void
.end method

.method public getAllInstalledApps()V
    .locals 7

    .prologue
    .line 393
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 394
    .local v2, "mainIntent":Landroid/content/Intent;
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 397
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 400
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 403
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 408
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/JListApp;->setApps(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 403
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 404
    .local v3, "res":Landroid/content/pm/ResolveInfo;
    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 405
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, "com.syu"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 406
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getCurScreen()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    return v0
.end method

.method public getPage()Lcom/lsec/core/frame/ctrl/JPage;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    return-object v0
.end method

.method public getPageNum()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->PageNum:I

    return v0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    .line 73
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JPage;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v1, v1, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mScroller:Landroid/widget/Scroller;

    .line 74
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchSlop:I

    .line 75
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 4

    .prologue
    .line 412
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAppsAdapter:[Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

    if-eqz v1, :cond_0

    .line 413
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAppsAdapter:[Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 416
    :cond_0
    return-void

    .line 413
    :cond_1
    aget-object v0, v2, v1

    .line 414
    .local v0, "appsAdapter":Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;
    invoke-virtual {v0}, Lcom/lsec/core/frame/ctrl/JListApp$AppsAdapter;->notifyDataSetChanged()V

    .line 413
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bAttached:Z

    .line 447
    iget-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bWillUpdateBackground:Z

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bWillUpdateBackground:Z

    .line 449
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->updateBackground()V

    .line 451
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 452
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bAttached:Z

    .line 457
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 458
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 198
    .local v0, "action":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchState:I

    if-eqz v3, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v5

    .line 201
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 202
    .local v1, "x":F
    packed-switch v0, :pswitch_data_0

    .line 221
    :cond_2
    :goto_1
    iget v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchState:I

    if-nez v3, :cond_0

    move v5, v4

    goto :goto_0

    .line 204
    :pswitch_0
    iget v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mLastMotionX:F

    sub-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-int v2, v3

    .line 205
    .local v2, "xDiff":I
    iget v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchSlop:I

    if-le v2, v3, :cond_2

    .line 206
    iput v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchState:I

    goto :goto_1

    .line 211
    .end local v2    # "xDiff":I
    :pswitch_1
    iput v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mLastMotionX:F

    .line 212
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    iput v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchState:I

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2

    .line 217
    :pswitch_2
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchState:I

    goto :goto_1

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->viewAppSelect:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 305
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->viewAppSelect:Landroid/view/View;

    check-cast v1, Lcom/lsec/core/frame/ctrl/JPage;

    .line 306
    .local v1, "page":Lcom/lsec/core/frame/ctrl/JPage;
    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getChildTag()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 308
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v2

    .line 309
    .local v2, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v2, :cond_0

    .line 310
    invoke-interface {v2, p0, v0}, Lcom/lsec/core/frame/page/IPageNotify;->AppClick(Lcom/lsec/core/frame/ctrl/JListApp;Landroid/content/pm/ResolveInfo;)V

    .line 312
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v1    # "page":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v2    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 294
    packed-switch p2, :pswitch_data_0

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getChildCount()I

    move-result v0

    .line 81
    .local v0, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v0, :cond_0

    .line 89
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0, v4}, Lcom/lsec/core/frame/ctrl/JListApp;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 85
    .local v3, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 86
    add-int/2addr v1, v3

    .line 81
    .end local v3    # "childWidth":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 95
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 96
    .local v2, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 97
    .local v3, "widthMode":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v3, v4, :cond_0

    .line 98
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "AllApps only canmCurScreen run at EXACTLY mode!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getChildCount()I

    move-result v0

    .line 101
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 104
    iget v4, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    mul-int/2addr v4, v2

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/lsec/core/frame/ctrl/JListApp;->scrollTo(II)V

    .line 105
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/JListApp;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 145
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    .line 146
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 148
    :cond_0
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 151
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 152
    .local v4, "x":F
    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    const/4 v5, 0x1

    return v5

    .line 154
    :pswitch_0
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 155
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 157
    :cond_1
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mLastMotionX:F

    goto :goto_0

    .line 161
    :pswitch_1
    iget v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mLastMotionX:F

    sub-float/2addr v5, v4

    float-to-int v1, v5

    .line 162
    .local v1, "deltaX":I
    iput v4, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mLastMotionX:F

    .line 163
    invoke-virtual {p0, v1, v7}, Lcom/lsec/core/frame/ctrl/JListApp;->scrollBy(II)V

    goto :goto_0

    .line 168
    .end local v1    # "deltaX":I
    :pswitch_2
    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 169
    .local v2, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 170
    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    float-to-int v3, v5

    .line 171
    .local v3, "velocityX":I
    const/16 v5, 0x258

    if-le v3, v5, :cond_3

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    if-lez v5, :cond_3

    .line 172
    iget v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/lsec/core/frame/ctrl/JListApp;->snapToScreen(I)V

    .line 178
    :goto_1
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_2

    .line 179
    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    .line 180
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 183
    :cond_2
    iput v7, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchState:I

    goto :goto_0

    .line 173
    :cond_3
    const/16 v5, -0x258

    if-ge v3, v5, :cond_4

    iget v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_4

    .line 174
    iget v5, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/lsec/core/frame/ctrl/JListApp;->snapToScreen(I)V

    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->snapToDestination()V

    goto :goto_1

    .line 188
    .end local v2    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v3    # "velocityX":I
    :pswitch_3
    iput v7, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mTouchState:I

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 316
    invoke-virtual {p0, p1}, Lcom/lsec/core/frame/ctrl/JListApp;->addApps(Ljava/util/ArrayList;)V

    .line 317
    return-void
.end method

.method public setIndicator(Lcom/lsec/core/frame/ctrl/JIndicator;)V
    .locals 0
    .param p1, "indicator"    # Lcom/lsec/core/frame/ctrl/JIndicator;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->indicator:Lcom/lsec/core/frame/ctrl/JIndicator;

    .line 390
    return-void
.end method

.method public setPageRow(I)V
    .locals 0
    .param p1, "idPageRow"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->idPageRow:I

    .line 65
    return-void
.end method

.method public setStrDrawable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "drawable"    # Ljava/lang/String;
    .param p2, "bUpdateBk"    # Z

    .prologue
    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bWillUpdateBackground:Z

    .line 420
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mStrDrawable:Ljava/lang/String;

    .line 421
    if-eqz p2, :cond_0

    .line 422
    if-nez p1, :cond_1

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListApp;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->updateBackground()V

    goto :goto_0
.end method

.method public setToScreen(I)V
    .locals 2
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 127
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    .line 128
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/lsec/core/frame/ctrl/JListApp;->scrollTo(II)V

    .line 129
    return-void
.end method

.method public snapToDestination()V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getWidth()I

    move-result v1

    .line 109
    .local v1, "screenWidth":I
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    div-int v0, v2, v1

    .line 110
    .local v0, "destScreen":I
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListApp;->snapToScreen(I)V

    .line 111
    return-void
.end method

.method public snapToScreen(I)V
    .locals 7
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getChildCount()I

    move-result v6

    .line 115
    .local v6, "childs":I
    add-int/lit8 v0, v6, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 116
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getWidth()I

    move-result v1

    mul-int/2addr v1, p1

    if-eq v0, v1, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getScrollX()I

    move-result v1

    sub-int v3, v0, v1

    .line 118
    .local v3, "delta":I
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v5, v4, 0x2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 119
    iput p1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    .line 120
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JListApp;->indicator:Lcom/lsec/core/frame/ctrl/JIndicator;

    iget v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mCurScreen:I

    invoke-virtual {v0, v1}, Lcom/lsec/core/frame/ctrl/JIndicator;->setCurrent(I)V

    .line 121
    invoke-virtual {p0}, Lcom/lsec/core/frame/ctrl/JListApp;->invalidate()V

    .line 123
    .end local v3    # "delta":I
    :cond_0
    return-void
.end method

.method public updateBackground()V
    .locals 5

    .prologue
    .line 430
    iget-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bAttached:Z

    if-nez v1, :cond_1

    .line 431
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bWillUpdateBackground:Z

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->bWillUpdateBackground:Z

    .line 436
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mStrDrawable:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mStrDrawable:Ljava/lang/String;

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JListApp;->page:Lcom/lsec/core/frame/ctrl/JPage;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JListApp;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 439
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/lsec/core/frame/ctrl/JListApp;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
