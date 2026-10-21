.class public Landroid/renderscript/Sampler;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Sampler$Builder;,
        Landroid/renderscript/Sampler$Value;
    }
.end annotation


# instance fields
.field mAniso:F

.field mMag:Landroid/renderscript/Sampler$Value;

.field mMin:Landroid/renderscript/Sampler$Value;

.field mWrapR:Landroid/renderscript/Sampler$Value;

.field mWrapS:Landroid/renderscript/Sampler$Value;

.field mWrapT:Landroid/renderscript/Sampler$Value;


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    const-string p2, "destroy"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static CLAMP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    .line 36
    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR:Landroid/renderscript/Sampler;

    .line 43
    .line 44
    return-object p0
.end method

.method public static CLAMP_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 38
    .line 39
    :cond_0
    monitor-exit p0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 45
    .line 46
    return-object p0
.end method

.method public static CLAMP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/renderscript/Sampler$Value;->CLAMP:Landroid/renderscript/Sampler$Value;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    .line 36
    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_CLAMP_NEAREST:Landroid/renderscript/Sampler;

    .line 43
    .line 44
    return-object p0
.end method

.method public static MIRRORED_REPEAT_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    .line 36
    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR:Landroid/renderscript/Sampler;

    .line 43
    .line 44
    return-object p0
.end method

.method public static MIRRORED_REPEAT_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 38
    .line 39
    :cond_0
    monitor-exit p0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 45
    .line 46
    return-object p0
.end method

.method public static MIRRORED_REPEAT_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/renderscript/Sampler$Value;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    .line 36
    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_MIRRORED_REPEAT_NEAREST:Landroid/renderscript/Sampler;

    .line 43
    .line 44
    return-object p0
.end method

.method public static WRAP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    .line 36
    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR:Landroid/renderscript/Sampler;

    .line 43
    .line 44
    return-object p0
.end method

.method public static WRAP_LINEAR_MIP_LINEAR(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    sget-object v1, Landroid/renderscript/Sampler$Value;->LINEAR:Landroid/renderscript/Sampler$Value;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 38
    .line 39
    :cond_0
    monitor-exit p0

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0

    .line 44
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_LINEAR_MIP_LINEAR:Landroid/renderscript/Sampler;

    .line 45
    .line 46
    return-object p0
.end method

.method public static WRAP_NEAREST(Landroid/renderscript/RenderScript;)Landroid/renderscript/Sampler;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroid/renderscript/Sampler$Builder;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Landroid/renderscript/Sampler$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/Sampler$Value;->NEAREST:Landroid/renderscript/Sampler$Value;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMinification(Landroid/renderscript/Sampler$Value;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setMagnification(Landroid/renderscript/Sampler$Value;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/renderscript/Sampler$Value;->WRAP:Landroid/renderscript/Sampler$Value;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapS(Landroid/renderscript/Sampler$Value;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/renderscript/Sampler$Builder;->setWrapT(Landroid/renderscript/Sampler$Value;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/renderscript/Sampler$Builder;->create()Landroid/renderscript/Sampler;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    .line 36
    .line 37
    :cond_0
    monitor-exit p0

    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw v0

    .line 42
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mSampler_WRAP_NEAREST:Landroid/renderscript/Sampler;

    .line 43
    .line 44
    return-object p0
.end method


# virtual methods
.method public getAnisotropy()F
    .locals 1

    iget v0, p0, Landroid/renderscript/Sampler;->mAniso:F

    return v0
.end method

.method public getMagnification()Landroid/renderscript/Sampler$Value;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Sampler;->mMag:Landroid/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getMinification()Landroid/renderscript/Sampler$Value;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Sampler;->mMin:Landroid/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getWrapS()Landroid/renderscript/Sampler$Value;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Sampler;->mWrapS:Landroid/renderscript/Sampler$Value;

    return-object v0
.end method

.method public getWrapT()Landroid/renderscript/Sampler$Value;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Sampler;->mWrapT:Landroid/renderscript/Sampler$Value;

    return-object v0
.end method
