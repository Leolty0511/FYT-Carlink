.class public final Landroid/renderscript/ScriptGroup$Closure;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFP:Landroid/renderscript/FieldPacker;

.field private mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Landroid/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

.field private mReturnValue:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-wide/16 v0, 0x0

    .line 24
    invoke-direct {v9, v0, v1, v10}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 25
    invoke-static/range {p3 .. p3}, Landroid/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;

    move-result-object v0

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    move-object/from16 v0, p3

    .line 26
    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    move-object/from16 v0, p4

    .line 27
    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v9, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 29
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v1

    .line 30
    new-array v11, v1, [J

    .line 31
    new-array v12, v1, [J

    .line 32
    new-array v13, v1, [I

    .line 33
    new-array v14, v1, [J

    .line 34
    new-array v15, v1, [J

    .line 35
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/4 v0, 0x0

    move/from16 v17, v0

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/renderscript/Script$FieldID;

    .line 38
    invoke-virtual {v3, v10}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v11, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    .line 39
    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    .line 40
    invoke-virtual {v0, v10}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    move-object/from16 v0, p1

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v0

    .line 41
    invoke-virtual {v9, v0, v1}, Landroid/renderscript/BaseObj;->setID(J)V

    .line 42
    iget-object v0, v9, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$KernelID;",
            "Landroid/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p4

    const-wide/16 v12, 0x0

    .line 2
    invoke-direct {v9, v12, v13, v10}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 3
    iput-object v11, v9, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    move-object/from16 v0, p3

    .line 4
    invoke-static {v10, v0}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    move-object/from16 v14, p5

    .line 5
    iput-object v14, v9, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 7
    array-length v0, v11

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 8
    new-array v15, v1, [J

    .line 9
    new-array v8, v1, [J

    .line 10
    new-array v7, v1, [I

    .line 11
    new-array v6, v1, [J

    .line 12
    new-array v5, v1, [J

    const/4 v0, 0x0

    move v4, v0

    .line 13
    :goto_0
    array-length v0, v11

    if-ge v4, v0, :cond_0

    .line 14
    aput-wide v12, v15, v4

    const/4 v3, 0x0

    .line 15
    aget-object v16, v11, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move/from16 v17, v4

    move-object/from16 v4, v16

    move-object/from16 v19, v5

    move-object v5, v8

    move-object/from16 v18, v6

    move-object v6, v7

    move-object/from16 v20, v7

    move-object/from16 v7, v18

    move-object/from16 v16, v8

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v4, v17, 0x1

    move-object/from16 v8, v16

    move-object/from16 v6, v18

    move-object/from16 v5, v19

    move-object/from16 v7, v20

    goto :goto_0

    :cond_0
    move/from16 v17, v4

    move-object/from16 v19, v5

    move-object/from16 v18, v6

    move-object/from16 v20, v7

    move-object/from16 v16, v8

    .line 16
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/renderscript/Script$FieldID;

    .line 19
    invoke-virtual {v3, v10}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v15, v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move-object/from16 v5, v16

    move-object/from16 v6, v20

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    .line 20
    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    .line 21
    invoke-virtual {v0, v10}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    iget-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-virtual {v0, v10}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v13

    move-object/from16 v10, p1

    move-object/from16 v17, v20

    invoke-virtual/range {v10 .. v19}, Landroid/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v0

    .line 22
    invoke-virtual {v9, v0, v1}, Landroid/renderscript/BaseObj;->setID(J)V

    .line 23
    iget-object v0, v9, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    const-string v1, "destroy"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    return-void
.end method

.method private retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 5

    .line 1
    instance-of v0, p4, Landroid/renderscript/ScriptGroup$Future;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    check-cast p4, Landroid/renderscript/ScriptGroup$Future;

    .line 8
    .line 9
    invoke-virtual {p4}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p4}, Landroid/renderscript/ScriptGroup$Future;->getClosure()Landroid/renderscript/ScriptGroup$Closure;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    aput-wide v3, p7, p2

    .line 22
    .line 23
    invoke-virtual {p4}, Landroid/renderscript/ScriptGroup$Future;->getFieldID()Landroid/renderscript/Script$FieldID;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    if-eqz p4, :cond_0

    .line 28
    .line 29
    invoke-virtual {p4, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-wide v3, v1

    .line 35
    :goto_0
    aput-wide v3, p8, p2

    .line 36
    .line 37
    move-object p4, v0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    aput-wide v1, p7, p2

    .line 40
    .line 41
    aput-wide v1, p8, p2

    .line 42
    .line 43
    :goto_1
    instance-of p7, p4, Landroid/renderscript/ScriptGroup$Input;

    .line 44
    .line 45
    if-eqz p7, :cond_3

    .line 46
    .line 47
    check-cast p4, Landroid/renderscript/ScriptGroup$Input;

    .line 48
    .line 49
    iget-object p1, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 50
    .line 51
    array-length p1, p1

    .line 52
    if-ge p2, p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p4, p0, p2}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-virtual {p4, p0, p3}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    aput-wide v1, p5, p2

    .line 62
    .line 63
    const/4 p1, 0x0

    .line 64
    aput p1, p6, p2

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    new-instance p3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    .line 68
    .line 69
    invoke-direct {p3, p1, p4}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-wide p7, p3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 73
    .line 74
    aput-wide p7, p5, p2

    .line 75
    .line 76
    iget p1, p3, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 77
    .line 78
    aput p1, p6, p2

    .line 79
    .line 80
    :goto_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 3
    .line 4
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getGlobal(Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Future;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/renderscript/ScriptGroup$Future;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :cond_0
    new-instance v1, Landroid/renderscript/ScriptGroup$Future;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1, v0}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :cond_1
    return-object v0
.end method

.method public getReturn()Landroid/renderscript/ScriptGroup$Future;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 9
    .line 10
    invoke-direct {v0, p0, v1, v2}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    .line 16
    .line 17
    return-object v0
.end method

.method public setArg(ILjava/lang/Object;)V
    .locals 9

    .line 1
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Landroid/renderscript/ScriptGroup$Future;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p2, v0, p1

    .line 14
    .line 15
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 18
    .line 19
    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    iget-wide v6, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 29
    .line 30
    iget v8, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 31
    .line 32
    move v5, p1

    .line 33
    invoke-virtual/range {v2 .. v8}, Landroid/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 10

    .line 1
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p2, Landroid/renderscript/ScriptGroup$Future;

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    .line 17
    .line 18
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 19
    .line 20
    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 24
    .line 25
    invoke-virtual {p0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 26
    .line 27
    .line 28
    move-result-wide v3

    .line 29
    iget-object p2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v5

    .line 35
    iget-wide v7, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 36
    .line 37
    iget v9, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 38
    .line 39
    invoke-virtual/range {v2 .. v9}, Landroid/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
