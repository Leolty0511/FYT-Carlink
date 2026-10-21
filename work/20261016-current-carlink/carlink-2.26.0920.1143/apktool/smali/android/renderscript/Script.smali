.class public Landroid/renderscript/Script;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/Script$LaunchOptions;,
        Landroid/renderscript/Script$FieldBase;,
        Landroid/renderscript/Script$Builder;,
        Landroid/renderscript/Script$FieldID;,
        Landroid/renderscript/Script$InvokeID;,
        Landroid/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field mInIdsBuffer:[J

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance p1, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance p1, Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    new-array p1, p1, [J

    .line 27
    .line 28
    iput-object p1, p0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    .line 29
    .line 30
    iget-object p1, p0, Landroid/renderscript/BaseObj;->guard:Ldalvik/system/CloseGuard;

    .line 31
    .line 32
    const-string p2, "destroy"

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/renderscript/Allocation;I)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 24
    .line 25
    const/16 v1, 0x14

    .line 26
    .line 27
    if-lt v0, v1, :cond_1

    .line 28
    .line 29
    iget-object v0, p1, Landroid/renderscript/Allocation;->mType:Landroid/renderscript/Type;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasMipmaps()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/renderscript/Type;->hasFaces()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/renderscript/Type;->getZ()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 57
    .line 58
    const-string p2, "API 20+ only allows simple 1D allocations to be used with bind."

    .line 59
    .line 60
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p1

    .line 64
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v1

    .line 70
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 71
    .line 72
    invoke-virtual {p1, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    move v5, p2

    .line 77
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    iget-object v5, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 82
    .line 83
    invoke-virtual {p0, v5}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 84
    .line 85
    .line 86
    move-result-wide v6

    .line 87
    const-wide/16 v8, 0x0

    .line 88
    .line 89
    move v10, p2

    .line 90
    invoke-virtual/range {v5 .. v10}, Landroid/renderscript/RenderScript;->nScriptBindAllocation(JJI)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method

.method public createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;
    .locals 8

    .line 1
    iget-object p2, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/renderscript/Script$FieldID;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    iget-object p2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 13
    .line 14
    invoke-virtual {p0, p2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-virtual {p2, v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptFieldIDCreate(JI)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    cmp-long p2, v3, v0

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    new-instance p2, Landroid/renderscript/Script$FieldID;

    .line 29
    .line 30
    iget-object v5, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 31
    .line 32
    move-object v2, p2

    .line 33
    move-object v6, p0

    .line 34
    move v7, p1

    .line 35
    invoke-direct/range {v2 .. v7}, Landroid/renderscript/Script$FieldID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Landroid/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object p2

    .line 44
    :cond_1
    new-instance p1, Landroid/renderscript/RSDriverException;

    .line 45
    .line 46
    const-string p2, "Failed to create FieldID"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public createInvokeID(I)Landroid/renderscript/Script$InvokeID;
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/renderscript/Script$InvokeID;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    .line 19
    .line 20
    .line 21
    move-result-wide v4

    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    cmp-long v0, v4, v0

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    new-instance v0, Landroid/renderscript/Script$InvokeID;

    .line 29
    .line 30
    iget-object v6, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 31
    .line 32
    move-object v3, v0

    .line 33
    move-object v7, p0

    .line 34
    move v8, p1

    .line 35
    invoke-direct/range {v3 .. v8}, Landroid/renderscript/Script$InvokeID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroid/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-object v0

    .line 44
    :cond_1
    new-instance p1, Landroid/renderscript/RSDriverException;

    .line 45
    .line 46
    const-string v0, "Failed to create KernelID"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method

.method public createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;
    .locals 9

    .line 1
    iget-object p3, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Landroid/renderscript/Script$KernelID;

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    return-object p3

    .line 12
    :cond_0
    iget-object p3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 13
    .line 14
    invoke-virtual {p0, p3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-virtual {p3, v0, v1, p1, p2}, Landroid/renderscript/RenderScript;->nScriptKernelIDCreate(JII)J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    const-wide/16 p3, 0x0

    .line 23
    .line 24
    cmp-long p3, v3, p3

    .line 25
    .line 26
    if-eqz p3, :cond_1

    .line 27
    .line 28
    new-instance p3, Landroid/renderscript/Script$KernelID;

    .line 29
    .line 30
    iget-object v5, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 31
    .line 32
    move-object v2, p3

    .line 33
    move-object v6, p0

    .line 34
    move v7, p1

    .line 35
    move v8, p2

    .line 36
    invoke-direct/range {v2 .. v8}, Landroid/renderscript/Script$KernelID;-><init>(JLandroid/renderscript/RenderScript;Landroid/renderscript/Script;II)V

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Landroid/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 40
    .line 41
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-object p3

    .line 45
    :cond_1
    new-instance p1, Landroid/renderscript/RSDriverException;

    .line 46
    .line 47
    const-string p2, "Failed to create KernelID"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    .line 3
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v1}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 4
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz p5, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of input allocation, output allocation, or LaunchOptions is required to be non-null."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 6
    iget-object v5, v0, Landroid/renderscript/Script;->mInIdsBuffer:[J

    .line 7
    iget-object v6, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v6}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    aput-wide v6, v5, v3

    move-object v12, v5

    goto :goto_1

    :cond_2
    move-object v12, v4

    :goto_1
    if-eqz v2, :cond_3

    .line 8
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    goto :goto_2

    :cond_3
    const-wide/16 v1, 0x0

    :goto_2
    move-wide v13, v1

    if-eqz p4, :cond_4

    .line 9
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    move-object v15, v1

    goto :goto_3

    :cond_4
    move-object v15, v4

    :goto_3
    if-eqz p5, :cond_5

    const/4 v1, 0x6

    new-array v4, v1, [I

    .line 10
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v4, v3

    const/4 v1, 0x1

    .line 11
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x2

    .line 12
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x3

    .line 13
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x4

    .line 14
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x5

    .line 15
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    :cond_5
    move-object/from16 v16, v4

    .line 16
    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    move/from16 v11, p1

    invoke-virtual/range {v8 .. v16}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    return-void
.end method

.method public forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 17
    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/Script;->forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 18
    iget-object v3, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->validate()V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 19
    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v1, v5

    .line 20
    iget-object v7, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v6}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-object v4, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, v2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    new-instance v1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 23
    array-length v5, v1

    new-array v5, v5, [J

    move v6, v3

    .line 24
    :goto_2
    array-length v7, v1

    if-ge v6, v7, :cond_3

    .line 25
    aget-object v7, v1, v6

    iget-object v8, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v8}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    move-object v11, v5

    goto :goto_3

    :cond_4
    move-object v11, v4

    :goto_3
    if-eqz v2, :cond_5

    .line 26
    iget-object v1, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    goto :goto_4

    :cond_5
    const-wide/16 v1, 0x0

    :goto_4
    move-wide v12, v1

    if-eqz p4, :cond_6

    .line 27
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v1

    move-object v14, v1

    goto :goto_5

    :cond_6
    move-object v14, v4

    :goto_5
    if-eqz p5, :cond_7

    const/4 v1, 0x6

    new-array v4, v1, [I

    .line 28
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    aput v1, v4, v3

    .line 29
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v4, v2

    const/4 v1, 0x2

    .line 30
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x3

    .line 31
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x4

    .line 32
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x5

    .line 33
    invoke-static/range {p5 .. p5}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v4, v1

    :cond_7
    move-object v15, v4

    .line 34
    iget-object v7, v0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v7}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    move/from16 v10, p1

    invoke-virtual/range {v7 .. v15}, Landroid/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    return-void
.end method

.method public getVarB(I)Z
    .locals 3

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getVarD(I)D
    .locals 3

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarD(JI)D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarF(I)F
    .locals 3

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarF(JI)F

    move-result p1

    return p1
.end method

.method public getVarI(I)I
    .locals 3

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarI(JI)I

    move-result p1

    return p1
.end method

.method public getVarJ(I)J
    .locals 3

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptGetVarJ(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getVarV(ILandroid/renderscript/FieldPacker;)V
    .locals 3

    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptGetVarV(JI[B)V

    return-void
.end method

.method public invoke(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    return-void
.end method

.method public invoke(ILandroid/renderscript/FieldPacker;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptInvokeV(JI[B)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, p2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1, p1}, Landroid/renderscript/RenderScript;->nScriptInvoke(JI)V

    :goto_0
    return-void
.end method

.method public reduce(I[Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_4

    .line 7
    .line 8
    array-length v0, p2

    .line 9
    const/4 v1, 0x1

    .line 10
    if-lt v0, v1, :cond_4

    .line 11
    .line 12
    if-eqz p3, :cond_3

    .line 13
    .line 14
    array-length v0, p2

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v0, :cond_0

    .line 18
    .line 19
    aget-object v4, p2, v3

    .line 20
    .line 21
    iget-object v5, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 22
    .line 23
    invoke-virtual {v5, v4}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    array-length v0, p2

    .line 30
    new-array v7, v0, [J

    .line 31
    .line 32
    move v0, v2

    .line 33
    :goto_1
    array-length v3, p2

    .line 34
    if-ge v0, v3, :cond_1

    .line 35
    .line 36
    aget-object v3, p2, v0

    .line 37
    .line 38
    iget-object v4, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    aput-wide v3, v7, v0

    .line 45
    .line 46
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    iget-object p2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 50
    .line 51
    invoke-virtual {p3, p2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v8

    .line 55
    if-eqz p4, :cond_2

    .line 56
    .line 57
    const/4 p2, 0x6

    .line 58
    new-array p2, p2, [I

    .line 59
    .line 60
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->access$000(Landroid/renderscript/Script$LaunchOptions;)I

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    aput p3, p2, v2

    .line 65
    .line 66
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->access$100(Landroid/renderscript/Script$LaunchOptions;)I

    .line 67
    .line 68
    .line 69
    move-result p3

    .line 70
    aput p3, p2, v1

    .line 71
    .line 72
    const/4 p3, 0x2

    .line 73
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->access$200(Landroid/renderscript/Script$LaunchOptions;)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    aput v0, p2, p3

    .line 78
    .line 79
    const/4 p3, 0x3

    .line 80
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->access$300(Landroid/renderscript/Script$LaunchOptions;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    aput v0, p2, p3

    .line 85
    .line 86
    const/4 p3, 0x4

    .line 87
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->access$400(Landroid/renderscript/Script$LaunchOptions;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    aput v0, p2, p3

    .line 92
    .line 93
    const/4 p3, 0x5

    .line 94
    invoke-static {p4}, Landroid/renderscript/Script$LaunchOptions;->access$500(Landroid/renderscript/Script$LaunchOptions;)I

    .line 95
    .line 96
    .line 97
    move-result p4

    .line 98
    aput p4, p2, p3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    const/4 p2, 0x0

    .line 102
    :goto_2
    move-object v10, p2

    .line 103
    iget-object v3, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 104
    .line 105
    invoke-virtual {p0, v3}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v4

    .line 109
    move v6, p1

    .line 110
    invoke-virtual/range {v3 .. v10}, Landroid/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_3
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 115
    .line 116
    const-string p2, "aout is required to be non-null."

    .line 117
    .line 118
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p1

    .line 122
    :cond_4
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 123
    .line 124
    const-string p2, "At least one input is required."

    .line 125
    .line 126
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p1
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    const-string v3, "UTF-8"

    .line 13
    .line 14
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, v1, v2, p1}, Landroid/renderscript/RenderScript;->nScriptSetTimeZone(J[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/lang/RuntimeException;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public setVar(ID)V
    .locals 6

    .line 2
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarD(JID)V

    return-void
.end method

.method public setVar(IF)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarF(JIF)V

    return-void
.end method

.method public setVar(II)V
    .locals 3

    .line 3
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    return-void
.end method

.method public setVar(IJ)V
    .locals 6

    .line 4
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/renderscript/RenderScript;->nScriptSetVarJ(JIJ)V

    return-void
.end method

.method public setVar(ILandroid/renderscript/BaseObj;)V
    .locals 7

    .line 6
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 7
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, p2}, Landroid/renderscript/RenderScript;->validateObject(Landroid/renderscript/BaseObj;)V

    .line 8
    iget-object v1, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    if-nez p2, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p2, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_0
    move-wide v5, v4

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/renderscript/RenderScript;->nScriptSetVarObj(JIJ)V

    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;)V
    .locals 3

    .line 9
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object p2

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarV(JI[B)V

    return-void
.end method

.method public setVar(ILandroid/renderscript/FieldPacker;Landroid/renderscript/Element;[I)V
    .locals 8

    .line 10
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v4

    iget-object p2, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p3, p2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    move v3, p1

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[I)V

    return-void
.end method

.method public setVar(IZ)V
    .locals 3

    .line 5
    iget-object v0, p0, Landroid/renderscript/BaseObj;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/renderscript/RenderScript;->nScriptSetVarI(JII)V

    return-void
.end method
