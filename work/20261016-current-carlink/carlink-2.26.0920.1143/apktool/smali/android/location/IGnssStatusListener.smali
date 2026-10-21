.class public interface abstract Landroid/location/IGnssStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGnssStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFirstFix(I)V
.end method

.method public abstract onGnssStarted()V
.end method

.method public abstract onGnssStopped()V
.end method

.method public abstract onNmeaReceived(JLjava/lang/String;)V
.end method

.method public abstract onSvStatusChanged(I[I[F[F[F[F)V
.end method
