.class public Landroid/media/AudioRoutesInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/AudioRoutesInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAIN_DOCK_SPEAKERS:I = 0x4

.field public static final MAIN_HDMI:I = 0x8

.field public static final MAIN_HEADPHONES:I = 0x2

.field public static final MAIN_HEADSET:I = 0x1

.field public static final MAIN_SPEAKER:I


# instance fields
.field public mBluetoothName:Ljava/lang/CharSequence;

.field public mMainType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/AudioRoutesInfo$1;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo$1;-><init>()V

    sput-object v0, Landroid/media/AudioRoutesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioRoutesInfo;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5
    iget-object v0, p1, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 6
    iget p1, p1, Landroid/media/AudioRoutesInfo;->mMainType:I

    iput p1, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 9
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

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
    iget-object v0, p0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
