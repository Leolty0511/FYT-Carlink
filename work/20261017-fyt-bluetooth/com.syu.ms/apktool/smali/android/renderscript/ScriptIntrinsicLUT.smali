.class public final Landroid/renderscript/ScriptIntrinsicLUT;
.super Landroid/renderscript/ScriptIntrinsic;
.source "SourceFile"


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroid/renderscript/Matrix4f;

.field private mTables:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 2
    new-instance p1, Landroid/renderscript/Matrix4f;

    invoke-direct {p1}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/renderscript/Matrix4f;

    const/16 p1, 0x400

    new-array v0, p1, [B

    .line 3
    iput-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 5
    invoke-static {p2}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/renderscript/Allocation;->createSized(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;I)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/16 v0, 0x100

    if-ge p2, v0, :cond_0

    .line 6
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p2

    add-int/lit16 v2, p2, 0x100

    .line 7
    aput-byte v1, v0, v2

    add-int/lit16 v2, p2, 0x200

    .line 8
    aput-byte v1, v0, v2

    add-int/lit16 v2, p2, 0x300

    .line 9
    aput-byte v1, v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    invoke-virtual {p0, p1, p2}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicLUT;
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result p1

    .line 2
    new-instance v0, Landroid/renderscript/ScriptIntrinsicLUT;

    invoke-direct {v0, p1, p0}, Landroid/renderscript/ScriptIntrinsicLUT;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object v0
.end method

.method private validate(II)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_1

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Value out of range (0-255)."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string p2, "Index out of range (0-255)."

    invoke-direct {p1, p2}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    .line 3
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/renderscript/Allocation;

    iget-object v2, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->copyFromUnchecked([B)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/Script;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setAlpha(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x300

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setBlue(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x200

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setGreen(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    add-int/lit16 p1, p1, 0x100

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method

.method public setRed(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsicLUT;->validate(II)V

    .line 2
    iget-object v0, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mCache:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    return-void
.end method
