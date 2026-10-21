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
    .line 3
    .line 4
    invoke-static {p2}, Landroid/drm/DrmInfoRequest;->isValidType(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroid/drm/DrmInfoStatus;->isValidStatusCode(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    if-eq p4, v0, :cond_0

    .line 21
    .line 22
    iput p1, p0, Landroid/drm/DrmInfoStatus;->statusCode:I

    .line 23
    .line 24
    iput p2, p0, Landroid/drm/DrmInfoStatus;->infoType:I

    .line 25
    .line 26
    iput-object p3, p0, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    .line 27
    .line 28
    iput-object p4, p0, Landroid/drm/DrmInfoStatus;->mimeType:Ljava/lang/String;

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    const-string/jumbo p2, "mimeType is null or an empty string"

    .line 34
    .line 35
    .line 36
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1

    .line 40
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string p3, "Unsupported status code: "

    .line 43
    .line 44
    invoke-static {p3, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p2

    .line 52
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string/jumbo p3, "infoType: "

    .line 55
    .line 56
    .line 57
    invoke-static {p3, p2}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
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
