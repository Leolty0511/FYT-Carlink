.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_ON_FINISH:I = 0x4

.field public static final MSG_ON_KILL:I = 0x5

.field public static final MSG_ON_LAYOUT:I = 0x2

.field public static final MSG_ON_START:I = 0x1

.field public static final MSG_ON_WRITE:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/os/Looper;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_4

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_3

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x5

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Unknown message: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget p1, p1, Landroid/os/Message;->what:I

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/RuntimeException;

    .line 45
    .line 46
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw v0

    .line 50
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Landroid/print/PrintDocumentAdapter;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 58
    .line 59
    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$000(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    monitor-enter v0

    .line 64
    :try_start_0
    iget-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyHandler;->this$0:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    .line 65
    .line 66
    invoke-static {p1}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->access$100(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)V

    .line 67
    .line 68
    .line 69
    monitor-exit v0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1

    .line 74
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 77
    .line 78
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Landroid/print/PrintDocumentAdapter;

    .line 81
    .line 82
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast v1, [Landroid/print/PageRange;

    .line 85
    .line 86
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 89
    .line 90
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v3, Landroid/os/CancellationSignal;

    .line 93
    .line 94
    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v4, Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/print/PrintDocumentAdapter;->onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 108
    .line 109
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 110
    .line 111
    move-object v1, v0

    .line 112
    check-cast v1, Landroid/print/PrintDocumentAdapter;

    .line 113
    .line 114
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 115
    .line 116
    move-object v2, v0

    .line 117
    check-cast v2, Landroid/print/PrintAttributes;

    .line 118
    .line 119
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 120
    .line 121
    move-object v3, v0

    .line 122
    check-cast v3, Landroid/print/PrintAttributes;

    .line 123
    .line 124
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 125
    .line 126
    move-object v4, v0

    .line 127
    check-cast v4, Landroid/os/CancellationSignal;

    .line 128
    .line 129
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 130
    .line 131
    move-object v5, v0

    .line 132
    check-cast v5, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;

    .line 133
    .line 134
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 135
    .line 136
    move-object v6, v0

    .line 137
    check-cast v6, Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {v1 .. v6}, Landroid/print/PrintDocumentAdapter;->onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast p1, Landroid/print/PrintDocumentAdapter;

    .line 149
    .line 150
    invoke-virtual {p1}, Landroid/print/PrintDocumentAdapter;->onStart()V

    .line 151
    .line 152
    .line 153
    :goto_0
    return-void
.end method
