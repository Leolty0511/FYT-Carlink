.class public Lk0/ck$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ck;


# direct methods
.method public constructor <init>(Lk0/ck;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ck$e;->a:Lk0/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/ck$e;->a:Lk0/ck;

    iget v1, v0, Lk0/ck;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ck;->n:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_2

    .line 3
    sget v0, Lk0/nt;->a:I

    const v1, 0x101bb

    if-ne v0, v1, :cond_0

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_b
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, v0, Lk0/ck;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 19
    iget-object v0, p0, Lk0/ck$e;->a:Lk0/ck;

    iput v3, v0, Lk0/ck;->n:I

    :cond_2
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1bb -> :sswitch_b
        0x6101bc -> :sswitch_a
        0x6201bc -> :sswitch_9
        0x6401bc -> :sswitch_9
        0x6b01bb -> :sswitch_b
        0x8501bb -> :sswitch_b
        0x8601bb -> :sswitch_8
        0x8701bb -> :sswitch_7
        0x8801bb -> :sswitch_6
        0x8901bb -> :sswitch_5
        0x8a01bb -> :sswitch_4
        0x8c01bb -> :sswitch_3
        0x8d01bb -> :sswitch_5
        0xdb01bb -> :sswitch_2
        0xdc01bb -> :sswitch_1
        0xe201bb -> :sswitch_0
        0xe301bb -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0xd
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x0
        0x1a
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0x1a
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0x1a
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0x1a
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x1a
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0xe
        0x1a
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0xd
        0x1a
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x1a
    .end array-data
.end method
