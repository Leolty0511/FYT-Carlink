.class public Lk0/ak$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ak;


# direct methods
.method public constructor <init>(Lk0/ak;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ak$e;->a:Lk0/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ak$e;->a:Lk0/ak;

    iget v1, v0, Lk0/ak;->u:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ak;->u:I

    if-lez v1, :cond_4

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_5

    .line 3
    rem-int/lit8 v1, v1, 0x4

    const/4 v0, 0x6

    if-nez v1, :cond_0

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lk0/ak$e;->a:Lk0/ak;

    iget v1, v1, Lk0/ak;->u:I

    rem-int/lit8 v1, v1, 0x4

    if-ne v1, v2, :cond_1

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 7
    :cond_1
    iget-object v1, p0, Lk0/ak$e;->a:Lk0/ak;

    iget v1, v1, Lk0/ak;->u:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    new-array v1, v0, [I

    .line 8
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 9
    :cond_2
    iget-object v1, p0, Lk0/ak$e;->a:Lk0/ak;

    iget v1, v1, Lk0/ak;->u:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 11
    :cond_3
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x5

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v1, [I

    .line 13
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v1, [I

    .line 14
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v1, [I

    .line 15
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v1, [I

    .line 16
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v1, [I

    .line 17
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v1, [I

    .line 18
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v1, [I

    .line 19
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v1, [I

    .line 20
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v1, [I

    .line 21
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v1, [I

    .line 22
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_b
    new-array v0, v1, [I

    .line 23
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 24
    :cond_4
    iget-object v0, v0, Lk0/ak;->w:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->o0(Ljava/lang/Runnable;)V

    .line 25
    iget-object v0, p0, Lk0/ak$e;->a:Lk0/ak;

    const/16 v1, 0xa

    iput v1, v0, Lk0/ak;->u:I

    :cond_5
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x301bc -> :sswitch_b
        0x401bc -> :sswitch_a
        0x401be -> :sswitch_9
        0x501be -> :sswitch_8
        0x601be -> :sswitch_7
        0xa01be -> :sswitch_6
        0xb01bc -> :sswitch_b
        0xd01bc -> :sswitch_b
        0xe01bc -> :sswitch_a
        0xe01be -> :sswitch_5
        0xf01bc -> :sswitch_a
        0x1001bc -> :sswitch_a
        0x1101bc -> :sswitch_b
        0x1201bc -> :sswitch_b
        0x1301bc -> :sswitch_7
        0x1401bc -> :sswitch_7
        0x1501be -> :sswitch_4
        0x1a01bb -> :sswitch_4
        0x1a01be -> :sswitch_3
        0x1b01be -> :sswitch_3
        0x1c01bc -> :sswitch_2
        0x1c01be -> :sswitch_3
        0x1d01bc -> :sswitch_b
        0x2a01be -> :sswitch_7
        0x2b01be -> :sswitch_b
        0x2f01bc -> :sswitch_b
        0x3201bc -> :sswitch_b
        0x3401be -> :sswitch_1
        0x3501be -> :sswitch_1
        0x7701bb -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x31
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x61
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x3
        0x6a
        0x5
        0x1
        0x62
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0x26
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x16
        0x26
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x11
        0x26
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0x26
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x26
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x26
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x26
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x26
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x13
        0x26
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x12
        0x26
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x26
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        0x24
        0xd
        0x26
    .end array-data
.end method
