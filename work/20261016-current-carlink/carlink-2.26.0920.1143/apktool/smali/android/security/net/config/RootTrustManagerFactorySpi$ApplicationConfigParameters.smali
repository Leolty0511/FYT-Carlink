.class public final Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/ManagerFactoryParameters;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/net/config/RootTrustManagerFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplicationConfigParameters"
.end annotation


# instance fields
.field public final config:Landroid/security/net/config/ApplicationConfig;


# direct methods
.method public constructor <init>(Landroid/security/net/config/ApplicationConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/security/net/config/RootTrustManagerFactorySpi$ApplicationConfigParameters;->config:Landroid/security/net/config/ApplicationConfig;

    .line 5
    .line 6
    return-void
.end method
