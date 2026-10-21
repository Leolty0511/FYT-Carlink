.class Lcom/syu/bt/db/Bt_Info$4;
.super Ljava/lang/Object;
.source "Bt_Info.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/db/Bt_Info;
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
    .line 594
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
    const/16 v5, 0x281c

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/16 v6, 0x41

    const/4 v3, 0x0

    .line 597
    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 598
    .local v0, "lName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 599
    .local v1, "rName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 600
    if-eqz v1, :cond_1

    .line 618
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 603
    goto :goto_0

    .line 606
    :cond_2
    if-nez v1, :cond_3

    move v2, v4

    .line 607
    goto :goto_0

    .line 609
    :cond_3
    sget-boolean v5, Lcom/syu/bt/db/Bt_Info;->bIsTR:Z

    if-eqz v5, :cond_6

    .line 610
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ge v5, v6, :cond_4

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4

    move v2, v4

    .line 611
    goto :goto_0

    .line 612
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_0

    .line 615
    :cond_5
    sget-object v2, Lcom/syu/bt/db/Bt_Info;->collator_TR:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 618
    :cond_6
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/util/SparseArray;

    check-cast p2, Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Lcom/syu/bt/db/Bt_Info$4;->compare(Landroid/util/SparseArray;Landroid/util/SparseArray;)I

    move-result v0

    return v0
.end method
