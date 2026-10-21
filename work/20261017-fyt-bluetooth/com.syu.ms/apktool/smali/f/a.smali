.class public Lf/a;
.super Lf/c;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/c;-><init>()V

    .line 2
    new-instance v0, Lf/a$a;

    invoke-direct {v0, p0}, Lf/a$a;-><init>(Lf/a;)V

    iput-object v0, p0, Lf/a;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZII)V
    .locals 8

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf/c;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "com.txznet.txz"

    .line 3
    invoke-static {p1, v1}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_1

    if-ne p3, v3, :cond_1

    move p3, v2

    .line 4
    :cond_1
    iget-object v1, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_2

    .line 5
    iget-object v1, p0, Lf/c;->a:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    const/4 v1, -0x1

    const/4 v4, 0x0

    if-eq p3, v1, :cond_3

    if-ne p4, v1, :cond_5

    .line 6
    :cond_3
    iget-object p4, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p4

    move v5, v4

    :goto_0
    if-gt v5, p4, :cond_5

    .line 7
    iget-object v6, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    if-eqz v6, :cond_4

    .line 8
    invoke-virtual {v6, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 9
    :cond_5
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p4

    .line 10
    invoke-virtual {p4}, Lu0/i;->g3()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz p2, :cond_6

    if-ne p3, v6, :cond_6

    .line 11
    invoke-static {p1, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 12
    invoke-virtual {p4, p1}, Lu0/i;->B3(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    if-nez p2, :cond_8

    if-eq p3, v6, :cond_7

    if-ne p3, v1, :cond_8

    .line 13
    :cond_7
    invoke-static {p1, v5}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, ""

    .line 14
    invoke-virtual {p4, v1}, Lu0/i;->B3(Ljava/lang/String;)V

    :cond_8
    :goto_1
    if-eq p3, v6, :cond_d

    if-eq p3, v3, :cond_9

    const/4 p4, 0x3

    if-eq p3, p4, :cond_9

    if-eq p3, v2, :cond_9

    goto :goto_4

    :cond_9
    move p4, v4

    .line 15
    :goto_2
    iget-object v1, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p4, v1, :cond_e

    .line 16
    iget-object v1, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 17
    iget-object v2, p0, Lf/c;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    if-eqz p2, :cond_c

    if-ne v1, p3, :cond_b

    .line 18
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 19
    invoke-virtual {v2, v4, p1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_a
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_b
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_c
    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 23
    :cond_d
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p3

    invoke-virtual {p3, p1}, Ly0/j;->f3(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_e

    if-eqz p2, :cond_e

    .line 24
    sget-object p1, Ly0/f;->b:Ly0/e;

    instance-of p1, p1, Lmodule/sound/AudioDevice;

    if-eqz p1, :cond_e

    .line 25
    sget p1, Lu0/b;->D:I

    const/16 p2, 0xa

    if-eq p1, p2, :cond_e

    .line 26
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, p2}, Lu0/h;->c(I)V

    .line 27
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lf/a;->g()Z

    move-result p1

    if-eqz p1, :cond_f

    move p1, v6

    goto :goto_5

    :cond_f
    move p1, v4

    :goto_5
    sput p1, Ly0/f;->T0:I

    .line 28
    sget-object p1, Ly0/g;->k:Lo1/z;

    sget p2, Ly0/f;->T0:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Lf/a;->e()Z

    move-result p1

    if-eqz p1, :cond_10

    move p1, v6

    goto :goto_6

    :cond_10
    move p1, v4

    :goto_6
    sput p1, Ly0/f;->Q0:I

    const/16 p2, 0x6f

    new-array p3, v6, [I

    aput p1, p3, v4

    .line 30
    invoke-static {p2, p3}, Lu0/d;->I3(I[I)V

    .line 31
    sget-object p1, Ly0/g;->t:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    .line 32
    invoke-virtual {p0}, Lf/a;->f()Z

    move-result p1

    if-eqz p1, :cond_11

    move v4, v6

    :cond_11
    sput v4, Ly0/f;->R0:I

    const-string/jumbo p1, "sound"

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " >>>>> DataSound.sVoiceOn : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Ly0/f;->T0:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " DataSound.sNaviSoundOn : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Ly0/f;->Q0:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " DataSound.sTipSoundOn : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Ly0/f;->R0:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Ly0/h;->M()V

    .line 35
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
    iget-object v0, p0, Lf/c;->c:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 3
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "bin/blink"

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const-string v2, "com.ilincar.advertising.videoplayer.chinamobile"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6
    sget v2, Lu0/b;->k4:I

    if-eq v2, p2, :cond_3

    .line 7
    sput p2, Lu0/b;->k4:I

    if-ne p2, v1, :cond_3

    const/16 v2, 0x1e

    .line 8
    sput v2, Le/f;->c:I

    :cond_3
    const-string v2, ":"

    .line 9
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v3

    .line 10
    sget-object v2, La/b;->c:Lo1/e;

    invoke-virtual {v2, p1}, Lo1/e;->c(Ljava/lang/Comparable;)I

    move-result v2

    .line 11
    invoke-static {v2, p1}, La/i;->q(ILjava/lang/String;)Z

    move-result v4

    const/16 v5, 0x78

    if-eqz v4, :cond_6

    if-eqz v0, :cond_4

    return-void

    .line 12
    :cond_4
    invoke-static {p1}, La/i;->Y(Ljava/lang/String;)V

    .line 13
    invoke-static {v1}, La/e;->e(I)V

    if-eqz p2, :cond_5

    .line 14
    sput v1, Ly0/f;->Q0:I

    const/16 p1, 0x6f

    new-array p2, v1, [I

    aput v1, p2, v3

    .line 15
    invoke-static {p1, p2}, Lu0/d;->I3(I[I)V

    .line 16
    sget-object p1, Ly0/g;->t:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    .line 17
    invoke-static {}, Ly0/h;->M()V

    .line 18
    sput v5, Le/f;->a:I

    goto/16 :goto_1

    .line 19
    :cond_5
    sput v1, Le/f;->a:I

    goto :goto_1

    .line 20
    :cond_6
    invoke-static {v2}, La/i;->y(I)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v0, :cond_7

    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 21
    sput v1, Ly0/f;->R0:I

    .line 22
    invoke-static {}, Ly0/h;->M()V

    .line 23
    sput v5, Le/f;->b:I

    goto :goto_1

    .line 24
    :cond_8
    sput v1, Le/f;->b:I

    goto :goto_1

    .line 25
    :cond_9
    invoke-static {p1}, Le/f;->n(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz p2, :cond_c

    .line 26
    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p2

    .line 27
    invoke-static {p1}, Lo1/u;->d0(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xb

    .line 28
    invoke-static {v1}, Lg/f;->f(I)Z

    move-result v1

    if-nez v1, :cond_a

    if-nez p2, :cond_a

    if-eqz v0, :cond_b

    .line 29
    :cond_a
    invoke-static {v2}, La/i;->t(I)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "com.syu"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    const-string p2, "com.huawei.dmsdpdevice"

    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 32
    invoke-static {v2}, La/i;->w(I)Z

    move-result p2

    if-nez p2, :cond_b

    .line 33
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p2

    invoke-virtual {p2, p1}, Ly0/j;->f3(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 34
    sget-object p2, Lu0/b;->c:Lu0/h;

    instance-of v0, p2, Lu0/a;

    if-eqz v0, :cond_b

    .line 35
    check-cast p2, Lu0/a;

    invoke-virtual {p2, p1}, Lu0/a;->i(Ljava/lang/String;)V

    .line 36
    :cond_b
    invoke-static {}, Ly0/h;->M()V

    :cond_c
    :goto_1
    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, v0}, Lf/a;->a(Ljava/lang/String;ZII)V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    sget v0, Le/f;->a:I

    if-gtz v0, :cond_1

    sget v0, Le/f;->f:I

    if-gtz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lf/c;->d(I)Z

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

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lf/c;->d(I)Z

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

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lf/c;->d(I)Z

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

.method public i(II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lf/a;->d:Ljava/lang/Runnable;

    invoke-static {p1}, Lo1/j;->f(Ljava/lang/Runnable;)V

    if-lez p2, :cond_0

    .line 2
    iget-object p1, p0, Lf/a;->d:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-static {p1, v0, v1}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lf/a;->j()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->b:Lh0/f;

    instance-of v1, v0, Lh0/b;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lh0/b;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lh0/b;->a0(II)V

    :cond_0
    return-void
.end method
