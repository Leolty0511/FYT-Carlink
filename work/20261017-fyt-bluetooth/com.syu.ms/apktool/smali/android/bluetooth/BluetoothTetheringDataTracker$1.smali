.class Landroid/bluetooth/BluetoothTetheringDataTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothTetheringDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothTetheringDataTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$002(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/bluetooth/BluetoothTetheringDataTracker$1;->this$0:Landroid/bluetooth/BluetoothTetheringDataTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothTetheringDataTracker;->access$002(Landroid/bluetooth/BluetoothTetheringDataTracker;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    return-void
.end method
