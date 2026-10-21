.class Landroid/transition/TransitionManager$MultiListener$1;
.super Landroid/transition/TransitionListenerAdapter;
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
.field final synthetic this$0:Landroid/transition/TransitionManager$MultiListener;

.field final synthetic val$runningTransitions:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/transition/TransitionManager$MultiListener;Landroid/util/ArrayMap;)V
    .locals 0

    iput-object p1, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$0:Landroid/transition/TransitionManager$MultiListener;

    iput-object p2, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/transition/TransitionManager$MultiListener$1;->val$runningTransitions:Landroid/util/ArrayMap;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/transition/TransitionManager$MultiListener$1;->this$0:Landroid/transition/TransitionManager$MultiListener;

    .line 4
    .line 5
    iget-object v1, v1, Landroid/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
