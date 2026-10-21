.class public final Landroid/renderscript/ScriptIntrinsicColorMatrix;
.super Landroid/renderscript/ScriptIntrinsic;
.source "SourceFile"


# instance fields
.field private final mAdd:Landroid/renderscript/Float4;

.field private final mMatrix:Landroid/renderscript/Matrix4f;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 10
    .line 11
    new-instance p1, Landroid/renderscript/Float4;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/renderscript/Float4;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    .line 17
    .line 18
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .locals 3

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 3
    new-instance v2, Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;

    move-result-object p0

    return-object p0
.end method

.method private setMatrix()V
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/FieldPacker;

    .line 2
    .line 3
    const/16 v1, 0x40

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1, v0}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/FieldPacker;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Unsupported element type."

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 16
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 19
    :cond_2
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 20
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/Script;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAdd(FFFF)V
    .locals 1

    .line 11
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iput p1, v0, Landroid/renderscript/Float4;->x:F

    .line 12
    iput p2, v0, Landroid/renderscript/Float4;->y:F

    .line 13
    iput p3, v0, Landroid/renderscript/Float4;->z:F

    .line 14
    iput p4, v0, Landroid/renderscript/Float4;->w:F

    .line 15
    new-instance p1, Landroid/renderscript/FieldPacker;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 16
    iget-object p2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget p2, p2, Landroid/renderscript/Float4;->x:F

    invoke-virtual {p1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 17
    iget-object p2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget p2, p2, Landroid/renderscript/Float4;->y:F

    invoke-virtual {p1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 18
    iget-object p2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget p2, p2, Landroid/renderscript/Float4;->z:F

    invoke-virtual {p1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 19
    iget-object p2, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget p2, p2, Landroid/renderscript/Float4;->w:F

    invoke-virtual {p1, p2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/4 p2, 0x1

    .line 20
    invoke-virtual {p0, p2, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public setAdd(Landroid/renderscript/Float4;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    iget v1, p1, Landroid/renderscript/Float4;->x:F

    iput v1, v0, Landroid/renderscript/Float4;->x:F

    .line 2
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    iput v1, v0, Landroid/renderscript/Float4;->y:F

    .line 3
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    iput v1, v0, Landroid/renderscript/Float4;->z:F

    .line 4
    iget v1, p1, Landroid/renderscript/Float4;->w:F

    iput v1, v0, Landroid/renderscript/Float4;->w:F

    .line 5
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 6
    iget v1, p1, Landroid/renderscript/Float4;->x:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 7
    iget v1, p1, Landroid/renderscript/Float4;->y:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 8
    iget v1, p1, Landroid/renderscript/Float4;->z:F

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 9
    iget p1, p1, Landroid/renderscript/Float4;->w:F

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->addF32(F)V

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public setColorMatrix(Landroid/renderscript/Matrix3f;)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix3f;)V

    .line 4
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setColorMatrix(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 2
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setGreyscale()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const v2, 0x3e991687    # 0.299f

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v1, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const v4, 0x3f1645a2    # 0.587f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v3, v1, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 25
    .line 26
    const/4 v5, 0x2

    .line 27
    const v6, 0x3de978d5    # 0.114f

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v5, v1, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 34
    .line 35
    invoke-virtual {v0, v1, v3, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 39
    .line 40
    invoke-virtual {v0, v3, v3, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 44
    .line 45
    invoke-virtual {v0, v5, v3, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v5, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 54
    .line 55
    invoke-virtual {v0, v3, v5, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 59
    .line 60
    invoke-virtual {v0, v5, v5, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public setRGBtoYUV()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 7
    .line 8
    const v1, 0x3e991687    # 0.299f

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 16
    .line 17
    const v1, 0x3f1645a2    # 0.587f

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v0, v3, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 25
    .line 26
    const v1, 0x3de978d5    # 0.114f

    .line 27
    .line 28
    .line 29
    const/4 v4, 0x2

    .line 30
    invoke-virtual {v0, v4, v2, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 34
    .line 35
    const v1, -0x41e956c1    # -0.14713f

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v2, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 42
    .line 43
    const v1, -0x416c1a8b    # -0.28886f

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 50
    .line 51
    const v1, 0x3edf3b64    # 0.436f

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 58
    .line 59
    const v1, 0x3f1d70a4    # 0.615f

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v2, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 66
    .line 67
    const v1, -0x40fc299e

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v3, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 74
    .line 75
    const v1, -0x42332df5    # -0.10001f

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v4, v4, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public setYUVtoRGB()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 10
    .line 11
    invoke-virtual {v0, v1, v1, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v0, v3, v1, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 22
    .line 23
    const v5, 0x3f91e5f3    # 1.13983f

    .line 24
    .line 25
    .line 26
    const/4 v6, 0x2

    .line 27
    invoke-virtual {v0, v6, v1, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v3, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 36
    .line 37
    const v5, -0x4135f06f

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v3, v3, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 44
    .line 45
    const v5, -0x40eb5dcc    # -0.5806f

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v6, v3, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 52
    .line 53
    invoke-virtual {v0, v1, v6, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 57
    .line 58
    const v1, 0x40020e17

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v3, v6, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 65
    .line 66
    invoke-virtual {v0, v6, v6, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    .line 70
    .line 71
    .line 72
    return-void
.end method
