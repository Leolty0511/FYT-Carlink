.class public Li1/b;
.super Li1/s;
.source "SourceFile"

# interfaces
.implements Li1/b0$a;
.implements Li1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/b$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/s<",
        "Li1/b$d;",
        ">;",
        "Li1/b0$a;",
        "Li1/f;"
    }
.end annotation


# instance fields
.field public final h:Ljava/lang/Runnable;

.field public final i:[I

.field public j:I

.field public k:J

.field public l:Li1/b0;

.field public m:I

.field public n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/s;-><init>(II)V

    .line 2
    new-instance p1, Li1/b$a;

    invoke-direct {p1, p0}, Li1/b$a;-><init>(Li1/b;)V

    iput-object p1, p0, Li1/b;->h:Ljava/lang/Runnable;

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 3
    fill-array-data p1, :array_0

    iput-object p1, p0, Li1/b;->i:[I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Li1/b;->j:I

    const-wide/16 p1, 0x0

    .line 5
    iput-wide p1, p0, Li1/b;->k:J

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Li1/b;->l:Li1/b0;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Li1/b;->m:I

    .line 8
    new-instance p1, Li1/b$b;

    invoke-direct {p1, p0}, Li1/b$b;-><init>(Li1/b;)V

    iput-object p1, p0, Li1/b;->n:Ljava/lang/Runnable;

    .line 9
    new-instance p1, Li1/b$d;

    invoke-direct {p1}, Li1/b$d;-><init>()V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 10
    invoke-virtual {p1}, Li1/e;->h()V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x0
        0x4
        0x1
        0x3
    .end array-data
.end method


# virtual methods
.method public a(Li1/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/b;->l:Li1/b0;

    return-void
.end method

.method public c([B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li1/s;->b([B)V

    return-void
.end method

.method public f(I)V
    .locals 4

    const-string v0, "com.syu.driver"

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 333    \u52a8\u529b\u6f8e\u6e43    setMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/b;->v(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lo1/u;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.driver.DriverActivity"

    .line 4
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :cond_0
    :goto_0
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Li1/b$c;

    invoke-direct {v1, p0, p1}, Li1/b$c;-><init>(Li1/b;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public i(I)Li1/s$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li1/s<",
            "Li1/b$d;",
            ">.a;"
        }
    .end annotation

    if-ltz p1, :cond_1

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-super {p0, p1}, Li1/s;->i(I)Li1/s$a;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "handleCmd cmdCode : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " params:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "Device"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x3e8

    const/16 v0, 0x3f

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/16 v3, 0x406

    if-eq p1, v3, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p0, p2}, Li1/b;->v([I)V

    .line 3
    aget p1, p2, v1

    if-ne p1, v0, :cond_2

    .line 4
    iput v2, p0, Li1/b;->m:I

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Li1/b;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Li1/b;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 7
    invoke-virtual {p0, p2}, Li1/b;->v([I)V

    .line 8
    aget p1, p2, v1

    if-ne p1, v0, :cond_2

    .line 9
    iput v2, p0, Li1/b;->m:I

    .line 10
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Li1/b;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object p2, p0, Li1/b;->n:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public l([I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Li1/b;->k:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0xbb8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    if-eqz p1, :cond_1

    array-length v4, p1

    if-lez v4, :cond_1

    const/4 v4, 0x0

    .line 3
    aget v4, p1, v4

    and-int/lit8 v4, v4, 0xf

    if-ltz v4, :cond_1

    .line 4
    iget-object v5, p0, Li1/b;->i:[I

    array-length v8, v5

    if-ge v4, v8, :cond_1

    .line 5
    aget v4, v5, v4

    .line 6
    iget v5, p0, Li1/b;->j:I

    if-ne v5, v4, :cond_0

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 7
    :cond_0
    iput v4, p0, Li1/b;->j:I

    const-string v2, "syu.intent.action.gaoerfu"

    const-string v3, "driving_mode"

    .line 8
    invoke-static {v2, v3, v4}, Lo1/u;->o(Ljava/lang/String;Ljava/lang/String;I)V

    .line 9
    iput-wide v0, p0, Li1/b;->k:J

    :cond_1
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0, p1}, Li1/s;->r(I[I)V

    return-void
.end method

.method public varargs v([I)V
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x3

    add-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 2
    new-array v3, v0, [I

    .line 3
    iget-object v4, p0, Li1/s;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x55

    .line 4
    aput v4, v3, v2

    const/16 v4, 0xaa

    const/4 v6, 0x2

    .line 5
    aput v4, v3, v6

    move v4, v5

    .line 6
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_0

    add-int v7, v1, v4

    .line 7
    aget v8, p1, v4

    and-int/lit16 v8, v8, 0xff

    aput v8, v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v0, -0x1

    .line 8
    aput v5, v3, p1

    move v4, v1

    :goto_1
    if-ge v4, p1, :cond_1

    .line 9
    aget v7, v3, p1

    aget v8, v3, v4

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    aput v7, v3, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v6, p0, Li1/s;->b:Ljava/lang/Integer;

    aput-object v6, v4, v5

    iget-object v6, p0, Li1/s;->c:Ljava/lang/Integer;

    aput-object v6, v4, v2

    const-string v2, "Device receicerId: %2X, cmdid: %2X"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SEND DATA:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Li1/b;->l:Li1/b0;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1, v3}, Lb/c$b;->f([I)V

    goto :goto_3

    :cond_2
    :goto_2
    if-ge v5, v1, :cond_3

    .line 13
    invoke-static {v3}, Lz/k;->s([I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method
