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
.field public static final MODELVIEW_OFFSET:I = 0x0

.field public static final PROJECTION_OFFSET:I = 0x10

.field public static final TEXTURE_OFFSET:I = 0x20


# instance fields
.field public mAlloc:Landroid/renderscript/Allocation;

.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field public mModel:Landroid/renderscript/Matrix4f;

.field public mProjection:Landroid/renderscript/Matrix4f;

.field public mTexture:Landroid/renderscript/Matrix4f;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/renderscript/ProgramVertexFixedFunction$Builder;->getConstantInputType(Landroid/renderscript/RenderScript;)Landroid/renderscript/Type;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    .line 4
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object p1

    invoke-virtual {p1}, Landroid/renderscript/Element;->getBytesSize()I

    move-result p1

    invoke-virtual {v0}, Landroid/renderscript/Type;->getCount()I

    move-result v0

    mul-int/2addr p1, v0

    .line 5
    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-direct {v0, p1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 6
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mModel:Landroid/renderscript/Matrix4f;

    .line 7
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mProjection:Landroid/renderscript/Matrix4f;

    .line 8
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mTexture:Landroid/renderscript/Matrix4f;

    .line 9
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setModelview(Landroid/renderscript/Matrix4f;)V

    .line 10
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setProjection(Landroid/renderscript/Matrix4f;)V

    .line 11
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    invoke-virtual {p0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->setTexture(Landroid/renderscript/Matrix4f;)V

    return-void
.end method

.method private addToBuffer(ILandroid/renderscript/Matrix4f;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0, p1}, Landroid/renderscript/FieldPacker;->reset(I)V

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    iget-object v2, p2, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/renderscript/FieldPacker;->addF32(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {p2, p1, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/BaseObj;->destroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    return-void
.end method

.method public getAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mAlloc:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public setModelview(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mModel:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public setProjection(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mProjection:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    const/16 v0, 0x40

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    return-void
.end method

.method public setTexture(Landroid/renderscript/Matrix4f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->mTexture:Landroid/renderscript/Matrix4f;

    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    const/16 v0, 0x80

    .line 2
    invoke-direct {p0, v0, p1}, Landroid/renderscript/ProgramVertexFixedFunction$Constants;->addToBuffer(ILandroid/renderscript/Matrix4f;)V

    return-void
.end method
