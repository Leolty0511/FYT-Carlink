.class public Landroid/plugin/ClaroTelephonyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static sInstance:Landroid/plugin/ClaroTelephonyHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/plugin/ClaroTelephonyHelper;
    .locals 3

    .line 1
    sget-object v0, Landroid/plugin/ClaroTelephonyHelper;->sInstance:Landroid/plugin/ClaroTelephonyHelper;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Landroid/app/AddonManager;->getDefault()Landroid/app/AddonManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const v1, 0x104010c

    .line 11
    .line 12
    .line 13
    const-class v2, Landroid/plugin/ClaroTelephonyHelper;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/app/AddonManager;->getAddon(ILjava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/plugin/ClaroTelephonyHelper;

    .line 20
    .line 21
    sput-object v0, Landroid/plugin/ClaroTelephonyHelper;->sInstance:Landroid/plugin/ClaroTelephonyHelper;

    .line 22
    .line 23
    return-object v0
.end method


# virtual methods
.method public getEmergencyNumbersForCard(I)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "112,911"

    goto :goto_0

    :cond_0
    const-string p1, "112,911,000,08,110,118,119,999"

    :goto_0
    return-object p1
.end method

.method public getVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
