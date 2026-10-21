.class public Landroid/app/Notification$DecoratedCustomViewStyle;
.super Landroid/app/Notification$Style;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    return-void
.end method

.method private buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    const v0, 0x102032b

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const v1, 0x102000d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->removeAllViewsExceptId(II)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p1, v0, p2, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setReapplyDisallowed()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 24
    .line 25
    invoke-static {p2}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-static {p2}, Landroid/app/Notification;->access$1300(Landroid/app/Notification;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    const p2, 0x1050108

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const p2, 0x1050104

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEndDimen(II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private makeDecoratedBigContentView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 27
    .line 28
    :goto_0
    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 29
    .line 30
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$2500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 46
    .line 47
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3600(Landroid/app/Notification$Builder;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {p0, v1, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method private makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 27
    .line 28
    :goto_0
    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 29
    .line 30
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$2500(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 46
    .line 47
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$3600(Landroid/app/Notification$Builder;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->access$1800(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {p0, v1, v0}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 56
    .line 57
    .line 58
    return-object v1
.end method

.method private makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$3000(Landroid/app/Notification$Builder;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->access$4100(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0, p1}, Landroid/app/Notification$DecoratedCustomViewStyle;->buildIntoRemoteViewContent(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public displayCustomViewInline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {p1}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeStandardTemplateWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$DecoratedCustomViewStyle;->makeDecoratedHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object p1

    return-object p1
.end method
