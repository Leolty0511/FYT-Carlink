.class public interface abstract Landroid/net/IIpSecService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpSecService$Stub;
    }
.end annotation


# virtual methods
.method public abstract applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
.end method

.method public abstract closeUdpEncapsulationSocket(I)V
.end method

.method public abstract createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/net/IpSecTransformResponse;
.end method

.method public abstract deleteTransportModeTransform(I)V
.end method

.method public abstract openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
.end method

.method public abstract releaseSecurityParameterIndex(I)V
.end method

.method public abstract removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V
.end method

.method public abstract reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
.end method
