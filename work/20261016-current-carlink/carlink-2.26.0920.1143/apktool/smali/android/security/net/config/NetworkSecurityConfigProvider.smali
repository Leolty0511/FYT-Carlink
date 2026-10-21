.class public final Landroid/security/net/config/NetworkSecurityConfigProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v1, Landroid/security/net/config/NetworkSecurityConfigProvider;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, "."

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2
    .line 3
    const-string v2, "Android Network Security Policy Provider"

    .line 4
    .line 5
    const-string v3, "AndroidNSSP"

    .line 6
    .line 7
    invoke-direct {p0, v3, v0, v1, v2}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/security/net/config/NetworkSecurityConfigProvider;->PREFIX:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "RootTrustManagerFactorySpi"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "TrustManagerFactory.PKIX"

    .line 30
    .line 31
    invoke-virtual {p0, v1, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v0, "Alg.Alias.TrustManagerFactory.X509"

    .line 35
    .line 36
    const-string v1, "PKIX"

    .line 37
    .line 38
    invoke-virtual {p0, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/security/net/config/ApplicationConfig;

    .line 2
    .line 3
    new-instance v1, Landroid/security/net/config/ManifestConfigSource;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroid/security/net/config/ManifestConfigSource;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/security/net/config/ApplicationConfig;-><init>(Landroid/security/net/config/ConfigSource;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Landroid/security/net/config/ApplicationConfig;->setDefaultInstance(Landroid/security/net/config/ApplicationConfig;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Landroid/security/net/config/NetworkSecurityConfigProvider;

    .line 15
    .line 16
    invoke-direct {p0}, Landroid/security/net/config/NetworkSecurityConfigProvider;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-static {p0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    if-ne p0, v1, :cond_0

    .line 25
    .line 26
    new-instance p0, Landroid/security/net/config/ConfigNetworkSecurityPolicy;

    .line 27
    .line 28
    invoke-direct {p0, v0}, Landroid/security/net/config/ConfigNetworkSecurityPolicy;-><init>(Landroid/security/net/config/ApplicationConfig;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Llibcore/net/NetworkSecurityPolicy;->setInstance(Llibcore/net/NetworkSecurityPolicy;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    const-string v1, "Failed to install provider as highest priority provider. Provider was installed at position "

    .line 38
    .line 39
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method
