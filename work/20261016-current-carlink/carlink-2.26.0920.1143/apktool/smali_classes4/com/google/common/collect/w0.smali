.class public abstract synthetic Lcom/google/common/collect/w0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/google/common/collect/RowSortedTable;)Ljava/util/Set;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/RowSortedTable;->rowKeySet()Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/google/common/collect/RowSortedTable;)Ljava/util/Map;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/RowSortedTable;->rowMap()Ljava/util/SortedMap;

    move-result-object p0

    return-object p0
.end method
