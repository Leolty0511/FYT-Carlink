.class Landroid/view/SurfaceView$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 8

    .line 1
    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p2

    .line 5
    move-object v2, p3

    .line 6
    move v3, p4

    .line 7
    move v4, p5

    .line 8
    move v5, p6

    .line 9
    move v6, p7

    .line 10
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    .line 15
    .line 16
    const/4 p6, 0x0

    .line 17
    iput-boolean p6, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    .line 18
    .line 19
    new-instance v7, Landroid/view/SurfaceControl;

    .line 20
    .line 21
    const-string v0, "Background for - "

    .line 22
    .line 23
    invoke-static {v0, p3}, Landroid/accessibilityservice/c;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v5, -0x1

    .line 28
    const/high16 p3, 0x20000

    .line 29
    .line 30
    or-int v6, p7, p3

    .line 31
    .line 32
    move-object v0, v7

    .line 33
    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 34
    .line 35
    .line 36
    iput-object v7, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 37
    .line 38
    and-int/lit16 p2, p7, 0x400

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move p1, p6

    .line 44
    :goto_0
    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    .line 2
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    return-void
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .locals 1

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public hide()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setLayer(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    const/4 v0, -0x3

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setLayerStack(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public updateBackgroundVisibility()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
