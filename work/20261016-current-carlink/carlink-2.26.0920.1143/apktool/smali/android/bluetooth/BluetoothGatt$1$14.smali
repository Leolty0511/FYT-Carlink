.class Landroid/bluetooth/BluetoothGatt$1$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onConnectionUpdated(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic val$interval:I

.field final synthetic val$latency:I

.field final synthetic val$status:I

.field final synthetic val$timeout:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt$1;IIII)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$14;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$14;->val$interval:I

    iput p3, p0, Landroid/bluetooth/BluetoothGatt$1$14;->val$latency:I

    iput p4, p0, Landroid/bluetooth/BluetoothGatt$1$14;->val$timeout:I

    iput p5, p0, Landroid/bluetooth/BluetoothGatt$1$14;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$14;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/bluetooth/BluetoothGatt;->access$100(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$14;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    .line 12
    .line 13
    iget-object v2, v0, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    .line 14
    .line 15
    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$14;->val$interval:I

    .line 16
    .line 17
    iget v4, p0, Landroid/bluetooth/BluetoothGatt$1$14;->val$latency:I

    .line 18
    .line 19
    iget v5, p0, Landroid/bluetooth/BluetoothGatt$1$14;->val$timeout:I

    .line 20
    .line 21
    iget v6, p0, Landroid/bluetooth/BluetoothGatt$1$14;->val$status:I

    .line 22
    .line 23
    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/BluetoothGattCallback;->onConnectionUpdated(Landroid/bluetooth/BluetoothGatt;IIII)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method
