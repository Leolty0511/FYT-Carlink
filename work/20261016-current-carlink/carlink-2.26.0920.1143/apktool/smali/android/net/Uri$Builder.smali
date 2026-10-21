.class public final Landroid/net/Uri$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private authority:Landroid/net/Uri$Part;

.field private fragment:Landroid/net/Uri$Part;

.field private opaquePart:Landroid/net/Uri$Part;

.field private path:Landroid/net/Uri$PathPart;

.field private query:Landroid/net/Uri$Part;

.field private scheme:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasSchemeOrAuthority()Z
    .locals 2

    iget-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p1, "="

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {p2, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 33
    .line 34
    if-nez p2, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string v0, "&"

    .line 57
    .line 58
    invoke-static {p2, v0, p1}, Landroid/app/m;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 74
    .line 75
    :goto_1
    return-object p0
.end method

.method public authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 2
    iput-object p1, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    return-object p0
.end method

.method public authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 3
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Landroid/net/Uri;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    .line 10
    .line 11
    iget-object v1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 14
    .line 15
    iget-object v3, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    .line 19
    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 23
    .line 24
    const-string v1, "An opaque URI must have a scheme."

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    sget-object v1, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    .line 35
    .line 36
    if-ne v0, v1, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    invoke-direct {p0}, Landroid/net/Uri$Builder;->hasSchemeOrAuthority()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    .line 45
    invoke-static {v0}, Landroid/net/Uri$PathPart;->makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    .line 51
    .line 52
    :cond_4
    :goto_1
    move-object v4, v0

    .line 53
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    .line 54
    .line 55
    iget-object v2, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v3, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    .line 58
    .line 59
    iget-object v5, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    .line 60
    .line 61
    iget-object v6, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    move-object v1, v0

    .line 65
    invoke-direct/range {v1 .. v7}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method public clearQuery()Landroid/net/Uri$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    return-object p0
.end method

.method public fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    return-object p0
.end method

.method public opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 2
    iput-object p1, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    return-object p0
.end method

.method public path(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 3
    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 2
    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    return-object p0
.end method

.method public query(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 3
    invoke-static {p1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    iput-object p1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
