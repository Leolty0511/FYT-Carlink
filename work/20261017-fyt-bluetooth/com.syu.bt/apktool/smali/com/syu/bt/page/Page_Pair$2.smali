.class Lcom/syu/bt/page/Page_Pair$2;
.super Ljava/lang/Object;
.source "Page_Pair.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Pair;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Pair;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Pair$2;->this$0:Lcom/syu/bt/page/Page_Pair;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x28e4

    const/4 v6, 0x0

    .line 333
    const-string v3, "hfp10"

    const-string v4, " 00 Page_Pair mRunnable_refreshPaired "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/syu/bt/page/Page_Pair$2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v3, v3, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v3, :cond_1

    .line 336
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 338
    const-string v3, "hfp10"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 Page_Pair mRunnable_refreshPaired mListHasPaired.size = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v1, 0x0

    .line 341
    .local v1, "flag":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 368
    .end local v1    # "flag":Z
    .end local v2    # "i":I
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/syu/bt/page/Page_Pair$2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v4, p0, Lcom/syu/bt/page/Page_Pair$2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v4, v4, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/syu/bt/page/Page_Pair;->resetList(Lcom/lsec/core/frame/ctrl/JGridView;Ljava/util/List;)V

    .line 370
    :cond_1
    return-void

    .line 342
    .restart local v1    # "flag":Z
    .restart local v2    # "i":I
    :cond_2
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 343
    .local v0, "ConnectDevice":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 345
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    const/4 v1, 0x1

    .line 347
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 348
    sget-object v3, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v3, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 349
    const-string v3, "hfp4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 22 Page_Pair refreshPairedList ConnectDevice ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " add mListHasPaired.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v5, v5, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/syu/bt/page/Page_Pair$2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v3, v3, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    if-eqz v3, :cond_0

    .line 351
    iget-object v3, p0, Lcom/syu/bt/page/Page_Pair$2;->this$0:Lcom/syu/bt/page/Page_Pair;

    iget-object v3, v3, Lcom/syu/bt/page/Page_Pair;->mPairedView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v3, v6}, Lcom/lsec/core/frame/ctrl/JGridView;->scrollToPosition(I)V

    goto :goto_1

    .line 341
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method
