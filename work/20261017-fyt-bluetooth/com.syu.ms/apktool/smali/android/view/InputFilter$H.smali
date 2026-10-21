.class final Landroid/view/InputFilter$H;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/view/InputFilter;


# direct methods
.method public constructor <init>(Landroid/view/InputFilter;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 3
    :try_start_0
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, p1}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 7
    :try_start_1
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {v0}, Landroid/view/InputFilter;->onUninstalled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v0, p1}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {v1, p1}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    throw v0

    .line 9
    :cond_3
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/IInputFilterHost;

    invoke-static {v0, p1}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    .line 10
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 12
    :cond_4
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->access$200(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-static {p1}, Landroid/view/InputFilter;->access$200(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 14
    :cond_5
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    invoke-virtual {p1}, Landroid/view/InputFilter;->onInstalled()V

    :goto_0
    return-void
.end method
