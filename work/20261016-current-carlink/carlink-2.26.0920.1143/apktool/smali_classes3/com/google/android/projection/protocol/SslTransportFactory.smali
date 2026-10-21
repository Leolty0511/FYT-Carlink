.class public final Lcom/google/android/projection/protocol/SslTransportFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;,
        Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;,
        Lcom/google/android/projection/protocol/SslTransportFactory$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AHU.WPP.SSL"

.field private static final TLS_12_PROTOCOL:Ljava/lang/String; = "TLSv1.2"

.field private static final X509_CERT_FACTORY:Ljava/lang/String; = "X.509"

.field private static final X509_CERT_HEADER:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\n"


# instance fields
.field private final sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TLSv1.2"

    .line 3
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v1, 0x1

    new-array v2, v1, [Ljavax/net/ssl/KeyManager;

    .line 4
    new-instance v3, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;

    invoke-direct {v3, p1, p2, p3, p4}, Lcom/google/android/projection/protocol/SslTransportFactory$WppKeyManager;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    aput-object v3, v2, p2

    new-array p3, v1, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p5, p4, v3}, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/projection/protocol/SslTransportFactory$1;)V

    aput-object v1, p3, p2

    invoke-virtual {v0, v2, p3, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/projection/protocol/SslTransportFactory$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/projection/protocol/SslTransportFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic access$200(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 0

    invoke-static {p0}, Lcom/google/android/projection/protocol/SslTransportFactory;->createCert(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static builder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/projection/protocol/SslTransportFactory$Builder;
    .locals 1

    new-instance v0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static createCert(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 3

    .line 1
    const-string v0, "X.509"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "-----BEGIN CERTIFICATE-----\n"

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 17
    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 36
    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 39
    .line 40
    const-string v0, "Could not find certificate header."

    .line 41
    .line 42
    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p0
.end method


# virtual methods
.method public createSslSocket(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/projection/protocol/SslTransportFactory;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {v1, p1, v0, v2, v3}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Ljavax/net/ssl/SSLSocket;

    .line 27
    .line 28
    invoke-virtual {p1, v3}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 29
    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    const-string v0, "Provided socket is not connected."

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p1
.end method
