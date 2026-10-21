.class public final Landroid/bluetooth/le/ResultStorageDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLength:I

.field private mOffset:I

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/ResultStorageDescriptor$1;

    invoke-direct {v0}, Landroid/bluetooth/le/ResultStorageDescriptor$1;-><init>()V

    sput-object v0, Landroid/bluetooth/le/ResultStorageDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    .line 4
    iput p2, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    .line 5
    iput p3, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ResultStorageDescriptor;->ReadFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/le/ResultStorageDescriptor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/bluetooth/le/ResultStorageDescriptor;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private ReadFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iput p1, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mType:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mOffset:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/bluetooth/le/ResultStorageDescriptor;->mLength:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
