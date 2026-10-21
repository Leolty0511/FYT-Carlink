.class public Lf/d;
.super Lf/c;
.source "SourceFile"


# instance fields
.field public d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lf/d;->d:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lf/d;->d:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZII)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 3
    iget-object v1, p0, Lf/c;->a:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p3, v1, :cond_1

    if-ne p4, v1, :cond_3

    .line 4
    :cond_1
    iget-object p4, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p4

    move v1, v2

    :goto_0
    if-gt v1, p4, :cond_3

    .line 5
    iget-object v3, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p4, 0x2

    if-eq p3, p4, :cond_4

    const/4 v1, 0x3

    if-eq p3, v1, :cond_4

    const/4 v1, 0x4

    if-eq p3, v1, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    iget-object v1, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p2, :cond_6

    .line 9
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 10
    invoke-virtual {v1, v2, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_5
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_6
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 13
    :goto_1
    sget-object p2, La/b;->c:Lo1/e;

    invoke-virtual {p2, p1}, Lo1/e;->c(Ljava/lang/Comparable;)I

    move-result p2

    .line 14
    invoke-static {p2, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    const/16 p4, 0xd

    goto :goto_2

    .line 15
    :cond_7
    invoke-static {p1}, Le/f;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 16
    :cond_8
    invoke-static {p2}, La/i;->y(I)Z

    move-result p2

    if-eqz p2, :cond_9

    const/4 p4, 0x5

    goto :goto_2

    :cond_9
    move p4, v3

    .line 17
    :goto_2
    iget-object p2, p0, Lf/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-gez p2, :cond_a

    .line 18
    iget-object p2, p0, Lf/d;->d:Landroid/util/SparseArray;

    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p2, p4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    :cond_a
    iget-object p2, p0, Lf/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/LinkedList;

    .line 20
    invoke-virtual {p0, p1}, Lf/d;->j(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    const-string p3, "Sound"

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ADD >>>>> pkg : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fixUsage : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    .line 23
    invoke-virtual {p2, v2, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 24
    :cond_b
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    const-string p3, "Sound"

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " REMOVE >>>>> pkg : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fixUsage : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 27
    :goto_3
    invoke-virtual {p0}, Lf/d;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    move p1, v3

    goto :goto_4

    :cond_d
    move p1, v2

    :goto_4
    sput p1, Ly0/f;->T0:I

    .line 28
    sget-object p1, Ly0/g;->k:Lo1/z;

    sget p2, Ly0/f;->T0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lf/d;->e()Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v3

    goto :goto_5

    :cond_e
    move p1, v2

    :goto_5
    sput p1, Ly0/f;->Q0:I

    const/16 p2, 0x6f

    new-array p3, v3, [I

    aput p1, p3, v2

    .line 30
    invoke-static {p2, p3}, Lu0/d;->I3(I[I)V

    .line 31
    sget-object p1, Ly0/g;->t:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    .line 32
    invoke-virtual {p0}, Lf/d;->f()Z

    move-result p1

    if-eqz p1, :cond_f

    move v2, v3

    :cond_f
    sput v2, Ly0/f;->R0:I

    .line 33
    invoke-static {}, Ly0/h;->M()V

    .line 34
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Ljava/lang/String;I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "audio status  pkg : %s,  status: "

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "focus"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "bin/blink"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "com.ilincar.advertising.videoplayer.chinamobile"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sget v0, Lu0/b;->k4:I

    if-eq v0, p2, :cond_2

    .line 6
    sput p2, Lu0/b;->k4:I

    if-ne p2, v1, :cond_2

    const/16 v0, 0x1e

    .line 7
    sput v0, Le/f;->c:I

    :cond_2
    const-string v0, ":"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    .line 9
    sget-object v0, Ly0/f;->O0:Lo1/e;

    invoke-virtual {v0, p1, p2}, Lo1/e;->f(Ljava/lang/Comparable;I)I

    .line 10
    sget-object v0, La/b;->h:Lo1/d;

    invoke-virtual {v0, p1}, Lo1/d;->e(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/a0;

    if-eqz v0, :cond_6

    if-eqz p2, :cond_3

    .line 11
    iget-object v0, v0, Lo1/a0;->a:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    goto :goto_0

    .line 12
    :cond_3
    iget-object v2, v0, Lo1/a0;->a:Lo1/l0;

    iget v4, v0, Lo1/a0;->b:I

    invoke-virtual {v2, v4}, Lo1/l0;->c(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 13
    sget-object p2, La/b;->c:Lo1/e;

    invoke-virtual {p2, p1}, Lo1/e;->c(Ljava/lang/Comparable;)I

    move-result p2

    .line 14
    invoke-static {p2, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    iget-object p2, p0, Lf/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    sput-boolean p2, Le/f;->i:Z

    if-nez p2, :cond_4

    return-void

    .line 16
    :cond_4
    invoke-static {v1}, La/e;->e(I)V

    .line 17
    invoke-static {p1}, La/i;->Y(Ljava/lang/String;)V

    .line 18
    sget p1, Le/f;->a:I

    iget p2, v0, Lo1/a0;->c:I

    if-ge p1, p2, :cond_5

    .line 19
    sput p2, Le/f;->a:I

    :cond_5
    return-void

    .line 20
    :cond_6
    :goto_0
    sget v0, Lh0/c;->G:I

    if-ne v0, v1, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    move v0, v3

    .line 21
    :goto_1
    sget-boolean v2, Lh0/c;->m0:Z

    if-eqz v2, :cond_8

    move v0, v1

    .line 22
    :cond_8
    sget-object v2, La/b;->c:Lo1/e;

    invoke-virtual {v2, p1}, Lo1/e;->c(Ljava/lang/Comparable;)I

    move-result v2

    .line 23
    invoke-static {v2, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result v4

    const/16 v5, 0x78

    if-eqz v4, :cond_b

    .line 24
    iget-object v0, p0, Lf/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    sput-boolean v0, Le/f;->i:Z

    if-nez v0, :cond_9

    return-void

    .line 25
    :cond_9
    invoke-static {p1}, La/i;->Y(Ljava/lang/String;)V

    .line 26
    invoke-static {v1}, La/e;->e(I)V

    if-eqz p2, :cond_a

    .line 27
    sput v1, Ly0/f;->Q0:I

    const/16 p1, 0x6f

    new-array p2, v1, [I

    aput v1, p2, v3

    .line 28
    invoke-static {p1, p2}, Lu0/d;->I3(I[I)V

    .line 29
    sget-object p1, Ly0/g;->t:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    .line 30
    invoke-static {}, Ly0/h;->M()V

    .line 31
    sput v5, Le/f;->a:I

    goto/16 :goto_2

    .line 32
    :cond_a
    sput v1, Le/f;->a:I

    goto :goto_2

    .line 33
    :cond_b
    invoke-static {v2}, La/i;->y(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 34
    iget-object v0, p0, Lf/c;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-nez p1, :cond_c

    return-void

    :cond_c
    if-eqz p2, :cond_d

    .line 35
    sput v1, Ly0/f;->R0:I

    .line 36
    invoke-static {}, Ly0/h;->M()V

    .line 37
    sput v5, Le/f;->b:I

    goto :goto_2

    .line 38
    :cond_d
    sput v1, Le/f;->b:I

    goto :goto_2

    .line 39
    :cond_e
    invoke-static {p1}, Le/f;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz p2, :cond_11

    .line 40
    invoke-static {v2}, La/i;->t(I)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p2, "com.syu"

    .line 41
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    const-string p2, "com.huawei.dmsdpdevice"

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 43
    invoke-static {v2}, La/i;->w(I)Z

    move-result p2

    if-nez p2, :cond_10

    .line 44
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p2

    invoke-virtual {p2, p1}, Ly0/j;->f3(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    if-nez v0, :cond_f

    .line 45
    sget p2, Lu0/b;->D:I

    const/16 v0, 0xa

    if-eq p2, v0, :cond_f

    .line 46
    sget-object p2, Lu0/b;->c:Lu0/h;

    invoke-interface {p2, v0}, Lu0/h;->c(I)V

    .line 47
    :cond_f
    sget-object p2, Lu0/b;->c:Lu0/h;

    instance-of v0, p2, Lu0/a;

    if-eqz v0, :cond_10

    .line 48
    check-cast p2, Lu0/a;

    invoke-virtual {p2, p1}, Lu0/a;->i(Ljava/lang/String;)V

    .line 49
    :cond_10
    invoke-static {}, Ly0/h;->M()V

    :cond_11
    :goto_2
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "audio focus  pkg : %s,  focus: "

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "focus"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 3
    sget-object v0, Le/e;->d:Lo1/z;

    invoke-virtual {v0, p1}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 4
    :cond_1
    sget-object v0, La/b;->h:Lo1/d;

    invoke-virtual {v0, p1}, Lo1/d;->e(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo1/a0;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_2

    .line 5
    iget-object v0, v0, Lo1/a0;->a:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v2, v0, Lo1/a0;->a:Lo1/l0;

    iget v4, v0, Lo1/a0;->b:I

    invoke-virtual {v2, v4}, Lo1/l0;->c(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7
    sget-object p2, La/b;->c:Lo1/e;

    invoke-virtual {p2, p1}, Lo1/e;->c(Ljava/lang/Comparable;)I

    move-result p2

    .line 8
    invoke-static {p2, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 9
    invoke-static {v1}, La/e;->e(I)V

    .line 10
    invoke-static {p1}, La/i;->Y(Ljava/lang/String;)V

    .line 11
    sget p1, Le/f;->a:I

    iget p2, v0, Lo1/a0;->c:I

    if-ge p1, p2, :cond_4

    .line 12
    sput p2, Le/f;->a:I

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {p2}, La/i;->y(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    sget p1, Le/f;->b:I

    iget p2, v0, Lo1/a0;->c:I

    if-ge p1, p2, :cond_4

    .line 15
    sput p2, Le/f;->b:I

    :cond_4
    :goto_0
    return-void

    .line 16
    :cond_5
    :goto_1
    sget-object v0, La/b;->c:Lo1/e;

    invoke-virtual {v0, p1}, Lo1/e;->c(Ljava/lang/Comparable;)I

    move-result v0

    .line 17
    invoke-static {v0, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result v2

    const/16 v4, 0x78

    if-eqz v2, :cond_7

    .line 18
    invoke-static {p1}, La/i;->Y(Ljava/lang/String;)V

    .line 19
    invoke-static {v1}, La/e;->e(I)V

    .line 20
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->j:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    >>>>>>   NAVI Audio status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 21
    sput v1, Ly0/f;->Q0:I

    const/16 v0, 0x6f

    new-array v2, v1, [I

    aput v1, v2, v3

    .line 22
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    .line 23
    sget-object v0, Ly0/g;->t:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 24
    invoke-static {}, Ly0/h;->M()V

    .line 25
    sput v4, Le/f;->a:I

    goto :goto_2

    .line 26
    :cond_6
    sput v1, Le/f;->a:I

    goto :goto_2

    .line 27
    :cond_7
    invoke-static {v0}, La/i;->y(I)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    .line 28
    sput v1, Ly0/f;->R0:I

    .line 29
    invoke-static {}, Ly0/h;->M()V

    .line 30
    sput v4, Le/f;->b:I

    goto :goto_2

    .line 31
    :cond_8
    sput v1, Le/f;->b:I

    .line 32
    :cond_9
    :goto_2
    invoke-static {p1}, Le/f;->n(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    if-ne p2, v1, :cond_a

    move v1, v4

    .line 33
    :cond_a
    sput v1, Le/f;->d:I

    if-eqz p2, :cond_b

    .line 34
    invoke-virtual {p0}, Lf/d;->g()Z

    move-result p1

    sput p1, Ly0/f;->T0:I

    .line 35
    sget-object p1, Ly0/g;->k:Lo1/z;

    sget p2, Ly0/f;->T0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Ly0/h;->M()V

    :cond_b
    return-void
.end method

.method public d(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf/d;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    sget v0, Le/f;->a:I

    if-gtz v0, :cond_1

    sget v0, Le/f;->f:I

    if-gtz v0, :cond_1

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lf/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    sget v0, Le/f;->b:I

    if-gtz v0, :cond_1

    sget v0, Le/f;->g:I

    if-gtz v0, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lf/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    sget v0, Le/f;->d:I

    if-gtz v0, :cond_1

    sget v0, Le/f;->e:I

    if-gtz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lf/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public i(II)V
    .locals 2

    .line 1
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public final j(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-gt v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
