.class Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;
.super Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPhoneStateListenerStub"
.end annotation


# instance fields
.field private mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telephony/PhoneStateListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method private send(IIILjava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->mPhoneStateListenerWeakRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/telephony/PhoneStateListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Landroid/telephony/PhoneStateListener;->access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/high16 v1, 0x10000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0x400

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onCellLocationChanged(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x10

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onDataActivationStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/high16 v1, 0x40000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x80

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 2

    const/16 v0, 0x2000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 2

    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onOemHookRawEvent([B)V
    .locals 2

    const v0, 0x8000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x200

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 2

    const/16 v0, 0x800

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v2, p1, v0, v1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2

    const/16 v0, 0x100

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 2

    const/16 v0, 0x4000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method

.method public onVoiceActivationStateChanged(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/high16 v1, 0x20000

    invoke-direct {p0, v1, v0, v0, p1}, Landroid/telephony/PhoneStateListener$IPhoneStateListenerStub;->send(IIILjava/lang/Object;)V

    return-void
.end method
