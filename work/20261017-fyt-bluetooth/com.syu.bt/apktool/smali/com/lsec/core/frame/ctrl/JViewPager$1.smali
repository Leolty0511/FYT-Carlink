.class Lcom/lsec/core/frame/ctrl/JViewPager$1;
.super Ljava/lang/Object;
.source "JViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lsec/core/frame/ctrl/JViewPager;->setUiLoader([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JViewPager;


# direct methods
.method constructor <init>(Lcom/lsec/core/frame/ctrl/JViewPager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 261
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 8
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iput p3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mArg2:I

    .line 201
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$0(Lcom/lsec/core/frame/ctrl/JViewPager;)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JPage;->getNotify()Lcom/lsec/core/frame/page/IPageNotify;

    move-result-object v2

    .line 202
    .local v2, "pageNotify":Lcom/lsec/core/frame/page/IPageNotify;
    if-eqz p3, :cond_2

    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-boolean v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->bActionDown:Z

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$1(Lcom/lsec/core/frame/ctrl/JViewPager;)I

    move-result v3

    if-nez v3, :cond_0

    .line 204
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    invoke-static {v3, v4}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$2(Lcom/lsec/core/frame/ctrl/JViewPager;I)V

    .line 207
    :cond_0
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$3(Lcom/lsec/core/frame/ctrl/JViewPager;)I

    move-result v3

    if-le v3, p1, :cond_5

    .line 208
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$1(Lcom/lsec/core/frame/ctrl/JViewPager;)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 209
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3, v5}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$4(Lcom/lsec/core/frame/ctrl/JViewPager;I)V

    .line 210
    if-eqz v2, :cond_1

    .line 211
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v2, v3}, Lcom/lsec/core/frame/page/IPageNotify;->viewPagePrev(Landroid/support/v4/view/ViewPager;)V

    .line 221
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ne p1, v3, :cond_6

    .line 224
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v6, v4}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 236
    :cond_2
    :goto_1
    if-nez p3, :cond_4

    .line 237
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 238
    .local v0, "itemCur":I
    move v1, v0

    .line 239
    .local v1, "itemShouldBe":I
    if-nez p1, :cond_8

    .line 240
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .line 244
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$1(Lcom/lsec/core/frame/ctrl/JViewPager;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 245
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3, v6}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$4(Lcom/lsec/core/frame/ctrl/JViewPager;I)V

    .line 246
    if-ne v0, v1, :cond_4

    .line 248
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-virtual {v3, v6, v7}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 249
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 251
    if-eqz v2, :cond_4

    .line 252
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v2, v3}, Lcom/lsec/core/frame/page/IPageNotify;->viewPageScrolled(Landroid/support/v4/view/ViewPager;)V

    .line 256
    .end local v0    # "itemCur":I
    .end local v1    # "itemShouldBe":I
    :cond_4
    return-void

    .line 214
    :cond_5
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$1(Lcom/lsec/core/frame/ctrl/JViewPager;)I

    move-result v3

    if-eq v3, v7, :cond_1

    .line 215
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-static {v3, v7}, Lcom/lsec/core/frame/ctrl/JViewPager;->access$4(Lcom/lsec/core/frame/ctrl/JViewPager;I)V

    .line 216
    if-eqz v2, :cond_1

    .line 217
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-interface {v2, v3}, Lcom/lsec/core/frame/page/IPageNotify;->viewPageNext(Landroid/support/v4/view/ViewPager;)V

    goto :goto_0

    .line 225
    :cond_6
    if-nez p1, :cond_7

    .line 228
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v6}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    goto :goto_1

    .line 231
    :cond_7
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    invoke-virtual {v3, v6, v7}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 232
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v5, v5, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    goto/16 :goto_1

    .line 241
    .restart local v0    # "itemCur":I
    .restart local v1    # "itemShouldBe":I
    :cond_8
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_3

    .line 242
    const/4 v1, 0x1

    goto/16 :goto_2
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget v0, v0, Lcom/lsec/core/frame/ctrl/JViewPager;->mArg2:I

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 193
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v1, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v1, v1, Lcom/lsec/core/frame/ctrl/JViewPager;->mViewsReal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/lsec/core/frame/ctrl/JViewPager$1;->this$0:Lcom/lsec/core/frame/ctrl/JViewPager;

    iget-object v2, v2, Lcom/lsec/core/frame/ctrl/JViewPager;->mViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/frame/ctrl/JViewPager;->AddRealView2Dst(II)V

    .line 195
    :cond_0
    return-void
.end method
