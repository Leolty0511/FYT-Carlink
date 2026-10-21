.class public Landroid/telecom/ParcelableRttCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableRttCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mReceiveStream:Landroid/os/ParcelFileDescriptor;

.field private final mRttMode:I

.field private final mTransmitStream:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ParcelableRttCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableRttCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableRttCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    .line 3
    iput-object p2, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    .line 4
    iput-object p3, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    .line 7
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getReceiveStream()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getRttMode()I
    .locals 1

    iget v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    return v0
.end method

.method public getTransmitStream()Landroid/os/ParcelFileDescriptor;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/telecom/ParcelableRttCall;->mRttMode:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mTransmitStream:Landroid/os/ParcelFileDescriptor;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/telecom/ParcelableRttCall;->mReceiveStream:Landroid/os/ParcelFileDescriptor;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
