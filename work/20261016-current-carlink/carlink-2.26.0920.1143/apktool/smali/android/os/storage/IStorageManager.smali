.class public interface abstract Landroid/os/storage/IStorageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IStorageManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addUserKeyAuth(II[B[B)V
.end method

.method public abstract allocateBytes(Ljava/lang/String;JILjava/lang/String;)V
.end method

.method public abstract benchmark(Ljava/lang/String;)J
.end method

.method public abstract changeEncryptionPassword(ILjava/lang/String;)I
.end method

.method public abstract clearPassword()V
.end method

.method public abstract createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
.end method

.method public abstract createUserKey(IIZ)V
.end method

.method public abstract decryptStorage(Ljava/lang/String;)I
.end method

.method public abstract destroySecureContainer(Ljava/lang/String;Z)I
.end method

.method public abstract destroyUserKey(I)V
.end method

.method public abstract destroyUserStorage(Ljava/lang/String;II)V
.end method

.method public abstract encryptStorage(ILjava/lang/String;)I
.end method

.method public abstract finalizeSecureContainer(Ljava/lang/String;)I
.end method

.method public abstract finishMediaUpdate()V
.end method

.method public abstract fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract fixateNewestUserKeyAuth(I)V
.end method

.method public abstract forgetAllVolumes()V
.end method

.method public abstract forgetVolume(Ljava/lang/String;)V
.end method

.method public abstract format(Ljava/lang/String;)V
.end method

.method public abstract formatVolume(Ljava/lang/String;)I
.end method

.method public abstract fstrim(I)V
.end method

.method public abstract getAllocatableBytes(Ljava/lang/String;ILjava/lang/String;)J
.end method

.method public abstract getCacheQuotaBytes(Ljava/lang/String;I)J
.end method

.method public abstract getCacheSizeBytes(Ljava/lang/String;I)J
.end method

.method public abstract getDisks()[Landroid/os/storage/DiskInfo;
.end method

.method public abstract getEncryptionState()I
.end method

.method public abstract getField(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getPassword()Ljava/lang/String;
.end method

.method public abstract getPasswordType()I
.end method

.method public abstract getPrimaryEmulatedStorageUuid()Ljava/lang/String;
.end method

.method public abstract getPrimaryStorageUuid()Ljava/lang/String;
.end method

.method public abstract getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecureContainerList()[Ljava/lang/String;
.end method

.method public abstract getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStorageUsers(Ljava/lang/String;)[I
.end method

.method public abstract getVolumeList(ILjava/lang/String;I)[Landroid/os/storage/StorageVolume;
.end method

.method public abstract getVolumeRecords(I)[Landroid/os/storage/VolumeRecord;
.end method

.method public abstract getVolumeState(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getVolumes(I)[Landroid/os/storage/VolumeInfo;
.end method

.method public abstract isConvertibleToFBE()Z
.end method

.method public abstract isExternalStorageEmulated()Z
.end method

.method public abstract isObbMounted(Ljava/lang/String;)Z
.end method

.method public abstract isSecureContainerMounted(Ljava/lang/String;)Z
.end method

.method public abstract isUsbMassStorageConnected()Z
.end method

.method public abstract isUsbMassStorageEnabled()Z
.end method

.method public abstract isUserKeyUnlocked(I)Z
.end method

.method public abstract lastMaintenance()J
.end method

.method public abstract lockUserKey(I)V
.end method

.method public abstract mkdirs(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract mount(Ljava/lang/String;)V
.end method

.method public abstract mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
.end method

.method public abstract mountProxyFileDescriptorBridge()Lcom/android/internal/os/AppFuseMount;
.end method

.method public abstract mountSecureContainer(Ljava/lang/String;Ljava/lang/String;IZ)I
.end method

.method public abstract mountVolume(Ljava/lang/String;)I
.end method

.method public abstract openProxyFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract partitionMixed(Ljava/lang/String;I)V
.end method

.method public abstract partitionPrivate(Ljava/lang/String;)V
.end method

.method public abstract partitionPublic(Ljava/lang/String;)V
.end method

.method public abstract prepareUserStorage(Ljava/lang/String;III)V
.end method

.method public abstract registerListener(Landroid/os/storage/IStorageEventListener;)V
.end method

.method public abstract renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract resizeSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract runMaintenance()V
.end method

.method public abstract secdiscard(Ljava/lang/String;)V
.end method

.method public abstract setDebugFlags(II)V
.end method

.method public abstract setField(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPrimaryEmulatedStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
.end method

.method public abstract setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
.end method

.method public abstract setUsbMassStorageEnabled(Z)V
.end method

.method public abstract setVolumeNickname(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setVolumeUserFlags(Ljava/lang/String;II)V
.end method

.method public abstract shutdown(Landroid/os/storage/IStorageShutdownObserver;)V
.end method

.method public abstract unlockUserKey(II[B[B)V
.end method

.method public abstract unmount(Ljava/lang/String;)V
.end method

.method public abstract unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
.end method

.method public abstract unmountSecureContainer(Ljava/lang/String;Z)I
.end method

.method public abstract unmountVolume(Ljava/lang/String;ZZ)V
.end method

.method public abstract unregisterListener(Landroid/os/storage/IStorageEventListener;)V
.end method

.method public abstract verifyEncryptionPassword(Ljava/lang/String;)I
.end method

.method public abstract waitForAsecScan()V
.end method
