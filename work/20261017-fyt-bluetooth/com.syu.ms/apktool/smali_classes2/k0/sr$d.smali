.class public Lk0/sr$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/sr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/sr;


# direct methods
.method public constructor <init>(Lk0/sr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/sr$d;->a:Lk0/sr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/sr$d;->a:Lk0/sr;

    iget v1, v0, Lk0/sr;->k:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/sr;->k:I

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

    const/4 v5, 0x3

    .line 2
    sget v6, Lu0/b;->a0:I

    aput v6, v1, v5

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    iget-object v1, p0, Lk0/sr$d;->a:Lk0/sr;

    invoke-static {v1}, Lk0/sr;->i3(Lk0/sr;)Lo1/g0;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lo1/g0;->b(II)I

    move-result v2

    invoke-static {v1, v2}, Lk0/sr;->j3(Lk0/sr;I)V

    .line 6
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v0, [I

    .line 13
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v0, [I

    .line 14
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v0, [I

    .line 17
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_b
    new-array v0, v0, [I

    .line 18
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, v0, Lk0/sr;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 20
    iget-object v0, p0, Lk0/sr$d;->a:Lk0/sr;

    const/4 v1, 0x5

    iput v1, v0, Lk0/sr;->k:I

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2a01c6 -> :sswitch_b
        0x2b01c6 -> :sswitch_a
        0x2c01c6 -> :sswitch_9
        0x2d01c6 -> :sswitch_8
        0x2e01c6 -> :sswitch_7
        0x2f01c6 -> :sswitch_6
        0x3001c6 -> :sswitch_5
        0x3101c6 -> :sswitch_4
        0x3201c6 -> :sswitch_3
        0x3301c6 -> :sswitch_2
        0x3401c6 -> :sswitch_1
        0x3501c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0xb
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0xa
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0x9
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x1
        0x8
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xe2
        0x1
        0x7
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0x6
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x5
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xe2
        0x1
        0x4
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0xe2
        0x1
        0x3
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0xe2
        0x1
        0x0
    .end array-data
.end method
