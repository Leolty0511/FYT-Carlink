.class public final Landroid/media/TimedMetaData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimedMetaData"


# instance fields
.field private mMetaData:[B

.field private mTimestampUs:J


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Landroid/media/TimedMetaData;->parseParcel(Landroid/os/Parcel;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string/jumbo v0, "parseParcel() fails"

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1
.end method

.method public static createTimedMetaDataFromParcel(Landroid/os/Parcel;)Landroid/media/TimedMetaData;
    .locals 1

    new-instance v0, Landroid/media/TimedMetaData;

    invoke-direct {v0, p0}, Landroid/media/TimedMetaData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iput-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    new-array v0, v0, [B

    .line 23
    .line 24
    iput-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1
.end method


# virtual methods
.method public getMetaData()[B
    .locals 1

    iget-object v0, p0, Landroid/media/TimedMetaData;->mMetaData:[B

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/media/TimedMetaData;->mTimestampUs:J

    return-wide v0
.end method
