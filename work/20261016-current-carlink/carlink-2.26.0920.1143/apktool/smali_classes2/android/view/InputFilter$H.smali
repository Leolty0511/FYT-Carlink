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
.field final synthetic this$0:Landroid/view/InputFilter;


# direct methods
.method public constructor <init>(Landroid/view/InputFilter;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Landroid/view/InputEvent;

    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v0, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 36
    .line 37
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 38
    .line 39
    invoke-virtual {v1, v0, p1}, Landroid/view/InputFilter;->onInputEvent(Landroid/view/InputEvent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    invoke-virtual {v0}, Landroid/view/InputEvent;->recycle()V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :try_start_1
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/view/InputFilter;->onUninstalled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 58
    .line 59
    invoke-static {v0, p1}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception v0

    .line 64
    iget-object v1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 65
    .line 66
    invoke-static {v1, p1}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_3
    iget-object v0, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 71
    .line 72
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Landroid/view/IInputFilterHost;

    .line 75
    .line 76
    invoke-static {v0, p1}, Landroid/view/InputFilter;->access$002(Landroid/view/InputFilter;Landroid/view/IInputFilterHost;)Landroid/view/IInputFilterHost;

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 80
    .line 81
    invoke-static {p1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 88
    .line 89
    invoke-static {p1}, Landroid/view/InputFilter;->access$100(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 97
    .line 98
    invoke-static {p1}, Landroid/view/InputFilter;->access$200(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_5

    .line 103
    .line 104
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 105
    .line 106
    invoke-static {p1}, Landroid/view/InputFilter;->access$200(Landroid/view/InputFilter;)Landroid/view/InputEventConsistencyVerifier;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/view/InputEventConsistencyVerifier;->reset()V

    .line 111
    .line 112
    .line 113
    :cond_5
    iget-object p1, p0, Landroid/view/InputFilter$H;->this$0:Landroid/view/InputFilter;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/view/InputFilter;->onInstalled()V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method
