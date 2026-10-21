.class public Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;
.super Ljava/lang/Object;
.source "Bt_Info.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/db/Bt_Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GetListHistoryAll"
.end annotation


# instance fields
.field public bRun:Z

.field listHistoryAll:Ljava/util/List;
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

.field final synthetic this$0:Lcom/syu/bt/db/Bt_Info;


# direct methods
.method public constructor <init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "listContactInQuery":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p3, "listHistoryAll":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/16 v5, 0x283b

    const/16 v4, 0x2839

    .line 930
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->this$0:Lcom/syu/bt/db/Bt_Info;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->bRun:Z

    .line 927
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->listHistoryAll:Ljava/util/List;

    .line 931
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 947
    const-string v2, "his6"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 00 GetListHistoryAll  listHistoryAll = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->listHistoryAll:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 949
    return-void

    .line 931
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 932
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 933
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 940
    :cond_1
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 943
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 957
    iget-boolean v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->bRun:Z

    if-eqz v1, :cond_0

    .line 958
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 959
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->listHistoryAll:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 960
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 964
    :cond_0
    return-void

    .line 960
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 961
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->resetList()V

    goto :goto_0
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->bRun:Z

    .line 953
    return-void
.end method
