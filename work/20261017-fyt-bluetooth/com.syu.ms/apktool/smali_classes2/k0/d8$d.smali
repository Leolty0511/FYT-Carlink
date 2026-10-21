.class public Lk0/d8$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/d8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/d8;


# direct methods
.method public constructor <init>(Lk0/d8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/d8$d;->a:Lk0/d8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/d8$d;->a:Lk0/d8;

    iget v1, v0, Lk0/d8;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/d8;->g:I

    const/4 v3, 0x7

    if-lez v1, :cond_2

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x4

    if-ne v0, v2, :cond_1

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    iget-object v0, p0, Lk0/d8$d;->a:Lk0/d8;

    invoke-static {v0}, Lk0/d8;->e3(Lk0/d8;)Lo1/g0;

    move-result-object v2

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/d8;->f3(Lk0/d8;I)V

    .line 6
    sget v0, Lk0/nt;->c:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lk0/d8$d;->a:Lk0/d8;

    invoke-static {v0}, Lk0/d8;->e3(Lk0/d8;)Lo1/g0;

    move-result-object v2

    const/4 v4, 0x3

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v5}, Lo1/g0;->b(II)I

    move-result v2

    iget-object v4, p0, Lk0/d8$d;->a:Lk0/d8;

    invoke-static {v4}, Lk0/d8;->e3(Lk0/d8;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lo1/g0;->b(II)I

    move-result v1

    iget-object v4, p0, Lk0/d8$d;->a:Lk0/d8;

    invoke-static {v4}, Lk0/d8;->e3(Lk0/d8;)Lo1/g0;

    move-result-object v4

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v5}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v0, v2, v1, v4}, Lk0/d8;->g3(Lk0/d8;III)V

    .line 8
    iget-object v0, p0, Lk0/d8$d;->a:Lk0/d8;

    invoke-static {v0}, Lk0/d8;->e3(Lk0/d8;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    iget-object v2, p0, Lk0/d8$d;->a:Lk0/d8;

    invoke-static {v2}, Lk0/d8;->e3(Lk0/d8;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lk0/d8;->h3(Lk0/d8;II)V

    .line 9
    iget-object v0, p0, Lk0/d8$d;->a:Lk0/d8;

    invoke-static {v0}, Lk0/d8;->e3(Lk0/d8;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/d8;->i3(Lk0/d8;I)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v0, v0, Lk0/d8;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/d8$d;->a:Lk0/d8;

    iput v3, v0, Lk0/d8;->g:I

    :cond_3
    :goto_0
    return-void

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
        0x5
        0xff
        0x7f
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x5
        0x4
        0x1
    .end array-data
.end method
