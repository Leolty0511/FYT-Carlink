.class public Landroid/media/AudioPortConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final CHANNEL_MASK:I = 0x2

.field static final FORMAT:I = 0x4

.field static final GAIN:I = 0x8

.field static final SAMPLE_RATE:I = 0x1


# instance fields
.field private final mChannelMask:I

.field mConfigMask:I

.field private final mFormat:I

.field private final mGain:Landroid/media/AudioGainConfig;

.field final mPort:Landroid/media/AudioPort;

.field private final mSamplingRate:I


# direct methods
.method public constructor <init>(Landroid/media/AudioPort;IIILandroid/media/AudioGainConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    .line 5
    .line 6
    iput p2, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    .line 7
    .line 8
    iput p3, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    .line 9
    .line 10
    iput p4, p0, Landroid/media/AudioPortConfig;->mFormat:I

    .line 11
    .line 12
    iput-object p5, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Landroid/media/AudioPortConfig;->mConfigMask:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public channelMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    return v0
.end method

.method public format()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPortConfig;->mFormat:I

    return v0
.end method

.method public gain()Landroid/media/AudioGainConfig;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    return-object v0
.end method

.method public port()Landroid/media/AudioPort;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    return-object v0
.end method

.method public samplingRate()I
    .locals 1

    iget v0, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mPort:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/AudioPortConfig;->mPort:Landroid/media/AudioPort;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSamplingRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mSamplingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelMask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mChannelMask:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/AudioPortConfig;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/AudioPortConfig;->mGain:Landroid/media/AudioGainConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
