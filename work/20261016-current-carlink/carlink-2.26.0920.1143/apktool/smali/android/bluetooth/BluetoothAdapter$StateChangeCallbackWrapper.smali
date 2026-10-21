.class public Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateChangeCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

.field final synthetic this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->this$0:Landroid/bluetooth/BluetoothAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;->mCallback:Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    invoke-interface {v0, p1}, Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;->onBluetoothStateChange(Z)V

    return-void
.end method
