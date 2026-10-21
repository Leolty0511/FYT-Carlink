.class Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
.super Lcom/android/internal/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlledInputConnectionWrapper"
.end annotation


# instance fields
.field private mActive:Z

.field private final mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/a;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V

    .line 2
    iput-object p3, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    return-void
.end method


# virtual methods
.method public deactivate()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    return-void
.end method

.method public isActive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-boolean v0, v0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->mActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
