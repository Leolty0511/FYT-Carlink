.class public Lk0/tq$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/tq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/tq;


# direct methods
.method public constructor <init>(Lk0/tq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    iget v1, v0, Lk0/tq;->H:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/tq;->H:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v4, 0x0

    aput v1, v0, v4

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 2
    sget v5, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v5, v0, v6

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_2

    .line 4
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v5

    const/4 v7, 0x7

    invoke-virtual {v5, v7, v4}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v0, v5}, Lk0/tq;->h3(Lk0/tq;I)V

    .line 5
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v5

    const/16 v7, 0xa

    const/16 v8, 0x14

    invoke-virtual {v5, v7, v8}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v0, v5}, Lk0/tq;->i3(Lk0/tq;I)V

    .line 6
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v5

    const/16 v7, 0xb

    const/16 v8, 0x16

    invoke-virtual {v5, v7, v8}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v0, v5}, Lk0/tq;->j3(Lk0/tq;I)V

    .line 7
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v5

    const/16 v7, 0x19

    invoke-virtual {v5, v7, v4}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v0, v5}, Lk0/tq;->k3(Lk0/tq;I)V

    .line 8
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v5

    const/16 v7, 0xd

    invoke-virtual {v5, v7, v4}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v0, v5}, Lk0/tq;->l3(Lk0/tq;I)V

    .line 9
    sget v0, Lk0/nt;->a:I

    const/16 v5, 0xc

    sparse-switch v0, :sswitch_data_0

    .line 10
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tq;->m3(Lk0/tq;I)V

    .line 11
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tq;->d3(Lk0/tq;I)V

    goto :goto_0

    .line 12
    :sswitch_0
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v2}, Lk0/tq;->m3(Lk0/tq;I)V

    .line 13
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v1}, Lk0/tq;->d3(Lk0/tq;I)V

    goto :goto_0

    .line 14
    :sswitch_1
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v2}, Lk0/tq;->m3(Lk0/tq;I)V

    .line 15
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v1}, Lk0/tq;->d3(Lk0/tq;I)V

    goto :goto_0

    .line 16
    :sswitch_2
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v4}, Lk0/tq;->m3(Lk0/tq;I)V

    .line 17
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v1}, Lk0/tq;->d3(Lk0/tq;I)V

    goto :goto_0

    .line 18
    :sswitch_3
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tq;->m3(Lk0/tq;I)V

    .line 19
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v2}, Lk0/tq;->d3(Lk0/tq;I)V

    goto :goto_0

    .line 20
    :sswitch_4
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tq;->m3(Lk0/tq;I)V

    .line 21
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v6}, Lk0/tq;->d3(Lk0/tq;I)V

    goto :goto_0

    .line 22
    :sswitch_5
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0}, Lk0/tq;->g3(Lk0/tq;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/tq;->m3(Lk0/tq;I)V

    .line 23
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    invoke-static {v0, v4}, Lk0/tq;->d3(Lk0/tq;I)V

    .line 24
    :goto_0
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lu0/b;->D:I

    if-eq v0, v7, :cond_0

    .line 25
    invoke-static {}, Lk0/tq;->f3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    new-array v0, v3, [I

    .line 26
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 27
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 28
    :cond_0
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_1

    :sswitch_6
    new-array v0, v3, [I

    .line 29
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :sswitch_7
    new-array v0, v3, [I

    .line 30
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 31
    :cond_1
    iget-object v0, v0, Lk0/tq;->J:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 32
    iget-object v0, p0, Lk0/tq$i;->a:Lk0/tq;

    iput v3, v0, Lk0/tq;->H:I

    :cond_2
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1601c8 -> :sswitch_5
        0x1701c8 -> :sswitch_4
        0x1801c8 -> :sswitch_3
        0x1901c8 -> :sswitch_2
        0x6001c8 -> :sswitch_5
        0x6101c8 -> :sswitch_4
        0x6201c8 -> :sswitch_3
        0x6301c8 -> :sswitch_2
        0x9801c8 -> :sswitch_1
        0x9901c8 -> :sswitch_0
        0x9a01c8 -> :sswitch_1
        0x9b01c8 -> :sswitch_0
        0xa201c8 -> :sswitch_5
        0xa301c8 -> :sswitch_4
        0xa401c8 -> :sswitch_3
        0xa501c8 -> :sswitch_2
        0xa601c8 -> :sswitch_5
        0xa701c8 -> :sswitch_4
        0xa801c8 -> :sswitch_3
        0xa901c8 -> :sswitch_2
        0xaa01c8 -> :sswitch_3
        0xab01c8 -> :sswitch_2
        0xac01c8 -> :sswitch_3
        0xad01c8 -> :sswitch_2
        0xae01c8 -> :sswitch_1
        0xaf01c8 -> :sswitch_1
        0xb001c8 -> :sswitch_0
        0xb101c8 -> :sswitch_0
        0xb201c8 -> :sswitch_0
        0xbb01c8 -> :sswitch_1
        0xbc01c8 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xf001c7 -> :sswitch_7
        0xf101c7 -> :sswitch_6
        0xf201c7 -> :sswitch_7
        0xf301c7 -> :sswitch_6
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0xb5
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0xb0
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x3
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xc6
        0x2
        0x3
        0x0
    .end array-data
.end method
