.class Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItemLayoutInfo"
.end annotation


# instance fields
.field left:I

.field top:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    iget p2, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    .line 19
    .line 20
    int-to-float p2, p2

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    add-float/2addr v0, p2

    .line 26
    float-to-int p2, v0

    .line 27
    iput p2, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    .line 28
    .line 29
    iget p2, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    .line 30
    .line 31
    int-to-float p2, p2

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    add-float/2addr v0, p2

    .line 37
    float-to-int p2, v0

    .line 38
    iput p2, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    .line 39
    .line 40
    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    .line 41
    .line 42
    return-void
.end method
