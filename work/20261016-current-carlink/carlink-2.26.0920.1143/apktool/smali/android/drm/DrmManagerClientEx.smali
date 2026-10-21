.class public Landroid/drm/DrmManagerClientEx;
.super Landroid/drm/DrmManagerClient;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private native _closeDecryptSession(ILandroid/drm/DecryptHandle;)I
.end method

.method private native _openDecryptSession(ILjava/lang/String;Ljava/lang/String;)Landroid/drm/DecryptHandle;
.end method

.method private native _pread(ILandroid/drm/DecryptHandle;II)[B
.end method

.method private native _setPlaybackStatus(ILandroid/drm/DecryptHandle;I)I
.end method


# virtual methods
.method public closeDecryptSession(Landroid/drm/DecryptHandle;)I
    .locals 1

    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClientEx;->_closeDecryptSession(ILandroid/drm/DecryptHandle;)I

    move-result p1

    return p1
.end method

.method public openDecryptSession(Ljava/lang/String;)Landroid/drm/DecryptHandle;
    .locals 2

    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/drm/DrmManagerClientEx;->_openDecryptSession(ILjava/lang/String;Ljava/lang/String;)Landroid/drm/DecryptHandle;

    move-result-object p1

    return-object p1
.end method

.method public pread(Landroid/drm/DecryptHandle;II)[B
    .locals 1

    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClientEx;->_pread(ILandroid/drm/DecryptHandle;II)[B

    move-result-object p1

    return-object p1
.end method

.method public setPlaybackStatus(Landroid/drm/DecryptHandle;I)I
    .locals 2

    .line 1
    const-string v0, "XUAN"

    .line 2
    .line 3
    const-string/jumbo v1, "setPlaybackStatus"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 10
    .line 11
    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClientEx;->_setPlaybackStatus(ILandroid/drm/DecryptHandle;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
