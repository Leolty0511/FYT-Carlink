.class public Lk0/gc$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/gc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/gc;


# direct methods
.method public constructor <init>(Lk0/gc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    iget v1, v0, Lk0/gc;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/gc;->j:I

    const/4 v3, 0x7

    if-lez v1, :cond_6

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x4

    if-ne v0, v2, :cond_5

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v0, v4}, Lk0/gc;->h3(Lk0/gc;I)V

    const/4 v0, 0x5

    new-array v4, v0, [I

    .line 5
    fill-array-data v4, :array_1

    invoke-static {v4}, Lz/k;->s([I)V

    .line 6
    sget v4, Lk0/nt;->c:I

    const/16 v6, 0xa

    const/16 v7, 0x8

    if-eq v4, v1, :cond_4

    if-eq v4, v0, :cond_4

    const-string v8, "persist.fyt.launchertzyguide"

    if-eq v4, v3, :cond_2

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_0

    const/16 v5, 0x15

    if-eq v4, v5, :cond_4

    .line 7
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/gc;->l3(Lk0/gc;I)V

    goto/16 :goto_0

    .line 8
    :cond_0
    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/gc;->l3(Lk0/gc;I)V

    goto/16 :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v1}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v5}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/gc;->m3(Lk0/gc;I)V

    .line 12
    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/gc;->l3(Lk0/gc;I)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v4, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v4}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v5, v8, v6}, Lo1/g0;->b(II)I

    move-result v5

    iget-object v8, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v8}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Lo1/g0;->b(II)I

    move-result v1

    iget-object v8, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v8}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v0, v6}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v4, v5, v1, v0}, Lk0/gc;->i3(Lk0/gc;III)V

    .line 16
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v1, v4, v3}, Lo1/g0;->b(II)I

    move-result v1

    iget-object v4, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v4}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v0, v1, v3}, Lk0/gc;->j3(Lk0/gc;II)V

    .line 17
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v1

    const/16 v3, 0x9

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/gc;->k3(Lk0/gc;I)V

    .line 18
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    invoke-static {v0}, Lk0/gc;->g3(Lk0/gc;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v7, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/gc;->l3(Lk0/gc;I)V

    goto :goto_0

    :cond_5
    if-nez v0, :cond_7

    new-array v0, v1, [I

    .line 19
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 20
    :cond_6
    iget-object v0, v0, Lk0/gc;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lk0/gc$d;->a:Lk0/gc;

    iput v3, v0, Lk0/gc;->j:I

    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x5
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x6
        0x90
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x6
        0x3
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x6
        0x3
        0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x5
        0x4
        0x1
    .end array-data
.end method
