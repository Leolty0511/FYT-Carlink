.class public Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;
.super Ljava/lang/Object;
.source "Main.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/module/main/Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Runnable_REQEUST"
.end annotation


# instance fields
.field public bRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;->bRunning:Z

    .line 226
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    sget-object v0, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v0, :cond_1

    .line 236
    sget-object v0, Lcom/lsec/core/ipc/Conn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v0}, Lcom/lsec/core/util/InterfaceApp;->isAppTop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v1, 0x0

    const/16 v2, -0x64

    invoke-virtual {v0, v1, v2}, Lcom/lsec/core/ipc/ModuleProxy;->getI(II)I

    move-result v0

    sget v1, Lcom/lsec/core/ipc/module/main/Main;->sAppIdRequest:I

    if-eq v0, v1, :cond_0

    .line 241
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->sAppIdRequest:I

    invoke-static {v0}, Lcom/lsec/core/ipc/module/main/Main;->requestAppId(I)V

    .line 242
    iget-boolean v0, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;->bRunning:Z

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/ipc/module/main/Main$Runnable_REQEUST;->bRunning:Z

    .line 231
    return-void
.end method
