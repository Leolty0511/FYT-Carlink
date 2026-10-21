.class public Landroid/media/audiofx/Equalizer;
.super Landroid/media/audiofx/AudioEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Equalizer$Settings;,
        Landroid/media/audiofx/Equalizer$BaseParameterListener;,
        Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .line 1
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 p1, 0x0

    .line 2
    iput-short p1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 4
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    const-string v0, "Equalizer"

    if-nez p2, :cond_0

    const-string p2, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    .line 6
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    .line 8
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result p2

    iput p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-eqz p2, :cond_2

    .line 9
    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    const/16 p2, 0x20

    new-array p2, p2, [B

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/16 v2, 0x8

    aput v2, v1, p1

    move v2, p1

    .line 10
    :goto_0
    iget v3, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge v2, v3, :cond_2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 11
    invoke-virtual {p0, v1, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    move v3, p1

    .line 12
    :goto_1
    aget-byte v4, p2, v3

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 13
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    const-string v6, "ISO-8859-1"

    invoke-direct {v5, p2, p1, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v3, "preset name decode error"

    .line 14
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    return-object p0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [S

    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v3, v0, v4

    aput p1, v0, v1

    .line 1
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    aget-short p1, v2, v4

    return p1
.end method

.method public getBandFreqRange(S)[I
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter([I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-object v0
.end method

.method public getBandLevel(S)S
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    new-array v3, v2, [S

    const/4 v4, 0x0

    aput v0, v1, v4

    aput p1, v1, v2

    .line 1
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    aget-short p1, v3, v4

    return p1
.end method

.method public getBandLevelRange()[S
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [S

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x3

    const/4 v4, 0x0

    aput v3, v0, v4

    aput p1, v0, v1

    .line 1
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    aget p1, v2, v4

    return p1
.end method

.method public getCurrentPreset()S
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x6

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    const/4 v1, 0x0

    .line 2
    aget-short v0, v0, v1

    return v0
.end method

.method public getNumberOfBands()S
    .locals 3

    .line 1
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    new-array v0, v0, [S

    .line 2
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter([I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 3
    aget-short v0, v0, v2

    iput-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    return v0
.end method

.method public getNumberOfPresets()S
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x7

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    const/4 v1, 0x0

    .line 2
    aget-short v0, v0, v1

    return v0
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iget v0, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .locals 5

    .line 1
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/16 v2, 0x9

    .line 2
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 3
    new-instance v2, Landroid/media/audiofx/Equalizer$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v4

    iput-short v4, v2, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 6
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    new-array v1, v1, [S

    iput-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 7
    :goto_0
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v3, v1, :cond_0

    .line 8
    iget-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v0, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public setBandLevel(SS)V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    new-array v3, v2, [S

    const/4 v4, 0x0

    aput v0, v1, v4

    aput p1, v1, v2

    aput-short p2, v3, v4

    .line 1
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/AudioEffect;->setParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 4
    new-instance p1, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V

    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

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

.method public setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .locals 6

    .line 1
    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-object v1, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    new-array v1, v0, [[B

    .line 2
    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    move v2, v3

    .line 3
    :goto_0
    iget-short v5, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v2, v5, :cond_0

    new-array v5, v0, [[B

    aput-object v1, v5, v3

    .line 4
    iget-object v1, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    aget-short v1, v1, v2

    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v1

    aput-object v1, v5, v4

    invoke-virtual {p0, v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    .line 5
    invoke-virtual {p0, p1, v1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settings invalid band count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p1, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public usePreset(S)V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method
