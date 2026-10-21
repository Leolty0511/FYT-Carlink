.class public interface abstract Landroid/hardware/IConsumerIrService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/IConsumerIrService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCarrierFrequencies()[I
.end method

.method public abstract hasIrEmitter()Z
.end method

.method public abstract transmit(Ljava/lang/String;I[I)V
.end method
