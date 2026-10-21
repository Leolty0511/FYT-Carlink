.class public Lcom/android/internal/widget/AccountItemView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mAccountIcon:Landroid/widget/ImageView;

.field private mAccountName:Landroid/widget/TextView;

.field private mAccountNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AccountItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "layout_inflater"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const p2, 0x10900e8

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/android/internal/widget/AccountItemView;->initViewItem(Landroid/view/View;)V

    return-void
.end method

.method private initViewItem(Landroid/view/View;)V
    .locals 1

    .line 1
    const v0, 0x1020006

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v0, 0x1020016

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x1020010

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    .line 33
    .line 34
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/16 p2, 0x8

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x0

    .line 17
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method


# virtual methods
.method public setAccountIcon(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setAccountIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountName:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AccountItemView;->mAccountNumber:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/AccountItemView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    return-void
.end method

.method public setViewItem(Lcom/android/internal/widget/AccountViewAdapter$AccountElements;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getIcon()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AccountItemView;->setAccountIcon(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AccountItemView;->setAccountName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->getNumber()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/AccountItemView;->setAccountNumber(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
