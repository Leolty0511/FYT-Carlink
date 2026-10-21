.class public Lk0/id$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/id;


# direct methods
.method public constructor <init>(Lk0/id;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/id$c;->a:Lk0/id;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/id$c;->a:Lk0/id;

    iget v1, v0, Lk0/id;->s:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/id;->s:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 3
    sget v1, Lk0/nt;->c:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x17

    .line 6
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x16

    .line 7
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    goto/16 :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0x14

    .line 16
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    goto/16 :goto_0

    :pswitch_e
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_f
    new-array v0, v3, [I

    .line 18
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_10
    new-array v0, v3, [I

    .line 19
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_11
    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_12
    const/16 v1, 0xc

    .line 21
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    goto :goto_0

    :pswitch_13
    const/16 v1, 0xb

    .line 22
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    goto :goto_0

    :pswitch_14
    const/16 v1, 0x10

    .line 23
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    goto :goto_0

    :pswitch_15
    const/16 v1, 0xa

    .line 24
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    new-array v0, v3, [I

    .line 25
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_16
    const/16 v1, 0x9

    .line 26
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    new-array v0, v3, [I

    .line 27
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_17
    const/16 v1, 0x8

    .line 28
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    goto :goto_0

    :pswitch_18
    new-array v0, v3, [I

    .line 29
    fill-array-data v0, :array_10

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_19
    const/16 v1, 0x13

    .line 30
    invoke-static {v0, v1}, Lk0/id;->g3(Lk0/id;I)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, v0, Lk0/id;->u:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 32
    iget-object v0, p0, Lk0/id$c;->a:Lk0/id;

    iput v3, v0, Lk0/id;->s:I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_19
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0x26
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0xc
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x28
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0x35
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0x26
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x26
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0xc
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0xc
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x27
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x28
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0xf
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x26
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x1
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x87
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x20
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x2
    .end array-data

    :array_10
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x20
    .end array-data
.end method
