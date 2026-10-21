.class public interface abstract Lcom/syu/ipc/IRemoteToolkit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/ipc/IRemoteToolkit$Stub;
    }
.end annotation


# virtual methods
.method public abstract getRemoteModule(I)Lcom/syu/ipc/IRemoteModule;
.end method

.method public abstract ismapapplication(I)I
.end method

.method public abstract notify(ILjava/lang/String;)V
.end method

.method public abstract procName(I)Ljava/lang/String;
.end method

.method public abstract sendToSyuServiceAudioInformation(I[I[F[Ljava/lang/String;)V
.end method
