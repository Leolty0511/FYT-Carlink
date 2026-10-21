.class Landroid/widget/RemoteViews$ViewGroupActionAdd$1;
.super Landroid/widget/RemoteViews$RuntimeAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$ViewGroupActionAdd;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViews$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

.field final synthetic val$targetVg:Landroid/view/ViewGroup;

.field final synthetic val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

.field final synthetic val$tree:Landroid/widget/RemoteViews$ViewTree;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews$ViewGroupActionAdd;Landroid/widget/RemoteViews$AsyncApplyTask;Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    iput-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    iput-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    iput-object p4, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$RuntimeAction;-><init>(Landroid/widget/RemoteViews$1;)V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    .line 2
    .line 3
    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$tree:Landroid/widget/RemoteViews$ViewTree;

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$targetVg:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iget-object p2, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->val$task:Landroid/widget/RemoteViews$AsyncApplyTask;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/widget/RemoteViews$AsyncApplyTask;->access$1500(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    iget-object p3, p0, Landroid/widget/RemoteViews$ViewGroupActionAdd$1;->this$1:Landroid/widget/RemoteViews$ViewGroupActionAdd;

    .line 17
    .line 18
    invoke-static {p3}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->access$1600(Landroid/widget/RemoteViews$ViewGroupActionAdd;)I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
