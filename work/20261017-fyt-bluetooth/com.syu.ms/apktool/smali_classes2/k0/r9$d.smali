.class public Lk0/r9$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/r9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/r9;


# direct methods
.method public constructor <init>(Lk0/r9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/r9$d;->a:Lk0/r9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/r9$d;->a:Lk0/r9;

    iget v1, v0, Lk0/r9;->p:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/r9;->p:I

    if-lez v1, :cond_2

    .line 2
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_3

    .line 3
    sget v1, Lk0/nt;->a:I

    const/16 v3, 0x104

    const/4 v4, 0x2

    const/16 v5, 0x24

    if-eq v1, v3, :cond_1

    const v3, 0x10104

    if-eq v1, v3, :cond_1

    const v3, 0x20104

    if-ne v1, v3, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    sget v1, Lk0/nt;->c:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-array v1, v4, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto/16 :goto_1

    :pswitch_1
    new-array v1, v4, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto/16 :goto_1

    :pswitch_2
    new-array v1, v4, [I

    .line 7
    fill-array-data v1, :array_2

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto/16 :goto_1

    :pswitch_3
    new-array v1, v4, [I

    .line 8
    fill-array-data v1, :array_3

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto/16 :goto_1

    :pswitch_4
    new-array v1, v4, [I

    .line 9
    fill-array-data v1, :array_4

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto/16 :goto_1

    .line 10
    :pswitch_5
    invoke-static {v0}, Lk0/r9;->g3(Lk0/r9;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/r9;->h3(Lk0/r9;I)V

    .line 11
    iget-object v0, p0, Lk0/r9$d;->a:Lk0/r9;

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto :goto_1

    :pswitch_6
    new-array v1, v4, [I

    .line 12
    fill-array-data v1, :array_6

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto :goto_1

    .line 13
    :pswitch_7
    invoke-static {v0}, Lk0/r9;->g3(Lk0/r9;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/r9;->h3(Lk0/r9;I)V

    .line 14
    iget-object v0, p0, Lk0/r9$d;->a:Lk0/r9;

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto :goto_1

    :pswitch_8
    new-array v1, v4, [I

    .line 15
    fill-array-data v1, :array_8

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto :goto_1

    :pswitch_9
    new-array v1, v4, [I

    .line 16
    fill-array-data v1, :array_9

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    .line 17
    iget-object v0, p0, Lk0/r9$d;->a:Lk0/r9;

    invoke-static {v0}, Lk0/r9;->g3(Lk0/r9;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/r9;->h3(Lk0/r9;I)V

    goto :goto_1

    :pswitch_a
    new-array v1, v4, [I

    .line 18
    fill-array-data v1, :array_a

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto :goto_1

    :pswitch_b
    new-array v1, v4, [I

    .line 19
    fill-array-data v1, :array_b

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto :goto_1

    :pswitch_c
    new-array v1, v4, [I

    .line 20
    fill-array-data v1, :array_c

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array v1, v4, [I

    .line 21
    fill-array-data v1, :array_d

    invoke-static {v0, v5, v1}, Lk0/r9;->f3(Lk0/r9;I[I)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, v0, Lk0/r9;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lk0/r9$d;->a:Lk0/r9;

    const/4 v1, 0x5

    iput v1, v0, Lk0/r9;->p:I

    :cond_3
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x2
        0xe
    .end array-data

    :array_1
    .array-data 4
        0xf
        0xe
    .end array-data

    :array_2
    .array-data 4
        0xe
        0xe
    .end array-data

    :array_3
    .array-data 4
        0xd
        0xe
    .end array-data

    :array_4
    .array-data 4
        0xc
        0xe
    .end array-data

    :array_5
    .array-data 4
        0xb
        0xe
    .end array-data

    :array_6
    .array-data 4
        0xa
        0xe
    .end array-data

    :array_7
    .array-data 4
        0x9
        0xe
    .end array-data

    :array_8
    .array-data 4
        0x8
        0xe
    .end array-data

    :array_9
    .array-data 4
        0x7
        0xe
    .end array-data

    :array_a
    .array-data 4
        0x6
        0xe
    .end array-data

    :array_b
    .array-data 4
        0x4
        0xe
    .end array-data

    :array_c
    .array-data 4
        0x2
        0xe
    .end array-data

    :array_d
    .array-data 4
        0x1
        0xe
    .end array-data
.end method
