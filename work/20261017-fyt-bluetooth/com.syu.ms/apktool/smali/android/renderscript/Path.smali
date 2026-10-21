.class public Landroid/renderscript/Path;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Path$Primitive;
    }
.end annotation


# instance fields
.field public mCoverageToAlpha:Z

.field public mLoopBuffer:Landroid/renderscript/Allocation;

.field public mPrimitive:Landroid/renderscript/Path$Primitive;

.field public mQuality:F

.field public mVertexBuffer:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 2
    iput-object p4, p0, Landroid/renderscript/Path;->mVertexBuffer:Landroid/renderscript/Allocation;

    .line 3
    iput-object p5, p0, Landroid/renderscript/Path;->mLoopBuffer:Landroid/renderscript/Allocation;

    .line 4
    iput-object p3, p0, Landroid/renderscript/Path;->mPrimitive:Landroid/renderscript/Path$Primitive;

    .line 5
    iput p6, p0, Landroid/renderscript/Path;->mQuality:F

    return-void
.end method

.method public static createDynamicPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createDynamicPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createStaticPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 12

    .line 1
    iget v1, p1, Landroid/renderscript/Path$Primitive;->mID:I

    invoke-virtual {p3, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nPathCreate(IZIIF)I

    move-result v6

    .line 2
    new-instance p3, Landroid/renderscript/Path;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p3

    move-object v7, p0

    move-object v8, p1

    move v11, p2

    invoke-direct/range {v5 .. v11}, Landroid/renderscript/Path;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;F)V

    return-object p3
.end method

.method public static createStaticPath(Landroid/renderscript/RenderScript;Landroid/renderscript/Path$Primitive;FLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)Landroid/renderscript/Path;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getLoopAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Path;->mLoopBuffer:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public getPrimitive()Landroid/renderscript/Path$Primitive;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Path;->mPrimitive:Landroid/renderscript/Path$Primitive;

    return-object v0
.end method

.method public getVertexAllocation()Landroid/renderscript/Allocation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Path;->mVertexBuffer:Landroid/renderscript/Allocation;

    return-object v0
.end method

.method public updateFromNative()V
    .locals 0

    return-void
.end method
