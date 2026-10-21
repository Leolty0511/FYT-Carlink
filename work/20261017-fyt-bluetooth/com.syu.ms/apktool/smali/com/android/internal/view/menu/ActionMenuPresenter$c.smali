.class public Lcom/android/internal/view/menu/ActionMenuPresenter$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

.field public final synthetic b:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$c;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$c;->a:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$c;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/a;->c:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->c()V

    .line 2
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$c;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/view/menu/a;->i:Lcom/android/internal/view/menu/g;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$c;->a:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$c;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$c;->a:Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->r(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$e;)Lcom/android/internal/view/menu/ActionMenuPresenter$e;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$c;->b:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->t(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$c;)Lcom/android/internal/view/menu/ActionMenuPresenter$c;

    return-void
.end method
