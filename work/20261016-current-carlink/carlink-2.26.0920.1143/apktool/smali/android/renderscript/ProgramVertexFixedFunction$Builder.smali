.class public Landroid/renderscript/ProgramVertexFixedFunction$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mTextureMatrixEnable:Z


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    return-void
.end method

.method private buildShaderString()V
    .locals 3

    .line 1
    const-string v0, "//rs_shader_internal\n"

    .line 2
    .line 3
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 11
    .line 12
    const-string/jumbo v2, "varying vec4 varColor;\n"

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v2, "varying vec2 varTex0;\n"

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 43
    .line 44
    const-string/jumbo v2, "void main() {\n"

    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 59
    .line 60
    const-string v2, "  gl_Position = UNI_MVP * ATTRIB_position;\n"

    .line 61
    .line 62
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 74
    .line 75
    const-string v2, "  gl_PointSize = 1.0;\n"

    .line 76
    .line 77
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 89
    .line 90
    const-string v2, "  varColor = ATTRIB_color;\n"

    .line 91
    .line 92
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 97
    .line 98
    iget-boolean v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mTextureMatrixEnable:Z

    .line 99
    .line 100
    if-eqz v0, :cond_0

    .line 101
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 108
    .line 109
    const-string v2, "  varTex0 = (UNI_TexMatrix * vec4(ATTRIB_texture0, 0.0, 1.0)).xy;\n"

    .line 110
    .line 111
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 124
    .line 125
    const-string v2, "  varTex0 = ATTRIB_texture0;\n"

    .line 126
    .line 127
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 132
    .line 133
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 139
    .line 140
    const-string/jumbo v2, "}\n"

    .line 141
    .line 142
    .line 143
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 148
    .line 149
    return-void
.end method

.method public static getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;
    .locals 3

    .line 1
    new-instance v0, Landroid/renderscript/Element$Builder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "MV"

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "P"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "TexMatrix"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "MVP"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 40
    .line 41
    .line 42
    new-instance v1, Landroid/renderscript/Type$Builder;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-direct {v1, p0, v0}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 49
    .line 50
    .line 51
    const/4 p0, 0x1

    .line 52
    invoke-virtual {v1, p0}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramVertexFixedFunction;
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->buildShaderString()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;

    .line 5
    .line 6
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mShader:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/renderscript/Program$BaseProgramBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 17
    .line 18
    invoke-static {v1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/renderscript/Program$BaseProgramBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/renderscript/Element$Builder;

    .line 26
    .line 27
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 28
    .line 29
    invoke-direct {v1, v2}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 33
    .line 34
    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string/jumbo v3, "position"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 45
    .line 46
    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "color"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 56
    .line 57
    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string/jumbo v3, "normal"

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 68
    .line 69
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string/jumbo v3, "texture0"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->addInput(Landroid/renderscript/Element;)Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/renderscript/ProgramVertexFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramVertexFixedFunction;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method

.method public setTextureMatrixEnable(Z)Landroid/renderscript/ProgramVertexFixedFunction$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->mTextureMatrixEnable:Z

    return-object p0
.end method
