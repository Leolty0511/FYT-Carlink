.class Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;
.super Ljava/lang/Object;
.source "Conn_Base.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/Conn_Base;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnServiceConnected"
.end annotation


# instance fields
.field private observer:Lcom/lsec/core/ipc/IConnStateListener;

.field final synthetic this$0:Lcom/lsec/core/ipc/Conn_Base;


# direct methods
.method private constructor <init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;)V
    .locals 0
    .param p2, "observer"    # Lcom/lsec/core/ipc/IConnStateListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p2, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;->observer:Lcom/lsec/core/ipc/IConnStateListener;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;-><init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    invoke-static {v1}, Lcom/lsec/core/ipc/Conn_Base;->access$0(Lcom/lsec/core/ipc/Conn_Base;)Lcom/syu/ipc/IRemoteToolkit;

    move-result-object v0

    .line 132
    .local v0, "toolkit":Lcom/syu/ipc/IRemoteToolkit;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;->observer:Lcom/lsec/core/ipc/IConnStateListener;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceConnected;->observer:Lcom/lsec/core/ipc/IConnStateListener;

    invoke-interface {v1, v0}, Lcom/lsec/core/ipc/IConnStateListener;->onConnected(Lcom/syu/ipc/IRemoteToolkit;)V

    .line 134
    :cond_0
    return-void
.end method
