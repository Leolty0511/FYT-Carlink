.class public Landroid/media/AudioMixPort;
.super Landroid/media/AudioPort;
.source "SourceFile"


# instance fields
.field private final mIoHandle:I


# direct methods
.method public constructor <init>(Landroid/media/AudioHandle;IILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p3

    .line 4
    move-object v3, p4

    .line 5
    move-object v4, p5

    .line 6
    move-object v5, p6

    .line 7
    move-object/from16 v6, p7

    .line 8
    .line 9
    move-object/from16 v7, p8

    .line 10
    .line 11
    move-object/from16 v8, p9

    .line 12
    .line 13
    invoke-direct/range {v0 .. v8}, Landroid/media/AudioPort;-><init>(Landroid/media/AudioHandle;ILjava/lang/String;[I[I[I[I[Landroid/media/AudioGain;)V

    .line 14
    .line 15
    .line 16
    move v1, p2

    .line 17
    iput v1, v0, Landroid/media/AudioMixPort;->mIoHandle:I

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;
    .locals 7

    .line 2
    new-instance v6, Landroid/media/AudioMixPortConfig;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioMixPortConfig;-><init>(Landroid/media/AudioMixPort;IIILandroid/media/AudioGainConfig;)V

    return-object v6
.end method

.method public bridge synthetic buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioPortConfig;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/AudioMixPort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioMixPortConfig;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    instance-of v1, p1, Landroid/media/AudioMixPort;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v1, p1

    .line 10
    check-cast v1, Landroid/media/AudioMixPort;

    .line 11
    .line 12
    iget v2, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/media/AudioMixPort;->ioHandle()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eq v2, v1, :cond_1

    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    invoke-super {p0, p1}, Landroid/media/AudioPort;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1

    .line 26
    :cond_2
    :goto_0
    return v0
.end method

.method public ioHandle()I
    .locals 1

    iget v0, p0, Landroid/media/AudioMixPort;->mIoHandle:I

    return v0
.end method
