.class public Lcom/lsec/core/ipc/ConnCallServer;
.super Lcom/lsec/core/ipc/Conn_Base;
.source "ConnCallServer.java"


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V
    .locals 2
    .param p1, "interfaceApp"    # Lcom/lsec/core/util/InterfaceApp;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    const-string v0, "com.syu.call"

    const-string v1, "com.syu.app.ToolkitService"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lsec/core/ipc/Conn_Base;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V

    .line 10
    return-void
.end method
