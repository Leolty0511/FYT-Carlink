.class Lcom/syu/bt/ctrl/JSpecView$1;
.super Landroid/os/Handler;
.source "JSpecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/ctrl/JSpecView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/ctrl/JSpecView;


# direct methods
.method constructor <init>(Lcom/syu/bt/ctrl/JSpecView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/ctrl/JSpecView$1;->this$0:Lcom/syu/bt/ctrl/JSpecView;

    .line 33
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 36
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/syu/bt/ctrl/JSpecView$1;->this$0:Lcom/syu/bt/ctrl/JSpecView;

    invoke-virtual {v0}, Lcom/syu/bt/ctrl/JSpecView;->invalidate()V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 40
    return-void
.end method
