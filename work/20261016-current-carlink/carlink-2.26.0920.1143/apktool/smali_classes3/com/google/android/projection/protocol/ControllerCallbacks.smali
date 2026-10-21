.class interface abstract Lcom/google/android/projection/protocol/ControllerCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/NativeCallback;


# virtual methods
.method public abstract audioFocusRequestCallback(I)V
.end method

.method public abstract batteryStatusNotificationCallback(IIZ)V
.end method

.method public abstract bugreportRequestCallback(J)V
.end method

.method public abstract byeByeRequestCallback(I)V
.end method

.method public abstract byeByeResponseCallback()V
.end method

.method public abstract carConnectedDevicesRequestCallback()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract highLatencyCallback([I)V
.end method

.method public abstract latencyBackToNormalCallback([I)V
.end method

.method public abstract navigationFocusCallback(I)V
.end method

.method public abstract serviceDiscoveryRequestCallback([B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unrecoverableErrorCallback(I)V
.end method

.method public abstract userSwitchRequestCallback(Lcom/google/android/projection/protocol/GalReceiver$ConnectedDevice;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract voiceSessionNotificationCallback(I)V
.end method
