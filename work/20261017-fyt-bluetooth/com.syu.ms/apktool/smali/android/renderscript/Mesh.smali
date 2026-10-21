.class public Landroid/renderscript/Mesh;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$TriangleMeshBuilder;,
        Landroid/renderscript/Mesh$AllocationBuilder;,
        Landroid/renderscript/Mesh$Builder;,
        Landroid/renderscript/Mesh$Primitive;
    }
.end annotation


# instance fields
.field public mIndexBuffers:[Landroid/renderscript/Allocation;

.field public mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field public mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    return-void
.end method


# virtual methods
.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPrimitiveCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getVertexAllocationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    array-length v0, v0

    return v0
.end method

.method public updateFromNative()V
    .locals 13

    .line 1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 2
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(I)I

    move-result v1

    .line 4
    new-array v2, v0, [I

    .line 5
    new-array v3, v1, [I

    .line 6
    new-array v4, v1, [I

    .line 7
    iget-object v5, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v6

    invoke-virtual {v5, v6, v2, v0}, Landroid/renderscript/RenderScript;->nMeshGetVertices(I[II)V

    .line 8
    iget-object v5, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v6

    invoke-virtual {v5, v6, v3, v4, v1}, Landroid/renderscript/RenderScript;->nMeshGetIndices(I[I[II)V

    .line 9
    new-array v5, v0, [Landroid/renderscript/Allocation;

    iput-object v5, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 10
    new-array v5, v1, [Landroid/renderscript/Allocation;

    iput-object v5, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 11
    new-array v5, v1, [Landroid/renderscript/Mesh$Primitive;

    iput-object v5, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v6, v0, :cond_1

    .line 12
    aget v9, v2, v6

    if-eqz v9, :cond_0

    .line 13
    iget-object v9, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    new-instance v10, Landroid/renderscript/Allocation;

    aget v11, v2, v6

    iget-object v12, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v10, v11, v12, v7, v8}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v10, v9, v6

    .line 14
    iget-object v7, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/renderscript/Allocation;->updateFromNative()V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v5, v1, :cond_3

    .line 15
    aget v0, v3, v5

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    new-instance v2, Landroid/renderscript/Allocation;

    aget v6, v3, v5

    iget-object v9, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v2, v6, v9, v7, v8}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    aput-object v2, v0, v5

    .line 17
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 18
    :cond_2
    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    move-result-object v2

    aget v6, v4, v5

    aget-object v2, v2, v6

    aput-object v2, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
