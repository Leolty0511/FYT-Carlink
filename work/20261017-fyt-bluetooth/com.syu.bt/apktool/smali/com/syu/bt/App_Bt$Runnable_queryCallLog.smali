.class public Lcom/syu/bt/App_Bt$Runnable_queryCallLog;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Runnable_queryCallLog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3265
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 3

    .prologue
    .line 3269
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3270
    .local v0, "mListContactInQuery":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3271
    const-string v1, "his2"

    const-string v2, " 00 Runnable_queryCallLog "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3272
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v1, v0}, Lcom/syu/bt/db/Bt_Info;->queryHistory(Ljava/util/List;)V

    .line 3273
    const/4 v1, 0x1

    sget-object v2, Lcom/syu/bt/App_Bt;->mRunnableResetList:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3274
    monitor-exit p0

    return-void

    .line 3269
    .end local v0    # "mListContactInQuery":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
