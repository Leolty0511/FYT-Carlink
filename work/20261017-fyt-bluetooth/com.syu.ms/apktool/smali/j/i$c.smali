.class public final Lj/i$c;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lj/i;


# direct methods
.method public constructor <init>(Lj/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/i$c;->a:Lj/i;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj/i;Lj/i$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lj/i$c;-><init>(Lj/i;)V

    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/i$c;->a:Lj/i;

    invoke-static {p1}, Lj/i;->g(Lj/i;)Z

    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/i$c;->a:Lj/i;

    invoke-static {p1}, Lj/i;->g(Lj/i;)Z

    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/i$c;->a:Lj/i;

    invoke-static {p1}, Lj/i;->g(Lj/i;)Z

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/i$c;->a:Lj/i;

    invoke-static {p1}, Lj/i;->g(Lj/i;)Z

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/i$c;->a:Lj/i;

    invoke-static {p1}, Lj/i;->e(Lj/i;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Lj/i$c;->a:Lj/i;

    invoke-static {p1}, Lj/i;->c(Lj/i;)V

    :cond_0
    return-void
.end method
