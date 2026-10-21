.class Landroid/print/PrintManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/print/PrintManager;-><init>(Landroid/content/Context;Landroid/print/IPrintManager;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintManager;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    iput-object p1, p0, Landroid/print/PrintManager$1;->this$0:Landroid/print/PrintManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 10
    .line 11
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/print/PrintManager$PrintJobStateChangeListenerWrapper;->getListener()Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Landroid/print/PrintJobId;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroid/print/PrintManager$PrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method
