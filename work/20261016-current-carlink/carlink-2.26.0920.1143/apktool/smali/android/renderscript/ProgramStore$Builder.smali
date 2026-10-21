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
.field mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

.field mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

.field mColorMaskA:Z

.field mColorMaskB:Z

.field mColorMaskG:Z

.field mColorMaskR:Z

.field mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

.field mDepthMask:Z

.field mDither:Z

.field mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    .line 6
    sget-object p1, Landroid/renderscript/ProgramStore$DepthFunc;->ALWAYS:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 7
    .line 8
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 15
    .line 16
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 17
    .line 18
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 19
    .line 20
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 21
    .line 22
    sget-object p1, Landroid/renderscript/ProgramStore$BlendSrcFunc;->ONE:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 23
    .line 24
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 25
    .line 26
    sget-object p1, Landroid/renderscript/ProgramStore$BlendDstFunc;->ZERO:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 27
    .line 28
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramStore;
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 7
    .line 8
    iget-boolean v2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 9
    .line 10
    iget-boolean v3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 11
    .line 12
    iget-boolean v4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 13
    .line 14
    iget-boolean v5, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 15
    .line 16
    iget-boolean v6, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 17
    .line 18
    iget-boolean v7, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    .line 19
    .line 20
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 21
    .line 22
    iget v8, v0, Landroid/renderscript/ProgramStore$BlendSrcFunc;->mID:I

    .line 23
    .line 24
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 25
    .line 26
    iget v9, v0, Landroid/renderscript/ProgramStore$BlendDstFunc;->mID:I

    .line 27
    .line 28
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 29
    .line 30
    iget v10, v0, Landroid/renderscript/ProgramStore$DepthFunc;->mID:I

    .line 31
    .line 32
    invoke-virtual/range {v1 .. v10}, Landroid/renderscript/RenderScript;->nProgramStoreCreate(ZZZZZZIII)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    new-instance v2, Landroid/renderscript/ProgramStore;

    .line 37
    .line 38
    iget-object v3, p0, Landroid/renderscript/ProgramStore$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 39
    .line 40
    invoke-direct {v2, v0, v1, v3}, Landroid/renderscript/ProgramStore;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 44
    .line 45
    iput-object v0, v2, Landroid/renderscript/ProgramStore;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    .line 46
    .line 47
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    .line 48
    .line 49
    iput-boolean v0, v2, Landroid/renderscript/ProgramStore;->mDepthMask:Z

    .line 50
    .line 51
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 52
    .line 53
    iput-boolean v0, v2, Landroid/renderscript/ProgramStore;->mColorMaskR:Z

    .line 54
    .line 55
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 56
    .line 57
    iput-boolean v0, v2, Landroid/renderscript/ProgramStore;->mColorMaskG:Z

    .line 58
    .line 59
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 60
    .line 61
    iput-boolean v0, v2, Landroid/renderscript/ProgramStore;->mColorMaskB:Z

    .line 62
    .line 63
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 64
    .line 65
    iput-boolean v0, v2, Landroid/renderscript/ProgramStore;->mColorMaskA:Z

    .line 66
    .line 67
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 68
    .line 69
    iput-object v0, v2, Landroid/renderscript/ProgramStore;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 70
    .line 71
    iget-object v0, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 72
    .line 73
    iput-object v0, v2, Landroid/renderscript/ProgramStore;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 74
    .line 75
    iget-boolean v0, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    .line 76
    .line 77
    iput-boolean v0, v2, Landroid/renderscript/ProgramStore;->mDither:Z

    .line 78
    .line 79
    return-object v2
.end method

.method public setBlendFunc(Landroid/renderscript/ProgramStore$BlendSrcFunc;Landroid/renderscript/ProgramStore$BlendDstFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendSrc:Landroid/renderscript/ProgramStore$BlendSrcFunc;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/renderscript/ProgramStore$Builder;->mBlendDst:Landroid/renderscript/ProgramStore$BlendDstFunc;

    .line 4
    .line 5
    return-object p0
.end method

.method public setColorMaskEnabled(ZZZZ)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskR:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskG:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskB:Z

    .line 6
    .line 7
    iput-boolean p4, p0, Landroid/renderscript/ProgramStore$Builder;->mColorMaskA:Z

    .line 8
    .line 9
    return-object p0
.end method

.method public setDepthFunc(Landroid/renderscript/ProgramStore$DepthFunc;)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    iput-object p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthFunc:Landroid/renderscript/ProgramStore$DepthFunc;

    return-object p0
.end method

.method public setDepthMaskEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDepthMask:Z

    return-object p0
.end method

.method public setDitherEnabled(Z)Landroid/renderscript/ProgramStore$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/renderscript/ProgramStore$Builder;->mDither:Z

    return-object p0
.end method
