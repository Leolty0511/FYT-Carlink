.class public Landroid/filterpacks/ui/SurfaceRenderFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceRenderFilter"


# instance fields
.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private mAspectRatio:F

.field private mIsBound:Z

.field private mLogVerbose:Z

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreen:Landroid/filterfw/core/GLFrame;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "surfaceView"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_STRETCH:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FIT:I

    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    iput v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->RENDERMODE_FILL_CROP:I

    .line 12
    .line 13
    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    .line 14
    .line 15
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    .line 16
    .line 17
    const/high16 p1, 0x3f800000    # 1.0f

    .line 18
    .line 19
    iput p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 20
    .line 21
    const-string p1, "SurfaceRenderFilter"

    .line 22
    .line 23
    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    .line 28
    .line 29
    return-void
.end method

.method private updateTargetRect()V
    .locals 7

    .line 1
    iget v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    .line 2
    .line 3
    if-lez v0, :cond_5

    .line 4
    .line 5
    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    .line 6
    .line 7
    if-lez v1, :cond_5

    .line 8
    .line 9
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 10
    .line 11
    if-eqz v2, :cond_5

    .line 12
    .line 13
    int-to-float v0, v0

    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v0, v1

    .line 16
    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 17
    .line 18
    div-float/2addr v0, v1

    .line 19
    iget v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/high16 v4, 0x3f800000    # 1.0f

    .line 23
    .line 24
    if-eqz v1, :cond_4

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    const/high16 v6, 0x3f000000    # 0.5f

    .line 28
    .line 29
    if-eq v1, v5, :cond_2

    .line 30
    .line 31
    const/4 v5, 0x2

    .line 32
    if-eq v1, v5, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    cmpl-float v1, v0, v4

    .line 36
    .line 37
    if-lez v1, :cond_1

    .line 38
    .line 39
    mul-float v1, v0, v6

    .line 40
    .line 41
    sub-float/2addr v6, v1

    .line 42
    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    div-float v1, v6, v0

    .line 47
    .line 48
    sub-float/2addr v6, v1

    .line 49
    div-float v0, v4, v0

    .line 50
    .line 51
    invoke-virtual {v2, v6, v3, v0, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    cmpl-float v1, v0, v4

    .line 56
    .line 57
    if-lez v1, :cond_3

    .line 58
    .line 59
    div-float v1, v6, v0

    .line 60
    .line 61
    sub-float/2addr v6, v1

    .line 62
    div-float v0, v4, v0

    .line 63
    .line 64
    invoke-virtual {v2, v6, v3, v0, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    mul-float v1, v0, v6

    .line 69
    .line 70
    sub-float/2addr v6, v1

    .line 71
    invoke-virtual {v2, v3, v6, v4, v0}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {v2, v3, v3, v4, v4}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 76
    .line 77
    .line 78
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    invoke-virtual {p1}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 0

    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->unbind()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p0, p1}, Landroid/filterfw/core/FilterSurfaceView;->bindToListener(Landroid/view/SurfaceHolder$Callback;Landroid/filterfw/core/GLEnvironment;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 6
    .line 7
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    const/high16 v2, -0x40800000    # -1.0f

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v0, v3, v1, v1, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 22
    .line 23
    invoke-virtual {v0, v3, v3, v3}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateRenderMode()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v2, 0x3

    .line 42
    invoke-static {v0, v1, v2, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const/16 v1, 0x65

    .line 51
    .line 52
    const-wide/16 v2, 0x0

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 59
    .line 60
    iput-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 61
    .line 62
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z

    .line 2
    .line 3
    const-string v1, "SurfaceRenderFilter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v0, ": Ignoring frame as there is no surface to render to!"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-boolean v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v0, "Starting frame processing"

    .line 33
    .line 34
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/filterfw/core/FilterSurfaceView;->getGLEnv()Landroid/filterfw/core/GLEnvironment;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-ne v0, v2, :cond_7

    .line 48
    .line 49
    const-string v2, "frame"

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v4}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    int-to-float v4, v4

    .line 73
    div-float/2addr v3, v4

    .line 74
    iget v4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 75
    .line 76
    cmpl-float v4, v3, v4

    .line 77
    .line 78
    if-eqz v4, :cond_3

    .line 79
    .line 80
    iget-boolean v4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    .line 81
    .line 82
    if-eqz v4, :cond_2

    .line 83
    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v5, "New aspect ratio: "

    .line 87
    .line 88
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v5, ", previously: "

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget v5, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 100
    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    :cond_2
    iput v3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mAspectRatio:F

    .line 112
    .line 113
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    .line 114
    .line 115
    .line 116
    :cond_3
    iget-boolean v3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mLogVerbose:Z

    .line 117
    .line 118
    if-eqz v3, :cond_4

    .line 119
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v4, "Got input format: "

    .line 123
    .line 124
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    :cond_4
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    const/4 v3, 0x3

    .line 150
    if-eq v1, v3, :cond_5

    .line 151
    .line 152
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-virtual {p1, v2, v3}, Landroid/filterfw/core/FrameManager;->duplicateFrameToTarget(Landroid/filterfw/core/Frame;I)Landroid/filterfw/core/Frame;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    const/4 p1, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_5
    const/4 p1, 0x0

    .line 163
    :goto_0
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 164
    .line 165
    invoke-virtual {v1}, Landroid/filterfw/core/FilterSurfaceView;->getSurfaceId()I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/filterfw/core/GLEnvironment;->activateSurfaceWithId(I)V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 173
    .line 174
    iget-object v3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 175
    .line 176
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Landroid/filterfw/core/GLEnvironment;->swapBuffers()V

    .line 180
    .line 181
    .line 182
    if-eqz p1, :cond_6

    .line 183
    .line 184
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 185
    .line 186
    .line 187
    :cond_6
    return-void

    .line 188
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 189
    .line 190
    const-string v0, "Surface created under different GLEnvironment!"

    .line 191
    .line 192
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1
.end method

.method public setupPorts()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mSurfaceView:Landroid/filterfw/core/FilterSurfaceView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "frame"

    .line 11
    .line 12
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v1, "NULL SurfaceView passed to SurfaceRenderFilter"

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method

.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput p3, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenWidth:I

    .line 7
    .line 8
    iput p4, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreenHeight:I

    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-virtual {p1, p2, p2, p3, p4}, Landroid/filterfw/core/GLFrame;->setViewport(IIII)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0

    .line 21
    throw p1
.end method

.method public declared-synchronized surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x1

    .line 3
    :try_start_0
    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public declared-synchronized surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    const/4 p1, 0x0

    .line 3
    :try_start_0
    iput-boolean p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mIsBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception p1

    .line 8
    monitor-exit p0

    .line 9
    throw p1
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mScreen:Landroid/filterfw/core/GLFrame;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public updateRenderMode()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    const-string/jumbo v1, "stretch"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "fit"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    .line 33
    .line 34
    const-string v1, "fill_crop"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    iput v0, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderMode:I

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string v2, "Unknown render mode \'"

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Landroid/filterpacks/ui/SurfaceRenderFilter;->mRenderModeString:Ljava/lang/String;

    .line 56
    .line 57
    const-string v3, "\'!"

    .line 58
    .line 59
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw v0

    .line 67
    :cond_3
    :goto_0
    invoke-direct {p0}, Landroid/filterpacks/ui/SurfaceRenderFilter;->updateTargetRect()V

    .line 68
    .line 69
    .line 70
    return-void
.end method
