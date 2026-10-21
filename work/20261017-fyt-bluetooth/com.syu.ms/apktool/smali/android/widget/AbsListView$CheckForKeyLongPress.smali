.class Landroid/widget/AbsListView$CheckForKeyLongPress;
.super Landroid/widget/AbsListView$WindowRunnnable;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckForKeyLongPress"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsListView$WindowRunnnable;-><init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForKeyLongPress;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v1, v0, Landroid/widget/AdapterView;->mSelectedPosition:I

    if-ltz v1, :cond_2

    .line 2
    iget v2, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v1, Landroid/widget/AdapterView;->mDataChanged:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/widget/AbsListView$WindowRunnnable;->sameWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    iget v2, v1, Landroid/widget/AdapterView;->mSelectedPosition:I

    iget-wide v4, v1, Landroid/widget/AdapterView;->mSelectedRowId:J

    invoke-virtual {v1, v0, v2, v4, v5}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForKeyLongPress;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 8
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_1
    return-void
.end method
