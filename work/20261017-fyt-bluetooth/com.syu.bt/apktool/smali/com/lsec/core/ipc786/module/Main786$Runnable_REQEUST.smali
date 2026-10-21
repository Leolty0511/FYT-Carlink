.class public Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;
.super Ljava/lang/Object;
.source "Main786.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc786/module/Main786;
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
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;->bRunning:Z

    .line 83
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 92
    sget-object v0, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/lsec/core/ipc/IConn;->mInterfaceApp:Lcom/lsec/core/util/InterfaceApp;

    invoke-interface {v0}, Lcom/lsec/core/util/InterfaceApp;->isAppTop()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    sget v1, Lcom/lsec/core/ipc/module/main/Main;->sAppIdRequest:I

    if-eq v0, v1, :cond_0

    .line 98
    sget v0, Lcom/lsec/core/ipc/module/main/Main;->sAppIdRequest:I

    invoke-static {v0}, Lcom/lsec/core/ipc786/module/Main786;->requestAppId(I)V

    .line 99
    iget-boolean v0, p0, Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;->bRunning:Z

    if-eqz v0, :cond_0

    .line 100
    sget-object v0, Lcom/lsec/core/ipc/Conn_Base;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lsec/core/ipc786/module/Main786$Runnable_REQEUST;->bRunning:Z

    .line 88
    return-void
.end method
