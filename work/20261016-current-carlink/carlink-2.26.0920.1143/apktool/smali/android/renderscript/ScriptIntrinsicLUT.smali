.class public final Landroid/renderscript/ScriptIntrinsicLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "SourceFile"


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroid/renderscript/Matrix4f;

.field private mTables:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/renderscript/Matrix4f;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/renderscript/Matrix4f;

    .line 10
    .line 11
    const/16 p1, 0x400

    .line 12
    .line 13
    new-array p2, p1, [B

    .line 14
    .line 15
    iput-object p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 19
    .line 20
    invoke-static {p3}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p3, p2, p1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    move p2, p1

    .line 32
    :goto_0
    const/16 p3, 0x100

    .line 33
    .line 34
    if-ge p2, p3, :cond_0

    .line 35
    .line 36
    iget-object p3, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 37
    .line 38
    int-to-byte v0, p2

    .line 39
    aput-byte v0, p3, p2

    .line 40
    .line 41
    add-int/lit16 v1, p2, 0x100

    .line 42
    .line 43
    aput-byte v0, p3, v1

    .line 44
    .line 45
    add-int/lit16 v1, p2, 0x200

    .line 46
    .line 47
    aput-byte v0, p3, v1

    .line 48
    .line 49
    add-int/lit16 v1, p2, 0x300

    .line 50
    .line 51
    aput-byte v0, p3, v1

    .line 52
    .line 53
    add-int/lit8 p2, p2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    .line 57
    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    .line 3
    .line 4
    .line 5
    move-result-wide v1

    .line 6
    invoke-virtual {p0, v0, v1, v2}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    new-instance p1, Landroid/renderscript/ScriptIntrinsicLUT;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicLUT;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method private validate(II)V
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    const/16 v0, 0xff

    .line 4
    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    if-ltz p2, :cond_0

    .line 8
    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 13
    .line 14
    const-string p2, "Value out of range (0-255)."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    .line 21
    .line 22
    const-string p2, "Index out of range (0-255)."

    .line 23
    .line 24
    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Landroid/renderscript/ScriptIntrinsicLUT;->forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Script$LaunchOptions;)V
    .locals 8

    .line 2
    iget-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    iget-object v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    invoke-virtual {v0, v1}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V

    :cond_0
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    .line 5
    invoke-virtual/range {v2 .. v7}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;Landroid/renderscript/Script$LaunchOptions;)V

    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v1}, Landroid/renderscript/Script;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 5
    .line 6
    add-int/lit16 p1, p1, 0x300

    .line 7
    .line 8
    int-to-byte p2, p2

    .line 9
    aput-byte p2, v0, p1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 13
    .line 14
    return-void
.end method

.method public setBlue(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 5
    .line 6
    add-int/lit16 p1, p1, 0x200

    .line 7
    .line 8
    int-to-byte p2, p2

    .line 9
    aput-byte p2, v0, p1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 13
    .line 14
    return-void
.end method

.method public setGreen(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 5
    .line 6
    add-int/lit16 p1, p1, 0x100

    .line 7
    .line 8
    int-to-byte p2, p2

    .line 9
    aput-byte p2, v0, p1

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 13
    .line 14
    return-void
.end method

.method public setRed(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    .line 5
    .line 6
    int-to-byte p2, p2

    .line 7
    aput-byte p2, v0, p1

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 11
    .line 12
    return-void
.end method
