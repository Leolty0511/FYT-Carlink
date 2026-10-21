.class public interface abstract Landroid/media/tv/ITvRemoteServiceInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvRemoteServiceInput$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearInputBridge(Landroid/os/IBinder;)V
.end method

.method public abstract closeInputBridge(Landroid/os/IBinder;)V
.end method

.method public abstract openInputBridge(Landroid/os/IBinder;Ljava/lang/String;III)V
.end method

.method public abstract sendKeyDown(Landroid/os/IBinder;I)V
.end method

.method public abstract sendKeyUp(Landroid/os/IBinder;I)V
.end method

.method public abstract sendPointerDown(Landroid/os/IBinder;III)V
.end method

.method public abstract sendPointerSync(Landroid/os/IBinder;)V
.end method

.method public abstract sendPointerUp(Landroid/os/IBinder;I)V
.end method

.method public abstract sendTimestamp(Landroid/os/IBinder;J)V
.end method
