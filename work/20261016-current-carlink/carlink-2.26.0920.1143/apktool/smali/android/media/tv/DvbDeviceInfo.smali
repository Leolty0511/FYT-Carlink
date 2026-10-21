.class public final Landroid/media/tv/DvbDeviceInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "DvbDeviceInfo"


# instance fields
.field private final mAdapterId:I

.field private final mDeviceId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/DvbDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/tv/DvbDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/DvbDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    .line 7
    iput p2, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/DvbDeviceInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/tv/DvbDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdapterId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/media/tv/DvbDeviceInfo;->mAdapterId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/tv/DvbDeviceInfo;->mDeviceId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
