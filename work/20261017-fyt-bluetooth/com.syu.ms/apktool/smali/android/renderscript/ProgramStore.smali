.class public Landroid/renderscript/ProgramStore;
.super Landroid/renderscript/BaseObj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramStore$Builder;,
        Landroid/renderscript/ProgramStore$BlendDstFunc;,
        Landroid/renderscript/ProgramStore$BlendSrcFunc;,
        Landroid/renderscript/ProgramStore$DepthFunc;
    }
.end annotation


# instance fields
.field public mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field public mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field public mColorMaskA:Z

.field public mColorMaskB:Z

.field public mColorMaskG:Z

.field public mColorMaskR:Z

.field public mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field public mDepthMask:Z

.field public mDither:Z


# direct methods
.method public constructor <init>(ILandroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/renderscript/BaseObj;-><init>(ILandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static BLEND_ALPHA_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 4
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 6
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    .line 8
    :cond_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    return-object p0
.end method

.method public static BLEND_ALPHA_DEPTH_TEST(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 4
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    .line 8
    :cond_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    return-object p0
.end method

.method public static BLEND_NONE_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 4
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 6
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    .line 8
    :cond_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    return-object p0
.end method

.method public static BLEND_NONE_DEPTH_TEST(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 3
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 4
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 7
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    move-result-object v0

    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    .line 8
    :cond_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    return-object p0
.end method


# virtual methods
.method public getBlendDstFunc()Landroid/renderscript/ProgramStore$BlendDstFunc;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method

.method public getBlendSrcFunc()Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    return-object v0
.end method

.method public getDepthFunc()Landroid/renderscript/ProgramStore$DepthFunc;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method

.method public isColorMaskAlphaEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    return v0
.end method

.method public isColorMaskBlueEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    return v0
.end method

.method public isColorMaskGreenEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    return v0
.end method

.method public isColorMaskRedEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    return v0
.end method

.method public isDepthMaskEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    return v0
.end method

.method public isDitherEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mDither:Z

    return v0
.end method
