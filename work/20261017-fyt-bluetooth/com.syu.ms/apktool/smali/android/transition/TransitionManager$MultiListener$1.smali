.class Landroid/transition/TransitionManager$MultiListener$1;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/TransitionManager$MultiListener;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/transition/TransitionManager$MultiListener;

.field public final synthetic val$runningTransitions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$0:Landroid/transition/TransitionManager$MultiListener;

    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$0:Landroid/transition/TransitionManager$MultiListener;

    iget-object v1, v1, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
