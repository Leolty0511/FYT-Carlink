.class public Landroid/renderscript/Mesh$AllocationBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllocationBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$AllocationBuilder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 8
    .line 9
    const/16 p1, 0x10

    .line 10
    .line 11
    new-array p1, p1, [Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 12
    .line 13
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 14
    .line 15
    new-instance p1, Ljava/util/Vector;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public addIndexSetAllocation(Landroid/renderscript/Allocation;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 7
    .line 8
    iput-object p2, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 9
    .line 10
    iget-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 8
    .line 9
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 10
    .line 11
    iget-object p1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public addVertexAllocation(Landroid/renderscript/Allocation;)Landroid/renderscript/Mesh$AllocationBuilder;
    .locals 3

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    new-instance v2, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$AllocationBuilder$Entry;-><init>(Landroid/renderscript/Mesh$AllocationBuilder;)V

    .line 11
    .line 12
    .line 13
    aput-object v2, v1, v0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 16
    .line 17
    iget v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 18
    .line 19
    aget-object v0, v0, v1

    .line 20
    .line 21
    iput-object p1, v0, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    iput v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "Max vertex types exceeded."

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method

.method public create()Landroid/renderscript/Mesh;
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 7
    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    iget-object v1, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    new-array v1, v1, [J

    .line 17
    .line 18
    iget-object v2, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    new-array v2, v2, [I

    .line 25
    .line 26
    iget-object v3, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    new-array v3, v3, [Landroid/renderscript/Allocation;

    .line 33
    .line 34
    iget-object v4, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    new-array v4, v4, [Landroid/renderscript/Mesh$Primitive;

    .line 41
    .line 42
    iget v5, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 43
    .line 44
    new-array v5, v5, [Landroid/renderscript/Allocation;

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    move v7, v6

    .line 48
    :goto_0
    iget v8, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    .line 49
    .line 50
    if-ge v7, v8, :cond_0

    .line 51
    .line 52
    iget-object v8, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypes:[Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 53
    .line 54
    aget-object v8, v8, v7

    .line 55
    .line 56
    iget-object v8, v8, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 57
    .line 58
    aput-object v8, v5, v7

    .line 59
    .line 60
    iget-object v9, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    aput-wide v8, v0, v7

    .line 67
    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    :goto_1
    iget-object v7, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-ge v6, v7, :cond_2

    .line 78
    .line 79
    iget-object v7, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    .line 80
    .line 81
    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;

    .line 86
    .line 87
    iget-object v8, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 88
    .line 89
    if-nez v8, :cond_1

    .line 90
    .line 91
    const-wide/16 v8, 0x0

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_1
    iget-object v9, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 95
    .line 96
    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 97
    .line 98
    .line 99
    move-result-wide v8

    .line 100
    :goto_2
    iget-object v10, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->a:Landroid/renderscript/Allocation;

    .line 101
    .line 102
    aput-object v10, v3, v6

    .line 103
    .line 104
    iget-object v7, v7, Landroid/renderscript/Mesh$AllocationBuilder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 105
    .line 106
    aput-object v7, v4, v6

    .line 107
    .line 108
    aput-wide v8, v1, v6

    .line 109
    .line 110
    iget v7, v7, Landroid/renderscript/Mesh$Primitive;->mID:I

    .line 111
    .line 112
    aput v7, v2, v6

    .line 113
    .line 114
    add-int/lit8 v6, v6, 0x1

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    iget-object v6, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 118
    .line 119
    invoke-virtual {v6, v0, v1, v2}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    new-instance v2, Landroid/renderscript/Mesh;

    .line 124
    .line 125
    iget-object v6, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mRS:Landroid/renderscript/RenderScript;

    .line 126
    .line 127
    invoke-direct {v2, v0, v1, v6}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 128
    .line 129
    .line 130
    iput-object v5, v2, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 131
    .line 132
    iput-object v3, v2, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 133
    .line 134
    iput-object v4, v2, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 135
    .line 136
    return-object v2
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Mesh$AllocationBuilder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
