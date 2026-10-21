.class public final Landroid/renderscript/ScriptIntrinsicColorMatrix;
.super Landroid/renderscript/ScriptIntrinsic;
.source "SourceFile"


# instance fields
.field private final mAdd:Landroid/renderscript/Float4;

.field private final mMatrix:Landroid/renderscript/Matrix4f;


# direct methods
.method private constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 2
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 3
    new-instance p1, Landroid/renderscript/Float4;

    invoke-direct {p1}, Landroid/renderscript/Float4;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/renderscript/Float4;

    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicColorMatrix;
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result v0

    .line 3
    new-instance v1, Landroid/renderscript/ScriptIntrinsicColorMatrix;

    invoke-direct {v1, v0, p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object v1
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

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 2
    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1, v0}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    const-string v1, "Unsuported element type."

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
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

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    invoke-direct {p1, v1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/Script;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

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

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 2
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v1, 0x0

    const v2, 0x3e991687    # 0.299f

    invoke-virtual {v0, v1, v1, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 3
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v3, 0x1

    const v4, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v3, v1, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v5, 0x2

    const v6, 0x3de978d5    # 0.114f

    invoke-virtual {v0, v5, v1, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 5
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v3, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 6
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v3, v3, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 7
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v5, v3, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 8
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v5, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 9
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v3, v5, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 10
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v5, v5, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 11
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setRGBtoYUV()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 2
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v1, 0x0

    const v2, 0x3e991687    # 0.299f

    invoke-virtual {v0, v1, v1, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 3
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v2, 0x1

    const v3, 0x3f1645a2    # 0.587f

    invoke-virtual {v0, v2, v1, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v3, 0x2

    const v4, 0x3de978d5    # 0.114f

    invoke-virtual {v0, v3, v1, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 5
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v4, -0x41e956c1    # -0.14713f

    invoke-virtual {v0, v1, v2, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 6
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v4, -0x416c1a8b    # -0.28886f

    invoke-virtual {v0, v2, v2, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 7
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v4, 0x3edf3b64    # 0.436f

    invoke-virtual {v0, v3, v2, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 8
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v4, 0x3f1d70a4    # 0.615f

    invoke-virtual {v0, v1, v3, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 9
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x40fc299e

    invoke-virtual {v0, v2, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 10
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, -0x42332df5    # -0.10001f

    invoke-virtual {v0, v3, v3, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 11
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method

.method public setYUVtoRGB()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 2
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 3
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const/4 v5, 0x2

    const v6, 0x3f91e5f3    # 1.13983f

    invoke-virtual {v0, v5, v1, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 5
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v3, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 6
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v6, -0x4135f06f

    invoke-virtual {v0, v3, v3, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 7
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v6, -0x40eb5dcc    # -0.5806f

    invoke-virtual {v0, v5, v3, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 8
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v1, v5, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 9
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    const v1, 0x40020e17

    invoke-virtual {v0, v3, v5, v1}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 10
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, v5, v5, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 11
    invoke-direct {p0}, Landroid/renderscript/ScriptIntrinsicColorMatrix;->setMatrix()V

    return-void
.end method
