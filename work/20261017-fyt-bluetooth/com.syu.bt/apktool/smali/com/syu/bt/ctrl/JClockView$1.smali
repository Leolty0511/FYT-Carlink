.class Lcom/syu/bt/ctrl/JClockView$1;
.super Ljava/lang/Object;
.source "JClockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/ctrl/JClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/ctrl/JClockView;


# direct methods
.method constructor <init>(Lcom/syu/bt/ctrl/JClockView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/ctrl/JClockView$1;->this$0:Lcom/syu/bt/ctrl/JClockView;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/syu/bt/ctrl/JClockView$1;->this$0:Lcom/syu/bt/ctrl/JClockView;

    invoke-virtual {v0}, Lcom/syu/bt/ctrl/JClockView;->postInvalidate()V

    .line 63
    iget-object v0, p0, Lcom/syu/bt/ctrl/JClockView$1;->this$0:Lcom/syu/bt/ctrl/JClockView;

    iget-object v0, v0, Lcom/syu/bt/ctrl/JClockView;->tickHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/syu/bt/ctrl/JClockView$1;->this$0:Lcom/syu/bt/ctrl/JClockView;

    invoke-static {v1}, Lcom/syu/bt/ctrl/JClockView;->access$0(Lcom/syu/bt/ctrl/JClockView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    return-void
.end method
