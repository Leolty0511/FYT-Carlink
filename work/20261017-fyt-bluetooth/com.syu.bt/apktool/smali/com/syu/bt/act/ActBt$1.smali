.class Lcom/syu/bt/act/ActBt$1;
.super Ljava/lang/Object;
.source "ActBt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/act/ActBt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/act/ActBt;


# direct methods
.method constructor <init>(Lcom/syu/bt/act/ActBt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 415
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v3, v3, Lcom/syu/bt/act/ActBt;->pageTo_p:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v3, :cond_6

    .line 417
    const v2, 0x3f333333    # 0.7f

    .line 418
    .local v2, "from_x":F
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v3, v3, Lcom/syu/bt/act/ActBt;->ivMenuSel:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v3, :cond_1

    .line 419
    const-string v3, "sel"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 00 ActBt mRunnableGoPage  showMenuSel  sPage_WillBe = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v5, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v5, v5, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    invoke-virtual {v3, v5}, Lcom/syu/bt/act/ActBt;->getShowId(I)I

    move-result v3

    iget-object v5, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    sget v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {v5, v6}, Lcom/syu/bt/act/ActBt;->getShowId(I)I

    move-result v5

    if-le v3, v5, :cond_0

    .line 421
    const v2, -0x40cccccd    # -0.7f

    .line 424
    :cond_0
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v5, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v5, v5, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    invoke-virtual {v3, v5}, Lcom/syu/bt/act/ActBt;->showMenuSel(I)V

    .line 426
    :cond_1
    const-string v3, "gdy19"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 00 ActBt mRunnableGoPage idPageTo:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v6, v6, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sPage_Current = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from_x = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v3, v3, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    sput v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_Current:I

    .line 429
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v3, v3, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    sput v3, Lcom/lsec/core/frame/app/MyApplication;->sPage_WillBe:I

    .line 430
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v3, v3, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    sput v3, Lcom/syu/bt/App_Bt;->sPage:I

    .line 431
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v5, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v5, v5, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    invoke-virtual {v3, v5}, Lcom/syu/bt/act/ActBt;->getFixApp(I)Lcom/lsec/core/frame/app/MyApp;

    move-result-object v10

    .line 432
    .local v10, "myApp":Lcom/lsec/core/frame/app/MyApp;
    if-eqz v10, :cond_2

    .line 433
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v3, v3, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    iput v3, v10, Lcom/lsec/core/frame/app/MyApp;->sPage:I

    .line 434
    :cond_2
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v3, v3, Lcom/syu/bt/act/ActBt;->mPageMain:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v5, v5, Lcom/syu/bt/act/ActBt;->pageTo_p:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    if-gez v3, :cond_3

    .line 435
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v3, v3, Lcom/syu/bt/act/ActBt;->mPageMain:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v5, v5, Lcom/syu/bt/act/ActBt;->pageTo_p:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 437
    :cond_3
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v5, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v5, v5, Lcom/syu/bt/act/ActBt;->pageTo_p:Lcom/lsec/core/frame/ctrl/JPage;

    iput-object v5, v3, Lcom/syu/bt/act/ActBt;->mPageCurrent:Lcom/lsec/core/frame/ctrl/JPage;

    .line 438
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v6, v4

    move v7, v1

    move v8, v4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 442
    .local v0, "mShowAction":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 443
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->pageTo_p:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JPage;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->pageFrom_p:Lcom/lsec/core/frame/ctrl/JPage;

    if-eqz v1, :cond_4

    .line 445
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->pageFrom_p:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->pause()V

    .line 448
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->pageFrom_p:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 449
    .local v11, "viewParent":Landroid/view/ViewParent;
    instance-of v1, v11, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    .line 450
    check-cast v11, Landroid/view/ViewGroup;

    .end local v11    # "viewParent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->pageFrom_p:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 452
    :cond_4
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->pageTo_p:Lcom/lsec/core/frame/ctrl/JPage;

    invoke-virtual {v1}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 453
    iget-object v1, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v1, v1, Lcom/syu/bt/act/ActBt;->mListMyActs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    .line 459
    .end local v0    # "mShowAction":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "from_x":F
    .end local v10    # "myApp":Lcom/lsec/core/frame/app/MyApp;
    :cond_6
    return-void

    .line 453
    .restart local v0    # "mShowAction":Landroid/view/animation/TranslateAnimation;
    .restart local v2    # "from_x":F
    .restart local v10    # "myApp":Lcom/lsec/core/frame/app/MyApp;
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lsec/core/frame/app/MyAct;

    .line 454
    .local v9, "myActTmp":Lcom/lsec/core/frame/app/MyAct;
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v3, v3, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    invoke-virtual {v9, v3}, Lcom/lsec/core/frame/app/MyAct;->doActionWhenGoPage(I)V

    .line 455
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget v3, v3, Lcom/syu/bt/act/ActBt;->idPageTo_p:I

    invoke-virtual {v9, v3}, Lcom/lsec/core/frame/app/MyAct;->includePage(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 456
    iget-object v3, p0, Lcom/syu/bt/act/ActBt$1;->this$0:Lcom/syu/bt/act/ActBt;

    iget-object v3, v3, Lcom/syu/bt/act/ActBt;->mPageMain:Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Lcom/lsec/core/frame/app/MyAct;->removeChildFromParent(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method
