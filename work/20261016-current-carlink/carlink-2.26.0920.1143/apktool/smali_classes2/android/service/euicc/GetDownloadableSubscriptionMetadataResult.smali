.class public final Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final result:I

.field public final subscription:Landroid/telephony/euicc/DownloadableSubscription;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;

    invoke-direct {v0}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;-><init>()V

    sput-object v0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/telephony/euicc/DownloadableSubscription;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    if-nez p1, :cond_0

    .line 4
    iput-object p2, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->subscription:Landroid/telephony/euicc/DownloadableSubscription;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->subscription:Landroid/telephony/euicc/DownloadableSubscription;

    :goto_0
    return-void

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error result with non-null subscription: "

    .line 7
    invoke-static {v0, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    .line 15
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/DownloadableSubscription;

    iput-object p1, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->subscription:Landroid/telephony/euicc/DownloadableSubscription;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->result:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/service/euicc/GetDownloadableSubscriptionMetadataResult;->subscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
