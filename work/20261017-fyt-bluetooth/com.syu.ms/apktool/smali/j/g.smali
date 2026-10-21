.class public Lj/g;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/g$d;,
        Lj/g$b;,
        Lj/g$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/MediaRouter;

.field public final b:Lj/g$b;

.field public c:I

.field public d:Landroid/view/View$OnClickListener;

.field public e:Lj/g$c;

.field public f:Landroid/widget/ListView;

.field public g:Landroid/widget/Button;

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p2, "media_router"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lj/g;->a:Landroid/media/MediaRouter;

    .line 3
    new-instance p1, Lj/g$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lj/g$b;-><init>(Lj/g;Lj/g$a;)V

    iput-object p1, p0, Lj/g;->b:Lj/g$b;

    return-void
.end method

.method public static synthetic a(Lj/g;)Landroid/media/MediaRouter;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/g;->a:Landroid/media/MediaRouter;

    return-object p0
.end method


# virtual methods
.method public b(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lj/g;->c:I

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

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lj/g;->h:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/g;->e:Lj/g$c;

    invoke-virtual {v0}, Lj/g$c;->a()V

    :cond_0
    return-void
.end method

.method public d(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/g;->d:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lj/g;->d:Landroid/view/View$OnClickListener;

    .line 3
    invoke-virtual {p0}, Lj/g;->f()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 3

    .line 1
    iget v0, p0, Lj/g;->c:I

    if-eq v0, p1, :cond_1

    .line 2
    iput p1, p0, Lj/g;->c:I

    .line 3
    iget-boolean v0, p0, Lj/g;->h:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lj/g;->a:Landroid/media/MediaRouter;

    iget-object v1, p0, Lj/g;->b:Lj/g$b;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 5
    iget-object v0, p0, Lj/g;->a:Landroid/media/MediaRouter;

    iget-object v1, p0, Lj/g;->b:Lj/g$b;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lj/g;->c()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/g;->g:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lj/g;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lj/g;->g:Landroid/widget/Button;

    iget-object v1, p0, Lj/g;->d:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lj/g;->h:Z

    .line 3
    iget-object v1, p0, Lj/g;->a:Landroid/media/MediaRouter;

    iget v2, p0, Lj/g;->c:I

    iget-object v3, p0, Lj/g;->b:Lj/g$b;

    invoke-virtual {v1, v2, v3, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 4
    invoke-virtual {p0}, Lj/g;->c()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    const p1, 0x109005c

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    iget p1, p0, Lj/g;->c:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const p1, 0x104054c

    goto :goto_0

    :cond_0
    const p1, 0x104054b

    :goto_0
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v1, 0x1080325

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 6
    new-instance p1, Lj/g$c;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lj/g$c;-><init>(Lj/g;Landroid/content/Context;)V

    iput-object p1, p0, Lj/g;->e:Lj/g$c;

    const p1, 0x10202da

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lj/g;->f:Landroid/widget/ListView;

    .line 8
    iget-object v0, p0, Lj/g;->e:Lj/g$c;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 9
    iget-object p1, p0, Lj/g;->f:Landroid/widget/ListView;

    iget-object v0, p0, Lj/g;->e:Lj/g$c;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 10
    iget-object p1, p0, Lj/g;->f:Landroid/widget/ListView;

    const v0, 0x1020004

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    const p1, 0x10202db

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lj/g;->g:Landroid/widget/Button;

    .line 12
    invoke-virtual {p0}, Lj/g;->f()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lj/g;->h:Z

    .line 2
    iget-object v0, p0, Lj/g;->a:Landroid/media/MediaRouter;

    iget-object v1, p0, Lj/g;->b:Lj/g$b;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 3
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method
