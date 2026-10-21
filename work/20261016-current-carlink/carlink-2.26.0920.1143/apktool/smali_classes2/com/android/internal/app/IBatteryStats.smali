.class public interface abstract Lcom/android/internal/app/IBatteryStats;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub;
    }
.end annotation


# virtual methods
.method public abstract computeBatteryTimeRemaining()J
.end method

.method public abstract computeChargeTimeRemaining()J
.end method

.method public abstract getAwakeTimeBattery()J
.end method

.method public abstract getAwakeTimePlugged()J
.end method

.method public abstract getStatistics()[B
.end method

.method public abstract getStatisticsStream()Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract isCharging()Z
.end method

.method public abstract noteBleScanResults(Landroid/os/WorkSource;I)V
.end method

.method public abstract noteBleScanStarted(Landroid/os/WorkSource;Z)V
.end method

.method public abstract noteBleScanStopped(Landroid/os/WorkSource;Z)V
.end method

.method public abstract noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
.end method

.method public abstract noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract noteConnectivityChanged(ILjava/lang/String;)V
.end method

.method public abstract noteDeviceIdleMode(ILjava/lang/String;I)V
.end method

.method public abstract noteEvent(ILjava/lang/String;I)V
.end method

.method public abstract noteFlashlightOff(I)V
.end method

.method public abstract noteFlashlightOn(I)V
.end method

.method public abstract noteFullWifiLockAcquired(I)V
.end method

.method public abstract noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
.end method

.method public abstract noteFullWifiLockReleased(I)V
.end method

.method public abstract noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
.end method

.method public abstract noteInteractive(Z)V
.end method

.method public abstract noteJobFinish(Ljava/lang/String;II)V
.end method

.method public abstract noteJobStart(Ljava/lang/String;I)V
.end method

.method public abstract noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract noteMobileRadioPowerState(IJI)V
.end method

.method public abstract noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
.end method

.method public abstract noteNetworkInterfaceType(Ljava/lang/String;I)V
.end method

.method public abstract noteNetworkStatsEnabled()V
.end method

.method public abstract notePhoneDataConnectionState(IZ)V
.end method

.method public abstract notePhoneOff()V
.end method

.method public abstract notePhoneOn()V
.end method

.method public abstract notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
.end method

.method public abstract notePhoneState(I)V
.end method

.method public abstract noteResetAudio()V
.end method

.method public abstract noteResetBleScan()V
.end method

.method public abstract noteResetCamera()V
.end method

.method public abstract noteResetFlashlight()V
.end method

.method public abstract noteResetVideo()V
.end method

.method public abstract noteScreenBrightness(I)V
.end method

.method public abstract noteScreenState(I)V
.end method

.method public abstract noteStartAudio(I)V
.end method

.method public abstract noteStartCamera(I)V
.end method

.method public abstract noteStartGps(I)V
.end method

.method public abstract noteStartSensor(II)V
.end method

.method public abstract noteStartVideo(I)V
.end method

.method public abstract noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
.end method

.method public abstract noteStopAudio(I)V
.end method

.method public abstract noteStopCamera(I)V
.end method

.method public abstract noteStopGps(I)V
.end method

.method public abstract noteStopSensor(II)V
.end method

.method public abstract noteStopVideo(I)V
.end method

.method public abstract noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract noteSyncFinish(Ljava/lang/String;I)V
.end method

.method public abstract noteSyncStart(Ljava/lang/String;I)V
.end method

.method public abstract noteUserActivity(II)V
.end method

.method public abstract noteVibratorOff(I)V
.end method

.method public abstract noteVibratorOn(IJ)V
.end method

.method public abstract noteWakeUp(Ljava/lang/String;I)V
.end method

.method public abstract noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
.end method

.method public abstract noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
.end method

.method public abstract noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V
.end method

.method public abstract noteWifiMulticastDisabled(I)V
.end method

.method public abstract noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V
.end method

.method public abstract noteWifiMulticastEnabled(I)V
.end method

.method public abstract noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V
.end method

.method public abstract noteWifiOff()V
.end method

.method public abstract noteWifiOn()V
.end method

.method public abstract noteWifiRadioPowerState(IJI)V
.end method

.method public abstract noteWifiRssiChanged(I)V
.end method

.method public abstract noteWifiRunning(Landroid/os/WorkSource;)V
.end method

.method public abstract noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
.end method

.method public abstract noteWifiScanStarted(I)V
.end method

.method public abstract noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
.end method

.method public abstract noteWifiScanStopped(I)V
.end method

.method public abstract noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
.end method

.method public abstract noteWifiState(ILjava/lang/String;)V
.end method

.method public abstract noteWifiStopped(Landroid/os/WorkSource;)V
.end method

.method public abstract noteWifiSupplicantStateChanged(IZ)V
.end method

.method public abstract setBatteryState(IIIIIIII)V
.end method

.method public abstract takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
.end method

.method public abstract takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
.end method
