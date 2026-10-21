.class Landroid/transition/ChangeBounds$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeBounds;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private mViewBounds:Landroid/transition/ChangeBounds$ViewBounds;

.field final synthetic this$0:Landroid/transition/ChangeBounds;

.field final synthetic val$viewBounds:Landroid/transition/ChangeBounds$ViewBounds;


# direct methods
.method public constructor <init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/transition/ChangeBounds$7;->this$0:Landroid/transition/ChangeBounds;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/transition/ChangeBounds$7;->val$viewBounds:Landroid/transition/ChangeBounds$ViewBounds;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Landroid/transition/ChangeBounds$7;->mViewBounds:Landroid/transition/ChangeBounds$ViewBounds;

    .line 9
    .line 10
    return-void
.end method
