.class public interface abstract Landroid/os/IHardwarePropertiesManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IHardwarePropertiesManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
.end method

.method public abstract getDeviceTemperatures(Ljava/lang/String;II)[F
.end method

.method public abstract getFanSpeeds(Ljava/lang/String;)[F
.end method
