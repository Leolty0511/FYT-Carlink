.class public final Landroid/media/SubtitleData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleData"


# instance fields
.field private mData:[B

.field private mDurationUs:J

.field private mStartTimeUs:J

.field private mTrackIndex:I


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Landroid/media/SubtitleData;->parseParcel(Landroid/os/Parcel;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parseParcel() fails"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseParcel(Landroid/os/Parcel;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/SubtitleData;->mData:[B

    return-object v0
.end method

.method public getDurationUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/SubtitleData;->mDurationUs:J

    return-wide v0
.end method

.method public getStartTimeUs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroid/media/SubtitleData;->mStartTimeUs:J

    return-wide v0
.end method

.method public getTrackIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/media/SubtitleData;->mTrackIndex:I

    return v0
.end method
