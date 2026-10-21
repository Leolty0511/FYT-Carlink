.class public final Landroidx/core/transition/TransitionKt$addListener$listener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/transition/TransitionKt;->addListener(Landroid/transition/Transition;Lz/l;Lz/l;Lz/l;Lz/l;Lz/l;)Landroid/transition/Transition$TransitionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $onCancel:Lz/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz/l;"
        }
    .end annotation
.end field

.field final synthetic $onEnd:Lz/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz/l;"
        }
    .end annotation
.end field

.field final synthetic $onPause:Lz/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz/l;"
        }
    .end annotation
.end field

.field final synthetic $onResume:Lz/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz/l;"
        }
    .end annotation
.end field

.field final synthetic $onStart:Lz/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz/l;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lz/l;Lz/l;Lz/l;Lz/l;Lz/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz/l;",
            "Lz/l;",
            "Lz/l;",
            "Lz/l;",
            "Lz/l;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onEnd:Lz/l;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onResume:Lz/l;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onPause:Lz/l;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onCancel:Lz/l;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onStart:Lz/l;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "transition"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onCancel:Lz/l;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "transition"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onEnd:Lz/l;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "transition"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onPause:Lz/l;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "transition"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onResume:Lz/l;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "transition"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/core/transition/TransitionKt$addListener$listener$1;->$onStart:Lz/l;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    return-void
.end method
