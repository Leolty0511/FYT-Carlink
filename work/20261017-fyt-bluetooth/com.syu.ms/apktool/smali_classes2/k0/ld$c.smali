.class public Lk0/ld$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ld;


# direct methods
.method public constructor <init>(Lk0/ld;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ld$c;->a:Lk0/ld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/ld$c;->a:Lk0/ld;

    iget v1, v0, Lk0/ld;->k:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ld;->k:I

    const/4 v3, 0x5

    if-lez v1, :cond_6

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    sget v0, Lk0/nt;->c:I

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_5

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    :pswitch_6
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 17
    :cond_6
    iget-object v0, v0, Lk0/ld;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 18
    iget-object v0, p0, Lk0/ld$c;->a:Lk0/ld;

    iput v3, v0, Lk0/ld;->k:I

    :cond_7
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x87
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x1c
        0x35
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x1b
        0x35
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x1a
        0x35
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x18
        0x35
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x12
        0x35
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x1d
        0x35
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x35
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x16
        0x35
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0x35
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0xe
        0x35
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0x35
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x13
        0x35
    .end array-data
.end method
