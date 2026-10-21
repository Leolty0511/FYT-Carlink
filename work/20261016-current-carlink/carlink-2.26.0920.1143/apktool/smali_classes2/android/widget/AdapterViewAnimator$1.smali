.class Landroid/widget/AdapterViewAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AdapterViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewAnimator;

.field final synthetic val$v:Landroid/view/View;

.field final synthetic val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;


# direct methods
.method public constructor <init>(Landroid/widget/AdapterViewAnimator;Landroid/view/View;Landroid/widget/AdapterViewAnimator$ViewAndMetaData;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    iput-object p2, p0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/AdapterViewAnimator$1;->val$viewData:Landroid/widget/AdapterViewAnimator$ViewAndMetaData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/AdapterViewAnimator$1;->val$v:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/AdapterViewAnimator;->hideTapFeedback(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroid/widget/AdapterViewAnimator$1;->this$0:Landroid/widget/AdapterViewAnimator;

    .line 9
    .line 10
    new-instance v1, Landroid/widget/AdapterViewAnimator$1$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Landroid/widget/AdapterViewAnimator$1$1;-><init>(Landroid/widget/AdapterViewAnimator$1;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method
