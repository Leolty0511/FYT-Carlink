.class public Lz/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lz/b;
    .locals 2

    .line 1
    sget-object v0, Lz/a;->E:Lo1/d;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lo1/d;->f(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz/b;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lz/b;->a()V

    :cond_0
    return-object p0
.end method
