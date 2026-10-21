.class public Lcom/google/android/projection/protocol/BluetoothEndpoint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;
.implements Lcom/google/android/projection/protocol/BluetoothCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;
    }
.end annotation


# instance fields
.field private final mCarBluetoothAddress:Ljava/lang/String;

.field private final mListener:Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;

.field private mNativeBluetoothEndpoint:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field

.field private final mSupportedBluetoothPairingMethods:[I


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mListener:Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mCarBluetoothAddress:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mSupportedBluetoothPairingMethods:[I

    .line 9
    .line 10
    return-void
.end method

.method private native nativeInit(IJ)I
.end method

.method private native nativeOnReadyForPairing(Z)V
.end method

.method private native nativeRequestDelayedPairing()V
.end method

.method private native nativeSendAuthData(Ljava/lang/String;I)V
.end method

.method private native nativeSendBluetoothUnavailable()V
.end method

.method private native nativeSetDeviceInfo(Ljava/lang/String;[I)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public create(IJ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeInit(IJ)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mCarBluetoothAddress:Ljava/lang/String;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mSupportedBluetoothPairingMethods:[I

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeSetDeviceInfo(Ljava/lang/String;[I)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public destroy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeShutdown()V

    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mNativeBluetoothEndpoint:J

    return-wide v0
.end method

.method public onAuthenticationResult(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mListener:Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;->onAuthenticationResult(I)V

    return-void
.end method

.method public onPairingRequest(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/BluetoothEndpoint;->mListener:Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/projection/protocol/BluetoothEndpoint$BluetoothEventListener;->onPairingRequest(Ljava/lang/String;I)V

    return-void
.end method

.method public onReadyForPairing(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeOnReadyForPairing(Z)V

    return-void
.end method

.method public requestDelayedPairing()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeRequestDelayedPairing()V

    return-void
.end method

.method public sendAuthData(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeSendAuthData(Ljava/lang/String;I)V

    return-void
.end method

.method public sendBluetoothUnavailable()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/BluetoothEndpoint;->nativeSendBluetoothUnavailable()V

    return-void
.end method
