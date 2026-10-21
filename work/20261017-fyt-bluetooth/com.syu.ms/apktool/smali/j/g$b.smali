.class public final Lj/g$b;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lj/g;


# direct methods
.method public constructor <init>(Lj/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/g$b;->a:Lj/g;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj/g;Lj/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lj/g$b;-><init>(Lj/g;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/g$b;->a:Lj/g;

    invoke-virtual {p1}, Lj/g;->c()V

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/g$b;->a:Lj/g;

    invoke-virtual {p1}, Lj/g;->c()V

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/g$b;->a:Lj/g;

    invoke-virtual {p1}, Lj/g;->c()V

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/g$b;->a:Lj/g;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
