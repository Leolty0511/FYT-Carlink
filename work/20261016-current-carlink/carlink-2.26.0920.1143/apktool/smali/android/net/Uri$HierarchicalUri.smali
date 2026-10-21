.class Landroid/net/Uri$HierarchicalUri;
.super Landroid/net/Uri$AbstractHierarchicalUri;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HierarchicalUri"
.end annotation


# static fields
.field static final TYPE_ID:I = 0x3


# instance fields
.field private final authority:Landroid/net/Uri$Part;

.field private final fragment:Landroid/net/Uri$Part;

.field private final path:Landroid/net/Uri$PathPart;

.field private final query:Landroid/net/Uri$Part;

.field private final scheme:Ljava/lang/String;

.field private ssp:Landroid/net/Uri$Part;

.field private volatile uriString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/net/Uri$AbstractHierarchicalUri;-><init>(Landroid/net/Uri$1;)V

    .line 3
    invoke-static {}, Landroid/net/Uri;->access$300()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    if-nez p3, :cond_0

    .line 6
    sget-object p3, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    :cond_0
    iput-object p3, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    .line 7
    invoke-static {p4}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    .line 8
    invoke-static {p5}, Landroid/net/Uri$Part;->nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    return-void
.end method

.method private appendSspTo(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "//"

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/net/Uri$Part;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    const/16 v0, 0x3f

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_2
    return-void
.end method

.method private getSsp()Landroid/net/Uri$Part;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->makeSchemeSpecificPart()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->ssp:Landroid/net/Uri$Part;

    .line 14
    .line 15
    :cond_0
    return-object v0
.end method

.method private makeSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroid/net/Uri$HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method private makeUriString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x3a

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-direct {p0, v0}, Landroid/net/Uri$HierarchicalUri;->appendSspTo(Ljava/lang/StringBuilder;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/net/Uri$Part;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    const/16 v1, 0x23

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public static readFrom(Landroid/os/Parcel;)Landroid/net/Uri;
    .locals 7

    .line 1
    new-instance v6, Landroid/net/Uri$HierarchicalUri;

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
    invoke-static {p0}, Landroid/net/Uri$PathPart;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$PathPart;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {p0}, Landroid/net/Uri$Part;->readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    move-object v0, v6

    .line 24
    invoke-direct/range {v0 .. v5}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;)V

    .line 25
    .line 26
    .line 27
    return-object v6
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
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$AbstractPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$AbstractPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0}, Landroid/net/Uri$AbstractPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

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

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    invoke-virtual {v0}, Landroid/net/Uri$PathPart;->getPathSegments()Landroid/net/Uri$PathSegments;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    invoke-virtual {v0}, Landroid/net/Uri$AbstractPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemeSpecificPart()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->getSsp()Landroid/net/Uri$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$AbstractPart;->getDecoded()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHierarchical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRelative()Z
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

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
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

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
    iget-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    invoke-direct {p0}, Landroid/net/Uri$HierarchicalUri;->makeUriString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroid/net/Uri$HierarchicalUri;->uriString:Ljava/lang/String;

    .line 22
    .line 23
    :goto_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const/4 p2, 0x3

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Landroid/net/Uri$HierarchicalUri;->scheme:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/net/Uri$HierarchicalUri;->authority:Landroid/net/Uri$Part;

    .line 11
    .line 12
    invoke-virtual {p2, p1}, Landroid/net/Uri$AbstractPart;->writeTo(Landroid/os/Parcel;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Landroid/net/Uri$HierarchicalUri;->path:Landroid/net/Uri$PathPart;

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/net/Uri$AbstractPart;->writeTo(Landroid/os/Parcel;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroid/net/Uri$HierarchicalUri;->query:Landroid/net/Uri$Part;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Landroid/net/Uri$AbstractPart;->writeTo(Landroid/os/Parcel;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Landroid/net/Uri$HierarchicalUri;->fragment:Landroid/net/Uri$Part;

    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/net/Uri$AbstractPart;->writeTo(Landroid/os/Parcel;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
