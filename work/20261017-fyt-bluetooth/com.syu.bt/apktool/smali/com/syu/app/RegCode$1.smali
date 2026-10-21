.class Lcom/syu/app/RegCode$1;
.super Ljava/lang/Object;
.source "RegCode.java"

# interfaces
.implements Lcom/lsec/core/ipc/IRegisterModuleCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/RegCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public register(Lcom/syu/ipc/IModuleCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/syu/ipc/IModuleCallback;

    .prologue
    .line 137
    sget-object v2, Lcom/syu/app/RegCode;->CODE_Main:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 139
    return-void

    .line 137
    :cond_0
    aget v0, v2, v1

    .line 138
    .local v0, "updateCode":I
    sget-object v4, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v0, v5}, Lcom/lsec/core/ipc/ModuleProxy;->register(Lcom/syu/ipc/IModuleCallback;II)V

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
