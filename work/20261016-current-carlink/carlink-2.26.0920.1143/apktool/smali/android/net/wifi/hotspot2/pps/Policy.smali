.class public final Landroid/net/wifi/hotspot2/pps/Policy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Policy;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EXCLUSION_SSIDS:I = 0x80

.field private static final MAX_PORT_STRING_BYTES:I = 0x40

.field private static final MAX_SSID_BYTES:I = 0x20

.field private static final NULL_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Policy"


# instance fields
.field private mExcludedSsidList:[Ljava/lang/String;

.field private mMaximumBssLoadValue:I

.field private mMinHomeDownlinkBandwidth:J

.field private mMinHomeUplinkBandwidth:J

.field private mMinRoamingDownlinkBandwidth:J

.field private mMinRoamingUplinkBandwidth:J

.field private mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

.field private mPreferredRoamingPartnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field

.field private mRequiredProtoPortMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 3
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 4
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 5
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 7
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    const/high16 v1, -0x80000000

    .line 8
    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 9
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 10
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/pps/Policy;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 12
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 13
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 14
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 15
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 17
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    const/high16 v1, -0x80000000

    .line 18
    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 19
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 20
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-nez p1, :cond_0

    return-void

    .line 21
    :cond_0
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 22
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 23
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 24
    iget-wide v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 25
    iget v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 26
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 27
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 28
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 29
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 30
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 32
    :cond_3
    iget-object v0, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    if-eqz v0, :cond_4

    .line 33
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    invoke-direct {v0, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;-><init>(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    :cond_4
    return-void
.end method

.method private static writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Integer;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    return-void
.end method

.method private static writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p1, -0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/Policy;

    .line 12
    .line 13
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 14
    .line 15
    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-nez v1, :cond_5

    .line 20
    .line 21
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 22
    .line 23
    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_5

    .line 28
    .line 29
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 30
    .line 31
    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_5

    .line 36
    .line 37
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 38
    .line 39
    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 40
    .line 41
    cmp-long v1, v3, v5

    .line 42
    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 46
    .line 47
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 56
    .line 57
    if-nez v1, :cond_2

    .line 58
    .line 59
    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 60
    .line 61
    if-nez v1, :cond_5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 65
    .line 66
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_5

    .line 71
    .line 72
    :goto_0
    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 73
    .line 74
    iget v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 75
    .line 76
    if-ne v1, v3, :cond_5

    .line 77
    .line 78
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 79
    .line 80
    if-nez v1, :cond_3

    .line 81
    .line 82
    iget-object v1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 83
    .line 84
    if-nez v1, :cond_5

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 96
    .line 97
    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 98
    .line 99
    if-nez v1, :cond_4

    .line 100
    .line 101
    if-nez p1, :cond_5

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    invoke-virtual {v1, p1}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_5
    move v0, v2

    .line 112
    :goto_2
    return v0
.end method

.method public getExcludedSsidList()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaximumBssLoadValue()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    return v0
.end method

.method public getMinHomeDownlinkBandwidth()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    return-wide v0
.end method

.method public getMinHomeUplinkBandwidth()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    return-wide v0
.end method

.method public getMinRoamingDownlinkBandwidth()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    return-wide v0
.end method

.method public getMinRoamingUplinkBandwidth()J
    .locals 2

    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    return-wide v0
.end method

.method public getPolicyUpdate()Landroid/net/wifi/hotspot2/pps/UpdateParameter;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-object v0
.end method

.method public getPreferredRoamingPartnerList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    return-object v0
.end method

.method public getRequiredProtoPortMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    aput-object v1, v0, v2

    .line 22
    .line 23
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 24
    .line 25
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 33
    .line 34
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput-object v1, v0, v2

    .line 40
    .line 41
    const/4 v1, 0x4

    .line 42
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 43
    .line 44
    aput-object v2, v0, v1

    .line 45
    .line 46
    const/4 v1, 0x5

    .line 47
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 48
    .line 49
    aput-object v2, v0, v1

    .line 50
    .line 51
    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/4 v2, 0x6

    .line 58
    aput-object v1, v0, v2

    .line 59
    .line 60
    const/4 v1, 0x7

    .line 61
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 62
    .line 63
    aput-object v2, v0, v1

    .line 64
    .line 65
    const/16 v1, 0x8

    .line 66
    .line 67
    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 68
    .line 69
    aput-object v2, v0, v1

    .line 70
    .line 71
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    return v0
.end method

.method public setExcludedSsidList([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    return-void
.end method

.method public setMaximumBssLoadValue(I)V
    .locals 0

    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    return-void
.end method

.method public setMinHomeDownlinkBandwidth(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    return-void
.end method

.method public setMinHomeUplinkBandwidth(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    return-void
.end method

.method public setMinRoamingDownlinkBandwidth(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    return-void
.end method

.method public setMinRoamingUplinkBandwidth(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    return-void
.end method

.method public setPolicyUpdate(Landroid/net/wifi/hotspot2/pps/UpdateParameter;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    return-void
.end method

.method public setPreferredRoamingPartnerList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    return-void
.end method

.method public setRequiredProtoPortMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MinHomeDownlinkBandwidth: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\nMinHomeUplinkBandwidth: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\nMinRoamingDownlinkBandwidth: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\nMinRoamingUplinkBandwidth: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\nExcludedSSIDList: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\nRequiredProtoPortMap: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\nMaximumBSSLoadValue: "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\nPreferredRoamingPartnerList: "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\n"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 89
    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    const-string v1, "PolicyUpdate Begin ---\n"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, "PolicyUpdate End ---\n"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    return-object v0
.end method

.method public validate()Z
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 2
    .line 3
    const-string v1, "Policy"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string v0, "PolicyUpdate not specified"

    .line 9
    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->validate()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v0, :cond_4

    .line 24
    .line 25
    array-length v3, v0

    .line 26
    const/16 v4, 0x80

    .line 27
    .line 28
    if-le v3, v4, :cond_2

    .line 29
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v3, "SSID exclusion list size exceeded the max: "

    .line 33
    .line 34
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v3, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 38
    .line 39
    array-length v3, v3

    .line 40
    invoke-static {v0, v3, v1}, Landroid/app/m;->t(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v2

    .line 44
    :cond_2
    array-length v3, v0

    .line 45
    move v4, v2

    .line 46
    :goto_0
    if-ge v4, v3, :cond_4

    .line 47
    .line 48
    aget-object v5, v0, v4

    .line 49
    .line 50
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    array-length v6, v6

    .line 57
    const/16 v7, 0x20

    .line 58
    .line 59
    if-le v6, v7, :cond_3

    .line 60
    .line 61
    const-string v0, "Invalid SSID: "

    .line 62
    .line 63
    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return v2

    .line 71
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 75
    .line 76
    if-eqz v0, :cond_6

    .line 77
    .line 78
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_6

    .line 91
    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Ljava/util/Map$Entry;

    .line 97
    .line 98
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Ljava/lang/String;

    .line 103
    .line 104
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    array-length v4, v4

    .line 111
    const/16 v5, 0x40

    .line 112
    .line 113
    if-le v4, v5, :cond_5

    .line 114
    .line 115
    const-string v0, "PortNumber string bytes exceeded the max: "

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    return v2

    .line 125
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 126
    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 144
    .line 145
    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->validate()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_7

    .line 150
    .line 151
    return v2

    .line 152
    :cond_8
    const/4 v0, 0x1

    .line 153
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeDownlinkBandwidth:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinHomeUplinkBandwidth:J

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 9
    .line 10
    .line 11
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingDownlinkBandwidth:J

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    .line 15
    .line 16
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMinRoamingUplinkBandwidth:J

    .line 17
    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mExcludedSsidList:[Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mRequiredProtoPortMap:Ljava/util/Map;

    .line 27
    .line 28
    invoke-static {p1, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeProtoPortMap(Landroid/os/Parcel;Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mMaximumBssLoadValue:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPreferredRoamingPartnerList:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {p1, p2, v0}, Landroid/net/wifi/hotspot2/pps/Policy;->writeRoamingPartnerList(Landroid/os/Parcel;ILjava/util/List;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy;->mPolicyUpdate:Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 42
    .line 43
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
