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
.field mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field mColorMaskA:Z

.field mColorMaskB:Z

.field mColorMaskG:Z

.field mColorMaskR:Z

.field mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field mDepthMask:Z

.field mDither:Z


# direct methods
.method public constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    return-void
.end method

.method public static BLEND_ALPHA_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 16
    .line 17
    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    .line 36
    .line 37
    return-object p0
.end method

.method public static BLEND_ALPHA_DEPTH_TEST(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 16
    .line 17
    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ONE_MINUS_SRC_ALPHA:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_ALPHA_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    .line 37
    .line 38
    return-object p0
.end method

.method public static BLEND_NONE_DEPTH_NONE(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 16
    .line 17
    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    .line 34
    .line 35
    :cond_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_NO_DEPTH:Landroid/renderscript/ProgramStore;

    .line 36
    .line 37
    return-object p0
.end method

.method public static BLEND_NONE_DEPTH_TEST(Landroid/renderscript/RenderScript;)Landroid/renderscript/ProgramStore;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/renderscript/ProgramStore$Builder;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/renderscript/ProgramStore$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Landroid/renderscript/ProgramStore$DepthFunc;->LESS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 16
    .line 17
    sget-object v2, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/renderscript/ProgramStore$Builder;->setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/renderscript/ProgramStore$Builder;->setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/renderscript/ProgramStore$Builder;->create()Landroid/renderscript/ProgramStore;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    .line 35
    .line 36
    :cond_0
    iget-object p0, p0, Landroid/renderscript/RenderScript;->mProgramStore_BLEND_NONE_DEPTH_TEST:Landroid/renderscript/ProgramStore;

    .line 37
    .line 38
    return-object p0
.end method


# virtual methods
.method public getBlendDstFunc()Landroid/renderscript/ProgramStore$BlendDstFunc;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object v0
.end method

.method public getBlendSrcFunc()Landroid/renderscript/ProgramStore$BlendSrcFunc;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    return-object v0
.end method

.method public getDepthFunc()Landroid/renderscript/ProgramStore$DepthFunc;
    .locals 1

    iget-object v0, p0, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    return-object v0
.end method

.method public isColorMaskAlphaEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    return v0
.end method

.method public isColorMaskBlueEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    return v0
.end method

.method public isColorMaskGreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    return v0
.end method

.method public isColorMaskRedEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    return v0
.end method

.method public isDepthMaskEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    return v0
.end method

.method public isDitherEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/renderscript/ProgramStore;->mDither:Z

    return v0
.end method
