.class Landroid/bluetooth/BluetoothHeadset$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothHeadset;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x64

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/16 v0, 0x65

    .line 9
    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 14
    .line 15
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 22
    .line 23
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 32
    .line 33
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/bluetooth/BluetoothHeadset;->access$300(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 46
    .line 47
    invoke-interface {p1, v1, v0}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_0
    return-void
.end method
