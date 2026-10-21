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

    const p1, 0x3f4ccccd    # 0.8f

    .line 2
    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    .line 3
    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    const-string p1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    .line 5
    iput-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mVertexShader:Ljava/lang/String;

    const-string p1, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    .line 6
    iput-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mFixedColorFragmentShader:Ljava/lang/String;

    return-void
.end method

.method private renderBox(Landroid/filterfw/geometry/Quad;)V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 1
    iget v2, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorRed:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorGreen:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mColorBlue:F

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v2, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v1, v2

    const/16 v7, 0x8

    new-array v7, v7, [F

    .line 2
    iget-object v8, p1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iget v9, v8, Landroid/filterfw/geometry/Point;->x:F

    aput v9, v7, v3

    iget v8, v8, Landroid/filterfw/geometry/Point;->y:F

    aput v8, v7, v4

    iget-object v4, p1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iget v8, v4, Landroid/filterfw/geometry/Point;->x:F

    aput v8, v7, v5

    iget v4, v4, Landroid/filterfw/geometry/Point;->y:F

    aput v4, v7, v2

    iget-object v2, p1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iget v4, v2, Landroid/filterfw/geometry/Point;->x:F

    aput v4, v7, v0

    iget v2, v2, Landroid/filterfw/geometry/Point;->y:F

    const/4 v4, 0x5

    aput v2, v7, v4

    iget-object p1, p1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iget v2, p1, Landroid/filterfw/geometry/Point;->x:F

    const/4 v4, 0x6

    aput v2, v7, v4

    iget p1, p1, Landroid/filterfw/geometry/Point;->y:F

    const/4 v2, 0x7

    aput p1, v7, v2

    .line 3
    iget-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v2, "color"

    invoke-virtual {p1, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v1, "aPosition"

    invoke-virtual {p1, v1, v7, v5}, Landroid/filterfw/core/ShaderProgram;->setAttributeValues(Ljava/lang/String;[FI)V

    .line 5
    iget-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/ShaderProgram;->setVertexCount(I)V

    .line 6
    iget-object p1, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {p1}, Landroid/filterfw/core/ShaderProgram;->beginDrawing()V

    .line 7
    invoke-static {v6}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 8
    invoke-static {v5, v3, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0

    return-object p2
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "attribute vec4 aPosition;\nvoid main() {\n  gl_Position = aPosition;\n}\n"

    const-string v2, "precision mediump float;\nuniform vec4 color;\nvoid main() {\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1, v2}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/DrawRectFilter;->mProgram:Landroid/filterfw/core/ShaderProgram;

    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4

    const-string v0, "image"

    .line 1
    invoke-virtual {p0, v0}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    const-string v2, "box"

    .line 2
    invoke-virtual {p0, v2}, Landroid/filterfw/core/Filter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getObjectValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/filterfw/geometry/Quad;

    const/high16 v3, 0x40000000    # 2.0f

    .line 4
    invoke-virtual {v2, v3}, Landroid/filterfw/geometry/Quad;->scaled(F)Landroid/filterfw/geometry/Quad;

    move-result-object v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v3}, Landroid/filterfw/geometry/Quad;->translated(FF)Landroid/filterfw/geometry/Quad;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/filterfw/core/FrameManager;->duplicateFrame(Landroid/filterfw/core/Frame;)Landroid/filterfw/core/Frame;

    move-result-object p1

    check-cast p1, Landroid/filterfw/core/GLFrame;

    .line 6
    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->focus()V

    .line 7
    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/DrawRectFilter;->renderBox(Landroid/filterfw/geometry/Quad;)V

    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/filterfw/core/Filter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 9
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 3

    const/4 v0, 0x3

    .line 1
    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 2
    const-class v0, Landroid/filterfw/geometry/Quad;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/filterfw/format/ObjectFormat;->fromClass(Ljava/lang/Class;I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string v2, "box"

    invoke-virtual {p0, v2, v0}, Landroid/filterfw/core/Filter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 3
    invoke-virtual {p0, v1, v1}, Landroid/filterfw/core/Filter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
