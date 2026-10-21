.class public interface abstract Lcom/google/android/projection/protocol/GalReceiver$AppMessageListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/GalReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppMessageListener"
.end annotation


# virtual methods
.method public abstract onBatteryStatusNotification(IIZ)V
.end method

.method public abstract onDisconnected(Lcom/google/android/projection/protocol/Transport$StopReason;)V
    .param p1    # Lcom/google/android/projection/protocol/Transport$StopReason;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onNavigationFocusRequest(I)V
.end method

.method public abstract onPoorWirelessNetworkConnectivity()V
.end method

.method public abstract onUnrecoverableError(Lcom/google/android/projection/proto/Protos$MessageStatus;)V
.end method

.method public abstract onVoiceSessionNotification(I)V
.end method
