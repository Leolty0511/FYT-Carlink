.class public Lcom/android/internal/widget/TextViewInputDisabler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mDefaultFilters:[Landroid/text/InputFilter;

.field private mNoInputFilters:[Landroid/text/InputFilter;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 6
    .line 7
    new-instance v1, Lcom/android/internal/widget/TextViewInputDisabler$1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/internal/widget/TextViewInputDisabler$1;-><init>(Lcom/android/internal/widget/TextViewInputDisabler;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    iput-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mNoInputFilters:[Landroid/text/InputFilter;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mDefaultFilters:[Landroid/text/InputFilter;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public setInputEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mDefaultFilters:[Landroid/text/InputFilter;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/internal/widget/TextViewInputDisabler;->mNoInputFilters:[Landroid/text/InputFilter;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
