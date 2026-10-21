.class public abstract Landroid/telephony/CellInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_TYPE_ANTENNA:I = 0x1

.field public static final TIMESTAMP_TYPE_JAVA_RIL:I = 0x4

.field public static final TIMESTAMP_TYPE_MODEM:I = 0x2

.field public static final TIMESTAMP_TYPE_OEM_RIL:I = 0x3

.field public static final TIMESTAMP_TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_CDMA:I = 0x2

.field public static final TYPE_GSM:I = 0x1

.field public static final TYPE_LTE:I = 0x3

.field public static final TYPE_WCDMA:I = 0x4


# instance fields
.field private mRegistered:Z

.field private mTimeStamp:J

.field private mTimeStampType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/telephony/CellInfo$1;

    invoke-direct {v0}, Landroid/telephony/CellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 3
    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    const-wide v0, 0x7fffffffffffffffL

    .line 4
    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method public constructor <init>(Landroid/telephony/CellInfo;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-boolean v0, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 7
    iget v0, p1, Landroid/telephony/CellInfo;->mTimeStampType:I

    iput v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    .line 8
    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method private static timeStampTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "java_ril"

    return-object p0

    :cond_1
    const-string p0, "oem_ril"

    return-object p0

    :cond_2
    const-string p0, "modem"

    return-object p0

    :cond_3
    const-string p0, "antenna"

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 1
    :cond_1
    :try_start_0
    check-cast p1, Landroid/telephony/CellInfo;

    .line 2
    iget-boolean v2, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-boolean v3, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget-wide v4, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    iget p1, p1, Landroid/telephony/CellInfo;->mTimeStampType:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_2

    move v0, v1

    :catch_0
    :cond_2
    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public getTimeStampType()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public isRegistered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return v0
.end method

.method public setRegisterd(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-void
.end method

.method public setTimeStampType(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x4

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iput p1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "mRegistered="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v1, :cond_0

    const-string v1, "YES"

    goto :goto_0

    :cond_0
    const-string v1, "NO"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget v1, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-static {v1}, Landroid/telephony/CellInfo;->timeStampTypeToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " mTimeStampType="

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " mTimeStamp="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeToParcel(Landroid/os/Parcel;I)V
.end method

.method public writeToParcel(Landroid/os/Parcel;II)V
    .locals 0

    .line 1
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/telephony/CellInfo;->mTimeStampType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide p2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
