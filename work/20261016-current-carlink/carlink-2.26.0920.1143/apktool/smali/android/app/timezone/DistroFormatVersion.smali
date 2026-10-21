.class public final Landroid/app/timezone/DistroFormatVersion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/timezone/DistroFormatVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mMajorVersion:I

.field private final mMinorVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/timezone/DistroFormatVersion$1;

    invoke-direct {v0}, Landroid/app/timezone/DistroFormatVersion$1;-><init>()V

    sput-object v0, Landroid/app/timezone/DistroFormatVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string/jumbo v0, "major"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, p1}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 12
    .line 13
    const-string/jumbo p1, "minor"

    .line 14
    .line 15
    .line 16
    invoke-static {p1, p2}, Landroid/app/timezone/Utils;->validateVersion(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    iput p1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    const-class v2, Landroid/app/timezone/DistroFormatVersion;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroid/app/timezone/DistroFormatVersion;

    .line 18
    .line 19
    iget v2, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 20
    .line 21
    iget v3, p1, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 22
    .line 23
    if-eq v2, v3, :cond_2

    .line 24
    .line 25
    return v1

    .line 26
    :cond_2
    iget v2, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 27
    .line 28
    iget p1, p1, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 29
    .line 30
    if-ne v2, p1, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    move v0, v1

    .line 34
    :goto_0
    return v0

    .line 35
    :cond_4
    :goto_1
    return v1
.end method

.method public getMajorVersion()I
    .locals 1

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    return v0
.end method

.method public supports(Landroid/app/timezone/DistroFormatVersion;)Z
    .locals 2

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    iget v1, p1, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    iget p1, p1, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "DistroFormatVersion{mMajorVersion="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mMinorVersion="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 19
    .line 20
    const/16 v2, 0x7d

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Landroid/app/m;->j(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/app/timezone/DistroFormatVersion;->mMajorVersion:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/timezone/DistroFormatVersion;->mMinorVersion:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
