.class final Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/MediaRouteControllerDialog;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    return-void
.end method


# virtual methods
.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$600(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    return-void
.end method

.method public onRouteGrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$600(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    return-void
.end method

.method public onRouteUngrouped(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;Landroid/media/MediaRouter$RouteGroup;)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$600(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$600(Lcom/android/internal/app/MediaRouteControllerDialog;)Z

    return-void
.end method

.method public onRouteVolumeChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$100(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-ne p2, p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Lcom/android/internal/app/MediaRouteControllerDialog;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->access$400(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
