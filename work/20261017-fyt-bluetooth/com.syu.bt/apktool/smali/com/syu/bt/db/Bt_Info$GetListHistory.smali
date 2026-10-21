.class public Lcom/syu/bt/db/Bt_Info$GetListHistory;
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
    name = "GetListHistory"
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

.field listHistoryIn:Ljava/util/List;
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

.field listHistoryIn2:Ljava/util/List;
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

.field listHistoryMiss:Ljava/util/List;
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

.field listHistoryMiss2:Ljava/util/List;
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

.field listHistoryOut:Ljava/util/List;
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

.field listHistoryOut2:Ljava/util/List;
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
.method public constructor <init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
            ">;>;",
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
    .line 700
    .local p2, "listContactInQuery":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p3, "listHistoryIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p4, "listHistoryOut":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p5, "listHistoryMiss":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p6, "listHistoryAll":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->bRun:Z

    .line 687
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryIn:Ljava/util/List;

    .line 688
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut:Ljava/util/List;

    .line 689
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryMiss:Ljava/util/List;

    .line 690
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryAll:Ljava/util/List;

    .line 692
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryIn2:Ljava/util/List;

    .line 693
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut2:Ljava/util/List;

    .line 694
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryMiss2:Ljava/util/List;

    .line 701
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_a

    .line 702
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    .line 720
    .end local v0    # "i":I
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 722
    const-string v3, "his7"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 GetListHistory  listHistoryOut = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_6

    .line 737
    .end local v0    # "i":I
    :cond_1
    const-string v3, "his7"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 GetListHistory  listHistoryOut2 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut2:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v3, "his7"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 GetListHistory  listHistoryOut = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 741
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_8

    .line 807
    .end local v0    # "i":I
    :cond_2
    :goto_3
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 808
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_14

    .line 826
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryAll:Ljava/util/List;

    invoke-interface {v3, p6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 828
    :cond_3
    return-void

    .line 704
    .restart local v0    # "i":I
    :cond_4
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 705
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x2837

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_5

    .line 706
    const/16 v4, 0x2839

    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {p1, v3, v5}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 708
    const/16 v3, 0x2837

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 709
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryIn2:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 712
    :cond_5
    const/16 v4, 0x2839

    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 714
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryIn:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 725
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 726
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x2837

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_7

    .line 727
    const/16 v4, 0x2839

    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {p1, v3, v5}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 728
    const/16 v3, 0x2837

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 729
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut2:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 724
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 732
    :cond_7
    const/16 v4, 0x2839

    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 733
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 742
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_8
    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 743
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x2837

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_9

    .line 744
    const/16 v4, 0x2839

    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p1, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {p1, v3, v5}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 745
    const/16 v3, 0x2837

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 746
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryMiss2:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 749
    :cond_9
    const/16 v4, 0x2839

    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 750
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryMiss:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 755
    .end local v0    # "i":I
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_a
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 771
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e

    .line 788
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    .line 801
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryIn:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 802
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut:Ljava/util/List;

    invoke-interface {v3, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 803
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryMiss:Ljava/util/List;

    invoke-interface {v3, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    .line 755
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 756
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 758
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 757
    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 760
    .local v2, "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 761
    const/16 v5, 0x2839

    .line 762
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 761
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 764
    :cond_c
    const/16 v3, 0x2839

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 766
    .end local v2    # "name":Ljava/lang/String;
    :cond_d
    const/16 v5, 0x2839

    .line 768
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 767
    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 766
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8

    .line 771
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 772
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 774
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 773
    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 776
    .restart local v2    # "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 777
    const/16 v5, 0x2839

    .line 778
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 777
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 780
    :cond_f
    const/16 v3, 0x2839

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 782
    .end local v2    # "name":Ljava/lang/String;
    :cond_10
    const/16 v5, 0x2839

    .line 784
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 783
    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 782
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 788
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 789
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 791
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 790
    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 793
    .restart local v2    # "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 794
    const/16 v5, 0x2839

    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 796
    :cond_12
    const/16 v3, 0x2839

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 798
    .end local v2    # "name":Ljava/lang/String;
    :cond_13
    const/16 v5, 0x2839

    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 808
    .end local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 809
    .restart local v1    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 811
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 810
    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 813
    .restart local v2    # "name":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 814
    const/16 v5, 0x2839

    .line 815
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 814
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 817
    :cond_15
    const/16 v3, 0x2839

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 819
    .end local v2    # "name":Ljava/lang/String;
    :cond_16
    const/16 v5, 0x2839

    .line 821
    const/16 v3, 0x283b

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 820
    invoke-virtual {p1, v3, p2}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 819
    invoke-virtual {v1, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4
.end method

.method static synthetic access$0(Lcom/syu/bt/db/Bt_Info$GetListHistory;)Lcom/syu/bt/db/Bt_Info;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 836
    const-string v1, "his6"

    const-string v2, " 11 GetListHistory run "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-boolean v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->bRun:Z

    if-eqz v1, :cond_3

    .line 838
    const-string v1, "his3"

    const-string v2, " 22 mListHistoryOut.clear  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 840
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 841
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 842
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 843
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 844
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 845
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryIn:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 846
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 847
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryMiss:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 848
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_0

    .line 849
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryIn2:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 850
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryOut2:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 851
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryMiss2:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 854
    :cond_0
    const-string v1, "his6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 GetListHistory  mListHistoryIn2 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    const-string v1, "his6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 11 GetListHistory  mListHistoryIn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v3, v3, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 859
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 860
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->this$0:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->listHistoryAll:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 862
    :cond_1
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 866
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v1, v5}, Lcom/syu/bt/db/Bt_Info;->SendHistoryToServer(Z)V

    .line 868
    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_NEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_BT_1920"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v2, "TZY_OEM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    :cond_2
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v2, "Thread-DownContact"

    new-instance v3, Lcom/syu/bt/db/Bt_Info$GetListHistory$1;

    invoke-direct {v3, p0}, Lcom/syu/bt/db/Bt_Info$GetListHistory$1;-><init>(Lcom/syu/bt/db/Bt_Info$GetListHistory;)V

    .line 915
    const/4 v4, 0x1

    .line 869
    invoke-static {v1, v2, v3, v5, v4}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 918
    :cond_3
    return-void

    .line 862
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 863
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0}, Lcom/syu/bt/InterfaceBt;->resetList()V

    goto :goto_0
.end method

.method public stopRun()V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/db/Bt_Info$GetListHistory;->bRun:Z

    .line 832
    return-void
.end method
