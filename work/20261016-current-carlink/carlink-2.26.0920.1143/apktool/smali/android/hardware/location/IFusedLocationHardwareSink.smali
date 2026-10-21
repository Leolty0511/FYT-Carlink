.class public interface abstract Landroid/hardware/location/IFusedLocationHardwareSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardwareSink$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCapabilities(I)V
.end method

.method public abstract onDiagnosticDataAvailable(Ljava/lang/String;)V
.end method

.method public abstract onLocationAvailable([Landroid/location/Location;)V
.end method

.method public abstract onStatusChanged(I)V
.end method
