.class public Lk0/ei$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ei;


# direct methods
.method public constructor <init>(Lk0/ei;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ei$e;->a:Lk0/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/ei$e;->a:Lk0/ei;

    iget v1, v0, Lk0/ei;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ei;->j:I

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v3, 0xe3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 2
    sget v5, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v5, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_3

    .line 4
    sget v1, Lk0/nt;->a:I

    const v5, 0x201c8

    if-eq v1, v5, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lk0/ei$e;->a:Lk0/ei;

    invoke-static {v0}, Lk0/ei;->e3(Lk0/ei;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ei;->f3(Lk0/ei;I)V

    .line 7
    iget-object v0, p0, Lk0/ei$e;->a:Lk0/ei;

    invoke-static {v0}, Lk0/ei;->e3(Lk0/ei;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ei;->g3(Lk0/ei;I)V

    .line 8
    iget-object v0, p0, Lk0/ei$e;->a:Lk0/ei;

    invoke-static {v0}, Lk0/ei;->e3(Lk0/ei;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ei;->h3(Lk0/ei;I)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, v0, Lk0/ei;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/ei$e;->a:Lk0/ei;

    const/4 v1, 0x5

    iput v1, v0, Lk0/ei;->j:I

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xf1
        0x1
        0x1
    .end array-data
.end method
