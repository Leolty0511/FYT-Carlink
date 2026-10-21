.class public Landroid/app/Notification$DecoratedMediaCustomViewStyle;
.super Landroid/app/Notification$MediaStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;-><init>()V

    return-void
.end method

.method private buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p3, v0}, Landroid/widget/RemoteViews;->overrideTextColors(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setReapplyDisallowed()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object p1
.end method

.method private makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const v1, 0x102032b

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 22
    .line 23
    if-eq p1, v0, :cond_1

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-super {p0, v0}, Landroid/app/Notification$MediaStyle;->makeContentView(Z)Landroid/widget/RemoteViews;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const v1, 0x1020329

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    return-object p1
.end method


# virtual methods
.method public displayCustomViewInline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 1

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
    if-eqz v0, :cond_0

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
    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

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
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 27
    .line 28
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public makeContentView(Z)Landroid/widget/RemoteViews;
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Landroid/app/Notification$MediaStyle;->makeContentView(Z)Landroid/widget/RemoteViews;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 13
    .line 14
    const v1, 0x1020329

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v1, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 12
    .line 13
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 21
    .line 22
    invoke-static {p1}, Landroid/app/Notification$Builder;->access$1900(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 27
    .line 28
    :goto_0
    invoke-direct {p0, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method
