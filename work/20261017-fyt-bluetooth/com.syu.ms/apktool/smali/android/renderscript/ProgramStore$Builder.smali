.class public Landroid/renderscript/ProgramStore$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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

.field public mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 3
    sget-object p1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 6
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 7
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 8
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 9
    sget-object p1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 10
    sget-object p1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramStore;
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-object v1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iget-boolean v4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iget-boolean v5, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iget-boolean v6, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iget-boolean v7, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iget v8, v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iget v9, v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iget v10, v0, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nProgramStoreCreate(ZZZZZZIII)I

    move-result v0

    .line 3
    new-instance v1, Landroid/renderscript/ProgramStore;

    iget-object v2, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/ProgramStore;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 4
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    iput-object v0, v1, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 5
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    iput-boolean v0, v1, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    .line 6
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    iput-boolean v0, v1, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    .line 7
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    iput-boolean v0, v1, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    .line 8
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    iput-boolean v0, v1, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    .line 9
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    iput-boolean v0, v1, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    .line 10
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    iput-object v0, v1, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 11
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    iput-object v0, v1, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 12
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    iput-boolean v0, v1, Landroid/renderscript/ProgramStore;->mDither:Z

    return-object v1
.end method

.method public setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 2
    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    return-object p0
.end method

.method public setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 2
    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 3
    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 4
    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    return-object p0
.end method

.method public setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    return-object p0
.end method

.method public setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    return-object p0
.end method

.method public setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    return-object p0
.end method
