.class public Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;
.super Ljava/lang/Object;
.source "SingleDoubleClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/util/SingleDoubleClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Runnable_Touch"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/util/SingleDoubleClickListener;

.field v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lsec/core/util/SingleDoubleClickListener;Landroid/view/View;)V
    .locals 0
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->this$0:Lcom/lsec/core/util/SingleDoubleClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->v:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->this$0:Lcom/lsec/core/util/SingleDoubleClickListener;

    invoke-static {v0}, Lcom/lsec/core/util/SingleDoubleClickListener;->access$0(Lcom/lsec/core/util/SingleDoubleClickListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->this$0:Lcom/lsec/core/util/SingleDoubleClickListener;

    invoke-static {v0}, Lcom/lsec/core/util/SingleDoubleClickListener;->access$1(Lcom/lsec/core/util/SingleDoubleClickListener;)Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->v:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;->oneClick(Landroid/view/View;)V

    .line 39
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->this$0:Lcom/lsec/core/util/SingleDoubleClickListener;

    invoke-static {v0}, Lcom/lsec/core/util/SingleDoubleClickListener;->access$2(Lcom/lsec/core/util/SingleDoubleClickListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->this$0:Lcom/lsec/core/util/SingleDoubleClickListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lsec/core/util/SingleDoubleClickListener;->access$3(Lcom/lsec/core/util/SingleDoubleClickListener;I)V

    .line 41
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->this$0:Lcom/lsec/core/util/SingleDoubleClickListener;

    invoke-static {v0}, Lcom/lsec/core/util/SingleDoubleClickListener;->access$0(Lcom/lsec/core/util/SingleDoubleClickListener;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->this$0:Lcom/lsec/core/util/SingleDoubleClickListener;

    invoke-static {v0}, Lcom/lsec/core/util/SingleDoubleClickListener;->access$1(Lcom/lsec/core/util/SingleDoubleClickListener;)Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/lsec/core/util/SingleDoubleClickListener$Runnable_Touch;->v:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/lsec/core/util/SingleDoubleClickListener$MyClickCallBack;->doubleClick(Landroid/view/View;)V

    goto :goto_0
.end method
