.class public Landroid/renderscript/ProgramVertexFixedFunction$Constants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramVertexFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Constants"
.end annotation


# static fields
.field static final MODELVIEW_OFFSET:I = 0x0

.field static final PROJECTION_OFFSET:I = 0x10

.field static final TEXTURE_OFFSET:I = 0x20


# instance fields
.field mAlloc:Landroid/renderscript/Allocation;

.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field mModel:Landroid/renderscript/Matrix4f;

.field mProjection:Landroid/renderscript/Matrix4f;

.field mTexture:Landroid/renderscript/Matrix4f;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/renderscript/Element;->getBytesSize()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    mul-int/2addr v0, p1

    .line 27
    new-instance p1, Landroid/renderscript/FieldPacker;

    .line 28
    .line 29
    invoke-direct {p1, v0}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 33
    .line 34
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mModel:Landroid/renderscript/Matrix4f;

    .line 40
    .line 41
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mProjection:Landroid/renderscript/Matrix4f;

    .line 47
    .line 48
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 49
    .line 50
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mTexture:Landroid/renderscript/Matrix4f;

    .line 54
    .line 55
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 56
    .line 57
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setModelview(Landroid/renderscript/Matrix4f;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 64
    .line 65
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 72
    .line 73
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setTexture(Landroid/renderscript/Matrix4f;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private addToBuffer(ILandroid/renderscript/Matrix4f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    move v0, p1

    .line 8
    :goto_0
    const/16 v1, 0x10

    .line 9
    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 13
    .line 14
    iget-object v2, p2, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 15
    .line 16
    aget v2, v2, v0

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    array-length v0, v0

    .line 31
    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    .line 35
    .line 36
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 37
    .line 38
    invoke-virtual {p2, p1, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    .line 8
    .line 9
    return-void
.end method

.method public getAllocation()Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public setModelview(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mModel:Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setProjection(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mProjection:Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x40

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setTexture(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mTexture:Landroid/renderscript/Matrix4f;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x80

    .line 7
    .line 8
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
