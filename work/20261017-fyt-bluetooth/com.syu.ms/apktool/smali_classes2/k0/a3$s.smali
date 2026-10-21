.class public Lk0/a3$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a3;


# direct methods
.method public constructor <init>(Lk0/a3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a3$s;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/a3$s;->a:Lk0/a3;

    iget-byte v1, v0, Lk0/a3;->E:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/a3;->E:B

    const/16 v3, 0x8

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v6, 0x81

    aput v6, v1, v2

    const/4 v6, 0x2

    aput v2, v1, v6

    .line 2
    sget v7, Lu0/b;->a0:I

    const/4 v8, 0x3

    aput v7, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_3

    .line 4
    iget-object v1, p0, Lk0/a3$s;->a:Lk0/a3;

    invoke-static {v1}, Lk0/a3;->w3(Lk0/a3;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v6, v4}, Lo1/g0;->b(II)I

    move-result v7

    invoke-static {v1, v7}, Lk0/a3;->x3(Lk0/a3;I)V

    .line 5
    sget v1, Lk0/nt;->c:I

    if-eq v1, v3, :cond_0

    const/16 v3, 0xe

    if-eq v1, v3, :cond_0

    const/16 v3, 0x96

    if-eq v1, v3, :cond_0

    const/16 v3, 0x97

    if-eq v1, v3, :cond_0

    const/16 v3, 0x98

    if-eq v1, v3, :cond_0

    const/16 v3, 0x99

    if-eq v1, v3, :cond_0

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_1

    .line 6
    :cond_0
    iget-object v1, p0, Lk0/a3$s;->a:Lk0/a3;

    invoke-static {v1}, Lk0/a3;->w3(Lk0/a3;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v8, v8}, Lo1/g0;->b(II)I

    move-result v3

    invoke-static {v1, v3, v4}, Lk0/a3;->y3(Lk0/a3;IZ)V

    :cond_1
    const/4 v1, 0x5

    new-array v3, v1, [I

    .line 7
    fill-array-data v3, :array_0

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v1, [I

    .line 8
    fill-array-data v3, :array_1

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v1, [I

    .line 9
    fill-array-data v3, :array_2

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v3, v1, [I

    .line 10
    fill-array-data v3, :array_3

    invoke-static {v3}, Lz/k;->s([I)V

    new-array v1, v1, [I

    aput v5, v1, v4

    const/16 v3, 0x83

    aput v3, v1, v2

    aput v6, v1, v6

    const/16 v2, 0x39

    aput v2, v1, v8

    .line 11
    sget v2, Lk0/nt;->W:I

    aput v2, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v0}, Lk0/a3;->f3(Lk0/a3;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 13
    iget-object v0, p0, Lk0/a3$s;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->g3(Lk0/a3;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/a3$s;->a:Lk0/a3;

    iput-byte v3, v0, Lk0/a3;->E:B

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x2
        0x32
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x90
        0x2
        0x25
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x2
        0x32
        0x1
    .end array-data
.end method
