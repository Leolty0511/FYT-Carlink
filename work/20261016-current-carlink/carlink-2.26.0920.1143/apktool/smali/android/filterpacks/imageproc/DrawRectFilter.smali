.class public Landroid/filterpacks/imageproc/DrawRectFilter;
.super Landroid/filterfw/core/Filter;
.source "SourceFile"


# instance fields
.field private mColorBlue:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorBlue"
    .end annotation
.end field

.field private mColorGreen:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorGreen"
    .end annotation
.end field

.field private mColorRed:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "colorRed"
    .end annotation
.end field

.field private final mFixedColorFragmentShader:Ljava/lang/String;

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private final mVertexShader:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x3f4ccccd    # 0.8f

    .line 5
    .line 6
    .line 7
    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    .line 8
    .line 9
    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    .line 13
    .line 14
    const-string p1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    .line 15
    .line 16
    iput-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mVertexShader:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo p1, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mFixedColorFragmentShader:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method private renderBox(Landroid/filterfw/geometry/Quad;)V
    .locals 10

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    iget v2, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput v2, v1, v3

    .line 8
    .line 9
    iget v2, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput v2, v1, v4

    .line 13
    .line 14
    iget v2, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    aput v2, v1, v5

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    const/high16 v6, 0x3f800000    # 1.0f

    .line 21
    .line 22
    aput v6, v1, v2

    .line 23
    .line 24
    const/16 v7, 0x8

    .line 25
    .line 26
    new-array v7, v7, [F

    .line 27
    .line 28
    iget-object v8, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 29
    .line 30
    iget v9, v8, Landroid/filterfw/geometry/Point;->x:F

    .line 31
    .line 32
    aput v9, v7, v3

    .line 33
    .line 34
    iget v8, v8, Landroid/filterfw/geometry/Point;->y:F

    .line 35
    .line 36
    aput v8, v7, v4

    .line 37
    .line 38
    iget-object v4, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 39
    .line 40
    iget v8, v4, Landroid/filterfw/geometry/Point;->x:F

    .line 41
    .line 42
    aput v8, v7, v5

    .line 43
    .line 44
    iget v4, v4, Landroid/filterfw/geometry/Point;->y:F

    .line 45
    .line 46
    aput v4, v7, v2

    .line 47
    .line 48
    iget-object v2, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 49
    .line 50
    iget v4, v2, Landroid/filterfw/geometry/Point;->x:F

    .line 51
    .line 52
    aput v4, v7, v0

    .line 53
    .line 54
    const/4 v4, 0x5

    .line 55
    iget v2, v2, Landroid/filterfw/geometry/Point;->y:F

    .line 56
    .line 57
    aput v2, v7, v4

    .line 58
    .line 59
    iget-object p1, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 60
    .line 61
    iget v2, p1, Landroid/filterfw/geometry/Point;->x:F

    .line 62
    .line 63
    const/4 v4, 0x6

    .line 64
    aput v2, v7, v4

    .line 65
    .line 66
    const/4 v2, 0x7

    .line 67
    iget p1, p1, Landroid/filterfw/geometry/Point;->y:F

    .line 68
    .line 69
    aput p1, v7, v2

    .line 70
    .line 71
    iget-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 72
    .line 73
    const-string v2, "color"

    .line 74
    .line 75
    invoke-virtual {p1, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 79
    .line 80
    const-string v1, "aPosition"

    .line 81
    .line 82
    invoke-virtual {p1, v1, v7, v5}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;[FI)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/filterfw/core/ShaderProgram;->beginDrawing()V

    .line 93
    .line 94
    .line 95
    invoke-static {v6}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 96
    .line 97
    .line 98
    invoke-static {v5, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 99
    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    const-string/jumbo v2, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "image"

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "box"

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/filterfw/geometry/Quad;

    .line 19
    .line 20
    const/high16 v3, 0x40000000    # 2.0f

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/high16 v3, -0x40800000    # -1.0f

    .line 27
    .line 28
    invoke-virtual {v2, v3, v3}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v1}, Landroid/filterfw/core/FrameManager;->duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/DrawRectFilter;->renderBox(Landroid/filterfw/geometry/Quad;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string/jumbo v1, "image"

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 10
    .line 11
    .line 12
    const-class v0, Landroid/filterfw/geometry/Quad;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    invoke-static {v0, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "box"

    .line 20
    .line 21
    invoke-virtual {p0, v2, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
