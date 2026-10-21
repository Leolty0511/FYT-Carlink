.class Landroid/net/Uri$OpaqueUri;
.super Landroid/net/Uri;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpaqueUri"
.end annotation


# static fields
.field static final TYPE_ID:I = 0x2


# instance fields
.field private volatile cachedString:Ljava/lang/String;

.field private final fragment:Landroid/net/Uri$Part;

.field private final scheme:Ljava/lang/String;

.field private final ssp:Landroid/net/Uri$Part;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/net/Uri;-><init>(Landroid/net/Uri$1;)V

    .line 3
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    if-nez p3, :cond_0

    .line 6
    sget-object p3, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    :cond_0
    iput-object p3, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-void
.end method

.method public static readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-direct {v0, v1, v2, p0}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public buildUpon()Landroid/net/Uri$Builder;
    .locals 2

    .line 1
    new-instance v0, Landroid/net/Uri$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/net/Uri;

    invoke-super {p0, p1}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedAuthority()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedQuery()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedUserInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$AbstractPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastPathSegment()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPathSegments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$AbstractPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isHierarchical()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRelative()Z
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v1, 0x3a

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/net/Uri$OpaqueUri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/net/Uri$Part;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_2

    .line 46
    .line 47
    const/16 v1, 0x23

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Landroid/net/Uri$OpaqueUri;->cachedString:Ljava/lang/String;

    .line 66
    .line 67
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Landroid/net/Uri$OpaqueUri;->scheme:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/net/Uri$OpaqueUri;->ssp:Landroid/net/Uri$Part;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/net/Uri$AbstractPart;->writeTo(Landroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Landroid/net/Uri$OpaqueUri;->fragment:Landroid/net/Uri$Part;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/net/Uri$AbstractPart;->writeTo(Landroid/os/Parcel;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
