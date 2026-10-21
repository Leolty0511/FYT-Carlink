.class Lcom/syu/app/ipc/Ipc_New$5;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3080
    const-string v0, "hfp11"

    const-string v1, " Ipc C_QUERY_PAIR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(II)V

    .line 3082
    return-void
.end method
