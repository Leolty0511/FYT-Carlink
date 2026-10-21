.class Landroid/appwidget/AppWidgetHostView$ViewApplyListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViews$OnViewAppliedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewApplyListener"
.end annotation


# instance fields
.field private final mIsReapply:Z

.field private final mLayoutId:I

.field private final mViews:Landroid/widget/RemoteViews;

.field final synthetic this$0:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    .line 7
    .line 8
    iput p3, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    .line 9
    .line 10
    iput-boolean p4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    .line 7
    .line 8
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    .line 9
    .line 10
    iget-object v3, p1, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p1}, Landroid/appwidget/AppWidgetHostView;->access$300(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    new-instance v6, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    .line 17
    .line 18
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    .line 19
    .line 20
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mViews:Landroid/widget/RemoteViews;

    .line 21
    .line 22
    iget v7, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    .line 23
    .line 24
    invoke-direct {v6, v0, v4, v7, v1}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/appwidget/AppWidgetHostView;->access$400(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$OnClickHandler;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    move-object v4, p1

    .line 34
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/os/CancellationSignal;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {p1, v0}, Landroid/appwidget/AppWidgetHostView;->access$202(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-static {v0, v2, v1, p1}, Landroid/appwidget/AppWidgetHostView;->access$100(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public onViewApplied(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->this$0:Landroid/appwidget/AppWidgetHostView;

    .line 2
    .line 3
    iget v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mLayoutId:I

    .line 4
    .line 5
    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    iput v1, v0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    .line 9
    .line 10
    iget-boolean v1, p0, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;->mIsReapply:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-static {v0, p1, v1, v2}, Landroid/appwidget/AppWidgetHostView;->access$100(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
