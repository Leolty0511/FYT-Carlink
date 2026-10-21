.class public Lcom/android/ims/internal/uce/options/OptionsCapInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/options/OptionsCapInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

.field private mSdp:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/android/ims/internal/uce/common/CapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/common/CapInfo;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 7
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsCapInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getOptionsCapInfoInstance()Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .locals 1

    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCapInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCapInfo()Lcom/android/ims/internal/uce/common/CapInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-object v0
.end method

.method public getSdp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 6
    .line 7
    const-class v0, Lcom/android/ims/internal/uce/common/CapInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/ims/internal/uce/common/CapInfo;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 20
    .line 21
    return-void
.end method

.method public setCapInfo(Lcom/android/ims/internal/uce/common/CapInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    return-void
.end method

.method public setSdp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mSdp:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->mCapInfo:Lcom/android/ims/internal/uce/common/CapInfo;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
