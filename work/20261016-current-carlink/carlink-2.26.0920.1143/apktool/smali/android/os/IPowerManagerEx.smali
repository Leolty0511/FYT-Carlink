.class public interface abstract Landroid/os/IPowerManagerEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManagerEx$Stub;
    }
.end annotation


# virtual methods
.method public abstract addAllowedAppInUltraSavingMode(Ljava/lang/String;)Z
.end method

.method public abstract delAllowedAppInUltraSavingMode(Ljava/lang/String;)Z
.end method

.method public abstract forcePowerSaveMode(Z)Z
.end method

.method public abstract getAllowedAppListInUltraSavingMode()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppNumWithSpecificConfig(II)I
.end method

.method public abstract getAppPowerSaveConfig(Ljava/lang/String;)Landroid/os/AppPowerSaveConfig;
.end method

.method public abstract getAppPowerSaveConfigWithType(Ljava/lang/String;I)I
.end method

.method public abstract getAutoLowPower_BattValue()I
.end method

.method public abstract getAutoLowPower_Enable()Z
.end method

.method public abstract getAutoLowPower_ExitWithPower()Z
.end method

.method public abstract getAutoLowPower_Mode()I
.end method

.method public abstract getPowerSaveMode()I
.end method

.method public abstract getPrePowerSaveMode()I
.end method

.method public abstract getSchedulePowerMode_EndTime()I
.end method

.method public abstract getSchedulePowerMode_StartTime()I
.end method

.method public abstract getSchedule_Enable()Z
.end method

.method public abstract getSchedule_Mode()I
.end method

.method public abstract rebootAnimation()V
.end method

.method public abstract scheduleButtonLightTimeout(J)V
.end method

.method public abstract setAppPowerSaveConfig(Ljava/lang/String;Landroid/os/AppPowerSaveConfig;)Z
.end method

.method public abstract setAppPowerSaveConfigListWithType(Ljava/util/List;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation
.end method

.method public abstract setAppPowerSaveConfigWithType(Ljava/lang/String;II)Z
.end method

.method public abstract setAutoLowPower_BattValue(I)Z
.end method

.method public abstract setAutoLowPower_Enable(Z)Z
.end method

.method public abstract setAutoLowPower_ExitWithPower(Z)Z
.end method

.method public abstract setAutoLowPower_Mode(I)Z
.end method

.method public abstract setEventUserActivityNeeded(Z)V
.end method

.method public abstract setPowerSaveMode(I)Z
.end method

.method public abstract setSchedulePowerMode_EndTime(II)Z
.end method

.method public abstract setSchedulePowerMode_StartTime(II)Z
.end method

.method public abstract setSchedule_Enable(Z)Z
.end method

.method public abstract setSchedule_Mode(I)Z
.end method

.method public abstract shutdownForAlarm(ZZ)V
.end method
