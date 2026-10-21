.class public Landroid/media/AudioGainConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mChannelMask:I

.field mGain:Landroid/media/AudioGain;

.field private final mIndex:I

.field private final mMode:I

.field private final mRampDurationMs:I

.field private final mValues:[I


# direct methods
.method public constructor <init>(ILandroid/media/AudioGain;II[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/media/AudioGainConfig;->mIndex:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/AudioGainConfig;->mGain:Landroid/media/AudioGain;

    .line 7
    .line 8
    iput p3, p0, Landroid/media/AudioGainConfig;->mMode:I

    .line 9
    .line 10
    iput p4, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    .line 11
    .line 12
    iput-object p5, p0, Landroid/media/AudioGainConfig;->mValues:[I

    .line 13
    .line 14
    iput p6, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public channelMask()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mChannelMask:I

    return v0
.end method

.method public index()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mIndex:I

    return v0
.end method

.method public mode()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mMode:I

    return v0
.end method

.method public rampDurationMs()I
    .locals 1

    iget v0, p0, Landroid/media/AudioGainConfig;->mRampDurationMs:I

    return v0
.end method

.method public values()[I
    .locals 1

    iget-object v0, p0, Landroid/media/AudioGainConfig;->mValues:[I

    return-object v0
.end method
