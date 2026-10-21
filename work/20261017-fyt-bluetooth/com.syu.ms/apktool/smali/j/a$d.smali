.class public Lj/a$d;
.super Landroid/view/ActionMode;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Landroid/view/ActionMode$Callback;

.field public b:Lcom/android/internal/view/menu/c;

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lj/a;


# direct methods
.method public constructor <init>(Lj/a;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a$d;->d:Lj/a;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    iput-object p2, p0, Lj/a$d;->a:Landroid/view/ActionMode$Callback;

    .line 3
    new-instance p2, Lcom/android/internal/view/menu/c;

    invoke-virtual {p1}, Lj/a;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/internal/view/menu/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/android/internal/view/menu/c;->J(I)Lcom/android/internal/view/menu/c;

    move-result-object p1

    iput-object p1, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/c;->H(Lcom/android/internal/view/menu/c$a;)V

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->T()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/a$d;->a:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/c;->S()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/c;->S()V

    throw v0
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    iget-object v1, v0, Lj/a;->p:Lj/a$d;

    if-eq v1, p0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {v0}, Lj/a;->l(Lj/a;)Z

    move-result v0

    iget-object v1, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v1}, Lj/a;->m(Lj/a;)Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lj/a;->n(ZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    iput-object p0, v0, Lj/a;->q:Landroid/view/ActionMode;

    .line 4
    iget-object v1, p0, Lj/a$d;->a:Landroid/view/ActionMode$Callback;

    iput-object v1, v0, Lj/a;->r:Landroid/view/ActionMode$Callback;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lj/a$d;->a:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :goto_0
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lj/a$d;->a:Landroid/view/ActionMode$Callback;

    .line 7
    iget-object v1, p0, Lj/a$d;->d:Lj/a;

    invoke-virtual {v1, v2}, Lj/a;->o(Z)V

    .line 8
    iget-object v1, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v1}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->o()V

    .line 9
    iget-object v1, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v1}, Lj/a;->d(Lj/a;)Lcom/android/internal/widget/ActionBarView;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 10
    iget-object v1, p0, Lj/a$d;->d:Lj/a;

    iput-object v0, v1, Lj/a;->p:Lj/a$d;

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$d;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lj/a$d;->d:Lj/a;

    invoke-virtual {v1}, Lj/a;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->T()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lj/a$d;->a:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->S()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lj/a$d;->b:Lcom/android/internal/view/menu/c;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/c;->S()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContextView;->s()Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lj/a$d;->a:Landroid/view/ActionMode$Callback;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/c;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lj/a$d;->a:Landroid/view/ActionMode$Callback;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lj/a$d;->invalidate()V

    .line 3
    iget-object p1, p0, Lj/a$d;->d:Lj/a;

    invoke-static {p1}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/ActionBarContextView;->n()Z

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lj/a$d;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->e(Lj/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a$d;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->e(Lj/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a$d;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 2
    iget-object v0, p0, Lj/a$d;->d:Lj/a;

    invoke-static {v0}, Lj/a;->c(Lj/a;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
