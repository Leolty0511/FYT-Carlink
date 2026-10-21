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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private hasSchemeOrAuthority()Z
    .locals 2

    .line 1
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

    .line 1
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendEncodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    invoke-static {v0, p1}, Landroid/net/Uri$PathPart;->appendDecodedSegment(Landroid/net/Uri$PathPart;Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p2, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    if-nez p2, :cond_0

    .line 4
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri$Part;->getEncoded()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "&"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    iput-object p1, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

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

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/net/Uri$OpaqueUri;

    iget-object v1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/Uri$Builder;->opaquePart:Landroid/net/Uri$Part;

    iget-object v3, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/net/Uri$OpaqueUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "An opaque URI must have a scheme."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/net/Uri$Builder;->path:Landroid/net/Uri$PathPart;

    if-eqz v0, :cond_3

    .line 6
    sget-object v1, Landroid/net/Uri$PathPart;->NULL:Landroid/net/Uri$PathPart;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Landroid/net/Uri$Builder;->hasSchemeOrAuthority()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    invoke-static {v0}, Landroid/net/Uri$PathPart;->makeAbsolute(Landroid/net/Uri$PathPart;)Landroid/net/Uri$PathPart;

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_3
    :goto_0
    sget-object v0, Landroid/net/Uri$PathPart;->EMPTY:Landroid/net/Uri$PathPart;

    :cond_4
    :goto_1
    move-object v4, v0

    .line 10
    new-instance v0, Landroid/net/Uri$HierarchicalUri;

    iget-object v2, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/Uri$Builder;->authority:Landroid/net/Uri$Part;

    iget-object v5, p0, Landroid/net/Uri$Builder;->query:Landroid/net/Uri$Part;

    iget-object v6, p0, Landroid/net/Uri$Builder;->fragment:Landroid/net/Uri$Part;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/net/Uri$HierarchicalUri;-><init>(Ljava/lang/String;Landroid/net/Uri$Part;Landroid/net/Uri$PathPart;Landroid/net/Uri$Part;Landroid/net/Uri$Part;Landroid/net/Uri$1;)V

    return-object v0
.end method

.method public clearQuery()Landroid/net/Uri$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0
.end method

.method public encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->authority(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->fragment(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encodedOpaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->opaquePart(Landroid/net/Uri$Part;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/Uri$PathPart;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$PathPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Landroid/net/Uri$PathPart;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 0

    .line 1
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

    .line 1
    iput-object p1, p0, Landroid/net/Uri$Builder;->scheme:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
