.class public Landroid/drm/DrmUtils$ExtendedMetadataParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExtendedMetadataParser"
.end annotation


# instance fields
.field public mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>([B)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 4
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0, p1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readByte([BI)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readByte([BI)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    .line 7
    invoke-direct {p0, p1, v1, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readMultipleBytes([BII)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    .line 8
    invoke-direct {p0, p1, v2, v0}, Landroid/drm/DrmUtils$ExtendedMetadataParser;->readMultipleBytes([BII)Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    .line 9
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, ""

    :cond_0
    add-int/2addr v0, v2

    .line 10
    iget-object v2, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public synthetic constructor <init>([BLandroid/drm/DrmUtils$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([B)V

    return-void
.end method

.method private readByte([BI)I
    .locals 0

    .line 1
    aget-byte p1, p1, p2

    return p1
.end method

.method private readMultipleBytes([BII)Ljava/lang/String;
    .locals 4

    .line 1
    new-array v0, p2, [B

    const/4 v1, 0x0

    move v2, p3

    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_0

    .line 2
    aget-byte v3, p1, v2

    aput-byte v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V

    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public keyIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/drm/DrmUtils$ExtendedMetadataParser;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
