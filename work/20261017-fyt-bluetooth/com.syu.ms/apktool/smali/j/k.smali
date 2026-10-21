.class public abstract Lj/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;
    .locals 4

    const-string v0, "media_router"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MediaRouter"

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android.app.MediaRouteButton:MediaRouteControllerDialogFragment"

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string/jumbo p0, "showDialog(): Route controller dialog already showing!"

    .line 6
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 7
    :cond_1
    new-instance p2, Lj/j;

    invoke-direct {p2}, Lj/j;-><init>()V

    .line 8
    invoke-virtual {p2, p0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object p2

    :cond_2
    :goto_0
    const-string v0, "android.app.MediaRouteButton:MediaRouteChooserDialogFragment"

    .line 9
    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo p0, "showDialog(): Route chooser dialog already showing!"

    .line 10
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 11
    :cond_3
    new-instance v1, Lj/h;

    invoke-direct {v1}, Lj/h;-><init>()V

    .line 12
    invoke-virtual {v1, p1}, Lj/h;->d(I)V

    .line 13
    invoke-virtual {v1, p2}, Lj/h;->c(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {v1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-object v1
.end method
