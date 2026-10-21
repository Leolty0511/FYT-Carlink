.class Landroid/view/ViewPropertyAnimator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method public constructor <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$2;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$2;->this$0:Landroid/view/ViewPropertyAnimator;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$2;->this$0:Landroid/view/ViewPropertyAnimator;

    .line 11
    .line 12
    iget-object v0, v0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$2;->this$0:Landroid/view/ViewPropertyAnimator;

    .line 21
    .line 22
    iget-object v0, v0, Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
