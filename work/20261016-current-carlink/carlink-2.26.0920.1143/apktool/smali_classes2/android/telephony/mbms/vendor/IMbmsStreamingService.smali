.class public interface abstract Landroid/telephony/mbms/vendor/IMbmsStreamingService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/mbms/vendor/IMbmsStreamingService$Stub;
    }
.end annotation


# virtual methods
.method public abstract dispose(I)V
.end method

.method public abstract getPlaybackUri(ILjava/lang/String;)Landroid/net/Uri;
.end method

.method public abstract initialize(Landroid/telephony/mbms/IMbmsStreamingSessionCallback;I)I
.end method

.method public abstract requestUpdateStreamingServices(ILjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract startStreaming(ILjava/lang/String;Landroid/telephony/mbms/IStreamingServiceCallback;)I
.end method

.method public abstract stopStreaming(ILjava/lang/String;)V
.end method
