.class Lcom/syu/bt/db/Bt_Info$1;
.super Ljava/lang/Object;
.source "Bt_Info.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/db/Bt_Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/db/Bt_Info;


# direct methods
.method constructor <init>(Lcom/syu/bt/db/Bt_Info;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$1;->this$0:Lcom/syu/bt/db/Bt_Info;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 214
    :try_start_0
    const-string v1, "save11"

    const-string v2, " 22 mContentResolver.delete:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$1;->this$0:Lcom/syu/bt/db/Bt_Info;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/syu/bt/db/Bt_Info;->bClearing_Log:Z

    .line 216
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$1;->this$0:Lcom/syu/bt/db/Bt_Info;

    iput-boolean v5, v1, Lcom/syu/bt/db/Bt_Info;->bClearing_Log:Z

    .line 223
    :goto_0
    invoke-static {}, Lcom/syu/bt/App_Bt;->queryCallLog()V

    .line 224
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$1;->this$0:Lcom/syu/bt/db/Bt_Info;

    iput-boolean v5, v1, Lcom/syu/bt/db/Bt_Info;->bClearing_Log:Z

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 220
    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info$1;->this$0:Lcom/syu/bt/db/Bt_Info;

    iput-boolean v5, v2, Lcom/syu/bt/db/Bt_Info;->bClearing_Log:Z

    .line 221
    throw v1
.end method
