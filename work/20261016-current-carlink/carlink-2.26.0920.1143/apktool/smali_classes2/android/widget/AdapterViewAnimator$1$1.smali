.class Landroid/widget/AdapterViewAnimator$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/AdapterViewAnimator$1;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterViewAnimator$1;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1$1;->this$1:Landroid/widget/AdapterViewAnimator$1;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/widget/AdapterViewAnimator$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 8
    .line 9
    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    .line 10
    .line 11
    iget v3, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->adapterPosition:I

    .line 12
    .line 13
    iget-wide v4, v1, Landroid/widget/AdapterViewAnimator$ViewAndMetaData;->itemId:J

    .line 14
    .line 15
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, v0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method
