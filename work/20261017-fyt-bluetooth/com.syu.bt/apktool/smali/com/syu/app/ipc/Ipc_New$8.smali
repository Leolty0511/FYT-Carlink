.class Lcom/syu/app/ipc/Ipc_New$8;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_New;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_New;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_New;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$8;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 3192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 3
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 3196
    sget-object v1, Lcom/syu/bt/App_Bt;->mInterfaceBt:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3198
    return-void

    .line 3196
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/syu/bt/InterfaceBt;

    .line 3197
    .local v0, "interfaceBt":Lcom/syu/bt/InterfaceBt;
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/syu/bt/InterfaceBt;->onNotify_UniCar(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method
