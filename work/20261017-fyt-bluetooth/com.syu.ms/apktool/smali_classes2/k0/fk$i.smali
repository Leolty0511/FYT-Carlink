.class public Lk0/fk$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fk;


# direct methods
.method public constructor <init>(Lk0/fk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fk$i;->a:Lk0/fk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/fk$i;->a:Lk0/fk;

    iget v1, v0, Lk0/fk;->C:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/fk;->C:I

    const/4 v3, 0x5

    if-lez v1, :cond_2

    .line 2
    sget v0, Lu0/b;->a0:I

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    iget-object v0, p0, Lk0/fk$i;->a:Lk0/fk;

    invoke-static {v0}, Lk0/fk;->g3(Lk0/fk;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/fk;->h3(Lk0/fk;I)V

    .line 5
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    .line 16
    :goto_0
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_1

    .line 17
    :sswitch_a
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    .line 18
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_0
    new-array v0, v1, [I

    .line 19
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 20
    :cond_1
    sget v0, Lk0/nt;->a:I

    const v5, 0x9201bb

    if-ne v0, v5, :cond_3

    const/4 v0, 0x3

    if-gt v1, v0, :cond_3

    .line 21
    sget v0, Lu0/b;->o:I

    if-ne v0, v2, :cond_3

    new-array v0, v3, [I

    .line 22
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    .line 23
    invoke-static {v4}, Lk0/qt;->a(I)V

    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, v0, Lk0/fk;->E:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 25
    iget-object v0, p0, Lk0/fk$i;->a:Lk0/fk;

    iput v3, v0, Lk0/fk;->C:I

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x701be -> :sswitch_9
        0x801be -> :sswitch_9
        0x1201be -> :sswitch_8
        0x1301be -> :sswitch_7
        0x5301bc -> :sswitch_6
        0x5801bc -> :sswitch_6
        0x8e01bb -> :sswitch_5
        0x8f01bb -> :sswitch_4
        0x9001bb -> :sswitch_3
        0x9101bb -> :sswitch_2
        0x9201bb -> :sswitch_2
        0xfb01bb -> :sswitch_1
        0xfc01bb -> :sswitch_1
        0xfd01bb -> :sswitch_0
        0xfe01bb -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x701be -> :sswitch_a
        0x801be -> :sswitch_a
        0x1201be -> :sswitch_a
        0x1301be -> :sswitch_a
        0x5301bc -> :sswitch_a
        0x5801bc -> :sswitch_a
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x4
        0x6f
        0x28
        0x0
        0xff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0x31
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x31
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x31
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x31
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x31
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0x31
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0x31
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0xf
        0x31
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x31
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0xd
        0x31
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x3
        -0x60
        0x0
        0x1
        0x0
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x3
        -0x60
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0xfd
        0xa
        0x0
    .end array-data
.end method
