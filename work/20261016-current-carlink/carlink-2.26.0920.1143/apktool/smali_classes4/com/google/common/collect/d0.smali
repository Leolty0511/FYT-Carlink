.class public abstract synthetic Lcom/google/common/collect/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/google/common/collect/FilteredSetMultimap;)Lcom/google/common/collect/Multimap;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/FilteredSetMultimap;->unfiltered()Lcom/google/common/collect/SetMultimap;

    move-result-object p0

    return-object p0
.end method
