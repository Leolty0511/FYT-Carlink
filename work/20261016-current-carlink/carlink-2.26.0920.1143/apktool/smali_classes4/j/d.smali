.class public final Lj/d;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lj/d;->a:I

    iput v0, p0, Lj/d;->b:I

    return-void
.end method


# virtual methods
.method public final getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const-string p4, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager"

    .line 30
    .line 31
    invoke-static {p3, p4}, Lt/b;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast p3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 35
    .line 36
    invoke-virtual {p3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    rem-int/2addr p2, p3

    .line 41
    iget p4, p0, Lj/d;->a:I

    .line 42
    .line 43
    mul-int v0, p4, p2

    .line 44
    .line 45
    div-int/2addr v0, p3

    .line 46
    sub-int p2, p3, p2

    .line 47
    .line 48
    add-int/lit8 p2, p2, -0x1

    .line 49
    .line 50
    mul-int/2addr p2, p4

    .line 51
    div-int/2addr p2, p3

    .line 52
    iget p3, p0, Lj/d;->b:I

    .line 53
    .line 54
    const/4 p4, 0x0

    .line 55
    invoke-virtual {p1, v0, p4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
