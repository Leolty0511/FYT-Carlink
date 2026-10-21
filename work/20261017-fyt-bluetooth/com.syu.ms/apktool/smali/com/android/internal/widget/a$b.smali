.class public Lcom/android/internal/widget/a$b;
.super Lcom/android/internal/widget/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final s:Landroid/widget/AbsListView;


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/internal/widget/a;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/android/internal/widget/a$b;->s:Landroid/widget/AbsListView;

    return-void
.end method


# virtual methods
.method public m(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public n(I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/a$b;->s:Landroid/widget/AbsListView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    add-int v4, v3, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez p1, :cond_0

    if-lt v4, v1, :cond_1

    sub-int/2addr v2, v5

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gt p1, v0, :cond_1

    return v6

    :cond_0
    if-gez p1, :cond_2

    if-gtz v3, :cond_1

    .line 7
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-ltz p1, :cond_1

    return v6

    :cond_1
    return v5

    :cond_2
    return v6
.end method

.method public v(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/a$b;->s:Landroid/widget/AbsListView;

    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->scrollListBy(I)V

    return-void
.end method
