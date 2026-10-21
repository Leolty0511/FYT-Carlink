.class public final Landroid/telephony/NetworkScanRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NetworkScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_BANDS:I = 0x8

.field public static final MAX_CHANNELS:I = 0x20

.field public static final MAX_RADIO_ACCESS_NETWORKS:I = 0x8

.field public static final SCAN_TYPE_ONE_SHOT:I = 0x0

.field public static final SCAN_TYPE_PERIODIC:I = 0x1


# instance fields
.field public scanType:I

.field public specifiers:[Landroid/telephony/RadioAccessSpecifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/NetworkScanRequest$1;

    invoke-direct {v0}, Landroid/telephony/NetworkScanRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Landroid/telephony/RadioAccessSpecifier;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    .line 4
    iput-object p2, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    .line 7
    const-class v0, Ljava/lang/Object;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/RadioAccessSpecifier;

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, [Landroid/telephony/RadioAccessSpecifier;

    iput-object p1, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/NetworkScanRequest$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/NetworkScanRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    move-object v1, p1

    .line 3
    check-cast v1, Landroid/telephony/NetworkScanRequest;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    iget p1, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    .line 9
    .line 10
    iget v2, v1, Landroid/telephony/NetworkScanRequest;->scanType:I

    .line 11
    .line 12
    if-ne p1, v2, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 15
    .line 16
    iget-object v1, v1, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 17
    .line 18
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    :catch_0
    :cond_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 6
    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    mul-int/lit8 v1, v1, 0x25

    .line 12
    .line 13
    add-int/2addr v1, v0

    .line 14
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/NetworkScanRequest;->scanType:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/telephony/NetworkScanRequest;->specifiers:[Landroid/telephony/RadioAccessSpecifier;

    .line 7
    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
