.class Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

.field public final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews$SetPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    instance-of p3, p2, Landroid/view/ViewGroup;

    if-eqz p3, :cond_5

    .line 2
    move-object p3, p2

    check-cast p3, Landroid/view/ViewGroup;

    .line 3
    instance-of p1, p1, Landroid/widget/AdapterViewAnimator;

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    :cond_0
    if-nez p3, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    :goto_0
    if-ge p4, p5, :cond_3

    .line 6
    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020268

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 7
    instance-of v1, v0, Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 8
    move-object p1, v0

    check-cast p1, Landroid/content/Intent;

    goto :goto_1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-static {p2}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p3

    .line 10
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 11
    invoke-virtual {p4, p3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 12
    iget-object p3, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object p4, p0, Landroid/widget/RemoteViews$SetPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    iget-object p4, p4, Landroid/widget/RemoteViews$SetPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {p3, p2, p4, p1}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    :cond_5
    return-void
.end method
