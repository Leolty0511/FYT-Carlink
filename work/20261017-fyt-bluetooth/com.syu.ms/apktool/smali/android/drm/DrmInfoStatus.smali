.class public Landroid/drm/DrmInfoStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_OK:I = 0x1


# instance fields
.field public final data:Landroid/drm/ProcessedData;

.field public final infoType:I

.field public final mimeType:Ljava/lang/String;

.field public final statusCode:I


# direct methods
.method public constructor <init>(IILandroid/drm/ProcessedData;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0, p1}, Landroid/drm/DrmInfoStatus;->isValidStatusCode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    const-string v0, ""

    if-eq p4, v0, :cond_0

    .line 4
    iput p1, p0, Landroid/drm/DrmInfoStatus;->statusCode:I

    .line 5
    iput p2, p0, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 6
    iput-object p3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    .line 7
    iput-object p4, p0, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mimeType is null or an empty string"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported status code: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "infoType: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private isValidStatusCode(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
