.class public final Lcom/android/internal/view/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem;


# static fields
.field public static A:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public g:Landroid/content/Intent;

.field public h:C

.field public i:C

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:I

.field public l:Lcom/android/internal/view/menu/c;

.field public m:Lcom/android/internal/view/menu/h;

.field public n:Ljava/lang/Runnable;

.field public o:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public p:I

.field public q:I

.field public r:Landroid/view/View;

.field public s:Landroid/view/ActionProvider;

.field public t:Landroid/view/MenuItem$OnActionExpandListener;

.field public u:Z

.field public v:Landroid/view/ContextMenu$ContextMenuInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/c;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/internal/view/menu/d;->k:I

    const/16 v1, 0x10

    .line 3
    iput v1, p0, Lcom/android/internal/view/menu/d;->p:I

    .line 4
    iput v0, p0, Lcom/android/internal/view/menu/d;->q:I

    .line 5
    iput-boolean v0, p0, Lcom/android/internal/view/menu/d;->u:Z

    .line 6
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/android/internal/view/menu/d;->x:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/view/menu/d;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    :cond_0
    sput-object v0, Lcom/android/internal/view/menu/d;->w:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/d;->x:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/d;->y:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/d;->z:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/view/menu/d;->A:Ljava/lang/String;

    .line 13
    :cond_1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    .line 14
    iput p3, p0, Lcom/android/internal/view/menu/d;->a:I

    .line 15
    iput p2, p0, Lcom/android/internal/view/menu/d;->b:I

    .line 16
    iput p4, p0, Lcom/android/internal/view/menu/d;->c:I

    .line 17
    iput p5, p0, Lcom/android/internal/view/menu/d;->d:I

    .line 18
    iput-object p6, p0, Lcom/android/internal/view/menu/d;->e:Ljava/lang/CharSequence;

    .line 19
    iput p7, p0, Lcom/android/internal/view/menu/d;->q:I

    return-void
.end method

.method public static synthetic a(Lcom/android/internal/view/menu/d;)Lcom/android/internal/view/menu/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/c;->B(Lcom/android/internal/view/menu/d;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->d:I

    return v0
.end method

.method public collapseActionView()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->q:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->r:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->t:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 4
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/c;->e(Lcom/android/internal/view/menu/d;)Z

    move-result v0

    return v0
.end method

.method public d()C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/android/internal/view/menu/d;->i:C

    goto :goto_0

    :cond_0
    iget-char v0, p0, Lcom/android/internal/view/menu/d;->h:C

    :goto_0
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/d;->d()C

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/view/menu/d;->x:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lcom/android/internal/view/menu/d;->A:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_2
    sget-object v0, Lcom/android/internal/view/menu/d;->y:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_3
    sget-object v0, Lcom/android/internal/view/menu/d;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public expandActionView()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/d;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->t:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/c;->i(Lcom/android/internal/view/menu/d;)Z

    move-result v0

    return v0
.end method

.method public f(Lcom/android/internal/view/menu/g$a;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Lcom/android/internal/view/menu/g$a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/d;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/d;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public g()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->q:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->r:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/d;->r:Landroid/view/View;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->r:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->r:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/ActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/d;->r:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/android/internal/view/menu/d;->i:C

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->b:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/internal/view/menu/d;->k:I

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->w()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/menu/d;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcom/android/internal/view/menu/d;->k:I

    .line 5
    iput-object v0, p0, Lcom/android/internal/view/menu/d;->j:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->g:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->a:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/android/internal/view/menu/d;->h:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->c:I

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->m:Lcom/android/internal/view/menu/h;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->f:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->e:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method public h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->x()Lcom/android/internal/view/menu/c;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/android/internal/view/menu/c;->f(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->g:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/view/menu/d;->g:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 7
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ActionProvider;->onPerformDefaultAction()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->m:Lcom/android/internal/view/menu/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/internal/view/menu/d;->u:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    invoke-virtual {v0}, Landroid/view/ActionProvider;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->q:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public l()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->q:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v1, v0, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    or-int/2addr p1, v1

    .line 2
    iput p1, p0, Lcom/android/internal/view/menu/d;->p:I

    if-eq v0, p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {p1, v2}, Lcom/android/internal/view/menu/c;->D(Z)V

    :cond_1
    return-void
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/view/menu/d;->p:I

    return-void
.end method

.method public o(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/android/internal/view/menu/d;->p:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/internal/view/menu/d;->p:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Lcom/android/internal/view/menu/d;->p:I

    :goto_0
    return-void
.end method

.method public p(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->v:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public q(Lcom/android/internal/view/menu/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->m:Lcom/android/internal/view/menu/h;

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/d;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/h;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public r(Z)Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v1, v0, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    .line 2
    iput p1, p0, Lcom/android/internal/view/menu/d;->p:I

    if-eq v0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->u()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    .line 3
    :cond_0
    iput-object v1, p0, Lcom/android/internal/view/menu/d;->r:Landroid/view/View;

    .line 4
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    .line 5
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    .line 6
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    if-eqz p1, :cond_1

    .line 7
    new-instance v0, Lcom/android/internal/view/menu/d$a;

    invoke-direct {v0, p0}, Lcom/android/internal/view/menu/d$a;-><init>(Lcom/android/internal/view/menu/d;)V

    invoke-virtual {p1, v0}, Landroid/view/ActionProvider;->setVisibilityListener(Landroid/view/ActionProvider$VisibilityListener;)V

    :cond_1
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 3

    .line 6
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 8
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/d;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->r:Landroid/view/View;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/internal/view/menu/d;->s:Landroid/view/ActionProvider;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/view/menu/d;->a:I

    if-lez v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/c;->B(Lcom/android/internal/view/menu/d;)V

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/android/internal/view/menu/d;->i:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/android/internal/view/menu/d;->i:C

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v1, v0, -0x2

    or-int/2addr p1, v1

    .line 2
    iput p1, p0, Lcom/android/internal/view/menu/d;->p:I

    if-eq v0, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/c;->K(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/d;->m(Z)V

    :goto_0
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/android/internal/view/menu/d;->p:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/internal/view/menu/d;->p:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/android/internal/view/menu/d;->p:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Lcom/android/internal/view/menu/d;->p:I

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/android/internal/view/menu/d;->j:Landroid/graphics/drawable/Drawable;

    .line 5
    iput p1, p0, Lcom/android/internal/view/menu/d;->k:I

    .line 6
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/internal/view/menu/d;->k:I

    .line 2
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->j:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->g:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-char v0, p0, Lcom/android/internal/view/menu/d;->h:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iput-char p1, p0, Lcom/android/internal/view/menu/d;->h:C

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->t:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->o:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 1
    iput-char p1, p0, Lcom/android/internal/view/menu/d;->h:C

    .line 2
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Lcom/android/internal/view/menu/d;->i:C

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/internal/view/menu/d;->q:I

    .line 3
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/c;->B(Lcom/android/internal/view/menu/d;)V

    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/d;->setShowAsAction(I)V

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/d;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    return-object p1
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->e:Ljava/lang/CharSequence;

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/c;->D(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->m:Lcom/android/internal/view/menu/h;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/h;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/d;->f:Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/c;->D(Z)V

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/d;->r(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/c;->C(Lcom/android/internal/view/menu/d;)V

    :cond_0
    return-object p0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->l:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/d;->d()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/d;->e:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/internal/view/menu/d;->q:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
