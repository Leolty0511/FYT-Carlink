.class Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/embedded/service/BackgroundService;->connect(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

.field final synthetic val$btDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/service/BackgroundService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;->this$0:Lcom/google/android/projection/sink/embedded/service/BackgroundService;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;->val$btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const-string v0, "AHU.Back"

    .line 2
    .line 3
    const-string v1, "Failed to open wifi ap "

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Void;)V
    .locals 1

    const-string p1, "AHU.Back"

    const-string v0, "wifi ap opened "

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance p1, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1$1;

    invoke-direct {p1, p0}, Lcom/google/android/projection/sink/embedded/service/BackgroundService$1$1;-><init>(Lcom/google/android/projection/sink/embedded/service/BackgroundService$1;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
