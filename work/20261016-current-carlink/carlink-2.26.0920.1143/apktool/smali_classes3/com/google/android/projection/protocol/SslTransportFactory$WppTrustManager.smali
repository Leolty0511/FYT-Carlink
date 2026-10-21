.class final Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CustomX509TrustManager"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/SslTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WppTrustManager"
.end annotation


# instance fields
.field private final ignoreCertificateDate:Z

.field private final trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p2, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->ignoreCertificateDate:Z

    .line 4
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p2

    .line 5
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 7
    invoke-static {p1}, Lcom/google/android/projection/protocol/SslTransportFactory;->access$200(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 8
    invoke-virtual {p2, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 9
    invoke-virtual {p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    invoke-static {p1}, Landroid/net/lowpan/b;->o([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/google/android/projection/protocol/c;

    invoke-direct {p2}, Lcom/google/android/projection/protocol/c;-><init>()V

    .line 10
    invoke-static {p1, p2}, Landroidx/emoji2/text/e;->o(Ljava/util/stream/Stream;Lcom/google/android/projection/protocol/c;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 11
    invoke-static {p1}, Landroidx/emoji2/text/e;->z(Ljava/util/stream/Stream;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/google/android/projection/protocol/d;

    invoke-direct {p2}, Lcom/google/android/projection/protocol/d;-><init>()V

    .line 12
    invoke-static {p1, p2}, Landroidx/emoji2/text/e;->e(Ljava/util/Optional;Lcom/google/android/projection/protocol/d;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/net/ssl/X509TrustManager;

    iput-object p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/google/android/projection/protocol/SslTransportFactory$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljavax/net/ssl/TrustManager;)Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->lambda$new$0(Ljavax/net/ssl/TrustManager;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b()Ljava/security/KeyManagementException;
    .locals 1

    invoke-static {}, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->lambda$new$1()Ljava/security/KeyManagementException;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$new$0(Ljavax/net/ssl/TrustManager;)Z
    .locals 0

    instance-of p0, p0, Ljavax/net/ssl/X509TrustManager;

    return p0
.end method

.method private static synthetic lambda$new$1()Ljava/security/KeyManagementException;
    .locals 2

    new-instance v0, Ljava/security/KeyManagementException;

    const-string v1, "Unable to find X509 TrustManager."

    invoke-direct {v0, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->ignoreCertificateDate:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    :goto_0
    const-string p2, "AHU.WPP.SSL"

    .line 15
    .line 16
    const-string v0, "Ignore temporally invalid cert due to ignoreCertificateDate being true"

    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Lcom/google/android/projection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->ignoreCertificateDate:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 6
    .line 7
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_1

    .line 11
    :catch_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :catch_1
    move-exception p1

    .line 14
    :goto_0
    const-string p2, "AHU.WPP.SSL"

    .line 15
    .line 16
    const-string v0, "Ignore temporally invalid cert due to ignoreCertificateDate being true"

    .line 17
    .line 18
    invoke-static {p2, v0, p1}, Lcom/google/android/projection/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 23
    .line 24
    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_1
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$WppTrustManager;->trustManager:Ljavax/net/ssl/X509TrustManager;

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
