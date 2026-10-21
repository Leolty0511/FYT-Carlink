.class Lcom/syu/bt/ctrl/JRotView$1;
.super Ljava/lang/Object;
.source "JRotView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/ctrl/JRotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/ctrl/JRotView;


# direct methods
.method constructor <init>(Lcom/syu/bt/ctrl/JRotView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/ctrl/JRotView$1;->this$0:Lcom/syu/bt/ctrl/JRotView;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/syu/bt/ctrl/JRotView$1;->this$0:Lcom/syu/bt/ctrl/JRotView;

    invoke-virtual {v0}, Lcom/syu/bt/ctrl/JRotView;->invalidate()V

    .line 66
    return-void
.end method
