.class public final synthetic Lcom/google/android/projection/sink/embedded/bluetooth/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/projection/sink/embedded/bluetooth/e;->a:I

    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/e;->a:I

    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/e;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;

    invoke-static {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;->a(Lcom/google/android/projection/sink/embedded/bluetooth/RfCommConnection$BluetoothConnection;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :goto_0
    check-cast v1, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;

    invoke-static {v1}, Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;->b(Lcom/google/android/projection/sink/embedded/bluetooth/BluetoothExplorer;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
