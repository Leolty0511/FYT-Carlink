.class Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
.super Landroid/view/ActionMode;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/view/menu/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/ExtractEditLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtractActionMode"
.end annotation


# instance fields
.field private mCallback:Landroid/view/ActionMode$Callback;

.field public mMenu:Lcom/android/internal/view/menu/c;

.field public final synthetic this$0:Landroid/inputmethodservice/ExtractEditLayout;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/ExtractEditLayout;Landroid/view/ActionMode$Callback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 2
    new-instance v0, Lcom/android/internal/view/menu/c;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    .line 3
    invoke-virtual {v0, p0}, Lcom/android/internal/view/menu/c;->H(Lcom/android/internal/view/menu/c$a;)V

    .line 4
    iput-object p2, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    return-void
.end method


# virtual methods
.method public dispatchOnCreate()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->T()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/c;->S()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/c;->S()V

    throw v0
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v0, v0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    .line 4
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iget-object v1, v1, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 7
    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    iput-object v0, v1, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->this$0:Landroid/inputmethodservice/ExtractEditLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->T()V

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/c;->S()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mMenu:Lcom/android/internal/view/menu/c;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/c;->S()V

    throw v0
.end method

.method public isTitleOptional()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemSelected(Lcom/android/internal/view/menu/c;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onMenuModeChange(Lcom/android/internal/view/menu/c;)V
    .locals 0

    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setSubtitle(I)V
    .locals 0

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(I)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
