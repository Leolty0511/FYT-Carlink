.class public Landroid/media/audiofx/PresetReverb;
.super Landroid/media/audiofx/AudioEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/PresetReverb$Settings;,
        Landroid/media/audiofx/PresetReverb$BaseParameterListener;,
        Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_PRESET:I = 0x0

.field public static final PRESET_LARGEHALL:S = 0x5s

.field public static final PRESET_LARGEROOM:S = 0x3s

.field public static final PRESET_MEDIUMHALL:S = 0x4s

.field public static final PRESET_MEDIUMROOM:S = 0x2s

.field public static final PRESET_NONE:S = 0x0s

.field public static final PRESET_PLATE:S = 0x6s

.field public static final PRESET_SMALLROOM:S = 0x1s

.field private static final TAG:Ljava/lang/String; = "PresetReverb"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .line 3
    iput-object p1, p0, Landroid/media/audiofx/PresetReverb;->mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic access$000(Landroid/media/audiofx/PresetReverb;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    return-object p0
.end method


# virtual methods
.method public getPreset()S
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    aget-short v0, v0, v1

    return v0
.end method

.method public getProperties()Landroid/media/audiofx/PresetReverb$Settings;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/audiofx/PresetReverb$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/PresetReverb$Settings;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [S

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[S)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 3
    aget-short v1, v1, v2

    iput-short v1, v0, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    return-object v0
.end method

.method public setParameterListener(Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    if-nez v1, :cond_0

    .line 3
    iput-object p1, p0, Landroid/media/audiofx/PresetReverb;->mParamListener:Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .line 4
    new-instance p1, Landroid/media/audiofx/PresetReverb$BaseParameterListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/PresetReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/PresetReverb;Landroid/media/audiofx/PresetReverb$1;)V

    iput-object p1, p0, Landroid/media/audiofx/PresetReverb;->mBaseParamListener:Landroid/media/audiofx/PresetReverb$BaseParameterListener;

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

.method public setPreset(S)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setProperties(Landroid/media/audiofx/PresetReverb$Settings;)V
    .locals 1

    .line 1
    iget-short p1, p1, Landroid/media/audiofx/PresetReverb$Settings;->preset:S

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method
