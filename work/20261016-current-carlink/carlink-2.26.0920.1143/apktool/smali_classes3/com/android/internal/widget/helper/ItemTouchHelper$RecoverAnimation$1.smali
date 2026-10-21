.class Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;-><init>(Lcom/android/internal/widget/helper/ItemTouchHelper;Lcom/android/internal/widget/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

.field final synthetic val$this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;Lcom/android/internal/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$1:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    iput-object p2, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;->val$this$0:Lcom/android/internal/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation$1;->this$1:Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    return-void
.end method
