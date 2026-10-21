.class public Lk0/s9;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static o:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:I

.field public g:[I

.field public h:I

.field public i:Lo1/g0;

.field public final j:I

.field public final k:[B

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/s9;->c:I

    const/16 v1, 0xe

    new-array v1, v1, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 3
    fill-array-data v3, :array_0

    aput-object v3, v1, v0

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v5, 0x3

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v5, 0x4

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v5, 0x5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v5, 0x6

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v5, 0x7

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v5, 0x8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v5, 0x9

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v5, 0xa

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v5, 0xb

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v5, 0xc

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v5, 0xd

    aput-object v3, v1, v5

    iput-object v1, p0, Lk0/s9;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/s9;->e:Z

    .line 5
    iput v0, p0, Lk0/s9;->f:I

    new-array v1, v2, [I

    .line 6
    fill-array-data v1, :array_e

    iput-object v1, p0, Lk0/s9;->g:[I

    .line 7
    iput v0, p0, Lk0/s9;->h:I

    .line 8
    new-instance v1, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    invoke-direct {v1, v2, v3}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lk0/s9;->i:Lo1/g0;

    .line 9
    iput v4, p0, Lk0/s9;->j:I

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 10
    iput-object v1, p0, Lk0/s9;->k:[B

    .line 11
    iput v0, p0, Lk0/s9;->l:I

    .line 12
    iput v0, p0, Lk0/s9;->m:I

    .line 13
    iput v0, p0, Lk0/s9;->n:I

    return-void

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x8
        0xd
    .end array-data

    :array_6
    .array-data 4
        0xa
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x12
        0x19
    .end array-data

    :array_8
    .array-data 4
        0x20
        0x7
    .end array-data

    :array_9
    .array-data 4
        0x21
        0x8
    .end array-data

    :array_a
    .array-data 4
        0x22
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x23
        0x9
    .end array-data

    :array_c
    .array-data 4
        0x25
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x26
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static c3([B)V
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 2
    array-length v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    .line 3
    aget-byte v3, p0, v1

    add-int/2addr v2, v3

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, v2, 0xff

    int-to-byte v1, v1

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 4
    aput-byte v1, p0, v0

    .line 5
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_1
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 4

    if-eqz p1, :cond_8

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v0, p1, v0

    const/16 v2, 0x10

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v3

    if-eqz p1, :cond_1

    const/16 p1, 0x9

    .line 4
    invoke-virtual {p0, p1}, Lk0/s9;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1}, Lk0/s9;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/16 p1, 0x14

    .line 7
    invoke-virtual {p0, p1}, Lk0/s9;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x15

    .line 8
    invoke-virtual {p0, p1}, Lk0/s9;->a3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget v0, p1, v3

    const/16 v1, 0x23

    const/16 v2, 0xc

    if-ne v0, v3, :cond_3

    .line 10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_8

    .line 11
    invoke-virtual {p0, v1}, Lk0/s9;->a3(I)V

    goto/16 :goto_0

    .line 12
    :cond_3
    aget p1, p1, v3

    if-nez p1, :cond_8

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_8

    .line 14
    invoke-virtual {p0, v1}, Lk0/s9;->a3(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_4
    aget p1, p1, v3

    const/4 v0, 0x4

    if-eqz p1, :cond_4

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_8

    .line 17
    invoke-virtual {p0, v0}, Lk0/s9;->a3(I)V

    goto :goto_0

    .line 18
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v3, :cond_8

    .line 19
    invoke-virtual {p0, v0}, Lk0/s9;->a3(I)V

    goto :goto_0

    .line 20
    :pswitch_5
    aget p1, p1, v3

    const/4 v0, 0x3

    const/4 v1, 0x6

    const/16 v2, 0x4d

    if-eqz p1, :cond_5

    .line 21
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-eq p1, v1, :cond_8

    .line 22
    invoke-virtual {p0, v0}, Lk0/s9;->a3(I)V

    goto :goto_0

    .line 23
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v1, :cond_8

    .line 24
    invoke-virtual {p0, v0}, Lk0/s9;->a3(I)V

    goto :goto_0

    .line 25
    :pswitch_6
    aget p1, p1, v3

    const/16 v0, 0xd

    if-eqz p1, :cond_6

    .line 26
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_8

    .line 27
    invoke-virtual {p0, v1}, Lk0/s9;->a3(I)V

    goto :goto_0

    .line 28
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_8

    .line 29
    invoke-virtual {p0, v1}, Lk0/s9;->a3(I)V

    goto :goto_0

    .line 30
    :pswitch_7
    aget p1, p1, v3

    const/16 v0, 0xb

    if-eqz p1, :cond_7

    .line 31
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_8

    .line 32
    invoke-virtual {p0, v2}, Lk0/s9;->a3(I)V

    goto :goto_0

    .line 33
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v3, :cond_8

    .line 34
    invoke-virtual {p0, v2}, Lk0/s9;->a3(I)V

    goto :goto_0

    .line 35
    :pswitch_8
    invoke-virtual {p0, v3}, Lk0/s9;->a3(I)V

    :cond_8
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    .line 2
    iput v2, v0, Lk0/mt;->e:I

    .line 3
    iput v2, v0, Lk0/mt;->f:I

    .line 4
    iput v2, v0, Lk0/mt;->g:I

    const/4 v3, 0x1

    .line 5
    iput v3, v0, Lk0/mt;->h:I

    .line 6
    iput v3, v0, Lk0/mt;->o:I

    .line 7
    sget v4, Lk0/nt;->c:I

    const/4 v5, 0x2

    if-eqz v4, :cond_2

    const/16 v6, 0x8

    if-eq v4, v3, :cond_1

    if-eq v4, v5, :cond_0

    const/16 v3, 0xc

    if-eq v4, v3, :cond_2

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lk0/s9;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 9
    iget-object v0, p0, Lk0/s9;->i:Lo1/g0;

    invoke-virtual {v0, v3, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/s9;->b3(I)V

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 11
    iput v3, v0, Lk0/mt;->e:I

    .line 12
    iput v2, v0, Lk0/mt;->f:I

    .line 13
    iput v3, v0, Lk0/mt;->g:I

    .line 14
    iput v2, v0, Lk0/mt;->h:I

    new-array v1, v6, [I

    .line 15
    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Lk0/s9;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 17
    iget-object v0, p0, Lk0/s9;->i:Lo1/g0;

    invoke-virtual {v0, v3, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/s9;->b3(I)V

    .line 18
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 19
    iput v3, v0, Lk0/mt;->e:I

    .line 20
    iput v2, v0, Lk0/mt;->f:I

    .line 21
    iput v3, v0, Lk0/mt;->g:I

    .line 22
    iput v2, v0, Lk0/mt;->h:I

    new-array v1, v6, [I

    .line 23
    fill-array-data v1, :array_1

    iput-object v1, v0, Lk0/mt;->m:[I

    goto :goto_0

    .line 24
    :cond_2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 25
    iput v2, v0, Lk0/mt;->e:I

    .line 26
    iput v2, v0, Lk0/mt;->f:I

    .line 27
    iput v2, v0, Lk0/mt;->g:I

    .line 28
    iput v5, v0, Lk0/mt;->h:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 29
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
    .end array-data

    :array_1
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x1
        0x61
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x20

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_24

    const/16 v3, 0x24

    const/4 v8, 0x4

    const/4 v9, 0x2

    if-eq v2, v3, :cond_1e

    const/16 v10, 0x26

    if-eq v2, v10, :cond_1d

    const/16 v10, 0x29

    if-eq v2, v10, :cond_1c

    const/16 v10, 0x30

    if-eq v2, v10, :cond_1b

    const/16 v10, 0x55

    if-eq v2, v10, :cond_b

    const/16 v3, 0x57

    if-eq v2, v3, :cond_a

    const/16 v3, 0x7d

    const/16 v10, 0x64

    const v11, 0xff00

    if-eq v2, v3, :cond_5

    const/16 v3, 0x41

    if-eq v2, v3, :cond_4

    const/16 v3, 0x42

    const/16 v8, 0x63

    const/16 v12, 0x62

    if-eq v2, v3, :cond_3

    const/16 v3, 0x60

    if-eq v2, v3, :cond_1

    const/16 v3, 0x61

    if-eq v2, v3, :cond_0

    goto/16 :goto_e

    :cond_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 3
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 4
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v7

    aput v3, v2, v6

    .line 5
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 6
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 7
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v7, [I

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v7

    aput v4, v3, v6

    .line 8
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 9
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_1
    add-int/lit8 v2, p2, 0x2

    .line 10
    aget-byte v2, v1, v2

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v7, :cond_2

    .line 11
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v6}, Lk0/qt;->a(I)V

    :goto_0
    const/16 v2, 0x3f5

    new-array v3, v7, [I

    add-int/lit8 v4, p2, 0x3

    .line 13
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 14
    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lk0/s9;->f:I

    goto/16 :goto_e

    :cond_3
    add-int/lit8 v2, p2, 0x2

    .line 15
    aget-byte v2, v1, v2

    if-ne v2, v7, :cond_2e

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x3

    .line 16
    aget-byte v3, v1, v3

    shl-int/2addr v3, v4

    and-int/2addr v3, v11

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x5

    .line 17
    aget-byte v3, v1, v3

    shl-int/2addr v3, v4

    and-int/2addr v3, v11

    add-int/lit8 v5, p2, 0x6

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v3, v5

    aput v3, v2, v6

    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v7, [I

    add-int/lit8 v3, p2, 0x7

    .line 18
    aget-byte v3, v1, v3

    shl-int/2addr v3, v4

    and-int/2addr v3, v11

    add-int/lit8 v4, p2, 0x8

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v3

    aput v1, v2, v6

    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_4
    add-int/lit8 v2, p2, 0x2

    .line 19
    aget-byte v2, v1, v2

    if-ne v2, v9, :cond_2e

    const/16 v2, 0x66

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x3

    .line 20
    aget-byte v8, v1, v5

    shl-int/2addr v8, v4

    and-int/2addr v8, v11

    add-int/lit8 v9, p2, 0x4

    aget-byte v10, v1, v9

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v8, v10

    aput v8, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x408

    new-array v3, v7, [I

    .line 21
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int/2addr v5, v11

    aget-byte v8, v1, v9

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0x5

    .line 22
    aget-byte v5, v1, v5

    shl-int/2addr v5, v4

    and-int/2addr v5, v11

    add-int/lit8 v8, p2, 0x6

    aget-byte v8, v1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v5, v8

    aput v5, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v7, [I

    add-int/lit8 v5, p2, 0xb

    .line 23
    aget-byte v5, v1, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v7, 0xff0000

    and-int/2addr v5, v7

    add-int/lit8 v7, p2, 0xc

    aget-byte v7, v1, v7

    shl-int/lit8 v4, v7, 0x8

    and-int/2addr v4, v11

    or-int/2addr v4, v5

    add-int/lit8 v5, p2, 0xd

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v4

    aput v1, v3, v6

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_5
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v7, :cond_8

    if-eq v2, v5, :cond_7

    if-eq v2, v4, :cond_6

    goto/16 :goto_e

    :cond_6
    add-int/lit8 v2, p2, 0x3

    .line 25
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 26
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 27
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    .line 28
    iput-boolean v7, v0, Lk0/s9;->e:Z

    goto/16 :goto_e

    :cond_7
    add-int/lit8 v2, p2, 0x4

    .line 29
    aget-byte v2, v1, v2

    shl-int/2addr v2, v4

    and-int/2addr v2, v11

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    div-int/2addr v1, v10

    const/16 v2, 0x407

    new-array v3, v7, [I

    aput v1, v3, v6

    .line 30
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 31
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v9, [I

    aput v7, v4, v6

    aput v1, v4, v7

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_8
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 32
    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v2, p2, 0x3

    .line 33
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->b(III)V

    goto/16 :goto_e

    :cond_9
    add-int/lit8 v2, p2, 0x3

    .line 34
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    aget-byte v1, v1, v2

    shr-int/2addr v1, v8

    and-int/2addr v1, v7

    invoke-static {v3, v1, v6}, Ll0/c0;->a(III)V

    goto/16 :goto_e

    .line 35
    :cond_a
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->I(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_b
    add-int/lit8 v2, p2, 0x2

    .line 36
    aget-byte v4, v1, v2

    add-int/lit8 v10, p2, 0x3

    .line 37
    aget-byte v12, v1, v10

    add-int/lit8 v13, p2, 0x4

    .line 38
    aget-byte v13, v1, v13

    add-int/lit8 v14, p2, 0x6

    .line 39
    aget-byte v14, v1, v14

    add-int/lit8 v15, p2, 0x7

    .line 40
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x9

    .line 41
    aget-byte v16, v1, v16

    const-string v11, "persist.fyt.reversetemp"

    .line 42
    invoke-static {v11, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 43
    aget-byte v4, v1, v10

    .line 44
    aget-byte v12, v1, v2

    :cond_c
    const/16 v1, 0x1b

    if-ge v4, v3, :cond_d

    new-array v2, v7, [I

    const/4 v4, -0x2

    aput v4, v2, v6

    .line 45
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_d
    const/16 v2, 0x40

    if-le v4, v2, :cond_e

    new-array v2, v7, [I

    const/4 v4, -0x3

    aput v4, v2, v6

    .line 46
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_e
    new-array v2, v7, [I

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v6

    .line 47
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_1
    const/16 v1, 0x1c

    if-ge v12, v3, :cond_f

    new-array v2, v7, [I

    const/4 v3, -0x2

    aput v3, v2, v6

    .line 48
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_f
    const/16 v2, 0x40

    if-le v12, v2, :cond_10

    new-array v2, v7, [I

    const/4 v3, -0x3

    aput v3, v2, v6

    .line 49
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_10
    new-array v2, v7, [I

    and-int/lit16 v3, v12, 0xff

    aput v3, v2, v6

    .line 50
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0x15

    new-array v2, v7, [I

    and-int/lit8 v3, v13, 0xf

    aput v3, v2, v6

    .line 51
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v13, 0x4

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x6

    if-eqz v1, :cond_16

    if-eq v1, v7, :cond_15

    if-eq v1, v9, :cond_14

    if-eq v1, v5, :cond_13

    if-eq v1, v8, :cond_12

    if-eq v1, v2, :cond_11

    move v3, v6

    move v4, v3

    move v8, v4

    :goto_3
    move v9, v8

    goto :goto_4

    :cond_11
    move v3, v6

    move v8, v3

    move v9, v8

    move v4, v7

    goto :goto_4

    :cond_12
    move v3, v6

    move v8, v3

    move v4, v7

    move v9, v4

    goto :goto_4

    :cond_13
    move v3, v6

    move v4, v3

    move v8, v4

    move v9, v7

    goto :goto_4

    :cond_14
    move v3, v6

    move v4, v3

    move v8, v7

    goto :goto_3

    :cond_15
    move v3, v6

    move v4, v3

    move v9, v4

    move v8, v7

    goto :goto_4

    :cond_16
    move v4, v6

    move v8, v4

    move v9, v8

    move v3, v7

    :goto_4
    const/16 v10, 0x31

    new-array v11, v7, [I

    aput v3, v11, v6

    .line 52
    invoke-static {v10, v11}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x12

    new-array v10, v7, [I

    aput v4, v10, v6

    .line 53
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x13

    new-array v4, v7, [I

    aput v8, v4, v6

    .line 54
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x14

    new-array v4, v7, [I

    aput v9, v4, v6

    .line 55
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x4d

    new-array v4, v7, [I

    aput v1, v4, v6

    .line 56
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v3, v7, [I

    and-int/lit8 v4, v14, 0x1

    aput v4, v3, v6

    .line 57
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    new-array v1, v7, [I

    shr-int/lit8 v3, v14, 0x1

    and-int/2addr v3, v7

    aput v3, v1, v6

    const/16 v3, 0xb

    .line 58
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xe

    new-array v3, v7, [I

    shr-int/lit8 v4, v14, 0x2

    and-int/2addr v4, v7

    if-nez v4, :cond_17

    move v4, v7

    goto :goto_5

    :cond_17
    move v4, v6

    :goto_5
    aput v4, v3, v6

    .line 59
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v3, v7, [I

    shr-int/lit8 v2, v14, 0x6

    and-int/2addr v2, v7

    aput v2, v3, v6

    .line 60
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    and-int/lit8 v1, v15, 0x3

    if-ne v1, v7, :cond_18

    new-array v1, v7, [I

    aput v7, v1, v6

    const/16 v2, 0xc

    .line 61
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_6

    :cond_18
    const/16 v2, 0xc

    new-array v1, v7, [I

    aput v6, v1, v6

    .line 62
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_6
    mul-int/lit8 v1, v16, 0xa

    const/16 v2, 0x190

    if-ge v1, v2, :cond_19

    sub-int/2addr v2, v1

    rsub-int v6, v2, 0x3e8

    goto :goto_7

    :cond_19
    if-lt v1, v2, :cond_1a

    const/16 v3, 0x4e2

    if-gt v1, v3, :cond_1a

    add-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v6, v1, -0x190

    :cond_1a
    :goto_7
    const/16 v1, 0x258

    if-le v6, v1, :cond_2e

    .line 63
    invoke-static {v6}, Lu0/d;->A3(I)V

    goto/16 :goto_e

    .line 64
    :cond_1b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 65
    :cond_1c
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2e

    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 67
    aget-byte v1, v1, v3

    .line 68
    iget-boolean v3, v0, Lk0/s9;->e:Z

    if-nez v3, :cond_2e

    const/16 v3, 0x4dce

    .line 69
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_e

    .line 70
    :cond_1d
    sget v2, Lk0/nt;->c:I

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2e

    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 72
    aget-byte v1, v1, v3

    .line 73
    iget-boolean v3, v0, Lk0/s9;->e:Z

    if-nez v3, :cond_2e

    const/16 v3, 0x21c

    .line 74
    invoke-static {v2, v1, v7, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_e

    :cond_1e
    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 76
    aget-byte v1, v1, v3

    const/16 v3, 0x69

    new-array v10, v7, [I

    shr-int/lit8 v11, v2, 0x4

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 77
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6a

    new-array v10, v7, [I

    shr-int/lit8 v11, v2, 0x3

    and-int/2addr v11, v7

    aput v11, v10, v6

    .line 78
    invoke-static {v3, v10}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v10, v1, 0x4

    and-int/2addr v10, v7

    aput v10, v3, v6

    const/4 v10, 0x5

    .line 79
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v10, v1, 0x3

    and-int/2addr v10, v7

    aput v10, v3, v6

    .line 80
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/lit8 v8, v1, 0x2

    and-int/2addr v8, v7

    aput v8, v3, v6

    .line 81
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.syu.reversefrontdoor"

    .line 82
    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1f

    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x0

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 83
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 84
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1f
    new-array v3, v7, [I

    shr-int/lit8 v5, v1, 0x1

    and-int/2addr v5, v7

    aput v5, v3, v6

    .line 85
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v7, [I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    aput v1, v3, v6

    .line 86
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    shr-int/lit8 v1, v2, 0x1

    and-int/2addr v1, v7

    .line 87
    sget v3, Lk0/nt;->c:I

    if-eq v3, v7, :cond_22

    if-eq v3, v4, :cond_22

    .line 88
    sget v3, Lu0/b;->o:I

    if-eqz v3, :cond_20

    goto :goto_9

    :cond_20
    if-eqz v1, :cond_21

    .line 89
    sget-object v3, La/b;->O:Ljava/lang/String;

    invoke-static {v3}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 90
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_9

    .line 91
    :cond_21
    sget-object v3, La/b;->O:Ljava/lang/String;

    invoke-static {v3}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 92
    invoke-static {}, Lk0/qt;->f()V

    .line 93
    :cond_22
    :goto_9
    sget v3, Lk0/nt;->c:I

    if-ne v3, v4, :cond_2e

    shr-int/2addr v2, v9

    and-int/2addr v2, v7

    or-int/2addr v1, v2

    if-eqz v1, :cond_23

    .line 94
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    .line 95
    :cond_23
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_e

    .line 96
    :cond_24
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_2e

    add-int/lit8 v2, p2, 0x2

    .line 97
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 98
    aget-byte v1, v1, v5

    and-int/lit16 v2, v2, 0xff

    .line 99
    iput v2, v0, Lk0/s9;->c:I

    move v2, v6

    .line 100
    :goto_a
    iget-object v5, v0, Lk0/s9;->d:[[I

    array-length v8, v5

    if-ge v2, v8, :cond_26

    .line 101
    iget v8, v0, Lk0/s9;->c:I

    aget-object v9, v5, v2

    aget v9, v9, v6

    if-ne v8, v9, :cond_25

    if-eqz v8, :cond_26

    .line 102
    iput v2, v0, Lk0/s9;->b:I

    goto :goto_b

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 103
    :cond_26
    :goto_b
    iget v8, v0, Lk0/s9;->c:I

    const/16 v9, 0xa

    if-eq v8, v9, :cond_2c

    if-eq v8, v3, :cond_2a

    const/16 v3, 0x21

    if-eq v8, v3, :cond_28

    and-int/lit16 v1, v1, 0xff

    if-ne v1, v7, :cond_27

    .line 104
    array-length v1, v5

    if-ge v2, v1, :cond_2e

    .line 105
    aget-object v1, v5, v2

    aget v1, v1, v7

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_27
    if-nez v1, :cond_2e

    .line 106
    array-length v1, v5

    if-gt v2, v1, :cond_2e

    .line 107
    iget v1, v0, Lk0/s9;->b:I

    aget-object v1, v5, v1

    aget v1, v1, v7

    invoke-static {v1, v7}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_28
    move v2, v6

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_29

    .line 108
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 109
    :cond_29
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_2a
    move v2, v6

    :goto_d
    and-int/lit16 v3, v1, 0xff

    const/4 v4, 0x7

    if-ge v2, v3, :cond_2b

    .line 110
    invoke-static {v4, v6}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 111
    :cond_2b
    invoke-static {v4, v7}, Ll0/b0;->l0(II)V

    goto :goto_e

    :cond_2c
    and-int/lit16 v1, v1, 0xff

    if-ne v1, v7, :cond_2e

    .line 112
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_2d

    .line 113
    invoke-static {v7}, Lk0/qt;->a(I)V

    goto :goto_e

    :cond_2d
    if-ne v1, v7, :cond_2e

    .line 114
    invoke-static {v6}, Lk0/qt;->a(I)V

    :cond_2e
    :goto_e
    return-void
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/s9;->i:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x70

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0xe3

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-eqz v1, :cond_10

    if-eq v1, v7, :cond_f

    const/16 v3, 0x10

    const/4 v10, 0x6

    if-eq v1, v3, :cond_e

    const/16 v3, 0x12

    if-eq v1, v3, :cond_d

    const/16 v3, 0x3eb

    if-eq v1, v3, :cond_b

    const/16 v3, 0x3ed

    if-eq v1, v3, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v3, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FinalCanbus.C_CAMERA_MODE = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v2, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v3, v11}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    array-length v1, v2

    if-lez v1, :cond_e

    .line 3
    iget v1, v0, Lk0/s9;->f:I

    if-eq v1, v5, :cond_6

    if-eq v1, v8, :cond_6

    if-eq v1, v4, :cond_6

    if-ne v1, v10, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    aget v1, v2, v9

    if-eqz v1, :cond_5

    if-eq v1, v7, :cond_4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_2

    goto/16 :goto_1

    :cond_2
    new-array v1, v8, [I

    .line 5
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_3
    new-array v1, v8, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_1

    :cond_4
    new-array v1, v8, [I

    .line 7
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_5
    new-array v1, v8, [I

    .line 8
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 9
    :cond_6
    :goto_0
    aget v1, v2, v9

    if-eqz v1, :cond_a

    if-eq v1, v7, :cond_9

    if-eq v1, v6, :cond_8

    if-eq v1, v5, :cond_7

    goto :goto_1

    :cond_7
    new-array v1, v8, [I

    .line 10
    fill-array-data v1, :array_4

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_8
    new-array v1, v8, [I

    .line 11
    fill-array-data v1, :array_5

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_9
    new-array v1, v8, [I

    .line 12
    fill-array-data v1, :array_6

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    :cond_a
    new-array v1, v8, [I

    .line 13
    fill-array-data v1, :array_7

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_1

    .line 14
    :cond_b
    sget v1, Lu0/b;->o:I

    if-nez v1, :cond_c

    new-array v1, v8, [I

    .line 15
    fill-array-data v1, :array_8

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :cond_c
    if-ne v1, v7, :cond_11

    new-array v1, v8, [I

    .line 16
    fill-array-data v1, :array_9

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 17
    :cond_d
    invoke-virtual {v0, v2, v7}, Lk0/lt;->T2([II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 18
    aget v1, v2, v9

    invoke-virtual {v0, v1}, Lk0/s9;->b3(I)V

    goto/16 :goto_2

    :cond_e
    :goto_1
    if-eqz v2, :cond_11

    .line 19
    array-length v1, v2

    if-lez v1, :cond_11

    const/16 v1, 0x9

    new-array v3, v1, [B

    const/16 v11, 0x2e

    aput-byte v11, v3, v9

    const/16 v12, 0x33

    aput-byte v12, v3, v7

    aput-byte v4, v3, v6

    .line 20
    aget v13, v2, v9

    int-to-byte v13, v13

    aput-byte v13, v3, v5

    iget-object v13, v0, Lk0/s9;->g:[I

    iget v14, v0, Lk0/s9;->h:I

    rem-int/2addr v14, v6

    aget v13, v13, v14

    int-to-byte v13, v13

    aput-byte v13, v3, v8

    const/16 v13, 0x25

    aput-byte v13, v3, v4

    const/16 v14, 0xd

    aput-byte v14, v3, v10

    const/4 v15, 0x7

    const/16 v16, -0x56

    aput-byte v16, v3, v15

    const/16 v17, 0x8

    aput-byte v9, v3, v17

    invoke-static {v3}, Lk0/s9;->c3([B)V

    new-array v3, v1, [B

    aput-byte v11, v3, v9

    aput-byte v12, v3, v7

    aput-byte v4, v3, v6

    .line 21
    aget v7, v2, v9

    int-to-byte v7, v7

    aput-byte v7, v3, v5

    iget-object v7, v0, Lk0/s9;->g:[I

    iget v5, v0, Lk0/s9;->h:I

    rem-int/2addr v5, v6

    aget v5, v7, v5

    int-to-byte v5, v5

    aput-byte v5, v3, v8

    aput-byte v13, v3, v4

    aput-byte v14, v3, v10

    aput-byte v16, v3, v15

    aput-byte v9, v3, v17

    invoke-static {v3}, Lk0/s9;->c3([B)V

    new-array v1, v1, [B

    aput-byte v11, v1, v9

    const/4 v3, 0x1

    aput-byte v12, v1, v3

    aput-byte v4, v1, v6

    .line 22
    aget v2, v2, v9

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    iget-object v2, v0, Lk0/s9;->g:[I

    iget v3, v0, Lk0/s9;->h:I

    rem-int/2addr v3, v6

    aget v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    aput-byte v13, v1, v4

    aput-byte v14, v1, v10

    aput-byte v16, v1, v15

    aput-byte v9, v1, v17

    invoke-static {v1}, Lk0/s9;->c3([B)V

    .line 23
    iget v1, v0, Lk0/s9;->h:I

    const/4 v5, 0x1

    add-int/2addr v1, v5

    iput v1, v0, Lk0/s9;->h:I

    .line 24
    rem-int/2addr v1, v6

    iput v1, v0, Lk0/s9;->h:I

    goto :goto_2

    :cond_f
    move v5, v7

    if-eqz v2, :cond_11

    new-array v1, v8, [I

    aput v3, v1, v9

    const/16 v3, -0x70

    aput v3, v1, v5

    aput v5, v1, v6

    .line 25
    aget v2, v2, v9

    const/4 v3, 0x3

    aput v2, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_2

    :cond_10
    move v5, v7

    if-eqz v2, :cond_11

    .line 26
    array-length v1, v2

    if-le v1, v5, :cond_11

    new-array v1, v4, [I

    aput v3, v1, v9

    const/16 v3, -0x7d

    aput v3, v1, v5

    aput v6, v1, v6

    .line 27
    aget v3, v2, v9

    int-to-byte v3, v3

    const/4 v4, 0x3

    aput v3, v1, v4

    aget v2, v2, v5

    int-to-byte v2, v2

    aput v2, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    :cond_11
    :goto_2
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x4
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x5
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x2
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x4
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x2
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x5
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x7e
        0x1
        0x0
    .end array-data
.end method

.method public final a3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x10

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lk0/s9;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public b([B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBD Rcv--> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v0, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_e

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    iget v1, p0, Lk0/s9;->l:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lk0/s9;->l:I

    .line 5
    iput v0, p0, Lk0/s9;->m:I

    .line 6
    iput v0, p0, Lk0/s9;->n:I

    .line 7
    :cond_2
    iget-object v1, p0, Lk0/s9;->k:[B

    iget v2, p0, Lk0/s9;->l:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lk0/s9;->l:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lk0/s9;->l:I

    .line 9
    iget p1, p0, Lk0/s9;->n:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_6

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lk0/s9;->k:[B

    aget-byte p1, p1, v2

    move v1, v3

    .line 11
    :goto_0
    iget v4, p0, Lk0/s9;->n:I

    if-ge v1, v4, :cond_4

    .line 12
    iget-object v4, p0, Lk0/s9;->k:[B

    aget-byte v4, v4, v1

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 13
    iget-object v1, p0, Lk0/s9;->k:[B

    aget-byte v4, v1, v4

    if-ne p1, v4, :cond_5

    .line 14
    aget-byte p1, v1, v3

    add-int/2addr p1, v3

    invoke-virtual {p0, v1, v2, p1}, Lk0/s9;->U2([BII)V

    .line 15
    iget p1, p0, Lk0/s9;->n:I

    add-int/2addr p1, v2

    iput p1, p0, Lk0/s9;->m:I

    goto :goto_1

    .line 16
    :cond_5
    iput v3, p0, Lk0/s9;->m:I

    .line 17
    :goto_1
    iput v0, p0, Lk0/s9;->n:I

    .line 18
    :cond_6
    iget p1, p0, Lk0/s9;->l:I

    sub-int/2addr p1, v3

    :goto_2
    iget v1, p0, Lk0/s9;->m:I

    if-ge v1, p1, :cond_c

    .line 19
    iget-object v4, p0, Lk0/s9;->k:[B

    aget-byte v5, v4, v1

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_b

    .line 20
    iget v5, p0, Lk0/s9;->n:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_7

    .line 21
    iput v0, p0, Lk0/s9;->n:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v1, 0x2

    .line 22
    aget-byte v5, v4, v5

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x3

    iput v5, p0, Lk0/s9;->n:I

    .line 23
    iget v6, p0, Lk0/s9;->l:I

    if-lt v5, v6, :cond_8

    sub-int/2addr v5, v1

    .line 24
    iput v5, p0, Lk0/s9;->n:I

    goto :goto_6

    :cond_8
    add-int/lit8 v5, v1, 0x1

    .line 25
    aget-byte v4, v4, v5

    add-int/lit8 v1, v1, 0x2

    .line 26
    :goto_3
    iget v5, p0, Lk0/s9;->n:I

    if-ge v1, v5, :cond_9

    .line 27
    iget-object v5, p0, Lk0/s9;->k:[B

    aget-byte v5, v5, v1

    add-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    xor-int/lit16 v1, v4, 0xff

    int-to-byte v1, v1

    .line 28
    iget-object v4, p0, Lk0/s9;->k:[B

    aget-byte v5, v4, v5

    if-ne v1, v5, :cond_a

    .line 29
    iget v1, p0, Lk0/s9;->m:I

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, v3

    aget-byte v1, v4, v1

    add-int/2addr v1, v3

    invoke-virtual {p0, v4, v5, v1}, Lk0/s9;->U2([BII)V

    .line 30
    iget v1, p0, Lk0/s9;->n:I

    iput v1, p0, Lk0/s9;->m:I

    goto :goto_4

    .line 31
    :cond_a
    iget v1, p0, Lk0/s9;->m:I

    add-int/2addr v1, v2

    iput v1, p0, Lk0/s9;->m:I

    .line 32
    :goto_4
    iput v0, p0, Lk0/s9;->n:I

    .line 33
    :cond_b
    :goto_5
    iget v1, p0, Lk0/s9;->m:I

    add-int/2addr v1, v2

    iput v1, p0, Lk0/s9;->m:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v1, :cond_e

    .line 34
    iget p1, p0, Lk0/s9;->l:I

    sub-int/2addr p1, v1

    iput p1, p0, Lk0/s9;->l:I

    if-eqz p1, :cond_d

    .line 35
    iget-object v2, p0, Lk0/s9;->k:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    :cond_d
    iput v0, p0, Lk0/s9;->m:I

    :cond_e
    :goto_7
    return-void
.end method

.method public final b3(I)V
    .locals 3

    .line 1
    sput p1, Lk0/s9;->o:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 p1, 0x6f

    .line 2
    invoke-static {p1, v1}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/s9;->i:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/s9;->o:I

    if-eq p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lk0/s9;->i:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
