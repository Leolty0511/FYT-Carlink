.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

.field final synthetic val$advertisingSid:I

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$skip:I

.field final synthetic val$status:I

.field final synthetic val$syncHandle:I

.field final synthetic val$timeout:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;ILandroid/bluetooth/BluetoothDevice;IIII)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$syncHandle:I

    iput-object p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput p4, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$advertisingSid:I

    iput p5, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$skip:I

    iput p6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$timeout:I

    iput p7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 4
    .line 5
    iget v2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$syncHandle:I

    .line 6
    .line 7
    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    .line 8
    .line 9
    iget v4, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$advertisingSid:I

    .line 10
    .line 11
    iget v5, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$skip:I

    .line 12
    .line 13
    iget v6, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$timeout:I

    .line 14
    .line 15
    iget v7, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v7}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->val$status:I

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$1;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    .line 25
    .line 26
    iget-object v1, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    .line 27
    .line 28
    iget-object v1, v1, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    .line 29
    .line 30
    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 31
    .line 32
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
