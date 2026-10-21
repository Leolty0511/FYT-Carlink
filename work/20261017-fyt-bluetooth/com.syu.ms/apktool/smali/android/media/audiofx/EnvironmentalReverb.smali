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
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 1
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    .line 3
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    return-object p0
.end method


# virtual methods
.method public getDecayHFRatio()S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v0

    return v0
.end method

.method public getDecayTime()I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x2

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v0

    return v0
.end method

.method public getDensity()S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x9

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v0

    return v0
.end method

.method public getDiffusion()S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/16 v1, 0x8

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v0

    return v0
.end method

.method public getProperties()Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .locals 4

    .line 1
    sget v0, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    new-array v0, v0, [B

    const/16 v1, 0xa

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 3
    new-instance v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/EnvironmentalReverb$Settings;-><init>()V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    const/4 v3, 0x2

    .line 5
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    const/4 v3, 0x4

    .line 6
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v3

    iput v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    const/16 v3, 0x8

    .line 7
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    .line 8
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    const/16 v1, 0xc

    .line 9
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    iput v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    const/16 v1, 0x10

    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    const/16 v1, 0x12

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    iput v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    const/16 v1, 0x16

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    const/16 v1, 0x18

    .line 13
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    iput-short v0, v2, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    return-object v2
.end method

.method public getReflectionsDelay()I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x5

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v0

    return v0
.end method

.method public getReflectionsLevel()S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x4

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v0

    return v0
.end method

.method public getReverbDelay()I
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x7

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v0

    return v0
.end method

.method public getReverbLevel()S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x6

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v0

    return v0
.end method

.method public getRoomHFLevel()S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v0

    return v0
.end method

.method public getRoomLevel()S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v0

    return v0
.end method

.method public setDecayHFRatio(S)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setDecayTime(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setDensity(S)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setDiffusion(S)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    .line 4
    new-instance p1, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb$1;)V

    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    .line 5
    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 6
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setProperties(Landroid/media/audiofx/EnvironmentalReverb$Settings;)V
    .locals 4

    const/16 v0, 0xa

    new-array v1, v0, [[B

    .line 1
    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-short v2, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-short p1, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    const/16 v2, 0x9

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object p1

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setReflectionsDelay(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setReflectionsLevel(S)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setReverbDelay(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object p1

    const/4 v0, 0x7

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setReverbLevel(S)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    const/4 v0, 0x6

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setRoomHFLevel(S)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setRoomLevel(S)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method
