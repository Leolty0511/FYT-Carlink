.class public interface abstract Landroid/os/IProgressListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProgressListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFinished(ILandroid/os/Bundle;)V
.end method

.method public abstract onProgress(IILandroid/os/Bundle;)V
.end method

.method public abstract onStarted(ILandroid/os/Bundle;)V
.end method
