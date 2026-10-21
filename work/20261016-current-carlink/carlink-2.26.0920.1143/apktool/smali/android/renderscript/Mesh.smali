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
.field mIndexBuffers:[Landroid/renderscript/Allocation;

.field mPrimitives:[Landroid/renderscript/Mesh$Primitive;

.field mVertexBuffers:[Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 5
    .line 6
    const-string p2, "destroy"

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getIndexSetAllocation(I)Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPrimitive(I)Landroid/renderscript/Mesh$Primitive;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPrimitiveCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    return v0
.end method

.method public getVertexAllocation(I)Landroid/renderscript/Allocation;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getVertexAllocationCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    return v0
.end method

.method public updateFromNative()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p0}, Landroid/renderscript/BaseObj;->updateFromNative()V

    .line 4
    .line 5
    .line 6
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {v1, v2, v3}, Landroid/renderscript/RenderScript;->nMeshGetVertexBufferCount(J)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object v2, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {v2, v3, v4}, Landroid/renderscript/RenderScript;->nMeshGetIndexCount(J)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-array v3, v1, [J

    .line 27
    .line 28
    new-array v4, v2, [J

    .line 29
    .line 30
    new-array v11, v2, [I

    .line 31
    .line 32
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    invoke-virtual {v5, v6, v7, v3, v1}, Landroid/renderscript/RenderScript;->nMeshGetVertices(J[JI)V

    .line 39
    .line 40
    .line 41
    iget-object v5, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 42
    .line 43
    invoke-virtual {v0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    move-object v8, v4

    .line 48
    move-object v9, v11

    .line 49
    move v10, v2

    .line 50
    invoke-virtual/range {v5 .. v10}, Landroid/renderscript/RenderScript;->nMeshGetIndices(J[J[II)V

    .line 51
    .line 52
    .line 53
    new-array v5, v1, [Landroid/renderscript/Allocation;

    .line 54
    .line 55
    iput-object v5, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 56
    .line 57
    new-array v5, v2, [Landroid/renderscript/Allocation;

    .line 58
    .line 59
    iput-object v5, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 60
    .line 61
    new-array v5, v2, [Landroid/renderscript/Mesh$Primitive;

    .line 62
    .line 63
    iput-object v5, v0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    move v6, v5

    .line 67
    :goto_0
    const-wide/16 v7, 0x0

    .line 68
    .line 69
    if-ge v6, v1, :cond_1

    .line 70
    .line 71
    aget-wide v9, v3, v6

    .line 72
    .line 73
    cmp-long v7, v9, v7

    .line 74
    .line 75
    if-eqz v7, :cond_0

    .line 76
    .line 77
    iget-object v7, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 78
    .line 79
    new-instance v8, Landroid/renderscript/Allocation;

    .line 80
    .line 81
    aget-wide v13, v3, v6

    .line 82
    .line 83
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 84
    .line 85
    const/16 v16, 0x0

    .line 86
    .line 87
    const/16 v17, 0x1

    .line 88
    .line 89
    move-object v12, v8

    .line 90
    invoke-direct/range {v12 .. v17}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 91
    .line 92
    .line 93
    aput-object v8, v7, v6

    .line 94
    .line 95
    iget-object v7, v0, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 96
    .line 97
    aget-object v7, v7, v6

    .line 98
    .line 99
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 100
    .line 101
    .line 102
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    :goto_1
    if-ge v5, v2, :cond_3

    .line 106
    .line 107
    aget-wide v9, v4, v5

    .line 108
    .line 109
    cmp-long v1, v9, v7

    .line 110
    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    iget-object v1, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 114
    .line 115
    new-instance v3, Landroid/renderscript/Allocation;

    .line 116
    .line 117
    aget-wide v13, v4, v5

    .line 118
    .line 119
    iget-object v15, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 120
    .line 121
    const/16 v16, 0x0

    .line 122
    .line 123
    const/16 v17, 0x1

    .line 124
    .line 125
    move-object v12, v3

    .line 126
    invoke-direct/range {v12 .. v17}, Landroid/renderscript/Allocation;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Type;I)V

    .line 127
    .line 128
    .line 129
    aput-object v3, v1, v5

    .line 130
    .line 131
    iget-object v1, v0, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 132
    .line 133
    aget-object v1, v1, v5

    .line 134
    .line 135
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->updateFromNative()V

    .line 136
    .line 137
    .line 138
    :cond_2
    iget-object v1, v0, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 139
    .line 140
    invoke-static {}, Landroid/renderscript/Mesh$Primitive;->values()[Landroid/renderscript/Mesh$Primitive;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    aget v6, v11, v5

    .line 145
    .line 146
    aget-object v3, v3, v6

    .line 147
    .line 148
    aput-object v3, v1, v5

    .line 149
    .line 150
    add-int/lit8 v5, v5, 0x1

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    return-void
.end method
