.class public Landroid/media/AudioPort;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ROLE_NONE:I = 0x0

.field public static final ROLE_SINK:I = 0x2

.field public static final ROLE_SOURCE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AudioPort"

.field public static final TYPE_DEVICE:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SESSION:I = 0x3

.field public static final TYPE_SUBMIX:I = 0x2


# instance fields
.field private mActiveConfig:Landroid/media/AudioPortConfig;

.field private final mChannelIndexMasks:[I

.field private final mChannelMasks:[I

.field private final mFormats:[I

.field private final mGains:[Landroid/media/AudioGain;

.field mHandle:Landroid/media/AudioHandle;

.field private final mName:Ljava/lang/String;

.field protected final mRole:I

.field private final mSamplingRates:[I


# direct methods
.method public constructor <init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    .line 5
    .line 6
    iput p2, p0, Landroid/media/AudioPort;->mRole:I

    .line 7
    .line 8
    iput-object p3, p0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    .line 11
    .line 12
    iput-object p5, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    .line 13
    .line 14
    iput-object p6, p0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    .line 15
    .line 16
    iput-object p7, p0, Landroid/media/AudioPort;->mFormats:[I

    .line 17
    .line 18
    iput-object p8, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public activeConfig()Landroid/media/AudioPortConfig;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mActiveConfig:Landroid/media/AudioPortConfig;

    return-object v0
.end method

.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 7

    new-instance v6, Landroid/media/AudioPortConfig;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioPortConfig;-><init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V

    return-object v6
.end method

.method public channelIndexMasks()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mChannelIndexMasks:[I

    return-object v0
.end method

.method public channelMasks()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mChannelMasks:[I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    instance-of v0, p1, Landroid/media/AudioPort;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    check-cast p1, Landroid/media/AudioPort;

    .line 9
    .line 10
    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/media/AudioPort;->handle()Landroid/media/AudioHandle;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {v0, p1}, Landroid/media/AudioHandle;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1

    .line 21
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public formats()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mFormats:[I

    return-object v0
.end method

.method public gain(I)Landroid/media/AudioGain;
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    .line 4
    .line 5
    array-length v1, v0

    .line 6
    if-lt p1, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public gains()[Landroid/media/AudioGain;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mGains:[Landroid/media/AudioGain;

    return-object v0
.end method

.method public handle()Landroid/media/AudioHandle;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioHandle;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    invoke-virtual {v0}, Landroid/media/AudioHandle;->id()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public role()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPort;->mRole:I

    return v0
.end method

.method public samplingRates()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPort;->mSamplingRates:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Landroid/media/AudioPort;->mRole:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Landroid/media/AudioPort;->mRole:I

    .line 8
    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v1, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v0, "SINK"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v0, "SOURCE"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const-string v0, "NONE"

    .line 25
    .line 26
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string/jumbo v2, "{mHandle: "

    .line 29
    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroid/media/AudioPort;->mHandle:Landroid/media/AudioHandle;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, ", mRole: "

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string/jumbo v0, "}"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    return-object v0
.end method
