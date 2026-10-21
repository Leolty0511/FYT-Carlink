.class public Landroid/media/audiofx/AutomaticGainControl;
.super Landroid/media/audiofx/AudioEffect;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutomaticGainControl"


# direct methods
.method private constructor <init>(I)V
    .locals 3

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method

.method public static create(I)Landroid/media/audiofx/AutomaticGainControl;
    .locals 2

    .line 1
    const-string v0, "AutomaticGainControl"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/media/audiofx/AutomaticGainControl;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroid/media/audiofx/AutomaticGainControl;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :catch_0
    const-string/jumbo p0, "not enough memory"

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_1
    const-string/jumbo p0, "not enough resources"

    .line 17
    .line 18
    .line 19
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_2
    const-string/jumbo p0, "not implemented on this device null"

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :goto_0
    const/4 v1, 0x0

    .line 30
    :goto_1
    return-object v1
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method
