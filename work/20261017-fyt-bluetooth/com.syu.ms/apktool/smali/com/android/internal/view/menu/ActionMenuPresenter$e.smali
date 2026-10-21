.class public Lcom/android/internal/view/menu/ActionMenuPresenter$e;
.super Lcom/android/internal/view/menu/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic p:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$e;->p:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/view/menu/e;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/c;Landroid/view/View;Z)V

    const p2, 0x800005

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/internal/view/menu/e;->q(I)V

    .line 4
    iget-object p1, p1, Lcom/android/internal/view/menu/ActionMenuPresenter;->z:Lcom/android/internal/view/menu/ActionMenuPresenter$f;

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/e;->o(Lcom/android/internal/view/menu/f$a;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/internal/view/menu/e;->onDismiss()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$e;->p:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->close()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$e;->p:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->r(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$e;)Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    return-void
.end method
