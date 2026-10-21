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
    iput-short p1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 13
    .line 14
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 15
    .line 16
    new-instance v0, Ljava/lang/Object;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    .line 22
    .line 23
    const-string v0, "Equalizer"

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    const-string p2, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    .line 28
    .line 29
    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iput p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    .line 40
    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    new-array p2, p2, [Ljava/lang/String;

    .line 44
    .line 45
    iput-object p2, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    .line 46
    .line 47
    const/16 p2, 0x20

    .line 48
    .line 49
    new-array p2, p2, [B

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    new-array v1, v1, [I

    .line 53
    .line 54
    const/16 v2, 0x8

    .line 55
    .line 56
    aput v2, v1, p1

    .line 57
    .line 58
    move v2, p1

    .line 59
    :goto_0
    iget v3, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    .line 60
    .line 61
    if-ge v2, v3, :cond_2

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    aput v2, v1, v3

    .line 65
    .line 66
    invoke-virtual {p0, v1, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([I[B)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 71
    .line 72
    .line 73
    move v3, p1

    .line 74
    :goto_1
    aget-byte v4, p2, v3

    .line 75
    .line 76
    if-eqz v4, :cond_1

    .line 77
    .line 78
    add-int/lit8 v3, v3, 0x1

    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    .line 82
    .line 83
    new-instance v5, Ljava/lang/String;

    .line 84
    .line 85
    const-string v6, "ISO-8859-1"

    .line 86
    .line 87
    invoke-direct {v5, p2, p1, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    aput-object v5, v4, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catch_0
    const-string/jumbo v3, "preset name decode error"

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    return-void
.end method

.method public static synthetic access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    return-object p0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    new-array v2, v1, [S

    .line 6
    .line 7
    const/4 v3, 0x5

    .line 8
    const/4 v4, 0x0

    .line 9
    aput v3, v0, v4

    .line 10
    .line 11
    aput p1, v0, v1

    .line 12
    .line 13
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([I[S)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 18
    .line 19
    .line 20
    aget-short p1, v2, v4

    .line 21
    .line 22
    return p1
.end method

.method public getBandFreqRange(S)[I
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x4

    .line 8
    aput v3, v1, v2

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    aput p1, v1, v2

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter([I[I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public getBandLevel(S)S
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [S

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    aput v0, v1, v4

    .line 9
    .line 10
    aput p1, v1, v2

    .line 11
    .line 12
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([I[S)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 17
    .line 18
    .line 19
    aget-short p1, v3, v4

    .line 20
    .line 21
    return p1
.end method

.method public getBandLevelRange()[S
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [S

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[S)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    new-array v2, v1, [I

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x0

    .line 9
    aput v3, v0, v4

    .line 10
    .line 11
    aput p1, v0, v1

    .line 12
    .line 13
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([I[I)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 18
    .line 19
    .line 20
    aget p1, v2, v4

    .line 21
    .line 22
    return p1
.end method

.method public getCurrentPreset()S
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [S

    .line 3
    .line 4
    const/4 v1, 0x6

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[S)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-short v0, v0, v1

    .line 14
    .line 15
    return v0
.end method

.method public getNumberOfBands()S
    .locals 3

    .line 1
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    new-array v1, v0, [I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput v2, v1, v2

    .line 11
    .line 12
    new-array v0, v0, [S

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter([I[S)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 19
    .line 20
    .line 21
    aget-short v0, v0, v2

    .line 22
    .line 23
    iput-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 24
    .line 25
    return v0
.end method

.method public getNumberOfPresets()S
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [S

    .line 3
    .line 4
    const/4 v1, 0x7

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[S)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    aget-short v0, v0, v1

    .line 14
    .line 15
    return v0
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    .line 8
    .line 9
    aget-object p1, v0, p1

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const-string p1, ""

    .line 13
    .line 14
    return-object p1
.end method

.method public getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .locals 5

    .line 1
    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    mul-int/2addr v0, v1

    .line 5
    add-int/lit8 v0, v0, 0x4

    .line 6
    .line 7
    new-array v0, v0, [B

    .line 8
    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[B)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Landroid/media/audiofx/Equalizer$Settings;

    .line 19
    .line 20
    invoke-direct {v2}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static {v0, v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iput-short v4, v2, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 29
    .line 30
    invoke-static {v0, v1}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput-short v1, v2, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 35
    .line 36
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 37
    .line 38
    new-array v1, v1, [S

    .line 39
    .line 40
    iput-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 41
    .line 42
    :goto_0
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 43
    .line 44
    if-ge v3, v1, :cond_0

    .line 45
    .line 46
    iget-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 47
    .line 48
    mul-int/lit8 v4, v3, 0x2

    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x4

    .line 51
    .line 52
    invoke-static {v0, v4}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    aput-short v4, v1, v3

    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    return-object v2
.end method

.method public setBandLevel(SS)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    new-array v3, v2, [S

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    aput v0, v1, v4

    .line 9
    .line 10
    aput p1, v1, v2

    .line 11
    .line 12
    aput-short p2, v3, v4

    .line 13
    .line 14
    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/AudioEffect;->setParameter([I[S)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 9
    .line 10
    new-instance p1, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

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

.method public setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .locals 6

    .line 1
    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 2
    .line 3
    iget-object v1, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 4
    .line 5
    array-length v1, v1

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 9
    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    new-array v1, v0, [[B

    .line 14
    .line 15
    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 16
    .line 17
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    aput-object v2, v1, v3

    .line 23
    .line 24
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 25
    .line 26
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v4, 0x1

    .line 31
    aput-object v2, v1, v4

    .line 32
    .line 33
    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    move v2, v3

    .line 38
    :goto_0
    iget-short v5, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    .line 39
    .line 40
    if-ge v2, v5, :cond_0

    .line 41
    .line 42
    new-array v5, v0, [[B

    .line 43
    .line 44
    aput-object v1, v5, v3

    .line 45
    .line 46
    iget-object v1, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 47
    .line 48
    aget-short v1, v1, v2

    .line 49
    .line 50
    invoke-static {v1}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    aput-object v1, v5, v4

    .line 55
    .line 56
    invoke-static {v5}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/16 p1, 0x9

    .line 64
    .line 65
    invoke-virtual {p0, p1, v1}, Landroid/media/audiofx/AudioEffect;->setParameter(I[B)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string/jumbo v2, "settings invalid band count: "

    .line 78
    .line 79
    .line 80
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-short p1, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 84
    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0
.end method

.method public usePreset(S)V
    .locals 1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method
