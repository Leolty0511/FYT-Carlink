.class Lcom/syu/app/ipc/Ipc_786$3;
.super Ljava/lang/Object;
.source "Ipc_786.java"

# interfaces
.implements Lcom/lsec/core/util/IUiNotify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Ipc_786;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_786;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_786;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_786$3;->this$0:Lcom/syu/app/ipc/Ipc_786;

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotify(I[I[F[Ljava/lang/String;)V
    .locals 1
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;

    .prologue
    .line 607
    packed-switch p1, :pswitch_data_0

    .line 615
    :goto_0
    :pswitch_0
    return-void

    .line 609
    :pswitch_1
    invoke-static {}, Lcom/syu/app/ipc/Ipc_786;->appId()V

    goto :goto_0

    .line 612
    :pswitch_2
    sget-object v0, Lcom/lsec/core/ipc/module/main/Main;->DATA:[I

    aget v0, v0, p1

    invoke-static {p1, v0}, Lcom/syu/app/ipc/Bt_IpcObj;->mcuOn(II)V

    goto :goto_0

    .line 607
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
