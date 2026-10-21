.class public Landroid/os/RevocableFileDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "RevocableFileDescriptor"


# instance fields
.field private final mCallback:Landroid/os/ProxyFileDescriptorCallback;

.field private mInner:Ljava/io/FileDescriptor;

.field private mOuter:Landroid/os/ParcelFileDescriptor;

.field private volatile mRevoked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 5
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    sget v0, Landroid/system/OsConstants;->O_CREAT:I

    sget v1, Landroid/system/OsConstants;->O_RDWR:I

    or-int/2addr v0, v1

    const/16 v1, 0x1c0

    invoke-static {p2, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Landroid/app/backup/a;->p(Landroid/system/ErrnoException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/os/RevocableFileDescriptor$1;

    invoke-direct {v0, p0}, Landroid/os/RevocableFileDescriptor$1;-><init>(Landroid/os/RevocableFileDescriptor;)V

    iput-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 9
    invoke-virtual {p0, p1, p2}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/os/RevocableFileDescriptor;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return p0
.end method

.method public static synthetic access$002(Landroid/os/RevocableFileDescriptor;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return p1
.end method

.method public static synthetic access$100(Landroid/os/RevocableFileDescriptor;)Ljava/io/FileDescriptor;
    .locals 0

    iget-object p0, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    return-object p0
.end method


# virtual methods
.method public getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/os/RevocableFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/io/FileDescriptor;)V
    .locals 1

    .line 1
    iput-object p2, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    .line 2
    .line 3
    const-class p2, Landroid/os/storage/StorageManager;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/os/storage/StorageManager;

    .line 10
    .line 11
    const/high16 p2, 0x30000000

    .line 12
    .line 13
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor;->mCallback:Landroid/os/ProxyFileDescriptorCallback;

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/os/storage/StorageManager;->openProxyFileDescriptor(ILandroid/os/ProxyFileDescriptorCallback;)Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Landroid/os/RevocableFileDescriptor;->mOuter:Landroid/os/ParcelFileDescriptor;

    .line 20
    .line 21
    return-void
.end method

.method public isRevoked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    return v0
.end method

.method public revoke()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/os/RevocableFileDescriptor;->mRevoked:Z

    .line 3
    .line 4
    iget-object v0, p0, Landroid/os/RevocableFileDescriptor;->mInner:Ljava/io/FileDescriptor;

    .line 5
    .line 6
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
