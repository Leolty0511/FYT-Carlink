.class Lcom/syu/app/ipc/Bt_IpcObj$4;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Bt_IpcObj;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Bt_IpcObj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Bt_IpcObj$4;->this$0:Lcom/syu/app/ipc/Bt_IpcObj;

    .line 873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 876
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v0}, Lcom/syu/bt/db/Bt_Info;->queryContacts()V

    .line 877
    const/4 v0, 0x1

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mRunnable_updatePhoneName:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 878
    return-void
.end method
