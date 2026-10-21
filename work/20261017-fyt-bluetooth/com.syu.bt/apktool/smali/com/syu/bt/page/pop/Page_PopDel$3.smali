.class Lcom/syu/bt/page/pop/Page_PopDel$3;
.super Ljava/lang/Object;
.source "Page_PopDel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopDel;->ResponseClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopDel;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopDel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopDel$3;->this$0:Lcom/syu/bt/page/pop/Page_PopDel;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 253
    const-string v0, "ai"

    const-string v1, " *** 33  mRunnUpdateAIKG  persist.blinkbt.qcc3031.ecnr.disable 1 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->PROXY:Lcom/lsec/core/ipc/ModuleProxy;

    const/16 v1, 0x13

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/lsec/core/ipc/ModuleProxy;->cmd(I[I[F[Ljava/lang/String;)V

    .line 255
    return-void
.end method
