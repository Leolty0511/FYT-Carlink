.class public interface abstract Landroid/location/IGpsStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFirstFix(I)V
.end method

.method public abstract onGpsStarted()V
.end method

.method public abstract onGpsStopped()V
.end method

.method public abstract onNmeaReceived(JLjava/lang/String;)V
.end method

.method public abstract onSvStatusChanged(I[I[F[F[F[I[I[I)V
.end method
