.class final Landroid/view/Surface$HwuiContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Surface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HwuiContext"
.end annotation


# instance fields
.field private mCanvas:Landroid/view/DisplayListCanvas;

.field private mHwuiRenderer:J

.field private final mRenderNode:Landroid/view/RenderNode;

.field final synthetic this$0:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;)V
    .locals 4

    .line 1
    iput-object p1, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "HwuiCanvas"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 17
    .line 18
    .line 19
    iget-wide v0, v0, Landroid/view/RenderNode;->mNativeRenderNode:J

    .line 20
    .line 21
    iget-wide v2, p1, Landroid/view/Surface;->mNativeObject:J

    .line 22
    .line 23
    invoke-static {v0, v1, v2, v3}, Landroid/view/Surface;->access$200(JJ)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .line 1
    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/view/Surface;->access$500(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public lockCanvas(II)Landroid/graphics/Canvas;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string p2, "Surface was already locked!"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public unlockAndPost(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroid/view/Surface$HwuiContext;->mRenderNode:Landroid/view/RenderNode;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Landroid/view/Surface$HwuiContext;->mCanvas:Landroid/view/DisplayListCanvas;

    .line 12
    .line 13
    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/view/Surface;->access$300(J)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "canvas object must be the same instance that was previously returned by lockCanvas"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public updateSurface()V
    .locals 4

    iget-wide v0, p0, Landroid/view/Surface$HwuiContext;->mHwuiRenderer:J

    iget-object v2, p0, Landroid/view/Surface$HwuiContext;->this$0:Landroid/view/Surface;

    iget-wide v2, v2, Landroid/view/Surface;->mNativeObject:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/Surface;->access$400(JJ)V

    return-void
.end method
