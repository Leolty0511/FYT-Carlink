.class public Lj/j;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/DialogFragment;->setCancelable(Z)V

    const/4 v0, 0x0

    const v1, 0x103012e

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/app/DialogFragment;->setStyle(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;)Lj/i;
    .locals 1

    .line 1
    new-instance p2, Lj/i;

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getTheme()I

    move-result v0

    invoke-direct {p2, p1, v0}, Lj/i;-><init>(Landroid/content/Context;I)V

    return-object p2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lj/j;->a(Landroid/content/Context;Landroid/os/Bundle;)Lj/i;

    move-result-object p1

    return-object p1
.end method
