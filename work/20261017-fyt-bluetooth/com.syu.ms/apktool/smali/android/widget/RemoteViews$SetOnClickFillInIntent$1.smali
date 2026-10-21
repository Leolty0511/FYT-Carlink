.class Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickFillInIntent;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

.field public final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews$SetOnClickFillInIntent;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    iput-object p2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    const-string v2, "RemoteViews"

    if-nez v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/app/PendingIntent;

    if-nez v1, :cond_2

    const-string p1, "Attempting setOnClickFillInIntent without calling setPendingIntentTemplate on parent."

    .line 6
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 8
    invoke-static {p1}, Landroid/widget/RemoteViews;->access$200(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 9
    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    iget-object v2, v2, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 10
    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnClickFillInIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    iget-object v2, v2, Landroid/widget/RemoteViews$SetOnClickFillInIntent;->fillInIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1, v0, v2}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    return-void

    :cond_3
    :goto_1
    const-string p1, "Collection item doesn\'t have AdapterView parent"

    .line 11
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
