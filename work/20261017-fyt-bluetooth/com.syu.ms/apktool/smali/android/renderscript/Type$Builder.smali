.class public Landroid/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mDimFaces:Z

.field public mDimMipmaps:Z

.field public mDimX:I

.field public mDimY:I

.field public mDimZ:I

.field public mElement:Landroid/renderscript/Element;

.field public mRS:Landroid/renderscript/RenderScript;

.field public mYuv:I


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    .line 3
    invoke-virtual {p2}, Landroid/renderscript/BaseObj;->checkValid()V

    .line 4
    iput-object p1, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    .line 5
    iput-object p2, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    return-void
.end method


# virtual methods
.method public create()Landroid/renderscript/Type;
    .locals 10

    .line 1
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 2
    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v2, v1, :cond_1

    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lt v2, v1, :cond_1

    .line 3
    iget-boolean v2, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2
    :goto_0
    iget v2, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    if-lez v2, :cond_4

    .line 7
    iget v3, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    if-lt v3, v1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_4
    :goto_1
    iget-boolean v3, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v3, :cond_6

    if-lt v2, v1, :cond_5

    goto :goto_2

    .line 10
    :cond_5
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_6
    :goto_2
    iget v1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    if-nez v3, :cond_7

    .line 12
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    if-nez v0, :cond_7

    goto :goto_3

    .line 13
    :cond_7
    new-instance v0, Landroid/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_8
    :goto_3
    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)I

    move-result v3

    iget v4, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iget v5, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iget v6, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v7, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v8, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iget v9, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v2 .. v9}, Landroid/renderscript/RenderScript;->nTypeCreate(IIIIZZI)I

    move-result v0

    .line 15
    new-instance v1, Landroid/renderscript/Type;

    iget-object v2, p0, Landroid/renderscript/Type$Builder;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v1, v0, v2}, Landroid/renderscript/Type;-><init>(ILandroid/renderscript/RenderScript;)V

    .line 16
    iget-object v0, p0, Landroid/renderscript/Type$Builder;->mElement:Landroid/renderscript/Element;

    iput-object v0, v1, Landroid/renderscript/Type;->mElement:Landroid/renderscript/Element;

    .line 17
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    iput v0, v1, Landroid/renderscript/Type;->mDimX:I

    .line 18
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    iput v0, v1, Landroid/renderscript/Type;->mDimY:I

    .line 19
    iget v0, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    iput v0, v1, Landroid/renderscript/Type;->mDimZ:I

    .line 20
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v0, v1, Landroid/renderscript/Type;->mDimMipmaps:Z

    .line 21
    iget-boolean v0, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v0, v1, Landroid/renderscript/Type;->mDimFaces:Z

    .line 22
    iget v0, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    iput v0, v1, Landroid/renderscript/Type;->mDimYuv:I

    .line 23
    invoke-virtual {v1}, Landroid/renderscript/Type;->calcElementCount()V

    return-object v1
.end method

.method public setFaces(Z)Landroid/renderscript/Type$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroid/renderscript/Type$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroid/renderscript/Type$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimX:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setY(I)Landroid/renderscript/Type$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimY:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setYuvFormat(I)Landroid/renderscript/Type$Builder;
    .locals 1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_1

    const v0, 0x32315659

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Only ImageFormat.NV21, .YV12, and .YUV_420_888 are supported.."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Landroid/renderscript/Type$Builder;->mYuv:I

    return-object p0
.end method

.method public setZ(I)Landroid/renderscript/Type$Builder;
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    iput p1, p0, Landroid/renderscript/Type$Builder;->mDimZ:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Landroid/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {p1, v0}, Landroid/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
