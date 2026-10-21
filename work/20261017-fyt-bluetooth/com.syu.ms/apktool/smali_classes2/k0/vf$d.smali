.class public Lk0/vf$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vf;


# direct methods
.method public constructor <init>(Lk0/vf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/vf$d;->a:Lk0/vf;

    iget-byte v1, v0, Lk0/vf;->x:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/vf;->x:B

    const/4 v3, 0x5

    if-lez v1, :cond_1

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
    sget v1, Lu0/b;->D:I

    const/16 v4, 0xd

    if-eq v1, v4, :cond_0

    sget-object v1, Lk0/nt;->g:[I

    const/16 v4, 0x85

    aget v1, v1, v4

    if-eqz v1, :cond_0

    new-array v1, v3, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v3, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    :cond_0
    iget-object v1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-static {v1}, Lk0/vf;->d3(Lk0/vf;)Lo1/g0;

    move-result-object v4

    const/16 v7, 0xa

    invoke-virtual {v4, v6, v7}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/vf;->q3(Lk0/vf;I)V

    .line 7
    iget-object v1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-static {v1}, Lk0/vf;->d3(Lk0/vf;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v0, v7}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/vf;->r3(Lk0/vf;I)V

    .line 8
    iget-object v1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-static {v1}, Lk0/vf;->d3(Lk0/vf;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v3, v7}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/vf;->s3(Lk0/vf;I)V

    .line 9
    iget-object v1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-static {v1}, Lk0/vf;->d3(Lk0/vf;)Lo1/g0;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v7}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/vf;->t3(Lk0/vf;I)V

    .line 10
    iget-object v1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-static {v1}, Lk0/vf;->d3(Lk0/vf;)Lo1/g0;

    move-result-object v3

    const/4 v4, 0x7

    invoke-virtual {v3, v4, v7}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/vf;->u3(Lk0/vf;I)V

    .line 11
    iget-object v1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-static {v1}, Lk0/vf;->d3(Lk0/vf;)Lo1/g0;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4, v7}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3}, Lk0/vf;->v3(Lk0/vf;I)V

    .line 12
    iget-object v1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-static {v1}, Lk0/vf;->d3(Lk0/vf;)Lo1/g0;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4, v2}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/vf;->w3(Lk0/vf;I)V

    .line 13
    iget-object v1, p0, Lk0/vf$d;->a:Lk0/vf;

    invoke-static {v1}, Lk0/vf;->d3(Lk0/vf;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v7, v5}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/vf;->x3(Lk0/vf;I)V

    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v0}, Lk0/vf;->c3(Lk0/vf;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/vf$d;->a:Lk0/vf;

    iput-byte v3, v0, Lk0/vf;->x:B

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x74
        0x2
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x74
        0x2
        0x1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x1
        0x2
    .end array-data
.end method
