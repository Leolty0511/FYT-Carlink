.class Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->onScanResponseDataSet(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field final synthetic val$advertiserId:I

.field final synthetic val$status:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;II)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;->val$advertiserId:I

    iput p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

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
    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;->val$advertiserId:I

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
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;->this$1:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    .line 22
    .line 23
    iget-object v1, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->val$callback:Landroid/bluetooth/le/AdvertisingSetCallback;

    .line 24
    .line 25
    iget v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$6;->val$status:I

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Landroid/bluetooth/le/AdvertisingSetCallback;->onScanResponseDataSet(Landroid/bluetooth/le/AdvertisingSet;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
