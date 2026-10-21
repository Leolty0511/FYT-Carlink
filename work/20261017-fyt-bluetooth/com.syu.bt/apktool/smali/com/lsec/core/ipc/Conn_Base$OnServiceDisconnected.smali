.class Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;
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
    name = "OnServiceDisconnected"
.end annotation


# instance fields
.field private observer:Lcom/lsec/core/ipc/IConnStateListener;

.field final synthetic this$0:Lcom/lsec/core/ipc/Conn_Base;


# direct methods
.method private constructor <init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;)V
    .locals 0
    .param p2, "observer"    # Lcom/lsec/core/ipc/IConnStateListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;->this$0:Lcom/lsec/core/ipc/Conn_Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;->observer:Lcom/lsec/core/ipc/IConnStateListener;

    .line 142
    return-void
.end method

.method synthetic constructor <init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;-><init>(Lcom/lsec/core/ipc/Conn_Base;Lcom/lsec/core/ipc/IConnStateListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;->observer:Lcom/lsec/core/ipc/IConnStateListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/lsec/core/ipc/Conn_Base$OnServiceDisconnected;->observer:Lcom/lsec/core/ipc/IConnStateListener;

    invoke-interface {v0}, Lcom/lsec/core/ipc/IConnStateListener;->onDisconnected()V

    .line 148
    :cond_0
    return-void
.end method
