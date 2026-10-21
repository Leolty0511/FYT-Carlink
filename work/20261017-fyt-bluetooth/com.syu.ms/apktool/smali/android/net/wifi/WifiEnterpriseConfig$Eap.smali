.class public final Landroid/net/wifi/WifiEnterpriseConfig$Eap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eap"
.end annotation


# static fields
.field public static final NONE:I = -0x1

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2

.field public static final strings:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "PEAP"

    const-string v1, "TLS"

    const-string v2, "TTLS"

    const-string v3, "PWD"

    .line 1
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
