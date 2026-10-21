.class Lcom/syu/bt/db/Bt_Info$2;
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
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$2;->this$0:Lcom/syu/bt/db/Bt_Info;

    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 528
    const/4 v0, 0x0

    .line 530
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info$2;->this$0:Lcom/syu/bt/db/Bt_Info;

    invoke-static {v3}, Lcom/syu/bt/db/Bt_Info;->access$0(Lcom/syu/bt/db/Bt_Info;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 541
    :cond_0
    :goto_0
    sget-object v3, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 544
    return-void

    .line 531
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 535
    if-eqz v0, :cond_0

    .line 536
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 537
    :catch_1
    move-exception v1

    .line 538
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 533
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 535
    if-eqz v0, :cond_1

    .line 536
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 540
    :cond_1
    :goto_2
    throw v3

    .line 537
    :catch_2
    move-exception v1

    .line 538
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 537
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 538
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 541
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/syu/bt/InterfaceBt;

    .line 542
    .local v2, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/syu/bt/InterfaceBt;->disPostLoading(I)V

    goto :goto_1
.end method
