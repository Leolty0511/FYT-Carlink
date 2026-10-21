.class interface abstract Lcom/google/android/projection/protocol/VideoSinkCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/NativeCallback;


# virtual methods
.method public abstract actionTakenNotificationCallback(I)V
.end method

.method public abstract codecConfigCallback([B)I
.end method

.method public abstract dataAvailableCallback(IJLjava/nio/ByteBuffer;)V
.end method

.method public abstract playbackStartCallback(I)V
.end method

.method public abstract playbackStopCallback(I)V
.end method

.method public abstract setupCallback(I)I
.end method

.method public abstract sourceVideoConfigCallback(I)V
.end method

.method public abstract updateUiConfigReplyCallback([B)V
.end method

.method public abstract videoFocusCallback(II)V
.end method
