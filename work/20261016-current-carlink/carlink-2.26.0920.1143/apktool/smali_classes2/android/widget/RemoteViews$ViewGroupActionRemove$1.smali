.class Landroid/widget/RemoteViews$ViewGroupActionRemove$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionRemove;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

.field final synthetic val$targetVg:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$1;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->access$1900(Landroid/widget/RemoteViews$ViewGroupActionRemove;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, -0x2

    .line 8
    if-ne p1, p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionRemove;

    .line 17
    .line 18
    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionRemove$1;->val$targetVg:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/widget/RemoteViews$ViewGroupActionRemove;->access$2000(Landroid/widget/RemoteViews$ViewGroupActionRemove;Landroid/view/ViewGroup;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
