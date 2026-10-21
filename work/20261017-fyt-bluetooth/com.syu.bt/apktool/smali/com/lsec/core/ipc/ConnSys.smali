.class public Lcom/lsec/core/ipc/ConnSys;
.super Lcom/lsec/core/ipc/Conn_Base;
.source "ConnSys.java"


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V
    .locals 2
    .param p1, "interfaceApp"    # Lcom/lsec/core/util/InterfaceApp;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    const-string v0, "com.syu.ss"

    const-string v1, "app.ToolkitService"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/lsec/core/ipc/Conn_Base;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "clsName"    # Ljava/lang/String;
    .param p3, "interfaceApp"    # Lcom/lsec/core/util/InterfaceApp;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lsec/core/ipc/Conn_Base;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/lsec/core/util/InterfaceApp;Landroid/content/Context;)V

    .line 14
    return-void
.end method
