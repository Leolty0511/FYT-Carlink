.class Lcom/lsec/core/util/UiNotifyEventString$1;
.super Lcom/syu/ipc/IModuleCallback$Stub;
.source "UiNotifyEventString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/UiNotifyEventString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/util/UiNotifyEventString;


# direct methods
.method constructor <init>(Lcom/lsec/core/util/UiNotifyEventString;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/lsec/core/util/UiNotifyEventString$1;->this$0:Lcom/lsec/core/util/UiNotifyEventString;

    invoke-direct {p0}, Lcom/syu/ipc/IModuleCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public update(I[I[F[Ljava/lang/String;)V
    .locals 2
    .param p1, "updateCode"    # I
    .param p2, "ints"    # [I
    .param p3, "flts"    # [F
    .param p4, "strs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    if-eqz p4, :cond_0

    array-length v1, p4

    if-lez v1, :cond_0

    .line 30
    const/4 v1, 0x0

    aget-object v0, p4, v1

    .line 31
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 32
    iget-object v1, p0, Lcom/lsec/core/util/UiNotifyEventString$1;->this$0:Lcom/lsec/core/util/UiNotifyEventString;

    invoke-static {v1}, Lcom/lsec/core/util/UiNotifyEventString;->access$0(Lcom/lsec/core/util/UiNotifyEventString;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/lsec/core/util/UiNotifyEventString$1;->this$0:Lcom/lsec/core/util/UiNotifyEventString;

    invoke-static {v1, v0}, Lcom/lsec/core/util/UiNotifyEventString;->access$1(Lcom/lsec/core/util/UiNotifyEventString;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/lsec/core/util/UiNotifyEventString$1;->this$0:Lcom/lsec/core/util/UiNotifyEventString;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/lsec/core/util/UiNotifyEventString;->updateNotify(I[I[F[Ljava/lang/String;)V

    .line 41
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 36
    .restart local v0    # "value":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/lsec/core/util/UiNotifyEventString$1;->this$0:Lcom/lsec/core/util/UiNotifyEventString;

    invoke-static {v1}, Lcom/lsec/core/util/UiNotifyEventString;->access$0(Lcom/lsec/core/util/UiNotifyEventString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/lsec/core/util/UiNotifyEventString$1;->this$0:Lcom/lsec/core/util/UiNotifyEventString;

    invoke-static {v1, v0}, Lcom/lsec/core/util/UiNotifyEventString;->access$1(Lcom/lsec/core/util/UiNotifyEventString;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/lsec/core/util/UiNotifyEventString$1;->this$0:Lcom/lsec/core/util/UiNotifyEventString;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/lsec/core/util/UiNotifyEventString;->updateNotify(I[I[F[Ljava/lang/String;)V

    goto :goto_0
.end method
