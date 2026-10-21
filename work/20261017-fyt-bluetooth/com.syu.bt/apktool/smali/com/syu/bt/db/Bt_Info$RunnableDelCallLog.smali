.class public Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;
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
    name = "RunnableDelCallLog"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field final synthetic this$0:Lcom/syu/bt/db/Bt_Info;

.field private time:J


# direct methods
.method public constructor <init>(Lcom/syu/bt/db/Bt_Info;Ljava/lang/String;J)V
    .locals 1
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "time"    # J

    .prologue
    .line 145
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;->this$0:Lcom/syu/bt/db/Bt_Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;->number:Ljava/lang/String;

    .line 147
    iput-wide p3, p0, Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;->time:J

    .line 148
    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 8

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    const-string v1, "save11"

    const-string v2, " 00 mContentResolver.delete:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 156
    const-string v3, "number = ? and date = ? "

    .line 158
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;->number:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;->time:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 155
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
