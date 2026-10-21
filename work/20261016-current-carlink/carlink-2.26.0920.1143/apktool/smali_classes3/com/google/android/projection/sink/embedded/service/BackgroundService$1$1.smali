.class Lcom/google/android/projection/sink/embedded/service/BackgroundService$1$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;->onSuccess(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1$1;->this$1:Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3e8

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1$1;->this$1:Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;->this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/google/android/projection/sink/embedded/service/BackgroundService;->bluetoothExplorer:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->startProjectingTo(Landroid/bluetooth/BluetoothDevice;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    .line 17
    return-void
.end method
