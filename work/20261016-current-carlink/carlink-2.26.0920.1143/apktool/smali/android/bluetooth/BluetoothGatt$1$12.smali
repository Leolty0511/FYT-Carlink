.class Landroid/bluetooth/BluetoothGatt$1$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onReadRemoteRssi(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic val$rssi:I

.field final synthetic val$status:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt$1;II)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$12;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$12;->val$rssi:I

    iput p3, p0, Landroid/bluetooth/BluetoothGatt$1$12;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$12;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$100(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$12;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    .line 12
    .line 13
    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    .line 14
    .line 15
    iget v2, p0, Landroid/bluetooth/BluetoothGatt$1$12;->val$rssi:I

    .line 16
    .line 17
    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$12;->val$status:I

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCallback;->onReadRemoteRssi(Landroid/bluetooth/BluetoothGatt;II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
