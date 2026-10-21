.class public Lj/i;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/i$c;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/MediaRouter;

.field public final b:Lj/i$c;

.field public final c:Landroid/media/MediaRouter$RouteInfo;

.field public d:Z

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Z

.field public i:Landroid/widget/LinearLayout;

.field public j:Landroid/widget/SeekBar;

.field public k:Z

.field public l:Landroid/view/View;

.field public m:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lj/i;->h:Z

    const-string p2, "media_router"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lj/i;->a:Landroid/media/MediaRouter;

    .line 4
    new-instance p2, Lj/i$c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lj/i$c;-><init>(Lj/i;Lj/i$a;)V

    iput-object p2, p0, Lj/i;->b:Lj/i$c;

    .line 5
    invoke-virtual {p1}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object p1

    iput-object p1, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    return-void
.end method

.method public static synthetic a(Lj/i;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lj/i;->k:Z

    return p0
.end method

.method public static synthetic b(Lj/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lj/i;->k:Z

    return p1
.end method

.method public static synthetic c(Lj/i;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj/i;->l()V

    return-void
.end method

.method public static synthetic d(Lj/i;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/i;->j:Landroid/widget/SeekBar;

    return-object p0
.end method

.method public static synthetic e(Lj/i;)Landroid/media/MediaRouter$RouteInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    return-object p0
.end method

.method public static synthetic f(Lj/i;)Landroid/media/MediaRouter;
    .locals 0

    .line 1
    iget-object p0, p0, Lj/i;->a:Landroid/media/MediaRouter;

    return-object p0
.end method

.method public static synthetic g(Lj/i;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj/i;->k()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final h()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lj/i;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108031f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lj/i;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    :cond_0
    iget-object v0, p0, Lj/i;->e:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lj/i;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108032d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lj/i;->f:Landroid/graphics/drawable/Drawable;

    .line 7
    :cond_2
    iget-object v0, p0, Lj/i;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/i;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public j(Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lj/i;->l()V

    .line 4
    invoke-virtual {p0}, Lj/i;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lj/i;->g:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 6
    iput-object v0, p0, Lj/i;->g:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    return v0
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lj/i;->k:Z

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lj/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lj/i;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lj/i;->j:Landroid/widget/SeekBar;

    iget-object v1, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 5
    iget-object v0, p0, Lj/i;->j:Landroid/widget/SeekBar;

    iget-object v1, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lj/i;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lj/i;->a:Landroid/media/MediaRouter;

    iget-object v1, p0, Lj/i;->b:Lj/i$c;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 3
    invoke-virtual {p0}, Lj/i;->k()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x109005d

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    const v0, 0x10202dc

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lj/i;->i:Landroid/widget/LinearLayout;

    const v0, 0x10202dd

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lj/i;->j:Landroid/widget/SeekBar;

    .line 6
    new-instance v1, Lj/i$a;

    invoke-direct {v1, p0}, Lj/i$a;-><init>(Lj/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v0, 0x10202df

    .line 7
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lj/i;->m:Landroid/widget/Button;

    .line 8
    new-instance v1, Lj/i$b;

    invoke-direct {v1, p0}, Lj/i$b;-><init>(Lj/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lj/i;->d:Z

    .line 10
    invoke-virtual {p0}, Lj/i;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lj/i;->j(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lj/i;->l:Landroid/view/View;

    const p1, 0x10202de

    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 13
    iget-object v0, p0, Lj/i;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/i;->a:Landroid/media/MediaRouter;

    iget-object v1, p0, Lj/i;->b:Lj/i$c;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 2
    :cond_1
    :goto_0
    iget-object p2, p0, Lj/i;->c:Landroid/media/MediaRouter$RouteInfo;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    move p1, v1

    :goto_1
    invoke-virtual {p2, p1}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 v0, 0x19

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
