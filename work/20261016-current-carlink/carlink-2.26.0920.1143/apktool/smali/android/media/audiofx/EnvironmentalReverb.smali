.class public Landroid/media/audiofx/EnvironmentalReverb;
.super Landroid/media/audiofx/AudioEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/EnvironmentalReverb$Settings;,
        Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;,
        Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_DECAY_HF_RATIO:I = 0x3

.field public static final PARAM_DECAY_TIME:I = 0x2

.field public static final PARAM_DENSITY:I = 0x9

.field public static final PARAM_DIFFUSION:I = 0x8

.field private static final PARAM_PROPERTIES:I = 0xa

.field public static final PARAM_REFLECTIONS_DELAY:I = 0x5

.field public static final PARAM_REFLECTIONS_LEVEL:I = 0x4

.field public static final PARAM_REVERB_DELAY:I = 0x7

.field public static final PARAM_REVERB_LEVEL:I = 0x6

.field public static final PARAM_ROOM_HF_LEVEL:I = 0x1

.field public static final PARAM_ROOM_LEVEL:I = 0x0

.field private static PROPERTY_SIZE:I = 0x1a

.field private static final TAG:Ljava/lang/String; = "EnvironmentalReverb"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    .line 2
    .line 3
    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/Object;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$000(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    return-object p0
.end method


# virtual methods
.method public getDecayHFRatio()S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getDecayTime()I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getDensity()S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/16 v1, 0x9

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getDiffusion()S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public getProperties()Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .locals 4

    .line 1
    sget v0, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    .line 2
    .line 3
    new-array v0, v0, [B

    .line 4
    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;

    .line 15
    .line 16
    invoke-direct {v2}, Landroid/media/audiofx/EnvironmentalReverb$Settings;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    invoke-static {v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    invoke-static {v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    iput v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    .line 39
    .line 40
    const/16 v3, 0x8

    .line 41
    .line 42
    invoke-static {v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    .line 53
    .line 54
    const/16 v1, 0xc

    .line 55
    .line 56
    invoke-static {v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iput v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    .line 61
    .line 62
    const/16 v1, 0x10

    .line 63
    .line 64
    invoke-static {v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    .line 69
    .line 70
    const/16 v1, 0x12

    .line 71
    .line 72
    invoke-static {v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    iput v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    .line 77
    .line 78
    const/16 v1, 0x16

    .line 79
    .line 80
    invoke-static {v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    .line 85
    .line 86
    const/16 v1, 0x18

    .line 87
    .line 88
    invoke-static {v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput-short v0, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    .line 93
    .line 94
    return-object v2
.end method

.method public getReflectionsDelay()I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x5

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getReflectionsLevel()S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x4

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getReverbDelay()I
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getReverbLevel()S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x6

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getRoomHFLevel()S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public getRoomLevel()S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public setDecayHFRatio(S)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDecayTime(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setDensity(S)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x9

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setDiffusion(S)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    .line 9
    .line 10
    new-instance p1, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb$1;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    .line 17
    .line 18
    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p1
.end method

.method public setProperties(Landroid/media/audiofx/EnvironmentalReverb$Settings;)V
    .locals 4

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v1, v0, [[B

    .line 4
    .line 5
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    .line 6
    .line 7
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v1, v3

    .line 13
    .line 14
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    .line 15
    .line 16
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object v2, v1, v3

    .line 22
    .line 23
    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    .line 24
    .line 25
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x2

    .line 30
    aput-object v2, v1, v3

    .line 31
    .line 32
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    .line 33
    .line 34
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v3, 0x3

    .line 39
    aput-object v2, v1, v3

    .line 40
    .line 41
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    .line 42
    .line 43
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const/4 v3, 0x4

    .line 48
    aput-object v2, v1, v3

    .line 49
    .line 50
    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    .line 51
    .line 52
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const/4 v3, 0x5

    .line 57
    aput-object v2, v1, v3

    .line 58
    .line 59
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    .line 60
    .line 61
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x6

    .line 66
    aput-object v2, v1, v3

    .line 67
    .line 68
    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    .line 69
    .line 70
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const/4 v3, 0x7

    .line 75
    aput-object v2, v1, v3

    .line 76
    .line 77
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    .line 78
    .line 79
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    const/16 v3, 0x8

    .line 84
    .line 85
    aput-object v2, v1, v3

    .line 86
    .line 87
    iget-short p1, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    .line 88
    .line 89
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/16 v2, 0x9

    .line 94
    .line 95
    aput-object p1, v1, v2

    .line 96
    .line 97
    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 106
    .line 107
    .line 108
    return-void
.end method

.method public setReflectionsDelay(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x5

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setReflectionsLevel(S)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setReverbDelay(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x7

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setReverbLevel(S)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x6

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRoomHFLevel(S)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setRoomLevel(S)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
