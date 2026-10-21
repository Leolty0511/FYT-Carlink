.class public Lk0/tr$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/tr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/tr;


# direct methods
.method public constructor <init>(Lk0/tr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/tr$e;->a:Lk0/tr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lk0/tr$e;->a:Lk0/tr;

    iget v1, v0, Lk0/tr;->t:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/tr;->t:I

    const/4 v3, 0x6

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
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_2

    .line 4
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v1, v0, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v1, v0, [I

    .line 7
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v1, v0, [I

    .line 8
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v1, v0, [I

    .line 9
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v1, v0, [I

    .line 10
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v1, v0, [I

    .line 11
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v1, v0, [I

    .line 12
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v1, v0, [I

    .line 13
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v1, v0, [I

    .line 14
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    .line 15
    :goto_0
    sget v1, Lk0/nt;->a:I

    const v6, 0x1001c8    # 1.470007E-39f

    const/4 v8, 0x5

    if-eq v1, v6, :cond_0

    const v6, 0x1101c8

    if-eq v1, v6, :cond_0

    const v6, 0x8801c8

    if-eq v1, v6, :cond_0

    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lk0/tr$e;->a:Lk0/tr;

    invoke-static {v1}, Lk0/tr;->j3(Lk0/tr;)Lo1/g0;

    move-result-object v6

    const/4 v9, 0x7

    invoke-virtual {v6, v0, v9}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/tr;->k3(Lk0/tr;I)V

    .line 17
    iget-object v0, p0, Lk0/tr$e;->a:Lk0/tr;

    invoke-static {v0}, Lk0/tr;->j3(Lk0/tr;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tr;->l3(Lk0/tr;I)V

    .line 18
    iget-object v0, p0, Lk0/tr$e;->a:Lk0/tr;

    invoke-static {v0}, Lk0/tr;->j3(Lk0/tr;)Lo1/g0;

    move-result-object v1

    const/16 v6, 0xa

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tr;->m3(Lk0/tr;I)V

    .line 19
    iget-object v0, p0, Lk0/tr$e;->a:Lk0/tr;

    invoke-static {v0}, Lk0/tr;->j3(Lk0/tr;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v9, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tr;->n3(Lk0/tr;I)V

    .line 20
    iget-object v0, p0, Lk0/tr$e;->a:Lk0/tr;

    invoke-static {v0}, Lk0/tr;->j3(Lk0/tr;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v9}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tr;->o3(Lk0/tr;I)V

    .line 21
    iget-object v0, p0, Lk0/tr$e;->a:Lk0/tr;

    invoke-static {v0}, Lk0/tr;->j3(Lk0/tr;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v4, v9}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tr;->p3(Lk0/tr;I)V

    .line 22
    iget-object v0, p0, Lk0/tr$e;->a:Lk0/tr;

    invoke-static {v0}, Lk0/tr;->j3(Lk0/tr;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v7, v9}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tr;->q3(Lk0/tr;I)V

    .line 23
    :goto_1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    new-array v0, v8, [I

    .line 24
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_2

    .line 25
    :cond_1
    iget-object v0, v0, Lk0/tr;->v:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 26
    iget-object v0, p0, Lk0/tr$e;->a:Lk0/tr;

    iput v3, v0, Lk0/tr;->t:I

    :cond_2
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101c6 -> :sswitch_9
        0x201c6 -> :sswitch_8
        0x301c6 -> :sswitch_7
        0x401c6 -> :sswitch_6
        0x501c6 -> :sswitch_5
        0x601c6 -> :sswitch_4
        0x701c6 -> :sswitch_3
        0x801c6 -> :sswitch_2
        0x901c6 -> :sswitch_1
        0xa01c6 -> :sswitch_0
        0x1001c8 -> :sswitch_1
        0x1101c8 -> :sswitch_0
        0x4c01c7 -> :sswitch_1
        0x4d01c7 -> :sswitch_0
        0x8701c8 -> :sswitch_1
        0x8801c8 -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1d
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1c
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1b
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0x14
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x4
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x84
        0x2
        0x30
        0x5
    .end array-data
.end method
