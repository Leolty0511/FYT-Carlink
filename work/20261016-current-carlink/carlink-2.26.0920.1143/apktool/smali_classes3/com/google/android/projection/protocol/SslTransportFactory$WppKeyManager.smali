.class final Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509KeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/SslTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WppKeyManager"
.end annotation


# static fields
.field private static final PKCS1_FOOTER:Ljava/lang/String; = "-----END RSA PRIVATE KEY-----\n"

.field private static final PKCS1_HEADER:Ljava/lang/String; = "-----BEGIN RSA PRIVATE KEY-----\n"

.field private static final PKCS8_FOOTER:Ljava/lang/String; = "-----END PRIVATE KEY-----\n"

.field private static final PKCS8_HEADER:Ljava/lang/String; = "-----BEGIN PRIVATE KEY-----\n"

.field private static final RSA_ALGORITHM:Ljava/lang/String; = "RSA"


# instance fields
.field private final clientCert:Ljava/security/cert/X509Certificate;

.field private final clientKey:Ljava/security/PrivateKey;

.field private final orgName:Ljava/lang/String;

.field private final rootCert:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/projection/protocol/SslTransportFactory;->access$200(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->rootCert:Ljava/security/cert/X509Certificate;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/android/projection/protocol/SslTransportFactory;->access$200(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->clientCert:Ljava/security/cert/X509Certificate;

    .line 15
    .line 16
    invoke-static {p3}, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->createKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->clientKey:Ljava/security/PrivateKey;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->orgName:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

.method private static createKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 5

    .line 1
    const-string v0, "RSA"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "-----BEGIN PRIVATE KEY-----\n"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    add-int/lit8 v3, v3, -0x1a

    .line 23
    .line 24
    const/16 v4, 0x1c

    .line 25
    .line 26
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_0
    const-string v1, "-----BEGIN RSA PRIVATE KEY-----\n"

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    add-int/lit8 v3, v3, -0x1e

    .line 57
    .line 58
    const/16 v4, 0x20

    .line 59
    .line 60
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    const-string v0, "Provided key material is not in a supported format"

    .line 79
    .line 80
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string p2, "RSA"

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->orgName:Ljava/lang/String;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SslTransportFactory is for client side auth."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2

    .line 1
    const/4 p1, 0x2

    .line 2
    new-array p1, p1, [Ljava/security/cert/X509Certificate;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->clientCert:Ljava/security/cert/X509Certificate;

    .line 6
    .line 7
    aput-object v1, p1, v0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iget-object v1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->rootCert:Ljava/security/cert/X509Certificate;

    .line 11
    .line 12
    aput-object v1, p1, v0

    .line 13
    .line 14
    return-object p1
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 1

    .line 1
    const-string p2, "RSA"

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    new-array p1, p1, [Ljava/lang/String;

    .line 11
    .line 12
    const/4 p2, 0x0

    .line 13
    iget-object v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->orgName:Ljava/lang/String;

    .line 14
    .line 15
    aput-object v0, p1, p2

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 0

    iget-object p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;->clientKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SslTransportFactory is for client side auth."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
