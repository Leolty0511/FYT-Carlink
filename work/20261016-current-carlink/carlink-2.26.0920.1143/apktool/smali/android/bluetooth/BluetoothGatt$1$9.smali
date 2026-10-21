.class Landroid/bluetooth/BluetoothGatt$1$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onDescriptorRead(Ljava/lang/String;II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

.field final synthetic val$status:I

.field final synthetic val$value:[B


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt$1;ILandroid/bluetooth/BluetoothGattDescriptor;[B)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$9;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$status:I

    iput-object p3, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    iput-object p4, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$value:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$9;->this$1:Landroid/bluetooth/BluetoothGatt$1;

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
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$status:I

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 16
    .line 17
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$value:[B

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$9;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    .line 23
    .line 24
    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    .line 25
    .line 26
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$descriptor:Landroid/bluetooth/BluetoothGattDescriptor;

    .line 27
    .line 28
    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$9;->val$status:I

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothGattCallback;->onDescriptorRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
