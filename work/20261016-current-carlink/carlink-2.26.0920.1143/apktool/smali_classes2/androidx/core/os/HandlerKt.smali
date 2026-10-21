.class public final Landroidx/core/os/HandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final postAtTime(Landroid/os/Handler;JLjava/lang/Object;Lz/a;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/lang/Object;",
            "Lz/a;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "action"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;

    .line 12
    .line 13
    invoke-direct {v0, p4}, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;-><init>(Lz/a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0, p3, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static synthetic postAtTime$default(Landroid/os/Handler;JLjava/lang/Object;Lz/a;ILjava/lang/Object;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    const-string p5, "<this>"

    .line 7
    .line 8
    invoke-static {p0, p5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p5, "action"

    .line 12
    .line 13
    invoke-static {p4, p5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p5, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;

    .line 17
    .line 18
    invoke-direct {p5, p4}, Landroidx/core/os/HandlerKt$postAtTime$runnable$1;-><init>(Lz/a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p5, p3, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 22
    .line 23
    .line 24
    return-object p5
.end method

.method public static final postDelayed(Landroid/os/Handler;JLjava/lang/Object;Lz/a;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "J",
            "Ljava/lang/Object;",
            "Lz/a;",
            ")",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "action"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;

    .line 12
    .line 13
    invoke-direct {v0, p4}, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;-><init>(Lz/a;)V

    .line 14
    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p0, v0, p3, p1, p2}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object v0
.end method

.method public static synthetic postDelayed$default(Landroid/os/Handler;JLjava/lang/Object;Lz/a;ILjava/lang/Object;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    const-string p5, "<this>"

    .line 7
    .line 8
    invoke-static {p0, p5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p5, "action"

    .line 12
    .line 13
    invoke-static {p4, p5}, Lt/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p5, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;

    .line 17
    .line 18
    invoke-direct {p5, p4}, Landroidx/core/os/HandlerKt$postDelayed$runnable$1;-><init>(Lz/a;)V

    .line 19
    .line 20
    .line 21
    if-nez p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p0, p5, p3, p1, p2}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object p5
.end method
