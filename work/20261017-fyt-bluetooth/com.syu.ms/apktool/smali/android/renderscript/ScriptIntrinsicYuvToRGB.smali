.class public final Landroid/renderscript/ScriptIntrinsicYuvToRGB;
.super Landroid/renderscript/ScriptIntrinsic;
.source "SourceFile"


# instance fields
.field private mInput:Landroid/renderscript/Allocation;


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/ScriptIntrinsic;-><init>(ILandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 1

    .line 1
    invoke-virtual {p1, p0}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result p1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(II)I

    move-result p1

    .line 2
    new-instance v0, Landroid/renderscript/ScriptIntrinsicYuvToRGB;

    invoke-direct {v0, p1, p0}, Landroid/renderscript/ScriptIntrinsicYuvToRGB;-><init>(ILandroid/renderscript/RenderScript;)V

    return-object v0
.end method


# virtual methods
.method public forEach(Landroid/renderscript/Allocation;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, p1, v1}, Landroid/renderscript/Script;->forEach(ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/FieldPacker;)V

    return-void
.end method

.method public getFieldID_Input()Landroid/renderscript/Script$FieldID;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/Script;->createFieldID(ILandroid/renderscript/Element;)Landroid/renderscript/Script$FieldID;

    move-result-object v0

    return-object v0
.end method

.method public getKernelID()Landroid/renderscript/Script$KernelID;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/renderscript/Script;->createKernelID(IILandroid/renderscript/Element;Landroid/renderscript/Element;)Landroid/renderscript/Script$KernelID;

    move-result-object v0

    return-object v0
.end method

.method public setInput(Landroid/renderscript/Allocation;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/renderscript/ScriptIntrinsicYuvToRGB;->mInput:Landroid/renderscript/Allocation;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/renderscript/Script;->setVar(ILandroid/renderscript/BaseObj;)V

    return-void
.end method
