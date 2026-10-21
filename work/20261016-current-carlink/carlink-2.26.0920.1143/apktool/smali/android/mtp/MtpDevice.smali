.class public final Landroid/mtp/MtpDevice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpDevice"


# instance fields
.field private mCloseGuard:Ldalvik/system/CloseGuard;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mConnection:Landroid/hardware/usb/UsbDeviceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDevice:Landroid/hardware/usb/UsbDevice;

.field private final mLock:Ljava/lang/Object;

.field private mNativeContext:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "media_jni"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    new-instance v0, Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$000(Landroid/mtp/MtpDevice;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_discard_event_request(I)V

    return-void
.end method

.method private native native_close()V
.end method

.method private native native_delete_object(I)Z
.end method

.method private native native_discard_event_request(I)V
.end method

.method private native native_get_device_info()Landroid/mtp/MtpDeviceInfo;
.end method

.method private native native_get_object(IJ)[B
.end method

.method private native native_get_object_handles(III)[I
.end method

.method private native native_get_object_info(I)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_get_object_size_long(II)J
.end method

.method private native native_get_parent(I)I
.end method

.method private native native_get_partial_object(IJJ[B)J
.end method

.method private native native_get_partial_object_64(IJJ[B)I
.end method

.method private native native_get_storage_id(I)I
.end method

.method private native native_get_storage_ids()[I
.end method

.method private native native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;
.end method

.method private native native_get_thumbnail(I)[B
.end method

.method private native native_import_file(II)Z
.end method

.method private native native_import_file(ILjava/lang/String;)Z
.end method

.method private native native_open(Ljava/lang/String;I)Z
.end method

.method private native native_reap_event_request(I)Landroid/mtp/MtpEvent;
.end method

.method private native native_send_object(IJI)Z
.end method

.method private native native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
.end method

.method private native native_submit_event_request()I
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 9
    .line 10
    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_close()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 23
    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw v1
.end method

.method public deleteObject(I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_delete_object(I)Z

    move-result p1

    return p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/mtp/MtpDevice;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public getDeviceId()I
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceId()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Landroid/mtp/MtpDeviceInfo;
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_device_info()Landroid/mtp/MtpDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject(II)[B
    .locals 2

    .line 1
    const-string/jumbo v0, "objectSize should not be negative"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    int-to-long v0, p2

    .line 8
    invoke-direct {p0, p1, v0, v1}, Landroid/mtp/MtpDevice;->native_get_object(IJ)[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public getObjectHandles(III)[I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDevice;->native_get_object_handles(III)[I

    move-result-object p1

    return-object p1
.end method

.method public getObjectInfo(I)Landroid/mtp/MtpObjectInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_object_info(I)Landroid/mtp/MtpObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public getObjectSizeLong(II)J
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_get_object_size_long(II)J

    move-result-wide p1

    return-wide p1
.end method

.method public getParent(I)J
    .locals 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_parent(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPartialObject(IJJ[B)J
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object(IJJ[B)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPartialObject64(IJJ[B)J
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/mtp/MtpDevice;->native_get_partial_object_64(IJJ[B)I

    move-result p1

    int-to-long p1, p1

    return-wide p1
.end method

.method public getStorageId(I)J
    .locals 2

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_id(I)I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getStorageIds()[I
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_get_storage_ids()[I

    move-result-object v0

    return-object v0
.end method

.method public getStorageInfo(I)Landroid/mtp/MtpStorageInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_storage_info(I)Landroid/mtp/MtpStorageInfo;

    move-result-object p1

    return-object p1
.end method

.method public getThumbnail(I)[B
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_get_thumbnail(I)[B

    move-result-object p1

    return-object p1
.end method

.method public importFile(ILandroid/os/ParcelFileDescriptor;)Z
    .locals 0

    .line 2
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(II)Z

    move-result p1

    return p1
.end method

.method public importFile(ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/mtp/MtpDevice;->native_import_file(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public open(Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/mtp/MtpDevice;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-string/jumbo v2, "user"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/os/UserManager;

    .line 18
    .line 19
    const-string/jumbo v2, "no_usb_file_transfer"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->getFileDescriptor()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-direct {p0, v0, v2}, Landroid/mtp/MtpDevice;->native_open(Ljava/lang/String;I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    if-nez v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iput-object p1, p0, Landroid/mtp/MtpDevice;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 53
    .line 54
    iget-object p1, p0, Landroid/mtp/MtpDevice;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 55
    .line 56
    const-string v2, "close"

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    monitor-exit v1

    .line 62
    return v0

    .line 63
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p1
.end method

.method public readEvent(Landroid/os/CancellationSignal;)Landroid/mtp/MtpEvent;
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/mtp/MtpDevice;->native_submit_event_request()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    const-string v2, "Other thread is reading an event."

    .line 11
    .line 12
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    new-instance v1, Landroid/mtp/MtpDevice$1;

    .line 18
    .line 19
    invoke-direct {v1, p0, v0}, Landroid/mtp/MtpDevice$1;-><init>(Landroid/mtp/MtpDevice;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-direct {p0, v0}, Landroid/mtp/MtpDevice;->native_reap_event_request(I)Landroid/mtp/MtpEvent;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 40
    .line 41
    .line 42
    :cond_3
    throw v0
.end method

.method public sendObject(IJLandroid/os/ParcelFileDescriptor;)Z
    .locals 0

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/mtp/MtpDevice;->native_send_object(IJI)Z

    move-result p1

    return p1
.end method

.method public sendObjectInfo(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpDevice;->native_send_object_info(Landroid/mtp/MtpObjectInfo;)Landroid/mtp/MtpObjectInfo;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MtpDevice;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
