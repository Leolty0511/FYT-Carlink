.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "SourceFile"


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)V
    .locals 2

    .line 1
    iget-object v0, p3, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    iget v1, p3, Landroid/renderscript/Allocation;->mUsage:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/renderscript/Allocation;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 2
    iput-object p3, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    new-instance v0, Landroid/renderscript/AllocationAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/renderscript/AllocationAdapter;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)V

    const/4 p0, 0x1

    .line 3
    iput-boolean p0, v0, Landroid/renderscript/Allocation;->mConstrainedLOD:Z

    .line 4
    iput-boolean p0, v0, Landroid/renderscript/Allocation;->mConstrainedFace:Z

    .line 5
    iput-boolean p0, v0, Landroid/renderscript/Allocation;->mConstrainedY:Z

    .line 6
    iput-boolean p0, v0, Landroid/renderscript/Allocation;->mConstrainedZ:Z

    .line 7
    invoke-virtual {v0, v1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    return-object v0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    new-instance v0, Landroid/renderscript/AllocationAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Landroid/renderscript/AllocationAdapter;-><init>(ILandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)V

    const/4 p0, 0x1

    .line 3
    iput-boolean p0, v0, Landroid/renderscript/Allocation;->mConstrainedLOD:Z

    .line 4
    iput-boolean p0, v0, Landroid/renderscript/Allocation;->mConstrainedFace:Z

    .line 5
    iput-boolean v1, v0, Landroid/renderscript/Allocation;->mConstrainedY:Z

    .line 6
    iput-boolean p0, v0, Landroid/renderscript/Allocation;->mConstrainedZ:Z

    .line 7
    invoke-virtual {v0, v1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    return-object v0
.end method


# virtual methods
.method public getID(Landroid/renderscript/RenderScript;)I
    .locals 1

    .line 1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "This operation is not supported with adapters at this time."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initLOD(I)V
    .locals 6

    if-ltz p1, :cond_8

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v1, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    iget-object v2, v2, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, p1, :cond_5

    if-ne v0, v5, :cond_1

    if-ne v1, v5, :cond_1

    if-eq v2, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to set lod ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") out of range."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    if-le v0, v5, :cond_2

    shr-int/lit8 v0, v0, 0x1

    :cond_2
    if-le v1, v5, :cond_3

    shr-int/lit8 v1, v1, 0x1

    :cond_3
    if-le v2, v5, :cond_4

    shr-int/lit8 v2, v2, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 5
    :cond_5
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 6
    iput v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 7
    iput v2, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    .line 8
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    if-le v1, v5, :cond_6

    mul-int/2addr v0, v1

    .line 9
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    :cond_6
    if-le v2, v5, :cond_7

    .line 10
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    mul-int/2addr p1, v2

    iput p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 11
    :cond_7
    iput v3, p0, Landroid/renderscript/Allocation;->mSelectedY:I

    .line 12
    iput v3, p0, Landroid/renderscript/Allocation;->mSelectedZ:I

    return-void

    .line 13
    :cond_8
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to set negative lod ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readData([F)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/renderscript/Allocation;->copyTo([F)V

    return-void
.end method

.method public readData([I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/renderscript/Allocation;->copyTo([I)V

    return-void
.end method

.method public declared-synchronized resize(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Resize not allowed for Adapters."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFace(Landroid/renderscript/Type$CubemapFace;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mConstrainedFace:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    return-void

    .line 4
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Cannot set null face."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set Face when the allocation type does not include faces."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLOD(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mConstrainedLOD:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set LOD when the adapter includes mipmaps."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set LOD when the allocation type does not include mipmaps."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setY(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 3
    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mConstrainedY:Z

    if-eqz v0, :cond_0

    .line 4
    iput p1, p0, Landroid/renderscript/Allocation;->mSelectedY:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set Y when the adapter includes Y."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set Y greater than dimension of allocation."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set Y when the allocation type does not include Y dim."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setZ(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    move-result v0

    if-le v0, p1, :cond_1

    .line 3
    iget-boolean v0, p0, Landroid/renderscript/Allocation;->mConstrainedZ:Z

    if-eqz v0, :cond_0

    .line 4
    iput p1, p0, Landroid/renderscript/Allocation;->mSelectedZ:I

    return-void

    .line 5
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set Z when the adapter includes Z."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set Z greater than dimension of allocation."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    const-string v0, "Cannot set Z when the allocation type does not include Z dim."

    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subData(ILandroid/renderscript/FieldPacker;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public subData1D(II[B)V
    .locals 0

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[B)V

    return-void
.end method

.method public subData1D(II[F)V
    .locals 0

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[F)V

    return-void
.end method

.method public subData1D(II[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[I)V

    return-void
.end method

.method public subData1D(II[S)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->copy1DRangeFrom(II[S)V

    return-void
.end method

.method public subData2D(IIII[F)V
    .locals 0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[F)V

    return-void
.end method

.method public subData2D(IIII[I)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/renderscript/Allocation;->copy2DRangeFrom(IIII[I)V

    return-void
.end method

.method public subElementData(IILandroid/renderscript/FieldPacker;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/Allocation;->setFromFieldPacker(IILandroid/renderscript/FieldPacker;)V

    return-void
.end method
