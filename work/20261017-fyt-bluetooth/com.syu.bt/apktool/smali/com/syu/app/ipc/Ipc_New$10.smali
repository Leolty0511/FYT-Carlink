.class Lcom/syu/app/ipc/Ipc_New$10;
.super Ljava/lang/Object;
.source "Ipc_New.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/app/ipc/Ipc_New;->phoneState_2(I)V
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
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_New$10;->this$0:Lcom/syu/app/ipc/Ipc_New;

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1069
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v0, v0, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->DATA:[I

    const/16 v2, 0x9

    aget v1, v1, v2

    invoke-static {v0, v1, v3}, Lcom/syu/bt/util/BTUtil;->getBtTone(Landroid/content/Context;II)V

    .line 1070
    iget-object v0, p0, Lcom/syu/app/ipc/Ipc_New$10;->this$0:Lcom/syu/app/ipc/Ipc_New;

    iput v3, v0, Lcom/syu/app/ipc/Ipc_New;->delay:I

    .line 1071
    return-void
.end method
