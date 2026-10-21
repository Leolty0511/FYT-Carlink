.class public Landroid/inputmethodservice/ExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    }
.end annotation


# instance fields
.field public mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

.field public mEditButton:Landroid/widget/Button;

.field public mExtractActionButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public finishActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public isActionModeStarted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x10202c4

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const v0, 0x10202c5

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    .line 4
    new-instance v1, Landroid/inputmethodservice/ExtractEditLayout$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/ExtractEditLayout$1;-><init>(Landroid/inputmethodservice/ExtractEditLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .line 1
    new-instance p1, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-direct {p1, p0, p2}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;-><init>(Landroid/inputmethodservice/ExtractEditLayout;Landroid/view/ActionMode$Callback;)V

    .line 2
    invoke-virtual {p1}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->dispatchOnCreate()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->invalidate()V

    .line 4
    iget-object p2, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object p2, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    const/16 p2, 0x20

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
