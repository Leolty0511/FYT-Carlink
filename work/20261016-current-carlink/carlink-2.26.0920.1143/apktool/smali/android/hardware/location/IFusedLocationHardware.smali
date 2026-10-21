.class public interface abstract Landroid/hardware/location/IFusedLocationHardware;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardware$Stub;
    }
.end annotation


# virtual methods
.method public abstract flushBatchedLocations()V
.end method

.method public abstract getSupportedBatchSize()I
.end method

.method public abstract getVersion()I
.end method

.method public abstract injectDeviceContext(I)V
.end method

.method public abstract injectDiagnosticData(Ljava/lang/String;)V
.end method

.method public abstract registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
.end method

.method public abstract requestBatchOfLocations(I)V
.end method

.method public abstract startBatching(ILandroid/location/FusedBatchOptions;)V
.end method

.method public abstract stopBatching(I)V
.end method

.method public abstract supportsDeviceContextInjection()Z
.end method

.method public abstract supportsDiagnosticDataInjection()Z
.end method

.method public abstract unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
.end method

.method public abstract updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
.end method
