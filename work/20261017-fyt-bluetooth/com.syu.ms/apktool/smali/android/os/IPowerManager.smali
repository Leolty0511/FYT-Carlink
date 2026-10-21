.class public interface abstract Landroid/os/IPowerManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
.end method

.method public abstract acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract crash(Ljava/lang/String;)V
.end method

.method public abstract goToSleep(JI)V
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isWakeLockLevelSupported(I)Z
.end method

.method public abstract nap(J)V
.end method

.method public abstract reboot(ZLjava/lang/String;Z)V
.end method

.method public abstract releaseWakeLock(Landroid/os/IBinder;I)V
.end method

.method public abstract setAttentionLight(ZI)V
.end method

.method public abstract setMaximumScreenOffTimeoutFromDeviceAdmin(I)V
.end method

.method public abstract setStayOnSetting(I)V
.end method

.method public abstract setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
.end method

.method public abstract setTemporaryScreenBrightnessSettingOverride(I)V
.end method

.method public abstract shutdown(ZZ)V
.end method

.method public abstract updateWakeLockUids(Landroid/os/IBinder;[I)V
.end method

.method public abstract updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
.end method

.method public abstract userActivity(JII)V
.end method

.method public abstract wakeUp(J)V
.end method
