.class public final Landroid/telephony/euicc/DownloadableSubscription;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/DownloadableSubscription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private accessRules:[Landroid/telephony/UiccAccessRule;

.field private carrierName:Ljava/lang/String;

.field public final encodedActivationCode:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/euicc/DownloadableSubscription$1;

    invoke-direct {v0}, Landroid/telephony/euicc/DownloadableSubscription$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    .line 7
    sget-object v0, Landroid/telephony/UiccAccessRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/telephony/UiccAccessRule;

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:[Landroid/telephony/UiccAccessRule;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/euicc/DownloadableSubscription$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    return-void
.end method

.method public static forActivationCode(Ljava/lang/String;)Landroid/telephony/euicc/DownloadableSubscription;
    .locals 1

    .line 1
    const-string v0, "Activation code may not be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/telephony/euicc/DownloadableSubscription;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Landroid/telephony/euicc/DownloadableSubscription;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessRules()[Landroid/telephony/UiccAccessRule;
    .locals 1

    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:[Landroid/telephony/UiccAccessRule;

    return-object v0
.end method

.method public getCarrierName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessRules([Landroid/telephony/UiccAccessRule;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:[Landroid/telephony/UiccAccessRule;

    return-void
.end method

.method public setCarrierName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->encodedActivationCode:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->carrierName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/telephony/euicc/DownloadableSubscription;->accessRules:[Landroid/telephony/UiccAccessRule;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
