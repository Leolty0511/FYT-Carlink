.class public interface abstract Landroid/os/storage/IMountService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub;
    }
.end annotation


# static fields
.field public static final ENCRYPTION_STATE_ERROR_INCOMPLETE:I = -0x2

.field public static final ENCRYPTION_STATE_ERROR_UNKNOWN:I = -0x1

.field public static final ENCRYPTION_STATE_NONE:I = 0x1

.field public static final ENCRYPTION_STATE_OK:I


# virtual methods
.method public abstract changeEncryptionPassword(Ljava/lang/String;)I
.end method

.method public abstract createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)I
.end method

.method public abstract decryptStorage(Ljava/lang/String;)I
.end method

.method public abstract destroySecureContainer(Ljava/lang/String;Z)I
.end method

.method public abstract encryptStorage(Ljava/lang/String;)I
.end method

.method public abstract finalizeSecureContainer(Ljava/lang/String;)I
.end method

.method public abstract finishMediaUpdate()V
.end method

.method public abstract fixPermissionsSecureContainer(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract formatVolume(Ljava/lang/String;)I
.end method

.method public abstract getEncryptionState()I
.end method

.method public abstract getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecureContainerFilesystemPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSecureContainerList()[Ljava/lang/String;
.end method

.method public abstract getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getStorageUsers(Ljava/lang/String;)[I
.end method

.method public abstract getUmsRecoverying()Z
.end method

.method public abstract getVolumeList()[Landroid/os/storage/StorageVolume;
.end method

.method public abstract getVolumeState(Ljava/lang/String;)Ljava/lang/String;
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

.method public abstract mkdirs(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
.end method

.method public abstract mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract mountVolume(Ljava/lang/String;)I
.end method

.method public abstract registerListener(Landroid/os/storage/IMountServiceListener;)V
.end method

.method public abstract renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract setUsbMassStorageEnabled(Z)V
.end method

.method public abstract shutdown(Landroid/os/storage/IMountShutdownObserver;)V
.end method

.method public abstract unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
.end method

.method public abstract unmountSecureContainer(Ljava/lang/String;Z)I
.end method

.method public abstract unmountVolume(Ljava/lang/String;ZZ)V
.end method

.method public abstract unregisterListener(Landroid/os/storage/IMountServiceListener;)V
.end method

.method public abstract verifyEncryptionPassword(Ljava/lang/String;)I
.end method
