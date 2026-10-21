.class public interface abstract Landroid/os/IRecoverySystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IRecoverySystem$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearBcb()Z
.end method

.method public abstract rebootRecoveryWithCommand(Ljava/lang/String;)V
.end method

.method public abstract setupBcb(Ljava/lang/String;)Z
.end method

.method public abstract uncrypt(Ljava/lang/String;Landroid/os/IRecoverySystemProgressListener;)Z
.end method
