.class Landroid/animation/AnimationHandler$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/animation/AnimationHandler;


# direct methods
.method public constructor <init>(Landroid/animation/AnimationHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/animation/AnimationHandler;->access$000(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-interface {p2}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->getFrameTime()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {p1, v0, v1}, Landroid/animation/AnimationHandler;->access$100(Landroid/animation/AnimationHandler;J)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/animation/AnimationHandler;->access$200(Landroid/animation/AnimationHandler;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-lez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Landroid/animation/AnimationHandler$1;->this$0:Landroid/animation/AnimationHandler;

    .line 27
    .line 28
    invoke-static {p1}, Landroid/animation/AnimationHandler;->access$000(Landroid/animation/AnimationHandler;)Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1, p0}, Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
