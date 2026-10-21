.class public Lcom/android/internal/view/menu/h;
.super Lcom/android/internal/view/menu/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public y:Lcom/android/internal/view/menu/c;

.field public z:Lcom/android/internal/view/menu/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Lcom/android/internal/view/menu/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/c;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    .line 3
    iput-object p3, p0, Lcom/android/internal/view/menu/h;->z:Lcom/android/internal/view/menu/d;

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->A()Z

    move-result v0

    return v0
.end method

.method public H(Lcom/android/internal/view/menu/c$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/c;->H(Lcom/android/internal/view/menu/c$a;)V

    return-void
.end method

.method public U()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    return-object v0
.end method

.method public e(Lcom/android/internal/view/menu/d;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/c;->e(Lcom/android/internal/view/menu/d;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/c;->f(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/view/menu/c;->f(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->z:Lcom/android/internal/view/menu/d;

    return-object v0
.end method

.method public i(Lcom/android/internal/view/menu/d;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/c;->i(Lcom/android/internal/view/menu/d;)Z

    move-result p1

    return p1
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/c;->L(I)Lcom/android/internal/view/menu/c;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/c;->M(Landroid/graphics/drawable/Drawable;)Lcom/android/internal/view/menu/c;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/c;->O(I)Lcom/android/internal/view/menu/c;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/c;->P(Ljava/lang/CharSequence;)Lcom/android/internal/view/menu/c;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/c;->Q(Landroid/view/View;)Lcom/android/internal/view/menu/c;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->z:Lcom/android/internal/view/menu/d;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/d;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->z:Lcom/android/internal/view/menu/d;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/d;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/c;->setQwertyMode(Z)V

    return-void
.end method

.method public x()Lcom/android/internal/view/menu/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/h;->y:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->z()Z

    move-result v0

    return v0
.end method
