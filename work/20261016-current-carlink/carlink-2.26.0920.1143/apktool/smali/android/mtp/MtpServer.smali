.class public Landroid/mtp/MtpServer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mDatabase:Landroid/mtp/MtpDatabase;

.field private mNativeContext:J

.field private final mOnTerminate:Ljava/lang/Runnable;


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

.method public constructor <init>(Landroid/mtp/MtpDatabase;ZLjava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/mtp/MtpDatabase;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 11
    .line 12
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Ljava/lang/Runnable;

    .line 17
    .line 18
    iput-object p3, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move-object v1, p1

    .line 22
    move v2, p2

    .line 23
    move-object v3, p4

    .line 24
    move-object v4, p5

    .line 25
    move-object v5, p6

    .line 26
    move-object v6, p7

    .line 27
    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpServer;->native_setup(Landroid/mtp/MtpDatabase;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p0}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public static configure(Z)V
    .locals 0

    invoke-static {p0}, Landroid/mtp/MtpServer;->native_configure(Z)V

    return-void
.end method

.method private final native native_add_storage(Landroid/mtp/MtpStorage;)V
.end method

.method private final native native_cleanup()V
.end method

.method public static final native native_configure(Z)V
.end method

.method private final native native_remove_storage(I)V
.end method

.method private final native native_run()V
.end method

.method private final native native_send_device_property_changed(I)V
.end method

.method private final native native_send_object_added(I)V
.end method

.method private final native native_send_object_removed(I)V
.end method

.method private final native native_setup(Landroid/mtp/MtpDatabase;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_add_storage(Landroid/mtp/MtpStorage;)V

    return-void
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 0

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_remove_storage(I)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_run()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/mtp/MtpServer;->native_cleanup()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/mtp/MtpServer;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/mtp/MtpDatabase;->close()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroid/mtp/MtpServer;->mOnTerminate:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public sendDevicePropertyChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_device_property_changed(I)V

    return-void
.end method

.method public sendObjectAdded(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_added(I)V

    return-void
.end method

.method public sendObjectRemoved(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/mtp/MtpServer;->native_send_object_removed(I)V

    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    const-string v1, "MtpServer"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
