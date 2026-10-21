.class public Li1/j;
.super Li1/a;
.source "SourceFile"

# interfaces
.implements Li1/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/j$b;",
        ">;",
        "Li1/f;"
    }
.end annotation


# instance fields
.field public k:[I

.field public l:I

.field public m:J

.field public final n:[I


# direct methods
.method public constructor <init>(II[I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Li1/j;->k:[I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Li1/j;->l:I

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Li1/j;->m:J

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 5
    fill-array-data p1, :array_0

    iput-object p1, p0, Li1/j;->n:[I

    .line 6
    new-instance p1, Li1/j$b;

    invoke-direct {p1, p3}, Li1/j$b;-><init>([I)V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 7
    invoke-virtual {p1}, Li1/e;->h()V

    return-void

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

    new-instance v1, Li1/j$a;

    invoke-direct {v1, p0, p1}, Li1/j$a;-><init>(Li1/j;I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 0

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

    const/4 p3, 0x1

    if-eq p1, p3, :cond_1

    const/16 p4, 0x406

    if-eq p1, p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Li1/j;->w([I)V

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0, p2}, Li1/j;->w([I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x0

    :goto_1
    return p3
.end method

.method public l([I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 1
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    iput-object v1, p0, Li1/j;->k:[I

    .line 2
    aget p1, p1, v0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    and-int/lit8 p1, p1, 0xf

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ac Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Li1/j;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Device"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_1

    .line 5
    iget-object v2, p0, Li1/j;->n:[I

    array-length v3, v2

    if-ge p1, v3, :cond_1

    .line 6
    aget p1, v2, p1

    .line 7
    iget v2, p0, Li1/j;->l:I

    if-ne v2, p1, :cond_0

    iget-wide v2, p0, Li1/j;->m:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 8
    :cond_0
    iput p1, p0, Li1/j;->l:I

    const-string v2, "syu.intent.action.gaoerfu"

    const-string v3, "driving_mode"

    .line 9
    invoke-static {v2, v3, p1}, Lo1/u;->o(Ljava/lang/String;Ljava/lang/String;I)V

    .line 10
    iput-wide v0, p0, Li1/j;->m:J

    :cond_1
    const/4 p1, 0x1

    .line 11
    iget-object v0, p0, Li1/j;->k:[I

    invoke-virtual {p0, p1, v0}, Li1/s;->r(I[I)V

    return-void
.end method

.method public varargs w([I)V
    .locals 4

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lo1/s0;->a(I)[I

    move-result-object v0

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x3c

    .line 3
    aput p1, v0, v2

    const/16 p1, 0xc3

    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    const/4 p1, 0x2

    :goto_0
    const/4 v1, 0x7

    if-ge p1, v1, :cond_0

    .line 5
    aget v1, v0, p1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v2, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    not-int p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 6
    aput p1, v0, v1

    .line 7
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lb/c$b;->f([I)V

    :cond_1
    return-void
.end method
