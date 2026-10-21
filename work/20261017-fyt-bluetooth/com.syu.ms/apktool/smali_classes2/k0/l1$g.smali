.class public Lk0/l1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/l1;


# direct methods
.method public constructor <init>(Lk0/l1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l1$g;->a:Lk0/l1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/l1$g;->a:Lk0/l1;

    iget v1, v0, Lk0/l1;->G:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/l1;->G:I

    if-lez v1, :cond_0

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

    if-ne v1, v2, :cond_1

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    iget-object v1, p0, Lk0/l1$g;->a:Lk0/l1;

    invoke-static {v1}, Lk0/l1;->o3(Lk0/l1;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v1, v5}, Lk0/l1;->p3(Lk0/l1;I)V

    .line 6
    iget-object v1, p0, Lk0/l1$g;->a:Lk0/l1;

    invoke-static {v1}, Lk0/l1;->o3(Lk0/l1;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v1, v5}, Lk0/l1;->g3(Lk0/l1;I)V

    const/16 v1, 0x62

    new-array v5, v2, [I

    .line 7
    iget-object v7, p0, Lk0/l1$g;->a:Lk0/l1;

    invoke-static {v7}, Lk0/l1;->o3(Lk0/l1;)Lo1/g0;

    move-result-object v7

    invoke-virtual {v7, v3, v2}, Lo1/g0;->b(II)I

    move-result v3

    aput v3, v5, v4

    invoke-static {v1, v5}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x63

    new-array v3, v2, [I

    .line 8
    iget-object v5, p0, Lk0/l1$g;->a:Lk0/l1;

    invoke-static {v5}, Lk0/l1;->o3(Lk0/l1;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v6, v2}, Lo1/g0;->b(II)I

    move-result v2

    aput v2, v3, v4

    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    .line 9
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lk0/l1;->I:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lk0/l1$g;->a:Lk0/l1;

    const/4 v1, 0x5

    iput v1, v0, Lk0/l1;->G:I

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x60046 -> :sswitch_8
        0x70046 -> :sswitch_7
        0x80046 -> :sswitch_6
        0x90046 -> :sswitch_5
        0xa0046 -> :sswitch_4
        0xf0046 -> :sswitch_3
        0x100046 -> :sswitch_2
        0x110046 -> :sswitch_1
        0x120046 -> :sswitch_0
        0x130046 -> :sswitch_4
        0x140046 -> :sswitch_4
        0x1c0046 -> :sswitch_4
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        -0xf
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x5
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x82
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x81
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x80
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x1e
        0x1
        0x0
    .end array-data
.end method
