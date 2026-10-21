.class Landroid/appwidget/AppWidgetHost$Callbacks;
.super Lk/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callbacks"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/appwidget/AppWidgetHost;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    invoke-direct {p0}, Lk/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public providerChanged(ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHost;->access$000(Landroid/appwidget/AppWidgetHost;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->clone()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p2

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    iget-object v0, v0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public providersChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    iget-object v0, v0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public updateAppWidget(ILandroid/widget/RemoteViews;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    invoke-static {v0}, Landroid/appwidget/AppWidgetHost;->access$000(Landroid/appwidget/AppWidgetHost;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p2

    .line 3
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0}, Landroid/widget/RemoteViews;->setUser(Landroid/os/UserHandle;)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    iget-object v0, v0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public viewDataChanged(III)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$Callbacks;->this$0:Landroid/appwidget/AppWidgetHost;

    iget-object v0, v0, Landroid/appwidget/AppWidgetHost;->mHandler:Landroid/os/Handler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
