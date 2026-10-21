.class public Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "JViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/JViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JPagerAdapter"
.end annotation


# instance fields
.field mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JViewPager;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JViewPager;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 272
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    .line 273
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    .line 275
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 315
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 289
    .local v0, "itemCur":I
    move v1, v0

    .line 290
    .local v1, "itemShouldBe":I
    if-nez v0, :cond_2

    .line 291
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .line 295
    :cond_0
    :goto_0
    if-eq v0, v1, :cond_1

    .line 297
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v1, v5}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 298
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 299
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 300
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$0(Lcom/lsec/core/frame/ctrl/JViewPager;)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v2

    .line 301
    .local v2, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz v2, :cond_1

    .line 302
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v2, v3}, Lcom/lsec/core/frame/page/IPageNotify;->viewPageScrolled(Landroid/support/v4/view/ViewPager;)V

    .line 305
    .end local v2    # "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 306
    return-void

    .line 292
    :cond_2
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_0

    .line 293
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "ret":I
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 283
    :cond_0
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 321
    if-nez p2, :cond_2

    .line 322
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 326
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 328
    .local v1, "v":Landroid/view/View;
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 329
    .local v3, "viewParent":Landroid/view/ViewParent;
    if-eqz v3, :cond_1

    .line 330
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .line 331
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 334
    .end local v2    # "viewGroup":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v3    # "viewParent":Landroid/view/ViewParent;
    :goto_1
    return-object v1

    .line 323
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p2, v4, :cond_0

    .line 324
    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JViewPager$JPagerAdapter;->mViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    goto :goto_0

    .line 335
    .restart local v1    # "v":Landroid/view/View;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 310
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
