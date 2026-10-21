.class public Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;
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
    name = "RunnableInsertCallLog"
.end annotation


# instance fields
.field private bQueryCallLog:Z

.field final synthetic this$0:Lcom/syu/bt/db/Bt_Info;

.field private values:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Lcom/syu/bt/db/Bt_Info;Landroid/content/ContentValues;Z)V
    .locals 0
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "bQueryCallLog"    # Z

    .prologue
    .line 81
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->this$0:Lcom/syu/bt/db/Bt_Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->values:Landroid/content/ContentValues;

    .line 83
    iput-boolean p3, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->bQueryCallLog:Z

    .line 84
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 5

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    const-string v1, "his5"

    const-string v2, " 00 RunnableInsertCallLog "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->values:Landroid/content/ContentValues;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_2

    .line 91
    :try_start_1
    const-string v1, "his5"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 22 RunnableInsertCallLog values : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->values:Landroid/content/ContentValues;

    invoke-virtual {v3}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->values:Landroid/content/ContentValues;

    const-string v2, "number"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "his5"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 33 RunnableInsertCallLog App_Bt.sPhone_callin_id_p = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/syu/bt/App_Bt;->sPhone_callin_id_p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " App_Bt.bLinkTwoPhone = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->values:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->values:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 104
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 105
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v3, "type"

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v4, "type"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v3, "date"

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v4, "date"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 107
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v3, "number"

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    const-string v4, "number"

    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->values3rd:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :cond_1
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;->bQueryCallLog:Z

    if-eqz v1, :cond_2

    .line 118
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :cond_2
    monitor-exit p0

    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "his5"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 88 RunnableInsertCallLog Exception e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
