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
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterViewAnimator;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->handleDataChanged()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 7
    .line 8
    iget v1, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->getWindowSize()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v2, 0x0

    .line 15
    if-lt v1, v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 18
    .line 19
    iput v2, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 20
    .line 21
    invoke-virtual {v0, v2, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 26
    .line 27
    iget v1, v0, Landroid/widget/AdapterView;->mOldItemCount:I

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eq v1, v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 36
    .line 37
    iget v1, v0, Landroid/widget/AdapterViewAnimator;->mWhichChild:I

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/widget/AdapterViewAnimator;->showOnly(IZ)V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/widget/AdapterViewAnimator;->refreshChildren()V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$2;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 50
    .line 51
    .line 52
    return-void
.end method
