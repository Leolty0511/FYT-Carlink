.class public Landroid/renderscript/Mesh$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Mesh$Builder$Entry;
    }
.end annotation


# instance fields
.field mIndexTypes:Ljava/util/Vector;

.field mRS:Landroid/renderscript/RenderScript;

.field mUsage:I

.field mVertexTypeCount:I

.field mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    iput p2, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 10
    .line 11
    const/16 p1, 0x10

    .line 12
    .line 13
    new-array p1, p1, [Landroid/renderscript/Mesh$Builder$Entry;

    .line 14
    .line 15
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    .line 16
    .line 17
    new-instance p1, Ljava/util/Vector;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public addIndexSetType(Landroid/renderscript/Element;ILandroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2

    .line 13
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 15
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 16
    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 17
    iput-object p3, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 18
    iget-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 2

    .line 7
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    const/4 v1, 0x0

    .line 8
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 9
    iput-object v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    const/4 v1, 0x0

    .line 10
    iput v1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 11
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 12
    iget-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addIndexSetType(Landroid/renderscript/Type;Landroid/renderscript/Mesh$Primitive;)Landroid/renderscript/Mesh$Builder;
    .locals 1

    .line 1
    new-instance v0, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v0, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    .line 2
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    const/4 p1, 0x0

    .line 3
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    const/4 p1, 0x0

    .line 4
    iput p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 5
    iput-object p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 6
    iget-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object p0
.end method

.method public addVertexType(Landroid/renderscript/Element;I)Landroid/renderscript/Mesh$Builder;
    .locals 3

    .line 7
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 8
    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v1, v0

    .line 9
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 10
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 11
    iput p2, v0, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    add-int/lit8 v1, v1, 0x1

    .line 12
    iput v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Max vertex types exceeded."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addVertexType(Landroid/renderscript/Type;)Landroid/renderscript/Mesh$Builder;
    .locals 3

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2
    new-instance v2, Landroid/renderscript/Mesh$Builder$Entry;

    invoke-direct {v2, p0}, Landroid/renderscript/Mesh$Builder$Entry;-><init>(Landroid/renderscript/Mesh$Builder;)V

    aput-object v2, v1, v0

    .line 3
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    iget v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    aget-object v0, v0, v1

    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    const/4 p1, 0x0

    .line 4
    iput-object p1, v0, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Max vertex types exceeded."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public create()Landroid/renderscript/Mesh;
    .locals 13

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 7
    .line 8
    new-array v0, v0, [J

    .line 9
    .line 10
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

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
    iget-object v2, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

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
    iget v3, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 27
    .line 28
    new-array v3, v3, [Landroid/renderscript/Allocation;

    .line 29
    .line 30
    iget-object v4, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    new-array v4, v4, [Landroid/renderscript/Allocation;

    .line 37
    .line 38
    iget-object v5, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    .line 39
    .line 40
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    new-array v5, v5, [Landroid/renderscript/Mesh$Primitive;

    .line 45
    .line 46
    const/4 v6, 0x0

    .line 47
    move v7, v6

    .line 48
    :goto_0
    iget v8, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    .line 49
    .line 50
    const-string v9, "Builder corrupt, no valid element in entry."

    .line 51
    .line 52
    if-ge v7, v8, :cond_2

    .line 53
    .line 54
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    .line 55
    .line 56
    aget-object v8, v8, v7

    .line 57
    .line 58
    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 59
    .line 60
    if-eqz v10, :cond_0

    .line 61
    .line 62
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 63
    .line 64
    iget v9, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    .line 65
    .line 66
    invoke-static {v8, v10, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    goto :goto_1

    .line 71
    :cond_0
    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 72
    .line 73
    if-eqz v10, :cond_1

    .line 74
    .line 75
    iget-object v9, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 76
    .line 77
    iget v8, v8, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 78
    .line 79
    iget v11, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    .line 80
    .line 81
    invoke-static {v9, v10, v8, v11}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    :goto_1
    aput-object v8, v3, v7

    .line 86
    .line 87
    iget-object v9, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 88
    .line 89
    invoke-virtual {v8, v9}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 90
    .line 91
    .line 92
    move-result-wide v8

    .line 93
    aput-wide v8, v0, v7

    .line 94
    .line 95
    add-int/lit8 v7, v7, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 99
    .line 100
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw v0

    .line 104
    :cond_2
    :goto_2
    iget-object v7, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    .line 105
    .line 106
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-ge v6, v7, :cond_6

    .line 111
    .line 112
    iget-object v7, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    .line 113
    .line 114
    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    check-cast v7, Landroid/renderscript/Mesh$Builder$Entry;

    .line 119
    .line 120
    iget-object v8, v7, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 121
    .line 122
    if-eqz v8, :cond_3

    .line 123
    .line 124
    iget-object v10, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 125
    .line 126
    iget v11, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    .line 127
    .line 128
    invoke-static {v10, v8, v11}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    .line 129
    .line 130
    .line 131
    move-result-object v8

    .line 132
    goto :goto_3

    .line 133
    :cond_3
    iget-object v8, v7, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 134
    .line 135
    if-eqz v8, :cond_5

    .line 136
    .line 137
    iget-object v10, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 138
    .line 139
    iget v11, v7, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    .line 140
    .line 141
    iget v12, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    .line 142
    .line 143
    invoke-static {v10, v8, v11, v12}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    :goto_3
    if-nez v8, :cond_4

    .line 148
    .line 149
    const-wide/16 v10, 0x0

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_4
    iget-object v10, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 153
    .line 154
    invoke-virtual {v8, v10}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v10

    .line 158
    :goto_4
    aput-object v8, v4, v6

    .line 159
    .line 160
    iget-object v7, v7, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    .line 161
    .line 162
    aput-object v7, v5, v6

    .line 163
    .line 164
    aput-wide v10, v1, v6

    .line 165
    .line 166
    iget v7, v7, Landroid/renderscript/Mesh$Primitive;->mID:I

    .line 167
    .line 168
    aput v7, v2, v6

    .line 169
    .line 170
    add-int/lit8 v6, v6, 0x1

    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 174
    .line 175
    invoke-direct {v0, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :cond_6
    iget-object v6, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 180
    .line 181
    invoke-virtual {v6, v0, v1, v2}, Landroid/renderscript/RenderScript;->nMeshCreate([J[J[I)J

    .line 182
    .line 183
    .line 184
    move-result-wide v0

    .line 185
    new-instance v2, Landroid/renderscript/Mesh;

    .line 186
    .line 187
    iget-object v6, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 188
    .line 189
    invoke-direct {v2, v0, v1, v6}, Landroid/renderscript/Mesh;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 190
    .line 191
    .line 192
    iput-object v3, v2, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 193
    .line 194
    iput-object v4, v2, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 195
    .line 196
    iput-object v5, v2, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    .line 197
    .line 198
    return-object v2
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Type$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
