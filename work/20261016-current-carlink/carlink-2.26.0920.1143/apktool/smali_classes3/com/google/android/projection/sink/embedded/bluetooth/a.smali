.class public final synthetic Lcom/google/android/projection/sink/embedded/bluetooth/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

.field public final synthetic b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/a;->a:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    iput-object p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/a;->b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/a;->a:Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/a;->b:Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;

    invoke-static {v0, v1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->c(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
