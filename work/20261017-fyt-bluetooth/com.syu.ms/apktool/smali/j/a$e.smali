.class public Lj/a$e;
.super Landroid/app/ActionBar$Tab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public a:Landroid/app/ActionBar$TabListener;

.field public b:Ljava/lang/Object;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:I

.field public g:Landroid/view/View;

.field public final synthetic h:Lj/a;


# direct methods
.method public constructor <init>(Lj/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a$e;->h:Lj/a;

    invoke-direct {p0}, Landroid/app/ActionBar$Tab;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lj/a$e;->f:I

    return-void
.end method


# virtual methods
.method public a()Landroid/app/ActionBar$TabListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$e;->a:Landroid/app/ActionBar$TabListener;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lj/a$e;->f:I

    return-void
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$e;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$e;->g:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$e;->c:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lj/a$e;->f:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$e;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$e;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$e;->h:Lj/a;

    invoke-virtual {v0, p0}, Lj/a;->selectTab(Landroid/app/ActionBar$Tab;)V

    return-void
.end method

.method public setContentDescription(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/a$e;->h:Lj/a;

    invoke-static {v0}, Lj/a;->e(Lj/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a$e;->setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 2
    iput-object p1, p0, Lj/a$e;->e:Ljava/lang/CharSequence;

    .line 3
    iget p1, p0, Lj/a$e;->f:I

    if-ltz p1, :cond_0

    .line 4
    iget-object p1, p0, Lj/a$e;->h:Lj/a;

    invoke-static {p1}, Lj/a;->f(Lj/a;)Lcom/android/internal/widget/g;

    move-result-object p1

    iget v0, p0, Lj/a$e;->f:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/g;->v(I)V

    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Landroid/app/ActionBar$Tab;
    .locals 2

    .line 4
    iget-object v0, p0, Lj/a$e;->h:Lj/a;

    invoke-virtual {v0}, Lj/a;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a$e;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1
    iput-object p1, p0, Lj/a$e;->g:Landroid/view/View;

    .line 2
    iget p1, p0, Lj/a$e;->f:I

    if-ltz p1, :cond_0

    .line 3
    iget-object p1, p0, Lj/a$e;->h:Lj/a;

    invoke-static {p1}, Lj/a;->f(Lj/a;)Lcom/android/internal/widget/g;

    move-result-object p1

    iget v0, p0, Lj/a$e;->f:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/g;->v(I)V

    :cond_0
    return-object p0
.end method

.method public setIcon(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 4
    iget-object v0, p0, Lj/a$e;->h:Lj/a;

    invoke-static {v0}, Lj/a;->e(Lj/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a$e;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1
    iput-object p1, p0, Lj/a$e;->c:Landroid/graphics/drawable/Drawable;

    .line 2
    iget p1, p0, Lj/a$e;->f:I

    if-ltz p1, :cond_0

    .line 3
    iget-object p1, p0, Lj/a$e;->h:Lj/a;

    invoke-static {p1}, Lj/a;->f(Lj/a;)Lcom/android/internal/widget/g;

    move-result-object p1

    iget v0, p0, Lj/a$e;->f:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/g;->v(I)V

    :cond_0
    return-object p0
.end method

.method public setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a$e;->a:Landroid/app/ActionBar$TabListener;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;
    .locals 0

    .line 1
    iput-object p1, p0, Lj/a$e;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 4
    iget-object v0, p0, Lj/a$e;->h:Lj/a;

    invoke-static {v0}, Lj/a;->e(Lj/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/a$e;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;
    .locals 1

    .line 1
    iput-object p1, p0, Lj/a$e;->d:Ljava/lang/CharSequence;

    .line 2
    iget p1, p0, Lj/a$e;->f:I

    if-ltz p1, :cond_0

    .line 3
    iget-object p1, p0, Lj/a$e;->h:Lj/a;

    invoke-static {p1}, Lj/a;->f(Lj/a;)Lcom/android/internal/widget/g;

    move-result-object p1

    iget v0, p0, Lj/a$e;->f:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/g;->v(I)V

    :cond_0
    return-object p0
.end method
