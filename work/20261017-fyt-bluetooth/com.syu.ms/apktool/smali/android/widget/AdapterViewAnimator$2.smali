.class Landroid/widget/AdapterViewAnimator$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator;->checkForAndHandleDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->handleDataChanged()V

    .line 2
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iput v2, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 4
    invoke-virtual {v0, v2, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 6
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    iget v1, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->refreshChildren()V

    .line 8
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
