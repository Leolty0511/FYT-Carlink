.class public Landroid/telephony/DataConnectionRealTimeInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataConnectionRealTimeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DC_POWER_STATE_HIGH:I = 0x3

.field public static final DC_POWER_STATE_LOW:I = 0x1

.field public static final DC_POWER_STATE_MEDIUM:I = 0x2

.field public static final DC_POWER_STATE_UNKNOWN:I = 0x7fffffff


# instance fields
.field private mDcPowerState:I

.field private mTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/DataConnectionRealTimeInfo$1;

    invoke-direct {v0}, Landroid/telephony/DataConnectionRealTimeInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    .line 6
    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 4
    iput p3, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/DataConnectionRealTimeInfo$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/telephony/DataConnectionRealTimeInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

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
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eq v2, v3, :cond_2

    .line 18
    .line 19
    return v1

    .line 20
    :cond_2
    check-cast p1, Landroid/telephony/DataConnectionRealTimeInfo;

    .line 21
    .line 22
    iget-wide v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 23
    .line 24
    iget-wide v4, p1, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 25
    .line 26
    cmp-long v2, v2, v4

    .line 27
    .line 28
    if-nez v2, :cond_3

    .line 29
    .line 30
    iget v2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 31
    .line 32
    iget p1, p1, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 33
    .line 34
    if-ne v2, p1, :cond_3

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_3
    move v0, v1

    .line 38
    :goto_0
    return v0
.end method

.method public getDcPowerState()I
    .locals 1

    iget v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    return v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x11

    .line 4
    .line 5
    add-long/2addr v0, v2

    .line 6
    mul-long/2addr v2, v0

    .line 7
    iget v4, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 8
    .line 9
    int-to-long v4, v4

    .line 10
    add-long/2addr v2, v4

    .line 11
    add-long/2addr v2, v0

    .line 12
    long-to-int v0, v2

    .line 13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "mTime="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, " mDcPowerState="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mTime:J

    .line 2
    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/DataConnectionRealTimeInfo;->mDcPowerState:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
