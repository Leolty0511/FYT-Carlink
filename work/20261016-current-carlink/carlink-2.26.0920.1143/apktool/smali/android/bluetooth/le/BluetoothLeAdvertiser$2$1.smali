.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onAdvertisingSetStarted(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic val$advertiserId:I

.field final synthetic val$status:I

.field final synthetic val$txPower:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;III)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    iput p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$txPower:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 6
    .line 7
    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v1, v2, v3, v0}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 15
    .line 16
    iget-object v0, v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 23
    .line 24
    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 25
    .line 26
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance v0, Landroid/bluetooth/le/AdvertisingSet;

    .line 31
    .line 32
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    .line 33
    .line 34
    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 35
    .line 36
    iget-object v2, v2, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 37
    .line 38
    invoke-static {v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$300(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v0, v1, v2}, Landroid/bluetooth/le/AdvertisingSet;-><init>(ILandroid/bluetooth/IBluetoothManager;)V

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 46
    .line 47
    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->this$0:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->access$400(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$advertiserId:I

    .line 54
    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 63
    .line 64
    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 65
    .line 66
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$txPower:I

    .line 67
    .line 68
    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$1;->val$status:I

    .line 69
    .line 70
    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/le/AdvertisingSetCallback;->onAdvertisingSetStarted(Landroid/bluetooth/le/AdvertisingSet;II)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
