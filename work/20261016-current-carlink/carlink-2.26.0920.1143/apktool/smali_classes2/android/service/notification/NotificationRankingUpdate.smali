.class public Landroid/service/notification/NotificationRankingUpdate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotificationRankingUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mChannels:Landroid/os/Bundle;

.field private final mImportance:[I

.field private final mImportanceExplanation:Landroid/os/Bundle;

.field private final mInterceptedKeys:[Ljava/lang/String;

.field private final mKeys:[Ljava/lang/String;

.field private final mOverrideGroupKeys:Landroid/os/Bundle;

.field private final mOverridePeople:Landroid/os/Bundle;

.field private final mShowBadge:Landroid/os/Bundle;

.field private final mSnoozeCriteria:Landroid/os/Bundle;

.field private final mSuppressedVisualEffects:Landroid/os/Bundle;

.field private final mVisibilityOverrides:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotificationRankingUpdate$1;

    invoke-direct {v0}, Landroid/service/notification/NotificationRankingUpdate$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotificationRankingUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    .line 18
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    .line 5
    iput-object p4, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    .line 6
    iput-object p5, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    .line 7
    iput-object p6, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    .line 8
    iput-object p7, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    .line 9
    iput-object p8, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    .line 10
    iput-object p9, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    .line 11
    iput-object p10, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    .line 12
    iput-object p11, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannels()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    return-object v0
.end method

.method public getImportance()[I
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    return-object v0
.end method

.method public getImportanceExplanation()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInterceptedKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getOrderedKeys()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKeys()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    return-object v0
.end method

.method public getOverridePeople()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShowBadge()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSnoozeCriteria()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    return-object v0
.end method

.method public getSuppressedVisualEffects()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    return-object v0
.end method

.method public getVisibilityOverrides()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mKeys:[Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mInterceptedKeys:[Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mVisibilityOverrides:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mSuppressedVisualEffects:Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportance:[I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mImportanceExplanation:Landroid/os/Bundle;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverrideGroupKeys:Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mChannels:Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mOverridePeople:Landroid/os/Bundle;

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mSnoozeCriteria:Landroid/os/Bundle;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Landroid/service/notification/NotificationRankingUpdate;->mShowBadge:Landroid/os/Bundle;

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
