.class Lcom/google/common/io/MoreFiles$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/MoreFiles;->isRegularFile([Ljava/nio/file/LinkOption;)Lcom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$optionsCopy:[Ljava/nio/file/LinkOption;


# direct methods
.method public constructor <init>([Ljava/nio/file/LinkOption;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/MoreFiles$2;->val$optionsCopy:[Ljava/nio/file/LinkOption;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/io/b;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/io/MoreFiles$2;->apply(Ljava/nio/file/Path;)Z

    move-result p1

    return p1
.end method

.method public apply(Ljava/nio/file/Path;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/common/io/MoreFiles$2;->val$optionsCopy:[Ljava/nio/file/LinkOption;

    invoke-static {p1, v0}, Lcom/google/common/io/b;->z(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result p1

    return p1
.end method

.method public final synthetic test(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/base/b;->a(Lcom/google/common/base/Predicate;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MoreFiles.isRegularFile("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/common/io/MoreFiles$2;->val$optionsCopy:[Ljava/nio/file/LinkOption;

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, ")"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method
