.class Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncChannelConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method public constructor <init>(Lcom/android/internal/util/AsyncChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/a;->a(Landroid/content/ServiceConnection;Landroid/content/ComponentName;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    .line 2
    .line 3
    new-instance v0, Landroid/os/Messenger;

    .line 4
    .line 5
    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/android/internal/util/AsyncChannel;->access$502(Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)Landroid/os/Messenger;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-static {p1, p2}, Lcom/android/internal/util/AsyncChannel;->access$000(Lcom/android/internal/util/AsyncChannel;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/android/internal/util/AsyncChannel$AsyncChannelConnection;->this$0:Lcom/android/internal/util/AsyncChannel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/util/AsyncChannel;->access$600(Lcom/android/internal/util/AsyncChannel;I)V

    return-void
.end method
