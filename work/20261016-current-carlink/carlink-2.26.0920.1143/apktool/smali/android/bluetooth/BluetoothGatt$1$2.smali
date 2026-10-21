.class Landroid/bluetooth/BluetoothGatt$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/BluetoothGatt$1;->onPhyUpdate(Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/BluetoothGatt$1;

.field final synthetic val$rxPhy:I

.field final synthetic val$status:I

.field final synthetic val$txPhy:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothGatt$1;III)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt$1$2;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    iput p2, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$txPhy:I

    iput p3, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$rxPhy:I

    iput p4, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt$1$2;->this$1:Landroid/bluetooth/BluetoothGatt$1;

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
    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt$1$2;->this$1:Landroid/bluetooth/BluetoothGatt$1;

    .line 12
    .line 13
    iget-object v1, v1, Landroid/bluetooth/BluetoothGatt$1;->this$0:Landroid/bluetooth/BluetoothGatt;

    .line 14
    .line 15
    iget v2, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$txPhy:I

    .line 16
    .line 17
    iget v3, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$rxPhy:I

    .line 18
    .line 19
    iget v4, p0, Landroid/bluetooth/BluetoothGatt$1$2;->val$status:I

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCallback;->onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
