.class public final Landroid/telephony/CellIdentityWcdma;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityWcdma;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "CellIdentityWcdma"


# instance fields
.field private final mCid:I

.field private final mLac:I

.field private final mMcc:I

.field private final mMnc:I

.field private final mPsc:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/telephony/CellIdentityWcdma$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityWcdma$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityWcdma;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    .line 4
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    .line 5
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 6
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 7
    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    .line 10
    iput p2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    .line 11
    iput p3, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 12
    iput p4, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 13
    iput p5, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/CellIdentityWcdma$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/telephony/CellIdentityWcdma;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    .line 16
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    .line 17
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    .line 18
    iget v0, p1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iput v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    .line 19
    iget p1, p1, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iput p1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CellIdentityWcdma"

    .line 1
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public copy()Landroid/telephony/CellIdentityWcdma;
    .locals 1

    .line 1
    new-instance v0, Landroid/telephony/CellIdentityWcdma;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityWcdma;-><init>(Landroid/telephony/CellIdentityWcdma;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    check-cast p1, Landroid/telephony/CellIdentityWcdma;

    .line 3
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    iget v2, p1, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    iget v2, p1, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    iget v2, p1, Landroid/telephony/CellIdentityWcdma;->mLac:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    iget v2, p1, Landroid/telephony/CellIdentityWcdma;->mCid:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    iget p1, p1, Landroid/telephony/CellIdentityWcdma;->mPsc:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public getCid()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    return v0
.end method

.method public getPsc()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellIdentityWcdma:{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " mMcc="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMnc="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLac="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCid="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPsc="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/CellIdentityWcdma;->mMcc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/telephony/CellIdentityWcdma;->mMnc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/telephony/CellIdentityWcdma;->mLac:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/telephony/CellIdentityWcdma;->mCid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/telephony/CellIdentityWcdma;->mPsc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
