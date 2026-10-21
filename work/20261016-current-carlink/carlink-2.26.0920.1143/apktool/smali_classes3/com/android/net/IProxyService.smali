.class public interface abstract Lcom/android/net/IProxyService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/IProxyService$Stub;
    }
.end annotation


# virtual methods
.method public abstract resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract setPacFile(Ljava/lang/String;)V
.end method

.method public abstract startPacSystem()V
.end method

.method public abstract stopPacSystem()V
.end method
