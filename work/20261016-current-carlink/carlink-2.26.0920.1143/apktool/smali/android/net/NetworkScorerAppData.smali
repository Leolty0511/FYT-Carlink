.class public final Landroid/net/NetworkScorerAppData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

.field private final mNetworkAvailableNotificationChannelId:Ljava/lang/String;

.field private final mRecommendationService:Landroid/content/ComponentName;

.field private final mRecommendationServiceLabel:Ljava/lang/String;

.field public final packageUid:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/NetworkScorerAppData$1;

    invoke-direct {v0}, Landroid/net/NetworkScorerAppData$1;-><init>()V

    sput-object v0, Landroid/net/NetworkScorerAppData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 3
    iput-object p2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 4
    iput-object p3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 6
    iput-object p5, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 9
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    const-class v2, Landroid/net/NetworkScorerAppData;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroid/net/NetworkScorerAppData;

    .line 18
    .line 19
    iget v2, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 20
    .line 21
    iget v3, p1, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 26
    .line 27
    iget-object v3, p1, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 28
    .line 29
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 46
    .line 47
    iget-object v3, p1, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 48
    .line 49
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 56
    .line 57
    iget-object p1, p1, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v0, v1

    .line 67
    :goto_0
    return v0

    .line 68
    :cond_3
    :goto_1
    return v1
.end method

.method public getEnableUseOpenWifiActivity()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getNetworkAvailableNotificationChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationServiceComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getRecommendationServiceLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationServicePackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 20
    .line 21
    aput-object v2, v0, v1

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 25
    .line 26
    aput-object v2, v0, v1

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    iget-object v2, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 30
    .line 31
    aput-object v2, v0, v1

    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkScorerAppData{packageUid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendationService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendationServiceLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableUseOpenWifiActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkAvailableNotificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 7
    .line 8
    invoke-static {p2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 17
    .line 18
    invoke-static {p2, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
