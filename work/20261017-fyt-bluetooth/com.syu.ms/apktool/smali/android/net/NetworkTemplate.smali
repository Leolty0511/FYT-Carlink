.class public Landroid/net/NetworkTemplate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_USAGE_NETWORK_TYPES:[I

.field public static final MATCH_ETHERNET:I = 0x5

.field public static final MATCH_MOBILE_3G_LOWER:I = 0x2

.field public static final MATCH_MOBILE_4G:I = 0x3

.field public static final MATCH_MOBILE_ALL:I = 0x1

.field public static final MATCH_MOBILE_WILDCARD:I = 0x6

.field public static final MATCH_WIFI:I = 0x4

.field public static final MATCH_WIFI_WILDCARD:I = 0x7

.field private static sForceAllNetworkTypes:Z


# instance fields
.field private final mMatchRule:I

.field private final mNetworkId:Ljava/lang/String;

.field private final mSubscriberId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    .line 3
    new-instance v0, Landroid/net/NetworkTemplate$1;

    invoke-direct {v0}, Landroid/net/NetworkTemplate$1;-><init>()V

    sput-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 4
    iput-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/NetworkTemplate$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static buildTemplateEthernet()Landroid/net/NetworkTemplate;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifi()Landroid/net/NetworkTemplate;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;
    .locals 3

    .line 2
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;
    .locals 3

    .line 1
    new-instance v0, Landroid/net/NetworkTemplate;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static ensureSubtypeAvailable()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to enforce 3G_LOWER template on combined data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forceAllNetworkTypes()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    return-void
.end method

.method private static getMatchRuleName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "WIFI_WILDCARD"

    return-object p0

    :pswitch_1
    const-string p0, "MOBILE_WILDCARD"

    return-object p0

    :pswitch_2
    const-string p0, "ETHERNET"

    return-object p0

    :pswitch_3
    const-string p0, "WIFI"

    return-object p0

    :pswitch_4
    const-string p0, "MOBILE_4G"

    return-object p0

    :pswitch_5
    const-string p0, "MOBILE_3G_LOWER"

    return-object p0

    :pswitch_6
    const-string p0, "MOBILE_ALL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private matchesEthernet(Landroid/net/NetworkIdentity;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private matchesMobile(Landroid/net/NetworkIdentity;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget-boolean v2, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v2, :cond_1

    sget-object v2, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    invoke-static {v2, v0}, Lu/a;->a([II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/NetworkIdentity;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, p1}, Lu/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    .line 2
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget p1, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private matchesMobile4g(Landroid/net/NetworkIdentity;)Z
    .locals 3

    .line 1
    invoke-static {}, Landroid/net/NetworkTemplate;->ensureSubtypeAvailable()V

    .line 2
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget p1, p1, Landroid/net/NetworkIdentity;->mSubType:I

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkClass(I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 2

    .line 1
    iget p1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    return v0

    .line 2
    :cond_0
    sget-boolean v1, Landroid/net/NetworkTemplate;->sForceAllNetworkTypes:Z

    if-nez v1, :cond_2

    sget-object v1, Landroid/net/NetworkTemplate;->DATA_USAGE_NETWORK_TYPES:[I

    invoke-static {v1, p1}, Lu/a;->a([II)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method private matchesWifi(Landroid/net/NetworkIdentity;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/net/NetworkIdentity;->mNetworkId:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lu/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z
    .locals 2

    .line 1
    iget p1, p1, Landroid/net/NetworkIdentity;->mType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v1, 0xd

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/net/NetworkTemplate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/net/NetworkTemplate;

    .line 3
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    iget v2, p1, Landroid/net/NetworkTemplate;->mMatchRule:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v0, v2}, Lu/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-static {v0, p1}, Lu/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getMatchRule()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    return v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lu/i;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Landroid/net/NetworkIdentity;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unknown network template"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifiWildcard(Landroid/net/NetworkIdentity;)Z

    move-result p1

    return p1

    .line 4
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobileWildcard(Landroid/net/NetworkIdentity;)Z

    move-result p1

    return p1

    .line 5
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesEthernet(Landroid/net/NetworkIdentity;)Z

    move-result p1

    return p1

    .line 6
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesWifi(Landroid/net/NetworkIdentity;)Z

    move-result p1

    return p1

    .line 7
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile4g(Landroid/net/NetworkIdentity;)Z

    move-result p1

    return p1

    .line 8
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile3gLower(Landroid/net/NetworkIdentity;)Z

    move-result p1

    return p1

    .line 9
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/net/NetworkTemplate;->matchesMobile(Landroid/net/NetworkIdentity;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkTemplate: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "matchRule="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-static {v1}, Landroid/net/NetworkTemplate;->getMatchRuleName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ", subscriberId="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ", networkId="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/NetworkTemplate;->mMatchRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Landroid/net/NetworkTemplate;->mSubscriberId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Landroid/net/NetworkTemplate;->mNetworkId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
