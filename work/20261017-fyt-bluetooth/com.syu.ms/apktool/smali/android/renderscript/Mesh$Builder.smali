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
.field public mIndexTypes:Ljava/util/Vector;

.field public mRS:Landroid/renderscript/RenderScript;

.field public mUsage:I

.field public mVertexTypeCount:I

.field public mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 3
    iput p2, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    const/16 p1, 0x10

    new-array p1, p1, [Landroid/renderscript/Mesh$Builder$Entry;

    .line 5
    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    .line 6
    new-instance p1, Ljava/util/Vector;

    invoke-direct {p1}, Ljava/util/Vector;-><init>()V

    iput-object p1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

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
    .locals 4

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

    aget-object v2, v0, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 10
    aget-object v2, v0, v1

    iput-object p1, v2, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    .line 11
    aget-object p1, v0, v1

    iput p2, p1, Landroid/renderscript/Mesh$Builder$Entry;->size:I

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

    aget-object v2, v0, v1

    iput-object p1, v2, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    .line 4
    aget-object p1, v0, v1

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

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
    .locals 14

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-array v0, v0, [I

    .line 3
    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 4
    iget-object v2, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 5
    iget v3, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    new-array v3, v3, [Landroid/renderscript/Allocation;

    .line 6
    iget-object v4, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [Landroid/renderscript/Allocation;

    .line 7
    iget-object v5, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    new-array v5, v5, [Landroid/renderscript/Mesh$Primitive;

    const/4 v6, 0x0

    move v7, v6

    .line 8
    :goto_0
    iget v8, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    const/4 v9, 0x0

    if-ge v7, v8, :cond_2

    .line 9
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypes:[Landroid/renderscript/Mesh$Builder$Entry;

    aget-object v8, v8, v7

    .line 10
    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v10, :cond_0

    .line 11
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget v9, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v8, v10, v9}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v9

    goto :goto_1

    .line 12
    :cond_0
    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    if-eqz v10, :cond_1

    .line 13
    iget-object v9, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget v8, v8, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    iget v11, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v9, v10, v8, v11}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v9

    .line 14
    :cond_1
    :goto_1
    aput-object v9, v3, v7

    .line 15
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v9, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v8

    aput v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v6

    .line 16
    :goto_2
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 17
    iget-object v8, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v8, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/renderscript/Mesh$Builder$Entry;

    .line 18
    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->t:Landroid/renderscript/Type;

    if-eqz v10, :cond_3

    .line 19
    iget-object v11, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget v12, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v11, v10, v12}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v10

    goto :goto_3

    .line 20
    :cond_3
    iget-object v10, v8, Landroid/renderscript/Mesh$Builder$Entry;->e:Landroid/renderscript/Element;

    if-eqz v10, :cond_4

    .line 21
    iget-object v11, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget v12, v8, Landroid/renderscript/Mesh$Builder$Entry;->size:I

    iget v13, p0, Landroid/renderscript/Mesh$Builder;->mUsage:I

    invoke-static {v11, v10, v12, v13}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;II)Landroid/renderscript/Allocation;

    move-result-object v10

    goto :goto_3

    :cond_4
    move-object v10, v9

    :goto_3
    if-nez v10, :cond_5

    move v11, v6

    goto :goto_4

    .line 22
    :cond_5
    iget-object v11, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v10, v11}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v11

    .line 23
    :goto_4
    aput-object v10, v4, v7

    .line 24
    iget-object v8, v8, Landroid/renderscript/Mesh$Builder$Entry;->prim:Landroid/renderscript/Mesh$Primitive;

    aput-object v8, v5, v7

    .line 25
    aput v11, v1, v7

    .line 26
    iget v8, v8, Landroid/renderscript/Mesh$Primitive;->mID:I

    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 27
    :cond_6
    iget-object v6, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v0, v1, v2}, Landroid/renderscript/RenderScript;->nMeshCreate([I[I[I)I

    move-result v0

    .line 28
    new-instance v1, Landroid/renderscript/Mesh;

    iget-object v2, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/Mesh;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 29
    iput-object v3, v1, Landroid/renderscript/Mesh;->mVertexBuffers:[Landroid/renderscript/Allocation;

    .line 30
    iput-object v4, v1, Landroid/renderscript/Mesh;->mIndexBuffers:[Landroid/renderscript/Allocation;

    .line 31
    iput-object v5, v1, Landroid/renderscript/Mesh;->mPrimitives:[Landroid/renderscript/Mesh$Primitive;

    return-object v1
.end method

.method public getCurrentIndexSetIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/Mesh$Builder;->mIndexTypes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCurrentVertexTypeIndex()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/renderscript/Mesh$Builder;->mVertexTypeCount:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public newType(Landroid/renderscript/Element;I)Landroid/renderscript/Type;
    .locals 2

    .line 1
    new-instance v0, Landroid/renderscript/Type$Builder;

    iget-object v1, p0, Landroid/renderscript/Mesh$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p1}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 2
    invoke-virtual {v0, p2}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object p1

    return-object p1
.end method
