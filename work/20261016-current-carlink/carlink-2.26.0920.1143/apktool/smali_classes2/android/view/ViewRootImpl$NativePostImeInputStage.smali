.class final Landroid/view/ViewRootImpl$NativePostImeInputStage;
.super Landroid/view/ViewRootImpl$AsyncInputStage;
.source "SourceFile"

# interfaces
.implements Landroid/view/InputQueue$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NativePostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl$AsyncInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$AsyncInputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl$NativePostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 9
    .line 10
    invoke-virtual {v0, v2, p1, v1, p0}, Landroid/view/InputQueue;->sendInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;ZLandroid/view/InputQueue$FinishedInputEventCallback;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    return p1

    .line 15
    :cond_0
    return v1
.end method
