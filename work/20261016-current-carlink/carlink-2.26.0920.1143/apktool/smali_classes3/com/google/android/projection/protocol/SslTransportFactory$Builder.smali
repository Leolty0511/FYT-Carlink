.class public final Lcom/google/android/projection/protocol/SslTransportFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/SslTransportFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final clientCert:Ljava/lang/String;

.field private final clientKey:Ljava/lang/String;

.field private ignoreCertificateDate:Z

.field private orgName:Ljava/lang/String;

.field private final rootCert:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "CarService"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->orgName:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->ignoreCertificateDate:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->rootCert:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->clientCert:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->clientKey:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/projection/protocol/SslTransportFactory;
    .locals 8

    new-instance v7, Lcom/google/android/projection/protocol/SslTransportFactory;

    iget-object v1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->rootCert:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->clientCert:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->clientKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->orgName:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->ignoreCertificateDate:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/projection/protocol/SslTransportFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/projection/protocol/SslTransportFactory$1;)V

    return-object v7
.end method

.method public setIgnoreCertificateDate(Z)Lcom/google/android/projection/protocol/SslTransportFactory$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->ignoreCertificateDate:Z

    return-object p0
.end method

.method public setOrgName(Ljava/lang/String;)Lcom/google/android/projection/protocol/SslTransportFactory$Builder;
    .locals 0
    .annotation build Lcom/google/errorprone/annotations/CanIgnoreReturnValue;
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/protocol/SslTransportFactory$Builder;->orgName:Ljava/lang/String;

    return-object p0
.end method
