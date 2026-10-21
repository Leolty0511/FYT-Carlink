.class public Lk0/xo$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xo;


# direct methods
.method public constructor <init>(Lk0/xo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xo$d;->a:Lk0/xo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lk0/xo$d;->a:Lk0/xo;

    iget v1, v0, Lk0/xo;->g:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/xo;->g:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

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
    sget v4, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v4, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    new-array v1, v3, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    iget-object v7, p0, Lk0/xo$d;->a:Lk0/xo;

    invoke-static {v7}, Lk0/xo;->c3(Lk0/xo;)Lo1/g0;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v8

    iget-object v1, p0, Lk0/xo$d;->a:Lk0/xo;

    .line 6
    invoke-static {v1}, Lk0/xo;->c3(Lk0/xo;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v9

    iget-object v1, p0, Lk0/xo$d;->a:Lk0/xo;

    invoke-static {v1}, Lk0/xo;->c3(Lk0/xo;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v10

    iget-object v1, p0, Lk0/xo$d;->a:Lk0/xo;

    .line 7
    invoke-static {v1}, Lk0/xo;->c3(Lk0/xo;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Lo1/g0;->b(II)I

    move-result v11

    iget-object v1, p0, Lk0/xo$d;->a:Lk0/xo;

    invoke-static {v1}, Lk0/xo;->c3(Lk0/xo;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lo1/g0;->b(II)I

    move-result v12

    iget-object v0, p0, Lk0/xo$d;->a:Lk0/xo;

    invoke-static {v0}, Lk0/xo;->c3(Lk0/xo;)Lo1/g0;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lo1/g0;->b(II)I

    move-result v13

    iget-object v0, p0, Lk0/xo$d;->a:Lk0/xo;

    .line 8
    invoke-static {v0}, Lk0/xo;->c3(Lk0/xo;)Lo1/g0;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Lo1/g0;->b(II)I

    move-result v14

    .line 9
    invoke-static/range {v7 .. v14}, Lk0/xo;->d3(Lk0/xo;IIIIIII)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lk0/xo;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/xo$d;->a:Lk0/xo;

    iput v3, v0, Lk0/xo;->g:I

    :cond_1
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x35
        0x0
    .end array-data
.end method
