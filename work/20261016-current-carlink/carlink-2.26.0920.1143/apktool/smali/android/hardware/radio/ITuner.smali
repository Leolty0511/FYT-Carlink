.class public interface abstract Landroid/hardware/radio/ITuner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITuner$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract cancelAnnouncement()V
.end method

.method public abstract close()V
.end method

.method public abstract getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
.end method

.method public abstract getImage(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;
.end method

.method public abstract getProgramList(Ljava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAnalogForced()Z
.end method

.method public abstract isAntennaConnected()Z
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isMuted()Z
.end method

.method public abstract scan(ZZ)V
.end method

.method public abstract setAnalogForced(Z)V
.end method

.method public abstract setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
.end method

.method public abstract setMuted(Z)V
.end method

.method public abstract startBackgroundScan()Z
.end method

.method public abstract step(ZZ)V
.end method

.method public abstract tune(Landroid/hardware/radio/ProgramSelector;)V
.end method
