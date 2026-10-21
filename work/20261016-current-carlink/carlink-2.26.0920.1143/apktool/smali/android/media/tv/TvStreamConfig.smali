.class public Landroid/media/tv/TvStreamConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvStreamConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_TYPE_BUFFER_PRODUCER:I = 0x2

.field public static final STREAM_TYPE_INDEPENDENT_VIDEO_SOURCE:I = 0x1

.field static final TAG:Ljava/lang/String; = "TvStreamConfig"


# instance fields
.field private mGeneration:I

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mStreamId:I

.field private mType:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/tv/TvStreamConfig$1;

    invoke-direct {v0}, Landroid/media/tv/TvStreamConfig$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvStreamConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/tv/TvStreamConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/tv/TvStreamConfig;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return p1
.end method

.method public static synthetic access$202(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return p1
.end method

.method public static synthetic access$302(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return p1
.end method

.method public static synthetic access$402(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return p1
.end method

.method public static synthetic access$502(Landroid/media/tv/TvStreamConfig;I)I
    .locals 0

    iput p1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return p1
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
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroid/media/tv/TvStreamConfig;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    return v0

    .line 10
    :cond_1
    check-cast p1, Landroid/media/tv/TvStreamConfig;

    .line 11
    .line 12
    iget v1, p1, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    .line 13
    .line 14
    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    .line 15
    .line 16
    if-ne v1, v2, :cond_2

    .line 17
    .line 18
    iget v1, p1, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    .line 19
    .line 20
    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    .line 21
    .line 22
    if-ne v1, v2, :cond_2

    .line 23
    .line 24
    iget v1, p1, Landroid/media/tv/TvStreamConfig;->mType:I

    .line 25
    .line 26
    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    .line 27
    .line 28
    if-ne v1, v2, :cond_2

    .line 29
    .line 30
    iget v1, p1, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    .line 31
    .line 32
    iget v2, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    .line 33
    .line 34
    if-ne v1, v2, :cond_2

    .line 35
    .line 36
    iget p1, p1, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    .line 37
    .line 38
    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    .line 39
    .line 40
    if-ne p1, v1, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    :cond_2
    return v0
.end method

.method public getGeneration()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    return v0
.end method

.method public getStreamId()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TvStreamConfig {mStreamId="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ";mType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ";mGeneration="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    .line 29
    .line 30
    const-string/jumbo v2, "}"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mStreamId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mMaxWidth:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mMaxHeight:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/media/tv/TvStreamConfig;->mGeneration:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
