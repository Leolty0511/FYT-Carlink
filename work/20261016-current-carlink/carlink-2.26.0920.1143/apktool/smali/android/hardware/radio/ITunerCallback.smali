.class public interface abstract Landroid/hardware/radio/ITunerCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITunerCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAntennaState(Z)V
.end method

.method public abstract onBackgroundScanAvailabilityChange(Z)V
.end method

.method public abstract onBackgroundScanComplete()V
.end method

.method public abstract onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V
.end method

.method public abstract onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
.end method

.method public abstract onEmergencyAnnouncement(Z)V
.end method

.method public abstract onError(I)V
.end method

.method public abstract onProgramListChanged()V
.end method

.method public abstract onTrafficAnnouncement(Z)V
.end method
