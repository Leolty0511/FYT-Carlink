.class Landroid/view/ViewRootImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->profileRendering(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    iget-object p2, p1, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 4
    .line 5
    iget v0, p1, Landroid/view/ViewRootImpl;->mWidth:I

    .line 6
    .line 7
    iget p1, p1, Landroid/view/ViewRootImpl;->mHeight:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p2, v1, v1, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    .line 19
    .line 20
    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$000(Landroid/view/ViewRootImpl;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Landroid/view/ViewRootImpl$3;->this$0:Landroid/view/ViewRootImpl;

    .line 27
    .line 28
    iget-object p2, p1, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 29
    .line 30
    invoke-static {p1}, Landroid/view/ViewRootImpl;->access$100(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p2, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
