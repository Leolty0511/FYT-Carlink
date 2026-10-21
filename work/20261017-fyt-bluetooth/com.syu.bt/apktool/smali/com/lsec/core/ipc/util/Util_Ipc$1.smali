.class Lcom/lsec/core/ipc/util/Util_Ipc$1;
.super Ljava/lang/Object;
.source "Util_Ipc.java"

# interfaces
.implements Lcom/lsec/core/ipc/IRegisterModuleCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/ipc/util/Util_Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public register(Lcom/syu/ipc/IModuleCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;

    .prologue
    .line 12
    return-void
.end method
