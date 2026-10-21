.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onAdvertisingSetStopped(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic val$advertiserId:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;I)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->val$advertiserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$400(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->val$advertiserId:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 20
    .line 21
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 22
    .line 23
    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStopped(Landroid/bluetooth/le/AdvertisingSet;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 29
    .line 30
    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 31
    .line 32
    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$400(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->val$advertiserId:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 46
    .line 47
    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 48
    .line 49
    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$3;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 54
    .line 55
    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 56
    .line 57
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    return-void
.end method
