.class Lcom/syu/app/RegCode$6;
.super Ljava/lang/Object;
.source "RegCode.java"

# interfaces
.implements Lcom/syu/ipc/IRegisterCallBack;


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
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public register(Lcom/syu/ipc/ICallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/syu/ipc/ICallback;

    .prologue
    .line 177
    sget-object v2, Lcom/syu/app/RegCode;->CODE_Bt_786:[I

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 179
    return-void

    .line 177
    :cond_0
    aget v0, v2, v1

    .line 178
    .local v0, "updateCode":I
    sget-object v4, Lcom/lsec/core/ipc786/module/Bt786;->hInstance:Lcom/lsec/core/ipc786/module/Bt786;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v0, v5}, Lcom/lsec/core/ipc786/module/Bt786;->registerCallback(Lcom/syu/ipc/ICallback;IZ)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
