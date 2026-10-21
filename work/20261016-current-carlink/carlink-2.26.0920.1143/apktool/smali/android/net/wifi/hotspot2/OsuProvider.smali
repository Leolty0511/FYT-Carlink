.class public final Landroid/net/wifi/hotspot2/OsuProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/OsuProvider;",
            ">;"
        }
    .end annotation
.end field

.field public static final METHOD_OMA_DM:I = 0x0

.field public static final METHOD_SOAP_XML_SPP:I = 0x1


# instance fields
.field private final mFriendlyName:Ljava/lang/String;

.field private final mIcon:Landroid/graphics/drawable/Icon;

.field private final mMethodList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkAccessIdentifier:Ljava/lang/String;

.field private final mOsuSsid:Landroid/net/wifi/WifiSsid;

.field private final mServerUri:Landroid/net/Uri;

.field private final mServiceDescription:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/hotspot2/OsuProvider$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/OsuProvider$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/OsuProvider;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Landroid/graphics/drawable/Icon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiSsid;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 3
    iput-object p2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 6
    iput-object p5, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    if-nez p6, :cond_0

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 9
    :goto_0
    iput-object p7, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/hotspot2/OsuProvider;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 12
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 14
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 15
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 17
    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    return-void

    .line 18
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 19
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 22
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 26
    :goto_0
    iget-object p1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object p1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

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
    instance-of v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;

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
    check-cast p1, Landroid/net/wifi/hotspot2/OsuProvider;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 14
    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 18
    .line 19
    if-nez v1, :cond_6

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiSsid;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_6

    .line 29
    .line 30
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_6

    .line 39
    .line 40
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_6

    .line 49
    .line 50
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 51
    .line 52
    if-nez v1, :cond_3

    .line 53
    .line 54
    iget-object v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 55
    .line 56
    if-nez v1, :cond_6

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_6

    .line 66
    .line 67
    :goto_1
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 68
    .line 69
    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_6

    .line 76
    .line 77
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 78
    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    iget-object v1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 82
    .line 83
    if-nez v1, :cond_6

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    iget-object v3, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_6

    .line 93
    .line 94
    :goto_2
    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    .line 95
    .line 96
    iget-object p1, p1, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    .line 97
    .line 98
    if-nez v1, :cond_5

    .line 99
    .line 100
    if-nez p1, :cond_6

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_6
    move v0, v2

    .line 111
    :goto_3
    return v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getMethodList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkAccessIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getOsuSsid()Landroid/net/wifi/WifiSsid;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public getServerUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getServiceDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x7

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 6
    .line 7
    aput-object v2, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 11
    .line 12
    aput-object v2, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 16
    .line 17
    aput-object v2, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 21
    .line 22
    aput-object v2, v0, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 31
    .line 32
    aput-object v2, v0, v1

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    iget-object v2, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    .line 36
    .line 37
    aput-object v2, v0, v1

    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OsuProvider{mOsuSsid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mFriendlyName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mServiceDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mServerUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mNetworkAccessIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMethodList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mOsuSsid:Landroid/net/wifi/WifiSsid;

    .line 2
    .line 3
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mFriendlyName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServiceDescription:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mServerUri:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mNetworkAccessIdentifier:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mMethodList:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroid/net/wifi/hotspot2/OsuProvider;->mIcon:Landroid/graphics/drawable/Icon;

    .line 32
    .line 33
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
