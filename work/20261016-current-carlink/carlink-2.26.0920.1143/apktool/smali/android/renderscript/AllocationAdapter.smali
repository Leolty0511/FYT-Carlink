.class public Landroid/renderscript/AllocationAdapter;
.super Landroid/renderscript/Allocation;
.source "SourceFile"


# instance fields
.field mWindow:Landroid/renderscript/Type;


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V
    .locals 6

    .line 1
    iget-object v4, p4, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 2
    .line 3
    iget v5, p4, Landroid/renderscript/Allocation;->mUsage:I

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-wide v1, p1

    .line 7
    move-object v3, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 9
    .line 10
    .line 11
    iput-object p4, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 12
    .line 13
    iput-object p5, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 14
    .line 15
    return-void
.end method

.method public static create1D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p0, v0, v1}, Landroid/renderscript/Type;->createX(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Type;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static create2D(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;)Landroid/renderscript/AllocationAdapter;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-static {p0, v0, v1, v2}, Landroid/renderscript/Type;->createXY(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Type;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p0, p1, v0}, Landroid/renderscript/AllocationAdapter;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)Landroid/renderscript/AllocationAdapter;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_5

    .line 25
    .line 26
    invoke-virtual {p2}, Landroid/renderscript/Type;->hasFaces()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/renderscript/Type;->hasMipmaps()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p2}, Landroid/renderscript/Type;->getX()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const-string v3, "Type cannot have dimension larger than the source allocation."

    .line 51
    .line 52
    if-gt v1, v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/renderscript/Type;->getY()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-gt v1, v2, :cond_3

    .line 63
    .line 64
    invoke-virtual {p2}, Landroid/renderscript/Type;->getZ()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-gt v1, v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v0}, Landroid/renderscript/Type;->getArrayCount()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-gt v1, v2, :cond_3

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/renderscript/Type;->getArrayCount()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-lez v1, :cond_1

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    :goto_0
    invoke-virtual {p2, v1}, Landroid/renderscript/Type;->getArray(I)I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-ge v1, v2, :cond_1

    .line 96
    .line 97
    invoke-virtual {p2, v1}, Landroid/renderscript/Type;->getArray(I)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v0, v1}, Landroid/renderscript/Type;->getArray(I)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-gt v2, v4, :cond_0

    .line 106
    .line 107
    add-int/lit8 v1, v1, 0x1

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_0
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 111
    .line 112
    invoke-direct {p0, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_1
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v0

    .line 120
    invoke-virtual {p2, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 121
    .line 122
    .line 123
    move-result-wide v2

    .line 124
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/renderscript/RenderScript;->nAllocationAdapterCreate(JJ)J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    const-wide/16 v0, 0x0

    .line 129
    .line 130
    cmp-long v0, v5, v0

    .line 131
    .line 132
    if-eqz v0, :cond_2

    .line 133
    .line 134
    new-instance v0, Landroid/renderscript/AllocationAdapter;

    .line 135
    .line 136
    move-object v4, v0

    .line 137
    move-object v7, p0

    .line 138
    move-object v8, p1

    .line 139
    move-object v9, p2

    .line 140
    invoke-direct/range {v4 .. v9}, Landroid/renderscript/AllocationAdapter;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Allocation;Landroid/renderscript/Type;)V

    .line 141
    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_2
    new-instance p0, Landroid/renderscript/RSRuntimeException;

    .line 145
    .line 146
    const-string p1, "AllocationAdapter creation failed."

    .line 147
    .line 148
    invoke-direct {p0, p1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw p0

    .line 152
    :cond_3
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 153
    .line 154
    invoke-direct {p0, v3}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p0

    .line 158
    :cond_4
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 159
    .line 160
    const-string p1, "Adapters do not support window types with Mipmaps or Faces."

    .line 161
    .line 162
    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :cond_5
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 167
    .line 168
    const-string p1, "Element must match Allocation type."

    .line 169
    .line 170
    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p0

    .line 174
    :cond_6
    new-instance p0, Landroid/renderscript/RSInvalidStateException;

    .line 175
    .line 176
    const-string p1, "Adapters cannot be nested."

    .line 177
    .line 178
    invoke-direct {p0, p1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw p0
.end method

.method private updateOffsets()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/renderscript/Allocation;->mSelectedArray:[I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_4

    .line 7
    .line 8
    array-length v3, v1

    .line 9
    if-lez v3, :cond_0

    .line 10
    .line 11
    aget v3, v1, v2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v3, v2

    .line 15
    :goto_0
    array-length v4, v1

    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x2

    .line 18
    if-le v4, v5, :cond_1

    .line 19
    .line 20
    aget v4, v1, v6

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v4, v2

    .line 24
    :goto_1
    array-length v5, v1

    .line 25
    if-le v5, v6, :cond_2

    .line 26
    .line 27
    aget v5, v1, v6

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move v5, v2

    .line 31
    :goto_2
    array-length v6, v1

    .line 32
    const/4 v7, 0x3

    .line 33
    if-le v6, v7, :cond_3

    .line 34
    .line 35
    aget v2, v1, v7

    .line 36
    .line 37
    :cond_3
    move/from16 v17, v2

    .line 38
    .line 39
    move v14, v3

    .line 40
    move v15, v4

    .line 41
    move/from16 v16, v5

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_4
    move v14, v2

    .line 45
    move v15, v14

    .line 46
    move/from16 v16, v15

    .line 47
    .line 48
    move/from16 v17, v16

    .line 49
    .line 50
    :goto_3
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 51
    .line 52
    invoke-virtual {v0, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v7

    .line 56
    iget v9, v0, Landroid/renderscript/Allocation;->mSelectedX:I

    .line 57
    .line 58
    iget v10, v0, Landroid/renderscript/Allocation;->mSelectedY:I

    .line 59
    .line 60
    iget v11, v0, Landroid/renderscript/Allocation;->mSelectedZ:I

    .line 61
    .line 62
    iget v12, v0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 63
    .line 64
    iget-object v1, v0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 65
    .line 66
    iget v13, v1, Landroid/renderscript/Type$CubemapFace;->mID:I

    .line 67
    .line 68
    invoke-virtual/range {v6 .. v17}, Landroid/renderscript/RenderScript;->nAllocationAdapterOffset(JIIIIIIIII)V

    .line 69
    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public initLOD(I)V
    .locals 6

    .line 1
    if-ltz p1, :cond_8

    .line 2
    .line 3
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 12
    .line 13
    iget-object v1, v1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 20
    .line 21
    iget-object v2, v2, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/renderscript/Type;->getZ()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x0

    .line 28
    move v4, v3

    .line 29
    :goto_0
    const/4 v5, 0x1

    .line 30
    if-ge v4, p1, :cond_5

    .line 31
    .line 32
    if-ne v0, v5, :cond_1

    .line 33
    .line 34
    if-ne v1, v5, :cond_1

    .line 35
    .line 36
    if-eq v2, v5, :cond_0

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 40
    .line 41
    const-string v1, "Attempting to set lod ("

    .line 42
    .line 43
    const-string v2, ") out of range."

    .line 44
    .line 45
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_1
    if-le v0, v5, :cond_2

    .line 54
    .line 55
    shr-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    :cond_2
    if-le v1, v5, :cond_3

    .line 58
    .line 59
    shr-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    :cond_3
    if-le v2, v5, :cond_4

    .line 62
    .line 63
    shr-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentDimX:I

    .line 69
    .line 70
    iput v1, p0, Landroid/renderscript/Allocation;->mCurrentDimY:I

    .line 71
    .line 72
    iput v2, p0, Landroid/renderscript/Allocation;->mCurrentDimZ:I

    .line 73
    .line 74
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 75
    .line 76
    if-le v1, v5, :cond_6

    .line 77
    .line 78
    mul-int/2addr v0, v1

    .line 79
    iput v0, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 80
    .line 81
    :cond_6
    if-le v2, v5, :cond_7

    .line 82
    .line 83
    iget p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 84
    .line 85
    mul-int/2addr p1, v2

    .line 86
    iput p1, p0, Landroid/renderscript/Allocation;->mCurrentCount:I

    .line 87
    .line 88
    :cond_7
    iput v3, p0, Landroid/renderscript/Allocation;->mSelectedY:I

    .line 89
    .line 90
    iput v3, p0, Landroid/renderscript/Allocation;->mSelectedZ:I

    .line 91
    .line 92
    return-void

    .line 93
    :cond_8
    new-instance v0, Landroid/renderscript/RSIllegalArgumentException;

    .line 94
    .line 95
    const-string v1, "Attempting to set negative lod ("

    .line 96
    .line 97
    const-string v2, ")."

    .line 98
    .line 99
    invoke-static {v1, p1, v2}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {v0, p1}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw v0
.end method

.method public declared-synchronized resize(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 3
    .line 4
    const-string v0, "Resize not allowed for Adapters."

    .line 5
    .line 6
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0

    .line 12
    throw p1
.end method

.method public setArray(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-le v0, p2, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Landroid/renderscript/Type;->getArray(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v0, p2

    .line 50
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, p1}, Landroid/renderscript/Type;->getArray(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ge v0, v1, :cond_0

    .line 61
    .line 62
    iget-object v0, p0, Landroid/renderscript/Allocation;->mSelectedArray:[I

    .line 63
    .line 64
    aput p2, v0, p1

    .line 65
    .line 66
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 71
    .line 72
    const-string p2, "Cannot set (arrayNum + window) which would be larger than dimension of allocation."

    .line 73
    .line 74
    invoke-direct {p1, p2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 79
    .line 80
    const-string p2, "Cannot set arrayNum when the adapter includes arrayNum."

    .line 81
    .line 82
    invoke-direct {p1, p2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_2
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 87
    .line 88
    const-string p2, "Cannot set arrayNum greater than dimension of allocation."

    .line 89
    .line 90
    invoke-direct {p1, p2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_3
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 95
    .line 96
    const-string p2, "Cannot set arrayNum when the allocation type does not include arrayNum dim."

    .line 97
    .line 98
    invoke-direct {p1, p2}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p1
.end method

.method public setFace(Landroid/renderscript/Type$CubemapFace;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iput-object p1, p0, Landroid/renderscript/Allocation;->mSelectedFace:Landroid/renderscript/Type$CubemapFace;

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 30
    .line 31
    const-string v0, "Cannot set null face."

    .line 32
    .line 33
    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw p1

    .line 37
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 38
    .line 39
    const-string v0, "Cannot set face when the adapter includes faces."

    .line 40
    .line 41
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 46
    .line 47
    const-string v0, "Cannot set Face when the allocation type does not include faces."

    .line 48
    .line 49
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public setLOD(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Landroid/renderscript/AllocationAdapter;->initLOD(I)V

    .line 22
    .line 23
    .line 24
    iput p1, p0, Landroid/renderscript/Allocation;->mSelectedLOD:I

    .line 25
    .line 26
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 31
    .line 32
    const-string v0, "Cannot set LOD when the adapter includes mipmaps."

    .line 33
    .line 34
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p1

    .line 38
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 39
    .line 40
    const-string v0, "Cannot set LOD when the allocation type does not include mipmaps."

    .line 41
    .line 42
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public setX(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-le v0, p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    add-int/2addr v0, p1

    .line 38
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-ge v0, v1, :cond_0

    .line 49
    .line 50
    iput p1, p0, Landroid/renderscript/Allocation;->mSelectedX:I

    .line 51
    .line 52
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 57
    .line 58
    const-string v0, "Cannot set (X + window) which would be larger than dimension of allocation."

    .line 59
    .line 60
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 65
    .line 66
    const-string v0, "Cannot set X when the adapter includes X."

    .line 67
    .line 68
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 73
    .line 74
    const-string v0, "Cannot set X greater than dimension of allocation."

    .line 75
    .line 76
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public setY(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-le v0, p1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v0, p1

    .line 50
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ge v0, v1, :cond_0

    .line 61
    .line 62
    iput p1, p0, Landroid/renderscript/Allocation;->mSelectedY:I

    .line 63
    .line 64
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 69
    .line 70
    const-string v0, "Cannot set (Y + window) which would be larger than dimension of allocation."

    .line 71
    .line 72
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 77
    .line 78
    const-string v0, "Cannot set Y when the adapter includes Y."

    .line 79
    .line 80
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 85
    .line 86
    const-string v0, "Cannot set Y greater than dimension of allocation."

    .line 87
    .line 88
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 93
    .line 94
    const-string v0, "Cannot set Y when the allocation type does not include Y dim."

    .line 95
    .line 96
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method public setZ(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-le v0, p1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eq v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Landroid/renderscript/AllocationAdapter;->mWindow:Landroid/renderscript/Type;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    add-int/2addr v0, p1

    .line 50
    iget-object v1, p0, Landroid/renderscript/Allocation;->mAdaptedAllocation:Landroid/renderscript/Allocation;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/renderscript/Type;->getZ()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ge v0, v1, :cond_0

    .line 61
    .line 62
    iput p1, p0, Landroid/renderscript/Allocation;->mSelectedZ:I

    .line 63
    .line 64
    invoke-direct {p0}, Landroid/renderscript/AllocationAdapter;->updateOffsets()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_0
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 69
    .line 70
    const-string v0, "Cannot set (Z + window) which would be larger than dimension of allocation."

    .line 71
    .line 72
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p1

    .line 76
    :cond_1
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 77
    .line 78
    const-string v0, "Cannot set Z when the adapter includes Z."

    .line 79
    .line 80
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p1

    .line 84
    :cond_2
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 85
    .line 86
    const-string v0, "Cannot set Z greater than dimension of allocation."

    .line 87
    .line 88
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1

    .line 92
    :cond_3
    new-instance p1, Landroid/renderscript/RSInvalidStateException;

    .line 93
    .line 94
    const-string v0, "Cannot set Z when the allocation type does not include Z dim."

    .line 95
    .line 96
    invoke-direct {p1, v0}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p1
.end method
