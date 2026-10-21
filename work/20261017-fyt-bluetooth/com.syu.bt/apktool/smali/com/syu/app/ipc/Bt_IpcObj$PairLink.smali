.class Lcom/syu/app/ipc/Bt_IpcObj$PairLink;
.super Ljava/lang/Object;
.source "Bt_IpcObj.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/ipc/Bt_IpcObj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PairLink"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Bt_IpcObj;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Bt_IpcObj;)V
    .locals 0

    .prologue
    .line 924
    iput-object p1, p0, Lcom/syu/app/ipc/Bt_IpcObj$PairLink;->this$0:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/syu/app/ipc/Bt_IpcObj$PairLink;->this$0:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v1, p0, Lcom/syu/app/ipc/Bt_IpcObj$PairLink;->this$0:Lcom/syu/app/ipc/Bt_IpcObj;

    iget-object v1, v1, Lcom/syu/app/ipc/Bt_IpcObj;->page_Pair_p:Lcom/syu/bt/page/Page_Pair;

    invoke-virtual {v0, v1}, Lcom/syu/app/ipc/Bt_IpcObj;->FuncPairLink(Lcom/syu/bt/page/Page_Pair;)V

    .line 929
    return-void
.end method
