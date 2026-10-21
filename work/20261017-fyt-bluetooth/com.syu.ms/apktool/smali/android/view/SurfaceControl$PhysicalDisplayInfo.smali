.class public final Landroid/view/SurfaceControl$PhysicalDisplayInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhysicalDisplayInfo"
.end annotation


# instance fields
.field public density:F

.field public height:I

.field public refreshRate:F

.field public secure:Z

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V
    .locals 1

    .line 1
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    .line 2
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    .line 3
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    .line 4
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    .line 5
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    .line 6
    iget v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    .line 7
    iget-boolean p1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    iput-boolean p1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    return-void
.end method

.method public equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iget v1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    iget-boolean p1, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->equals(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhysicalDisplayInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->refreshRate:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " fps, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "density "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " dpi, secure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
