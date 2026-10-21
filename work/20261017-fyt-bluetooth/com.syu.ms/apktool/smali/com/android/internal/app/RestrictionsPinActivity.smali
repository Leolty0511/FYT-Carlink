.class public Lcom/android/internal/app/RestrictionsPinActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public c:Landroid/os/UserManager;

.field public d:Z

.field public e:Landroid/widget/EditText;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/Button;

.field public h:Landroid/widget/Button;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/internal/app/RestrictionsPinActivity$a;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RestrictionsPinActivity$a;-><init>(Lcom/android/internal/app/RestrictionsPinActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic b(Lcom/android/internal/app/RestrictionsPinActivity;I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/internal/app/RestrictionsPinActivity;->f(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->b:Lcom/android/internal/app/AlertController$b;

    const v1, 0x10405e5

    .line 2
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$b;->f:Ljava/lang/CharSequence;

    const-string v1, "layout_inflater"

    .line 3
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x1090089

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$b;->v:Landroid/view/View;

    const v2, 0x1020318

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    .line 6
    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->v:Landroid/view/View;

    const v2, 0x1020317

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    .line 7
    iget-object v1, v0, Lcom/android/internal/app/AlertController$b;->v:Landroid/view/View;

    const v2, 0x102031a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->g:Landroid/widget/Button;

    .line 8
    iget-object v0, v0, Lcom/android/internal/app/AlertController$b;->v:Landroid/view/View;

    const v1, 0x1020319

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->h:Landroid/widget/Button;

    .line 9
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->c:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->checkRestrictionsChallenge(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    const v2, 0x10405e7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 5
    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->f(I)Z

    .line 7
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->g:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final f(I)Z
    .locals 6

    if-gez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->c:Landroid/os/UserManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->checkRestrictionsChallenge(Ljava/lang/String;)I

    move-result p1

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-lt p1, v1, :cond_2

    const v1, 0xea60

    const/16 v3, 0x3e8

    if-gt p1, v1, :cond_1

    add-int/lit16 v1, p1, 0xc8

    .line 2
    div-int/2addr v1, v3

    .line 3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130018

    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    .line 4
    iget-object v5, p0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    const v1, 0x10405ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->i:Ljava/lang/Runnable;

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-long v3, p1

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move v0, v2

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    const v1, 0x10405e7

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 10
    :goto_1
    iget-object p1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->e(Z)V

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->d()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "user"

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->c:Landroid/os/UserManager;

    .line 3
    invoke-virtual {p1}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->d:Z

    .line 4
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->c()V

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->a()V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->d()V

    const/4 p1, 0x1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/internal/app/RestrictionsPinActivity;->e(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->c:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->hasRestrictionsChallenge()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->f:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 6
    invoke-virtual {p0, v1}, Lcom/android/internal/app/RestrictionsPinActivity;->f(I)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/RestrictionsPinActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/RestrictionsPinActivity;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 p2, 0x4

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/RestrictionsPinActivity;->e(Z)V

    return-void
.end method
