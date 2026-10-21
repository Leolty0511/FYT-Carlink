.class public Landroid/app/MediaRouteActionProvider;
.super Landroid/view/ActionProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/MediaRouteActionProvider$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaRouteActionProvider"


# instance fields
.field private mButton:Landroid/app/MediaRouteButton;

.field private final mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

.field private final mContext:Landroid/content/Context;

.field private mExtendedSettingsListener:Landroid/view/View$OnClickListener;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ActionProvider;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mContext:Landroid/content/Context;

    const-string v0, "media_router"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    .line 4
    new-instance p1, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-direct {p1, p0}, Landroid/app/MediaRouteActionProvider$MediaRouterCallback;-><init>(Landroid/app/MediaRouteActionProvider;)V

    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/MediaRouteActionProvider;->setRouteTypes(I)V

    return-void
.end method

.method public static synthetic access$000(Landroid/app/MediaRouteActionProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/MediaRouteActionProvider;->refreshRoute()V

    return-void
.end method

.method private refreshRoute()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/ActionProvider;->refreshVisibility()V

    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget v1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->isRouteAvailable(II)Z

    move-result v0

    return v0
.end method

.method public onCreateActionView()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use onCreateActionView(MenuItem) instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 3

    .line 2
    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz p1, :cond_0

    const-string p1, "MediaRouteActionProvider"

    const-string v0, "onCreateActionView: this ActionProvider is already associated with a menu item. Don\'t reuse MediaRouteActionProvider instances! Abandoning the old one..."

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    new-instance p1, Landroid/app/MediaRouteButton;

    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/MediaRouteButton;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/app/MediaRouteButton;->setCheatSheetEnabled(Z)V

    .line 6
    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    invoke-virtual {p1, v0}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    .line 7
    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/app/MediaRouteButton;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    return-object p1
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/MediaRouteButton;->showDialogInternal()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/app/MediaRouteActionProvider;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    .line 2
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/app/MediaRouteButton;->setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3

    .line 1
    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 3
    :cond_0
    iput p1, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Landroid/app/MediaRouteActionProvider;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Landroid/app/MediaRouteActionProvider;->mCallback:Landroid/app/MediaRouteActionProvider$MediaRouterCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 5
    :cond_1
    invoke-direct {p0}, Landroid/app/MediaRouteActionProvider;->refreshRoute()V

    .line 6
    iget-object p1, p0, Landroid/app/MediaRouteActionProvider;->mButton:Landroid/app/MediaRouteButton;

    if-eqz p1, :cond_2

    .line 7
    iget v0, p0, Landroid/app/MediaRouteActionProvider;->mRouteTypes:I

    invoke-virtual {p1, v0}, Landroid/app/MediaRouteButton;->setRouteTypes(I)V

    :cond_2
    return-void
.end method
