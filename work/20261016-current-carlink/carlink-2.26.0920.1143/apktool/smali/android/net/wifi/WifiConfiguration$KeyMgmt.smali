.class public Landroid/net/wifi/WifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation


# static fields
.field public static final EAP_SHA256:I = 0x9

.field public static final FT_EAP:I = 0x7

.field public static final FT_PSK:I = 0x6

.field public static final IEEE8021X:I = 0x3

.field public static final NONE:I = 0x0

.field public static final OSEN:I = 0x5

.field public static final PSK_SHA256:I = 0x8

.field public static final WAPI_CERT:I = 0xb

.field public static final WAPI_PSK:I = 0xa

.field public static final WPA2_PSK:I = 0x4

.field public static final WPA_EAP:I = 0x2

.field public static final WPA_PSK:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "key_mgmt"


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    const-string v0, "NONE"

    .line 2
    .line 3
    const-string v1, "WPA_PSK"

    .line 4
    .line 5
    const-string v2, "WPA_EAP"

    .line 6
    .line 7
    const-string v3, "IEEE8021X"

    .line 8
    .line 9
    const-string v4, "WPA2_PSK"

    .line 10
    .line 11
    const-string v5, "OSEN"

    .line 12
    .line 13
    const-string v6, "FT_PSK"

    .line 14
    .line 15
    const-string v7, "FT_EAP"

    .line 16
    .line 17
    const-string v8, "WPA_PSK_SHA256"

    .line 18
    .line 19
    const-string v9, "WPA_EAP_SHA256"

    .line 20
    .line 21
    const-string v10, "WAPI_PSK"

    .line 22
    .line 23
    const-string v11, "WAPI_CERT"

    .line 24
    .line 25
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
