.class public final Landroid/net/http/Headers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/Headers$HeaderCallback;
    }
.end annotation


# static fields
.field public static final ACCEPT_RANGES:Ljava/lang/String; = "accept-ranges"

.field public static final CACHE_CONTROL:Ljava/lang/String; = "cache-control"

.field public static final CONN_CLOSE:I = 0x1

.field public static final CONN_DIRECTIVE:Ljava/lang/String; = "connection"

.field public static final CONN_KEEP_ALIVE:I = 0x2

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "content-disposition"

.field public static final CONTENT_ENCODING:Ljava/lang/String; = "content-encoding"

.field public static final CONTENT_LEN:Ljava/lang/String; = "content-length"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "content-type"

.field public static final ETAG:Ljava/lang/String; = "etag"

.field public static final EXPIRES:Ljava/lang/String; = "expires"

.field private static final HASH_ACCEPT_RANGES:I = 0x53476b3b

.field private static final HASH_CACHE_CONTROL:I = -0xc71a9ee

.field private static final HASH_CONN_DIRECTIVE:I = -0x2e3b8122

.field private static final HASH_CONTENT_DISPOSITION:I = -0x4b88f79d

.field private static final HASH_CONTENT_ENCODING:I = 0x7ce07427

.field private static final HASH_CONTENT_LEN:I = -0x4384d946

.field private static final HASH_CONTENT_TYPE:I = 0x2ed4600e

.field private static final HASH_ETAG:I = 0x2fa915

.field private static final HASH_EXPIRES:I = -0x4e0958cc

.field private static final HASH_LAST_MODIFIED:I = 0x8f17c20

.field private static final HASH_LOCATION:I = 0x714f9fb5

.field private static final HASH_PRAGMA:I = -0x3a6d1ac4

.field private static final HASH_PROXY_AUTHENTICATE:I = -0x11fc9c2c

.field private static final HASH_PROXY_CONNECTION:I = 0x110aef9d

.field private static final HASH_REFRESH:I = 0x40b292db

.field private static final HASH_SET_COOKIE:I = 0x49be662f

.field private static final HASH_TRANSFER_ENCODING:I = 0x4bf6b0f5

.field private static final HASH_WWW_AUTHENTICATE:I = -0xe7c74b5

.field private static final HASH_X_PERMITTED_CROSS_DOMAIN_POLICIES:I = -0x5034229e

.field private static final HEADER_COUNT:I = 0x13

.field private static final IDX_ACCEPT_RANGES:I = 0xa

.field private static final IDX_CACHE_CONTROL:I = 0xc

.field private static final IDX_CONN_DIRECTIVE:I = 0x4

.field private static final IDX_CONTENT_DISPOSITION:I = 0x9

.field private static final IDX_CONTENT_ENCODING:I = 0x3

.field private static final IDX_CONTENT_LEN:I = 0x1

.field private static final IDX_CONTENT_TYPE:I = 0x2

.field private static final IDX_ETAG:I = 0xe

.field private static final IDX_EXPIRES:I = 0xb

.field private static final IDX_LAST_MODIFIED:I = 0xd

.field private static final IDX_LOCATION:I = 0x5

.field private static final IDX_PRAGMA:I = 0x10

.field private static final IDX_PROXY_AUTHENTICATE:I = 0x8

.field private static final IDX_PROXY_CONNECTION:I = 0x6

.field private static final IDX_REFRESH:I = 0x11

.field private static final IDX_SET_COOKIE:I = 0xf

.field private static final IDX_TRANSFER_ENCODING:I = 0x0

.field private static final IDX_WWW_AUTHENTICATE:I = 0x7

.field private static final IDX_X_PERMITTED_CROSS_DOMAIN_POLICIES:I = 0x12

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last-modified"

.field public static final LOCATION:Ljava/lang/String; = "location"

.field private static final LOGTAG:Ljava/lang/String; = "Http"

.field public static final NO_CONN_TYPE:I = 0x0

.field public static final NO_CONTENT_LENGTH:J = -0x1L

.field public static final NO_TRANSFER_ENCODING:J = 0x0L

.field public static final PRAGMA:Ljava/lang/String; = "pragma"

.field public static final PROXY_AUTHENTICATE:Ljava/lang/String; = "proxy-authenticate"

.field public static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field public static final REFRESH:Ljava/lang/String; = "refresh"

.field public static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field public static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field public static final WWW_AUTHENTICATE:Ljava/lang/String; = "www-authenticate"

.field public static final X_PERMITTED_CROSS_DOMAIN_POLICIES:Ljava/lang/String; = "x-permitted-cross-domain-policies"

.field private static final sHeaderNames:[Ljava/lang/String;


# instance fields
.field private connectionType:I

.field private contentLength:J

.field private cookies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraHeaderNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraHeaderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:[Ljava/lang/String;

.field private transferEncoding:J


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    const-string/jumbo v0, "transfer-encoding"

    const-string v1, "content-length"

    const-string v2, "content-type"

    const-string v3, "content-encoding"

    const-string v4, "connection"

    const-string v5, "location"

    const-string v6, "proxy-connection"

    const-string/jumbo v7, "www-authenticate"

    const-string v8, "proxy-authenticate"

    const-string v9, "content-disposition"

    const-string v10, "accept-ranges"

    const-string v11, "expires"

    const-string v12, "cache-control"

    const-string v13, "last-modified"

    const-string v14, "etag"

    const-string/jumbo v15, "set-cookie"

    const-string v16, "pragma"

    const-string v17, "refresh"

    const-string/jumbo v18, "x-permitted-cross-domain-policies"

    .line 1
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Headers;->sHeaderNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    iput-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Landroid/net/http/Headers;->contentLength:J

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/net/http/Headers;->connectionType:I

    return-void
.end method

.method private setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V
    .locals 1

    const-string v0, "Close"

    .line 1
    invoke-static {p1, p2, v0}, Landroid/net/http/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Landroid/net/http/Headers;->connectionType:I

    goto :goto_0

    :cond_0
    const-string v0, "Keep-Alive"

    .line 3
    invoke-static {p1, p2, v0}, Landroid/net/http/CharArrayBuffers;->containsIgnoreCaseTrimmed(Lorg/apache/http/util/CharArrayBuffer;ILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Landroid/net/http/Headers;->connectionType:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getAcceptRanges()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCacheControl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getConnectionType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/http/Headers;->connectionType:I

    return v0
.end method

.method public getContentDisposition()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/http/Headers;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEtag()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getExpires()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getHeaders(Landroid/net/http/Headers$HeaderCallback;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 1
    iget-object v2, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 2
    sget-object v3, Landroid/net/http/Headers;->sHeaderNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v3, v2}, Landroid/net/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 4
    iget-object v2, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Landroid/net/http/Headers$HeaderCallback;->header(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getLastModified()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPragma()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProxyAuthenticate()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRefresh()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSetCookie()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransferEncoding()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    return-wide v0
.end method

.method public getWwwAuthenticate()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getXPermittedCrossDomainPolicies()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    return-object v0
.end method

.method public parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V
    .locals 6

    const/16 v0, 0x3a

    .line 1
    invoke-static {p1, v0}, Landroid/net/http/CharArrayBuffers;->setLowercaseIndexOf(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v0, v3

    .line 4
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 6
    iget-object p1, p0, Landroid/net/http/Headers;->mExtraHeaderNames:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Landroid/net/http/Headers;->mExtraHeaderValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "content-encoding"

    .line 8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v0, 0x3

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "location"

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v0, 0x5

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "accept-ranges"

    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0xa

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v5, "transfer-encoding"

    .line 14
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 15
    iget-object v2, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, v2, v1

    .line 16
    sget-object v1, Lorg/apache/http/message/BasicHeaderValueParser;->DEFAULT:Lorg/apache/http/message/BasicHeaderValueParser;

    new-instance v2, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-direct {v2, v0, v5}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Lorg/apache/http/message/BasicHeaderValueParser;->parseElements(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)[Lorg/apache/http/HeaderElement;

    move-result-object p1

    .line 17
    array-length v0, p1

    const-string v1, "identity"

    .line 18
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v4, -0x1

    if-eqz v1, :cond_2

    .line 19
    iput-wide v4, p0, Landroid/net/http/Headers;->transferEncoding:J

    goto/16 :goto_0

    :cond_2
    if-lez v0, :cond_3

    sub-int/2addr v0, v3

    .line 20
    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 v0, -0x2

    .line 21
    iput-wide v0, p0, Landroid/net/http/Headers;->transferEncoding:J

    goto/16 :goto_0

    .line 22
    :cond_3
    iput-wide v4, p0, Landroid/net/http/Headers;->transferEncoding:J

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo p1, "set-cookie"

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 24
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0xf

    aput-object v4, p1, v0

    .line 25
    iget-object p1, p0, Landroid/net/http/Headers;->cookies:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    const-string p1, "refresh"

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 27
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0x11

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_6
    const-string p1, "content-type"

    .line 28
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 29
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v0, 0x2

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_7
    const-string v1, "proxy-connection"

    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 31
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v4, v1, v2

    .line 32
    invoke-direct {p0, p1, v0}, Landroid/net/http/Headers;->setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto/16 :goto_0

    :sswitch_8
    const-string p1, "last-modified"

    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 34
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0xd

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_9
    const-string p1, "etag"

    .line 35
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 36
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0xe

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_a
    const-string p1, "cache-control"

    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 38
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0xc

    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    goto/16 :goto_0

    .line 40
    :cond_4
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo p1, "www-authenticate"

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 42
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v0, 0x7

    aput-object v4, p1, v0

    goto/16 :goto_0

    :sswitch_c
    const-string p1, "proxy-authenticate"

    .line 43
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 44
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0x8

    aput-object v4, p1, v0

    goto :goto_0

    :sswitch_d
    const-string v1, "connection"

    .line 45
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 46
    iget-object v1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v4, v1, v2

    .line 47
    invoke-direct {p0, p1, v0}, Landroid/net/http/Headers;->setConnectionType(Lorg/apache/http/util/CharArrayBuffer;I)V

    goto :goto_0

    :sswitch_e
    const-string p1, "pragma"

    .line 48
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 49
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0x10

    aput-object v4, p1, v0

    goto :goto_0

    :sswitch_f
    const-string p1, "content-length"

    .line 50
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 51
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    aput-object v4, p1, v3

    .line 52
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/http/Headers;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :sswitch_10
    const-string p1, "content-disposition"

    .line 53
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 54
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0x9

    aput-object v4, p1, v0

    goto :goto_0

    :sswitch_11
    const-string p1, "expires"

    .line 55
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 56
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0xb

    aput-object v4, p1, v0

    goto :goto_0

    :sswitch_12
    const-string/jumbo p1, "x-permitted-cross-domain-policies"

    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 58
    iget-object p1, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v0, 0x12

    aput-object v4, p1, v0

    :catch_0
    :cond_5
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5034229e -> :sswitch_12
        -0x4e0958cc -> :sswitch_11
        -0x4b88f79d -> :sswitch_10
        -0x4384d946 -> :sswitch_f
        -0x3a6d1ac4 -> :sswitch_e
        -0x2e3b8122 -> :sswitch_d
        -0x11fc9c2c -> :sswitch_c
        -0xe7c74b5 -> :sswitch_b
        -0xc71a9ee -> :sswitch_a
        0x2fa915 -> :sswitch_9
        0x8f17c20 -> :sswitch_8
        0x110aef9d -> :sswitch_7
        0x2ed4600e -> :sswitch_6
        0x40b292db -> :sswitch_5
        0x49be662f -> :sswitch_4
        0x4bf6b0f5 -> :sswitch_3
        0x53476b3b -> :sswitch_2
        0x714f9fb5 -> :sswitch_1
        0x7ce07427 -> :sswitch_0
    .end sparse-switch
.end method

.method public setAcceptRanges(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xa

    aput-object p1, v0, v1

    return-void
.end method

.method public setCacheControl(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xc

    aput-object p1, v0, v1

    return-void
.end method

.method public setContentDisposition(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x9

    aput-object p1, v0, v1

    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p1, v0, v1

    return-void
.end method

.method public setContentLength(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/net/http/Headers;->contentLength:J

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p1, v0, v1

    return-void
.end method

.method public setEtag(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xe

    aput-object p1, v0, v1

    return-void
.end method

.method public setExpires(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xb

    aput-object p1, v0, v1

    return-void
.end method

.method public setLastModified(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0xd

    aput-object p1, v0, v1

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p1, v0, v1

    return-void
.end method

.method public setProxyAuthenticate(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x8

    aput-object p1, v0, v1

    return-void
.end method

.method public setWwwAuthenticate(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/4 v1, 0x7

    aput-object p1, v0, v1

    return-void
.end method

.method public setXPermittedCrossDomainPolicies(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/Headers;->mHeaders:[Ljava/lang/String;

    const/16 v1, 0x12

    aput-object p1, v0, v1

    return-void
.end method
