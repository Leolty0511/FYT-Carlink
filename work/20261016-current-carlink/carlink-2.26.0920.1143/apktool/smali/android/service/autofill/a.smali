.class public final synthetic Landroid/service/autofill/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;
.implements Landroidx/constraintlayout/core/state/Interpolator;
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroid/service/autofill/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final executeMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/service/autofill/AutofillService;

    invoke-static {v0, p1}, Landroid/service/autofill/AutofillService;->a(Landroid/service/autofill/AutofillService;Landroid/os/Message;)V

    return-void
.end method

.method public final getInterpolation(F)F
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/constraintlayout/core/state/Transition;->f(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/service/autofill/a;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lcom/syu/carlink/ui/a;

    .line 4
    .line 5
    const-string v0, "$window"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p1, Lcom/syu/carlink/ui/a;->e:Lz/l;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-interface {p1, p2}, Lz/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1, p2, p3}, Landroidx/core/view/inputmethod/InputConnectionCompat;->a(Landroid/view/View;Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/view/FloatingActionMode;

    invoke-static {v0, p1}, Lcom/android/internal/view/FloatingActionMode;->a(Lcom/android/internal/view/FloatingActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
