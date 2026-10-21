.class Lcom/syu/bt/ctrl/JSpecView$ElectricReader;
.super Ljava/util/TimerTask;
.source "JSpecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/ctrl/JSpecView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElectricReader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/ctrl/JSpecView;


# direct methods
.method constructor <init>(Lcom/syu/bt/ctrl/JSpecView;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/syu/bt/ctrl/JSpecView$ElectricReader;->this$0:Lcom/syu/bt/ctrl/JSpecView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView$ElectricReader;->this$0:Lcom/syu/bt/ctrl/JSpecView;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v1}, Lcom/syu/app/ipc/Bt_IpcObj;->getElectricValue()F

    move-result v1

    const/high16 v2, 0x42100000    # 36.0f

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/syu/bt/ctrl/JSpecView;->access$0(Lcom/syu/bt/ctrl/JSpecView;F)V

    .line 103
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView$ElectricReader;->this$0:Lcom/syu/bt/ctrl/JSpecView;

    invoke-static {v0}, Lcom/syu/bt/ctrl/JSpecView;->access$1(Lcom/syu/bt/ctrl/JSpecView;)F

    move-result v1

    iget-object v2, p0, Lcom/syu/bt/ctrl/JSpecView$ElectricReader;->this$0:Lcom/syu/bt/ctrl/JSpecView;

    invoke-static {v2}, Lcom/syu/bt/ctrl/JSpecView;->access$1(Lcom/syu/bt/ctrl/JSpecView;)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/syu/bt/ctrl/JSpecView;->access$0(Lcom/syu/bt/ctrl/JSpecView;F)V

    .line 104
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView$ElectricReader;->this$0:Lcom/syu/bt/ctrl/JSpecView;

    invoke-static {v0}, Lcom/syu/bt/ctrl/JSpecView;->access$2(Lcom/syu/bt/ctrl/JSpecView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 105
    return-void
.end method
