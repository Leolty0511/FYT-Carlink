.class public Lj/h;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string/jumbo v0, "routeTypes"

    .line 2
    iput-object v0, p0, Lj/h;->a:Ljava/lang/String;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setCancelable(Z)V

    const/4 v0, 0x0

    const v1, 0x103012e

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "routeTypes"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Landroid/content/Context;Landroid/os/Bundle;)Lj/g;
    .locals 1

    .line 1
    new-instance p2, Lj/g;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTheme()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lj/g;-><init>(Landroid/content/Context;I)V

    return-object p2
.end method

.method public c(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/h;->b:Landroid/view/View$OnClickListener;

    if-eq p1, v0, :cond_0

    .line 2
    iput-object p1, p0, Lj/h;->b:Landroid/view/View$OnClickListener;

    .line 3
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lj/g;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lj/g;->d(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj/h;->a()I

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string/jumbo v1, "routeTypes"

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lj/g;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lj/g;->e(I)V

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lj/h;->b(Landroid/content/Context;Landroid/os/Bundle;)Lj/g;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lj/h;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lj/g;->e(I)V

    .line 3
    iget-object v0, p0, Lj/h;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lj/g;->d(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
