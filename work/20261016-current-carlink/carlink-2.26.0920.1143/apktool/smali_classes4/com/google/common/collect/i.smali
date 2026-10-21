.class public abstract synthetic Lcom/google/common/collect/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lcom/google/common/collect/BiMap;)Ljava/util/Collection;
    .locals 0

    invoke-interface {p0}, Lcom/google/common/collect/BiMap;->values()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
