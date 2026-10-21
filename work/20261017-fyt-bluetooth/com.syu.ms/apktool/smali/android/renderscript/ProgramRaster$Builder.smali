.class public Landroid/renderscript/ProgramRaster$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramRaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

.field public mPointSprite:Z

.field public mRS:Landroid/renderscript/RenderScript;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    .line 4
    sget-object p1, Landroid/renderscript/ProgramRaster$CullMode;->BACK:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramRaster;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->validate()V

    .line 2
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-boolean v1, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    iget-object v2, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    iget v2, v2, Landroid/renderscript/ProgramRaster$CullMode;->mID:I

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/RenderScript;->nProgramRasterCreate(ZI)I

    move-result v0

    .line 3
    new-instance v1, Landroid/renderscript/ProgramRaster;

    iget-object v2, p0, Landroid/renderscript/ProgramRaster$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/ProgramRaster;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 4
    iget-boolean v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    iput-boolean v0, v1, Landroid/renderscript/ProgramRaster;->mPointSprite:Z

    .line 5
    iget-object v0, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    iput-object v0, v1, Landroid/renderscript/ProgramRaster;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    return-object v1
.end method

.method public setCullMode(Landroid/renderscript/ProgramRaster$CullMode;)Landroid/renderscript/ProgramRaster$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mCullMode:Landroid/renderscript/ProgramRaster$CullMode;

    return-object p0
.end method

.method public setPointSpriteEnabled(Z)Landroid/renderscript/ProgramRaster$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/renderscript/ProgramRaster$Builder;->mPointSprite:Z

    return-object p0
.end method
