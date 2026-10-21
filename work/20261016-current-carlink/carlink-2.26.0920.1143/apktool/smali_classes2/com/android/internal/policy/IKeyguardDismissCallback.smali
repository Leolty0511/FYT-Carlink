.class public interface abstract Lcom/android/internal/policy/IKeyguardDismissCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDismissCancelled()V
.end method

.method public abstract onDismissError()V
.end method

.method public abstract onDismissSucceeded()V
.end method
