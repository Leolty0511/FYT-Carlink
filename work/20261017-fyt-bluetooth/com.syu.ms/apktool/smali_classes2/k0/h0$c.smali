.class public Lk0/h0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/h0;


# direct methods
.method public constructor <init>(Lk0/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/h0$c;->a:Lk0/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/h0$c;->a:Lk0/h0;

    iget v1, v0, Lk0/h0;->n:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lk0/h0;->n:I

    const/4 v2, 0x5

    if-lez v1, :cond_6

    .line 2
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x1e

    const/16 v3, 0x5a

    const/16 v4, 0x59

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_2

    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    const/16 v1, 0x48

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    sparse-switch v0, :sswitch_data_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    :sswitch_0
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    :sswitch_3
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v2, [I

    .line 10
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    :sswitch_5
    new-array v0, v2, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    :pswitch_4
    new-array v0, v2, [I

    .line 13
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    .line 14
    :goto_0
    sget v0, Lk0/nt;->c:I

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    const/16 v1, 0x70

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_4

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_1

    :pswitch_5
    new-array v0, v2, [I

    .line 15
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_6
    new-array v0, v2, [I

    .line 16
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_7
    new-array v0, v2, [I

    .line 17
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_1

    :pswitch_8
    new-array v0, v2, [I

    .line 18
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_9
    new-array v0, v2, [I

    .line 19
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_a
    new-array v0, v2, [I

    .line 20
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_b
    new-array v0, v2, [I

    .line 21
    fill-array-data v0, :array_11

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_c
    new-array v0, v2, [I

    .line 22
    fill-array-data v0, :array_12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_d
    new-array v0, v2, [I

    .line 23
    fill-array-data v0, :array_13

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_e
    new-array v0, v2, [I

    .line 24
    fill-array-data v0, :array_14

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :pswitch_f
    new-array v0, v2, [I

    .line 25
    fill-array-data v0, :array_15

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    new-array v0, v2, [I

    .line 26
    fill-array-data v0, :array_16

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_4
    new-array v0, v2, [I

    .line 27
    fill-array-data v0, :array_17

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_5
    new-array v0, v2, [I

    .line 28
    fill-array-data v0, :array_18

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 29
    :cond_6
    iget-object v0, v0, Lk0/h0;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 30
    iget-object v0, p0, Lk0/h0$c;->a:Lk0/h0;

    iput v2, v0, Lk0/h0;->n:I

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_4
        0x18 -> :sswitch_3
        0x1a -> :sswitch_3
        0x30 -> :sswitch_2
        0x40 -> :sswitch_1
        0x4a -> :sswitch_5
        0x4d -> :sswitch_5
        0x4f -> :sswitch_5
        0x55 -> :sswitch_5
        0x5c -> :sswitch_3
        0x62 -> :sswitch_0
        0x6e -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x27
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x64
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x61
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x69
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x2a
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x2a
        0x6
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x2a
        0x8
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x2a
        0x2
        0x0
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x2a
        0xb
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x2a
        0x9
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x2a
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x2a
        0x7
        0x0
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x2a
        0x10
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x2a
        0xc
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x2a
        0x5
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x35
        0x7
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x33
        0x7
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x30
        0x7
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0x32
        0x7
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        0x24
        0x29
        0x7
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x2
        0x24
        0x28
        0x7
    .end array-data

    :array_11
    .array-data 4
        0xe3
        0x2
        0x24
        0x2d
        0x7
    .end array-data

    :array_12
    .array-data 4
        0xe3
        0x2
        0x24
        0x2a
        0x7
    .end array-data

    :array_13
    .array-data 4
        0xe3
        0x2
        0x24
        0xe
        0x7
    .end array-data

    :array_14
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0x7
    .end array-data

    :array_15
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x7
    .end array-data

    :array_16
    .array-data 4
        0xe3
        0x2
        0x24
        0x31
        0x7
    .end array-data

    :array_17
    .array-data 4
        0xe3
        0x2
        0x24
        0x37
        0x7
    .end array-data

    :array_18
    .array-data 4
        0xe3
        0x2
        0x24
        0x36
        0x7
    .end array-data
.end method
