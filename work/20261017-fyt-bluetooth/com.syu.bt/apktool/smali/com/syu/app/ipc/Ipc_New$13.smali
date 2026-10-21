.class Lcom/syu/app/ipc/Ipc_New$13;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/app/ipc/Ipc_New;->FuncDial()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_New;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_New;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$13;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 1533
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bFactoryTest:Z

    if-nez v1, :cond_1

    .line 1548
    :goto_1
    return-void

    .line 1534
    :cond_1
    sget v1, Lcom/syu/bt/App_Bt;->iOverTime:I

    if-ge v1, v5, :cond_0

    .line 1535
    sget v1, Lcom/syu/bt/App_Bt;->iOverTime:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/syu/bt/App_Bt;->iOverTime:I

    .line 1536
    sget v1, Lcom/syu/bt/App_Bt;->iOverTime:I

    if-ne v1, v5, :cond_2

    .line 1537
    sput v4, Lcom/syu/bt/App_Bt;->iOverTime:I

    .line 1538
    sput-boolean v4, Lcom/syu/bt/App_Bt;->bFactoryTest:Z

    goto :goto_1

    .line 1542
    :cond_2
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1543
    :catch_0
    move-exception v0

    .line 1544
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
