.class public final synthetic Lcom/google/common/io/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/graph/SuccessorsFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    check-cast p1, Ljava/nio/file/Path;

    invoke-static {p1}, Lcom/google/common/io/MoreFiles;->a(Ljava/nio/file/Path;)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method
