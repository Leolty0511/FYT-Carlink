.class public interface abstract Lcom/google/android/projection/protocol/ConnectionConfigurationCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/NativeCallback;


# virtual methods
.method public abstract onApplyTcpReadTimout(I)V
.end method

.method public abstract onApplyTcpReceiveBufferSize(I)V
.end method

.method public abstract onApplyTcpSendBufferSize(I)V
.end method

.method public abstract onRetrieveTcpReadTimeout()I
.end method

.method public abstract onRetrieveTcpReceiveBufferSize()I
.end method

.method public abstract onRetrieveTcpSendBufferSize()I
.end method
