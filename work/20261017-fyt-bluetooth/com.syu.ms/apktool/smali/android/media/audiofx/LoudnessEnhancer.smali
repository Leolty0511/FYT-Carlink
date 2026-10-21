.class public Landroid/media/audiofx/LoudnessEnhancer;
.super Landroid/media/audiofx/AudioEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/LoudnessEnhancer$Settings;,
        Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;,
        Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_TARGET_GAIN_MB:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LoudnessEnhancer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 3
    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, "LoudnessEnhancer"

    const-string v0, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!"

    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 6
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 8
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 9
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    if-nez p2, :cond_0

    const-string p1, "LoudnessEnhancer"

    const-string p2, "WARNING: attaching a LoudnessEnhancer to global output mix is deprecated!"

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static synthetic access$000(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    return-object p0
.end method


# virtual methods
.method public getProperties()Landroid/media/audiofx/LoudnessEnhancer$Settings;
    .locals 4

    .line 1
    new-instance v0, Landroid/media/audiofx/LoudnessEnhancer$Settings;

    invoke-direct {v0}, Landroid/media/audiofx/LoudnessEnhancer$Settings;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 3
    aget v1, v1, v2

    iput v1, v0, Landroid/media/audiofx/LoudnessEnhancer$Settings;->targetGainmB:I

    return-object v0
.end method

.method public getTargetGain()F
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/AudioEffect;->getParameter(I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    .line 2
    aget v0, v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public setParameterListener(Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer$1;)V

    iput-object v1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mBaseParamListener:Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;

    .line 4
    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 5
    :cond_0
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer;->mParamListener:Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setProperties(Landroid/media/audiofx/LoudnessEnhancer$Settings;)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/media/audiofx/LoudnessEnhancer$Settings;->targetGainmB:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method

.method public setTargetGain(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/AudioEffect;->setParameter(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/AudioEffect;->checkStatus(I)V

    return-void
.end method
