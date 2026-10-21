.class public Lcom/android/internal/app/MediaRouteChooserDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteComparator;,
        Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

.field private mAttachedToWindow:Z

.field private final mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

.field private mExtendedSettingsButton:Landroid/widget/Button;

.field private mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mListView:Landroid/widget/ListView;

.field private mRouteTypes:I

.field private final mRouter:Landroid/media/MediaRouter;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    const-string p2, "media_router"

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/media/MediaRouter;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    .line 13
    .line 14
    new-instance p1, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-direct {p1, p0, p2}, Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Lcom/android/internal/app/MediaRouteChooserDialog$1;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic access$100(Lcom/android/internal/app/MediaRouteChooserDialog;)Landroid/media/MediaRouter;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    return-object p0
.end method

.method public static isLightTheme(Landroid/content/Context;)Z
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    const v1, 0x111004e

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    return v2
.end method

.method private updateExtendedSettingsButton()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/16 v1, 0x8

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method


# virtual methods
.method public getRouteTypes()I
    .locals 1

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    .line 8
    .line 9
    iget v2, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 10
    .line 11
    .line 12
    const p1, 0x1090083

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 16
    .line 17
    .line 18
    iget p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-ne p1, v1, :cond_0

    .line 22
    .line 23
    const p1, 0x104033a

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const p1, 0x1040339

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lcom/android/internal/app/MediaRouteChooserDialog;->isLightTheme(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const v1, 0x1080444

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const v1, 0x1080443

    .line 52
    .line 53
    .line 54
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p1, p0, v0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserDialog;Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    .line 67
    .line 68
    const p1, 0x10202f3

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/ListView;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mListView:Landroid/widget/ListView;

    .line 92
    .line 93
    const v0, 0x1020004

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    const p1, 0x10202f2

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/Button;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsButton:Landroid/widget/Button;

    .line 113
    .line 114
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onFilterRoute(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public refreshRoutes()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/internal/app/MediaRouteChooserDialog$RouteAdapter;->update()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mExtendedSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->updateExtendedSettingsButton()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouteTypes:I

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mAttachedToWindow:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mRouter:Landroid/media/MediaRouter;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialog;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialog$MediaRouterCallback;

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialog;->refreshRoutes()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method
