.class public Lcom/android/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/g$a;


# instance fields
.field public a:Lcom/android/internal/view/menu/d;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/RadioButton;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/CheckBox;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:I

.field public i:Landroid/content/Context;

.field public j:Z

.field public k:I

.field public l:Landroid/view/LayoutInflater;

.field public m:Z


# direct methods
.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->l:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->l:Landroid/view/LayoutInflater;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->l:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/android/internal/view/menu/d;I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    .line 2
    iput p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->k:I

    .line 3
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/d;->f(Lcom/android/internal/view/menu/g$a;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    .line 6
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->t()Z

    move-result p2

    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->d()C

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/view/menu/ListMenuItemView;->k(ZC)V

    .line 7
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 8
    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090056

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090057

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090059

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public k(ZC)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    invoke-virtual {p1}, Lcom/android/internal/view/menu/d;->t()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    if-nez p1, :cond_1

    .line 2
    iget-object p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_1
    iget-object p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_2

    .line 4
    iget-object p2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x1020016

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    .line 4
    iget v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->i:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    const v0, 0x10202d1

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->f:Landroid/widget/TextView;

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->j:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 5
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->j()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    .line 6
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->h()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 10
    iget-object v1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_6

    .line 11
    iget-object v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/d;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    move p1, v2

    .line 12
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, p1, :cond_5

    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz v1, :cond_8

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_8

    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 16
    :cond_6
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-eqz p1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->j()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->c:Landroid/widget/RadioButton;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->h()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->e:Landroid/widget/CheckBox;

    .line 8
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->m:Z

    iput-boolean p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->j:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->a:Lcom/android/internal/view/menu/d;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/d;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->m:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->j:Z

    if-nez v2, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ListMenuItemView;->j:Z

    if-nez v3, :cond_3

    return-void

    :cond_3
    if-nez v2, :cond_4

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ListMenuItemView;->i()V

    :cond_4
    if-nez p1, :cond_6

    .line 5
    iget-boolean v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->j:Z

    if-eqz v2, :cond_5

    goto :goto_2

    .line 6
    :cond_5
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 7
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/android/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    .line 9
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/internal/view/menu/ListMenuItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
