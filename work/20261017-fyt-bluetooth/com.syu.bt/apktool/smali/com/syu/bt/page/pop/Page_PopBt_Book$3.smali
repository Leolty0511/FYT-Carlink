.class Lcom/syu/bt/page/pop/Page_PopBt_Book$3;
.super Ljava/lang/Object;
.source "Page_PopBt_Book.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopBt_Book;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/SparseArray",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Landroid/util/SparseArray;Landroid/util/SparseArray;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "lhs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p2, "rhs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v6, 0x281d

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 351
    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 352
    .local v0, "lName":Ljava/lang/String;
    invoke-virtual {p2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 353
    .local v3, "rName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 354
    if-eqz v3, :cond_1

    .line 371
    :cond_0
    :goto_0
    return v4

    .line 357
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 360
    :cond_2
    if-nez v3, :cond_3

    move v4, v5

    .line 361
    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 364
    .local v1, "len1":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 365
    .local v2, "len2":I
    if-lt v1, v2, :cond_0

    .line 368
    if-le v1, v2, :cond_4

    move v4, v5

    .line 369
    goto :goto_0

    .line 371
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/util/SparseArray;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/syu/bt/page/pop/Page_PopBt_Book$3;->compare(Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v0

    return v0
.end method
