.class public Lcom/syu/bt/db/Bt_Info$RunnableClearCallLog;
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
    name = "RunnableClearCallLog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/db/Bt_Info;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/syu/bt/db/Bt_Info;I)V
    .locals 3
    .param p2, "type"    # I

    .prologue
    .line 176
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$RunnableClearCallLog;->this$0:Lcom/syu/bt/db/Bt_Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    const-string v0, "his3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "00 RunnableClearCallLog type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " App_Bt.sPhone2_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iput p2, p0, Lcom/syu/bt/db/Bt_Info$RunnableClearCallLog;->type:I

    .line 179
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 185
    :try_start_0
    const-string v2, "save11"

    const-string v3, " 11 mContentResolver.delete:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v2, "his3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "11 RunnableClearCallLog type = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/syu/bt/db/Bt_Info$RunnableClearCallLog;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " App_Bt.sPhone2_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, p0, Lcom/syu/bt/db/Bt_Info$RunnableClearCallLog;->type:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-nez v2, :cond_0

    .line 192
    sget-object v2, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    :cond_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V

    .line 201
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-nez v2, :cond_0

    .line 192
    sget-object v2, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/InterfaceBt;

    .line 193
    .local v1, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v1, v8}, Lcom/syu/bt/InterfaceBt;->disPostLoading(I)V

    goto :goto_1

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :catchall_0
    move-exception v2

    .line 191
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-nez v3, :cond_1

    .line 192
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 198
    :cond_1
    throw v2

    .line 192
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/InterfaceBt;

    .line 193
    .restart local v1    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v1, v8}, Lcom/syu/bt/InterfaceBt;->disPostLoading(I)V

    goto :goto_2

    .line 192
    .end local v1    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/InterfaceBt;

    .line 193
    .restart local v1    # "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v1, v8}, Lcom/syu/bt/InterfaceBt;->disPostLoading(I)V

    goto :goto_0
.end method
