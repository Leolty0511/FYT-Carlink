.class public interface abstract Landroid/telephony/mbms/IStreamingServiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/IStreamingServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBroadcastSignalStrengthUpdated(I)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onMediaDescriptionUpdated()V
.end method

.method public abstract onStreamMethodUpdated(I)V
.end method

.method public abstract onStreamStateUpdated(II)V
.end method
