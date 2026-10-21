.class public abstract Lcom/google/android/projection/protocol/CarWifi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
    }
.end annotation


# static fields
.field public static final OPEN:I = 0x1

.field public static final UNKNOWN_SECURITY_MODE:I = 0x0

.field public static final WEP_128:I = 0x3

.field public static final WEP_64:I = 0x2

.field public static final WPA2_ENTERPRISE:I = 0x8

.field public static final WPA2_PERSONAL:I = 0x5

.field public static final WPA_ENTERPRISE:I = 0x7

.field public static final WPA_PERSONAL:I = 0x4

.field public static final WPA_WPA2_ENTERPRISE:I = 0x9

.field public static final WPA_WPA2_PERSONAL:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCarWifiCredentials()Lcom/google/android/projection/protocol/CarWifi$CarWifiCredentials;
.end method
