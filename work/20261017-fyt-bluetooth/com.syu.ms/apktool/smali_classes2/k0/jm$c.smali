.class public Lk0/jm$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jm;


# direct methods
.method public constructor <init>(Lk0/jm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jm$c;->a:Lk0/jm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/jm$c;->a:Lk0/jm;

    iget v1, v0, Lk0/jm;->p:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/jm;->p:I

    const/4 v3, 0x5

    if-lez v1, :cond_4

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x6

    if-ne v1, v2, :cond_0

    new-array v1, v6, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v1, v6, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    :goto_0
    sget v1, Lk0/nt;->c:I

    const/16 v8, 0x7a

    if-ne v1, v8, :cond_1

    new-array v1, v6, [I

    .line 7
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_1
    const/16 v8, 0xd0

    if-ne v1, v8, :cond_2

    new-array v1, v6, [I

    .line 8
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_2
    const/16 v8, 0xfc

    if-ne v1, v8, :cond_3

    new-array v1, v6, [I

    .line 9
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    .line 10
    :cond_3
    :goto_1
    iget-object v1, p0, Lk0/jm$c;->a:Lk0/jm;

    invoke-static {v1}, Lk0/jm;->a3(Lk0/jm;)Lo1/g0;

    move-result-object v8

    invoke-virtual {v8, v2, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/jm;->b3(Lk0/jm;I)V

    .line 11
    iget-object v1, p0, Lk0/jm$c;->a:Lk0/jm;

    invoke-static {v1}, Lk0/jm;->a3(Lk0/jm;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/jm;->c3(Lk0/jm;I)V

    .line 12
    iget-object v1, p0, Lk0/jm$c;->a:Lk0/jm;

    invoke-static {v1}, Lk0/jm;->a3(Lk0/jm;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/jm;->d3(Lk0/jm;I)V

    .line 13
    iget-object v1, p0, Lk0/jm$c;->a:Lk0/jm;

    invoke-static {v1}, Lk0/jm;->a3(Lk0/jm;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/jm;->e3(Lk0/jm;I)V

    .line 14
    iget-object v0, p0, Lk0/jm$c;->a:Lk0/jm;

    invoke-static {v0}, Lk0/jm;->a3(Lk0/jm;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/jm;->f3(Lk0/jm;I)V

    .line 15
    iget-object v0, p0, Lk0/jm$c;->a:Lk0/jm;

    invoke-static {v0}, Lk0/jm;->a3(Lk0/jm;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v6, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/jm;->g3(Lk0/jm;I)V

    goto :goto_2

    .line 16
    :cond_4
    iget-object v0, v0, Lk0/jm;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 17
    iget-object v0, p0, Lk0/jm$c;->a:Lk0/jm;

    iput v3, v0, Lk0/jm;->p:I

    :goto_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x3
        0x29
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x3
        0x29
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x3
        0x2b
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x3
        0x2b
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xc6
        0x3
        0x2b
        0x2
        0x0
    .end array-data
.end method
