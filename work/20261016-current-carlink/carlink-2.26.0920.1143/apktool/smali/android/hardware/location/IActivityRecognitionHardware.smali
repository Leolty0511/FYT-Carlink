.class public interface abstract Landroid/hardware/location/IActivityRecognitionHardware;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardware$Stub;
    }
.end annotation


# virtual methods
.method public abstract disableActivityEvent(Ljava/lang/String;I)Z
.end method

.method public abstract enableActivityEvent(Ljava/lang/String;IJ)Z
.end method

.method public abstract flush()Z
.end method

.method public abstract getSupportedActivities()[Ljava/lang/String;
.end method

.method public abstract isActivitySupported(Ljava/lang/String;)Z
.end method

.method public abstract registerSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
.end method

.method public abstract unregisterSink(Landroid/hardware/location/IActivityRecognitionHardwareSink;)Z
.end method
