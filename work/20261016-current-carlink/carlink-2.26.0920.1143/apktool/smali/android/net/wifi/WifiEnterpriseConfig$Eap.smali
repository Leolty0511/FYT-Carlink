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
.field public static final AKA:I = 0x5

.field public static final AKA_PRIME:I = 0x6

.field public static final NONE:I = -0x1

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field public static final SIM:I = 0x4

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2

.field public static final UNAUTH_TLS:I = 0x7

.field public static final strings:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v0, "PEAP"

    .line 2
    .line 3
    const-string v1, "TLS"

    .line 4
    .line 5
    const-string v2, "TTLS"

    .line 6
    .line 7
    const-string v3, "PWD"

    .line 8
    .line 9
    const-string v4, "SIM"

    .line 10
    .line 11
    const-string v5, "AKA"

    .line 12
    .line 13
    const-string v6, "AKA\'"

    .line 14
    .line 15
    const-string v7, "WFA-UNAUTH-TLS"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
