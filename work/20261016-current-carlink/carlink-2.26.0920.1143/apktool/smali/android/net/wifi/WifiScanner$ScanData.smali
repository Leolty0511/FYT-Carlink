.class public Landroid/net/wifi/WifiScanner$ScanData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllChannelsScanned:Z

.field private mBucketsScanned:I

.field private mFlags:I

.field private mId:I

.field private mResults:[Landroid/net/wifi/ScanResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiScanner$ScanData$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanData$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$ScanData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIZ[Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 7
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 8
    iput p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    .line 9
    iput-boolean p4, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    .line 10
    iput-object p5, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-void
.end method

.method public constructor <init>(II[Landroid/net/wifi/ScanResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 3
    iput p2, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 4
    iput-object p3, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 13
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 14
    iget v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    iput v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    .line 15
    iget-boolean v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    .line 16
    iget-object v0, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v0, v0

    new-array v0, v0, [Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 18
    aget-object v1, v1, v0

    .line 19
    new-instance v2, Landroid/net/wifi/ScanResult;

    invoke-direct {v2, v1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult;)V

    .line 20
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBucketsScanned()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    return v0
.end method

.method public getResults()[Landroid/net/wifi/ScanResult;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public isAllChannelsScanned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mId:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mFlags:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mBucketsScanned:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-boolean v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mAllChannelsScanned:Z

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    .line 27
    .line 28
    array-length v0, v0

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ScanData;->mResults:[Landroid/net/wifi/ScanResult;

    .line 33
    .line 34
    array-length v2, v0

    .line 35
    if-ge v1, v2, :cond_1

    .line 36
    .line 37
    aget-object v0, v0, v1

    .line 38
    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void
.end method
