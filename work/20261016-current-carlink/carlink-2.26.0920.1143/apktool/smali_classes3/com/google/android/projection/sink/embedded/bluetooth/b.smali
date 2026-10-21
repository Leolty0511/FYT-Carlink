.class public final synthetic Lcom/google/android/projection/sink/embedded/bluetooth/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

.field public final synthetic b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

.field public final synthetic c:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/b;->a:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    iput-object p3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/b;->b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/b;->c:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/b;->b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/b;->c:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/b;->a:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-static {v2, v1, v0}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->a(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Landroid/bluetooth/BluetoothDevice;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
