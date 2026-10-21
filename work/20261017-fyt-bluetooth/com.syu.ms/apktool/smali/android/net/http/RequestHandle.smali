.class public Landroid/net/http/RequestHandle;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AUTHORIZATION_HEADER:Ljava/lang/String; = "Authorization"

.field public static final MAX_REDIRECT_COUNT:I = 0x10

.field private static final PROXY_AUTHORIZATION_HEADER:Ljava/lang/String; = "Proxy-Authorization"


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field private mConnection:Landroid/net/http/Connection;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMethod:Ljava/lang/String;

.field private mRedirectCount:I

.field private mRequest:Landroid/net/http/Request;

.field private mRequestQueue:Landroid/net/http/RequestQueue;

.field private mUri:Landroid/net/WebAddress;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    if-nez p5, :cond_0

    .line 3
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 4
    :cond_0
    iput-object p5, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    .line 5
    iput-object p6, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    .line 6
    iput p7, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    if-nez p4, :cond_1

    const-string p4, "GET"

    .line 7
    :cond_1
    iput-object p4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    .line 8
    iput-object p2, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    .line 9
    iput-object p3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    .line 10
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    .line 11
    iput-object p8, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    return-void
.end method

.method public constructor <init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/RequestQueue;",
            "Ljava/lang/String;",
            "Landroid/net/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/Request;",
            "Landroid/net/http/Connection;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct/range {p0 .. p8}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    .line 13
    iput-object p9, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    return-void
.end method

.method private H(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "MD5"

    .line 1
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->bufferToHex([B)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static authorizationHeader(Z)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, "Authorization"

    return-object p0

    :cond_0
    const-string p0, "Proxy-Authorization"

    return-object p0
.end method

.method private bufferToHex([B)Ljava/lang/String;
    .locals 6

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    if-eqz p1, :cond_2

    .line 2
    array-length v1, p1

    if-lez v1, :cond_1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 4
    aget-byte v4, p1, v3

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    .line 5
    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    .line 6
    aget-char v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    aget-char v4, v0, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private computeCnonce()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :goto_0
    const/16 v1, 0x10

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ":"

    if-nez p4, :cond_0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "auth"

    .line 2
    invoke-virtual {p4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-direct {p0, p1}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Landroid/net/http/RequestHandle;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroid/net/http/RequestHandle;->KD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 1
    invoke-static/range {p1 .. p1}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static/range {p2 .. p2}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static/range {p3 .. p3}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, p1

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->computeCnonce()Ljava/lang/String;

    move-result-object v13

    const-string v14, "00000001"

    move-object v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v14

    move-object v6, v13

    .line 7
    invoke-direct/range {v0 .. v6}, Landroid/net/http/RequestHandle;->computeDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "username="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p1}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "realm="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "nonce="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    invoke-direct {p0, v1}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uri="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "response="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", opaque="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v11}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v10, :cond_1

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", algorithm="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v9, :cond_2

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", qop="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", nc="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cnonce="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v13}, Landroid/net/http/RequestHandle;->doubleQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private createAndQueueNewRequest()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v2, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iget-object v6, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v7, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    iget v8, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    invoke-virtual/range {v1 .. v8}, Landroid/net/http/RequestQueue;->queueSynchronousRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    .line 3
    iget-object v1, v0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iput-object v1, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    .line 4
    iget-object v1, v0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    iput-object v1, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    .line 5
    invoke-virtual {v0}, Landroid/net/http/RequestHandle;->processRequest()V

    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Landroid/net/http/RequestHandle;->mRequestQueue:Landroid/net/http/RequestQueue;

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    iget-object v4, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    iget-object v5, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    iget-object v6, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iget-object v7, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v8, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    iget v9, p0, Landroid/net/http/RequestHandle;->mBodyLength:I

    invoke-virtual/range {v2 .. v9}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    move-result-object v0

    iget-object v0, v0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    iput-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    return-void
.end method

.method private doubleQuote(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private setupAuthResponse()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    :cond_0
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/net/http/Request;->cancel()V

    :cond_0
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getRedirectCount()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    return v0
.end method

.method public handleSslErrorResponse(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/net/http/Request;->handleSslErrorResponse(Z)V

    :cond_0
    return-void
.end method

.method public isRedirectMax()Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pauseRequest(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/net/http/Request;->setLoadingPaused(Z)V

    :cond_0
    return-void
.end method

.method public processRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0, v1}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    :cond_0
    return-void
.end method

.method public setRedirectCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    return-void
.end method

.method public setupBasicAuthResponse(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Landroid/net/http/RequestHandle;->computeBasicAuthResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-object p3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Basic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    return-void
.end method

.method public setupDigestAuthResponse(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 1
    invoke-direct/range {v0 .. v7}, Landroid/net/http/RequestHandle;->computeDigestAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, p0

    .line 2
    iget-object v2, v1, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-static {p1}, Landroid/net/http/RequestHandle;->authorizationHeader(Z)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Digest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->setupAuthResponse()V

    return-void
.end method

.method public setupRedirect(Ljava/lang/String;ILjava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v1, "Authorization"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v1, "Proxy-Authorization"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/net/http/RequestHandle;->mRedirectCount:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    .line 4
    iget-object p1, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    const/16 p2, -0x9

    const p3, 0x10400a9

    invoke-virtual {p1, p2, p3}, Landroid/net/http/Request;->error(II)V

    return v2

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    const-string v3, "https:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v3, "Referer"

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    .line 8
    :try_start_0
    new-instance p1, Landroid/net/WebAddress;

    iget-object v0, p0, Landroid/net/http/RequestHandle;->mUrl:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 10
    :goto_0
    iget-object p1, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string v0, "Cookie"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    iget-object v3, p0, Landroid/net/http/RequestHandle;->mUri:Landroid/net/WebAddress;

    invoke-virtual {p1, v3}, Landroid/webkit/CookieManager;->getCookie(Landroid/net/WebAddress;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 13
    iget-object v3, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 p1, 0x12e

    if-eq p2, p1, :cond_3

    const/16 p1, 0x12f

    if-ne p2, p1, :cond_4

    .line 14
    :cond_3
    iget-object p1, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "GET"

    .line 15
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mMethod:Ljava/lang/String;

    :cond_4
    const/16 p1, 0x133

    if-ne p2, p1, :cond_5

    .line 16
    :try_start_1
    iget-object p1, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    return v2

    .line 17
    :cond_5
    iget-object p1, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    const-string p2, "Content-Type"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroid/net/http/RequestHandle;->mBodyProvider:Ljava/io/InputStream;

    .line 19
    :cond_6
    :goto_1
    iget-object p1, p0, Landroid/net/http/RequestHandle;->mHeaders:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 20
    invoke-direct {p0}, Landroid/net/http/RequestHandle;->createAndQueueNewRequest()V

    return v1
.end method

.method public waitUntilComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/http/RequestHandle;->mRequest:Landroid/net/http/Request;

    invoke-virtual {v0}, Landroid/net/http/Request;->waitUntilComplete()V

    return-void
.end method
