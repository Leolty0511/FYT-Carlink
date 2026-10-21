.class Lcom/syu/app/ipc/Ipc_New$4$2;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/app/ipc/Ipc_New$4;->onNotify(I[I[F[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/app/ipc/Ipc_New$4;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_New$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$4$2;->this$1:Lcom/syu/app/ipc/Ipc_New$4;

    .line 2678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2681
    const-string v0, "con4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 000 U_PHONE_MAC_ADDR switchList mListContact = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    const-string v0, "con4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 111 U_PHONE_MAC_ADDR switchList mListContact2 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    const-string v0, "con4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 222 U_PHONE_MAC_ADDR switchList mListContact = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    const-string v0, "con4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 333 U_PHONE_MAC_ADDR switchList mListContact2 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/db/Bt_Info;->saveDownloadContacts(Ljava/util/List;Ljava/util/List;)V

    .line 2694
    iget-object v0, p0, Lcom/syu/app/ipc/Ipc_New$4$2;->this$1:Lcom/syu/app/ipc/Ipc_New$4;

    invoke-static {v0}, Lcom/syu/app/ipc/Ipc_New$4;->access$0(Lcom/syu/app/ipc/Ipc_New$4;)Lcom/syu/app/ipc/Ipc_New;

    move-result-object v0

    sget-object v1, Lcom/syu/bt/App_Bt;->mListHis_p2:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/App_Bt;->mListHis_p:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/syu/app/ipc/Ipc_New;->saveCallLog(Ljava/util/List;Ljava/util/List;)V

    .line 2696
    sget-object v0, Lcom/syu/bt/App_Bt;->mListHis_p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2697
    sget-object v0, Lcom/syu/bt/App_Bt;->mListHis_p2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2699
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2700
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2701
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2702
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2703
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2704
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2708
    const-string v0, "con3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 111 U_PHONE_MAC_ADDR switchList mListContact = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    return-void
.end method
