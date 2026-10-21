.class public abstract Lkotlin/sequences/a;
.super Lt/b;
.source "SourceFile"


# direct methods
.method public static final G(Ljava/lang/Object;Lz/l;)Le0/g;
    .locals 2

    .line 1
    const-string v0, "nextFunction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    sget-object p0, Le0/b;->a:Le0/b;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Le0/f;

    .line 12
    .line 13
    new-instance v1, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lkotlin/sequences/SequencesKt__SequencesKt$generateSequence$2;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v0, v1, p1}, Le0/f;-><init>(Lz/a;Lz/l;)V

    .line 19
    .line 20
    .line 21
    move-object p0, v0

    .line 22
    :goto_0
    return-object p0
.end method
