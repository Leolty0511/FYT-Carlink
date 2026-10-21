.class public Lk0/l3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/l3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/l3;


# direct methods
.method public constructor <init>(Lk0/l3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/l3$b;->a:Lk0/l3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/l3$b;->a:Lk0/l3;

    iget v1, v0, Lk0/l3;->q:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/l3;->q:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

    .line 2
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v3, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_9
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_a
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_b
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_c
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_d
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_e
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    .line 18
    :goto_0
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lk0/l3$b;->a:Lk0/l3;

    invoke-static {v0}, Lk0/l3;->d3(Lk0/l3;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v0, v2}, Lk0/l3;->e3(Lk0/l3;I)V

    .line 20
    :cond_0
    iget-object v0, p0, Lk0/l3$b;->a:Lk0/l3;

    invoke-static {v0}, Lk0/l3;->d3(Lk0/l3;)Lo1/g0;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/l3;->f3(Lk0/l3;I)V

    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, v0, Lk0/l3;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 22
    iget-object v0, p0, Lk0/l3$b;->a:Lk0/l3;

    iput v3, v0, Lk0/l3;->q:I

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x13
        0x13
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x12
        0x13
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x11
        0x13
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x19
        0x13
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0xf
        0x13
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0xe
        0x13
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0xd
        0x13
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x13
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0x13
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x13
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x13
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0x13
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x13
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x13
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x13
    .end array-data
.end method
