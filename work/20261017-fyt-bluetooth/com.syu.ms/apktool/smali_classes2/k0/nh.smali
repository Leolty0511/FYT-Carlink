.class public Lk0/nh;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static j:I


# instance fields
.field public b:Lo1/g0;

.field public final c:I

.field public d:I

.field public e:I

.field public f:[[I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/nh;->b:Lo1/g0;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lk0/nh;->c:I

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk0/nh;->e:I

    const/16 v2, 0x11

    new-array v2, v2, [[I

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_0

    aput-object v4, v2, v1

    new-array v4, v3, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v0

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    aput-object v0, v2, v3

    new-array v0, v3, [I

    fill-array-data v0, :array_3

    const/4 v4, 0x3

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_4

    const/4 v4, 0x4

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_5

    const/4 v4, 0x5

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_6

    const/4 v4, 0x6

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_7

    const/4 v4, 0x7

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_8

    const/16 v4, 0x8

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_9

    const/16 v4, 0x9

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    const/16 v4, 0xa

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_b

    const/16 v4, 0xb

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_c

    const/16 v4, 0xc

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_d

    const/16 v4, 0xd

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_e

    const/16 v4, 0xe

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_f

    const/16 v4, 0xf

    aput-object v0, v2, v4

    new-array v0, v3, [I

    fill-array-data v0, :array_10

    const/16 v3, 0x10

    aput-object v0, v2, v3

    iput-object v2, p0, Lk0/nh;->f:[[I

    .line 6
    iput v1, p0, Lk0/nh;->g:I

    .line 7
    new-instance v0, Lk0/nh$a;

    invoke-direct {v0, p0}, Lk0/nh$a;-><init>(Lk0/nh;)V

    iput-object v0, p0, Lk0/nh;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lk0/nh$b;

    invoke-direct {v0, p0}, Lk0/nh$b;-><init>(Lk0/nh;)V

    iput-object v0, p0, Lk0/nh;->i:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_3
    .array-data 4
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x5
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x7
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x8
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x14
        0xd
    .end array-data

    :array_b
    .array-data 4
        0x15
        0x15
    .end array-data

    :array_c
    .array-data 4
        0x16
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x17
        0x5
    .end array-data

    :array_e
    .array-data 4
        0x18
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x19
        0x19
    .end array-data

    :array_10
    .array-data 4
        0x1a
        0x37
    .end array-data
.end method


# virtual methods
.method public O2([I)V
    .locals 7

    if-eqz p1, :cond_a

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Air codeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "      value = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0xa

    const/16 v4, 0x15

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 4
    :pswitch_1
    aget p1, p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x5

    .line 5
    invoke-virtual {p0, p1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 6
    invoke-virtual {p0, p1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_2
    aget p1, p1, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x3

    .line 8
    invoke-virtual {p0, p1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_3
    aget p1, p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 11
    invoke-virtual {p0, v3}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    :cond_3
    const/16 p1, 0x9

    .line 12
    invoke-virtual {p0, p1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    aget p1, p1, v0

    const/16 v1, 0x19

    const/16 v2, 0xc

    if-eqz p1, :cond_4

    .line 14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 15
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    .line 16
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_a

    .line 17
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v0

    const/16 v1, 0x14

    const/16 v2, 0x10

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_a

    .line 22
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v0

    const/16 v1, 0x13

    const/16 v2, 0x41

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_a

    .line 27
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v0

    const/16 v1, 0xd

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v4}, Lk0/nh;->a3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v0, :cond_a

    .line 32
    invoke-virtual {p0, v4}, Lk0/nh;->a3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v0

    const/16 v1, 0x17

    const/16 v2, 0xb

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v0, :cond_a

    .line 37
    invoke-virtual {p0, v1}, Lk0/nh;->a3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v0

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_a

    .line 40
    invoke-virtual {p0, v3}, Lk0/nh;->a3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-eqz p1, :cond_a

    .line 42
    invoke-virtual {p0, v0}, Lk0/nh;->a3(I)V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    iput v1, v0, Lk0/mt;->e:I

    .line 3
    iput v1, v0, Lk0/mt;->f:I

    .line 4
    iput v1, v0, Lk0/mt;->g:I

    .line 5
    iput v1, v0, Lk0/mt;->o:I

    .line 6
    iput v1, v0, Lk0/mt;->i:I

    .line 7
    iget-object v0, p0, Lk0/nh;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 8
    iget-object v0, p0, Lk0/nh;->b:Lo1/g0;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lk0/nh;->b3(I)V

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v2, p0, Lk0/nh;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xe

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

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
        0x2a
        0x44
        0x43
        0x37
        0x38
        0x46
    .end array-data
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_20

    const/16 p3, 0x29

    const/4 v1, 0x3

    const/4 v3, 0x0

    if-eq v0, p3, :cond_1f

    const/16 p3, 0x30

    const/4 v4, 0x1

    if-eq v0, p3, :cond_1c

    const/16 p3, 0x3a

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/16 v7, 0xff

    if-eq v0, p3, :cond_1a

    const/16 p3, 0x67

    const/16 v8, 0x66

    if-eq v0, v8, :cond_19

    if-eq v0, p3, :cond_18

    const/16 p3, 0x12

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    const/16 p3, 0x2a

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x2

    .line 2
    aget-byte v5, p1, v1

    shr-int/lit8 v5, v5, 0x7

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2b

    new-array v0, v4, [I

    .line 3
    aget-byte v5, p1, v1

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    .line 4
    aget-byte p3, p1, v1

    and-int/lit8 p3, p3, 0xf

    if-eqz p3, :cond_2

    if-eq p3, v4, :cond_1

    if-eq p3, v2, :cond_0

    move p3, v3

    :goto_0
    move v0, p3

    goto :goto_1

    :cond_0
    move p3, v3

    move v0, v4

    goto :goto_1

    :cond_1
    move p3, v4

    goto :goto_0

    :cond_2
    move v0, v3

    move p3, v4

    :goto_1
    const/16 v1, 0x2e

    new-array v2, v4, [I

    aput p3, v2, v3

    .line 5
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2f

    new-array v1, v4, [I

    aput v0, v1, v3

    .line 6
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x2c

    new-array v0, v4, [I

    add-int/lit8 v1, p2, 0x3

    .line 7
    aget-byte v1, p1, v1

    and-int/2addr v1, v7

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x28

    new-array v0, v4, [I

    add-int/2addr p2, v6

    .line 8
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_1
    add-int/lit8 p3, p2, 0x2

    .line 9
    aget-byte v0, p1, p3

    and-int/2addr v0, v7

    add-int/lit8 v1, p2, 0x3

    .line 10
    aget-byte v2, p1, v1

    and-int/2addr v2, v7

    add-int/lit8 v8, p2, 0x4

    .line 11
    aget-byte v9, p1, v8

    and-int/2addr v9, v7

    add-int/2addr p2, v5

    .line 12
    aget-byte v5, p1, p2

    and-int/2addr v5, v7

    if-nez v0, :cond_3

    if-nez v2, :cond_3

    if-nez v9, :cond_3

    if-nez v5, :cond_3

    .line 13
    invoke-static {v3}, Lu0/d;->C2(I)V

    goto :goto_2

    .line 14
    :cond_3
    sget v3, Ll0/c0;->g:I

    if-ne v3, v0, :cond_4

    sget v3, Ll0/c0;->h:I

    if-ne v3, v2, :cond_4

    sget v3, Ll0/c0;->i:I

    if-ne v3, v9, :cond_4

    sget v3, Ll0/c0;->j:I

    if-eq v3, v5, :cond_5

    .line 15
    :cond_4
    sget v3, Lu0/b;->o:I

    if-nez v3, :cond_5

    .line 16
    invoke-static {v4}, Lu0/d;->C2(I)V

    .line 17
    sput v6, Ll0/c0;->k:I

    .line 18
    sget-object v3, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v3}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 19
    :cond_5
    :goto_2
    sput v0, Ll0/c0;->g:I

    .line 20
    sput v2, Ll0/c0;->h:I

    .line 21
    sput v9, Ll0/c0;->i:I

    .line 22
    sput v5, Ll0/c0;->j:I

    .line 23
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->D2(I)V

    .line 24
    aget-byte p3, p1, v1

    and-int/2addr p3, v7

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->E2(I)V

    .line 25
    aget-byte p3, p1, v8

    and-int/2addr p3, v7

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->F2(I)V

    .line 26
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    invoke-static {p1}, Ll0/c0;->s1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_9

    :pswitch_2
    add-int/lit8 p3, p2, 0x2

    .line 27
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->R2(I)V

    add-int/lit8 p3, p2, 0x3

    .line 28
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->S2(I)V

    add-int/lit8 p3, p2, 0x4

    .line 29
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->T2(I)V

    add-int/2addr p2, v5

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    invoke-static {p1}, Ll0/c0;->s1(I)I

    move-result p1

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_9

    :pswitch_3
    add-int/lit8 v0, p2, 0x2

    .line 31
    aget-byte v0, p1, v0

    and-int/2addr v0, v7

    const/16 v5, 0xe

    new-array v8, v4, [I

    shr-int/lit8 v9, v0, 0x7

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 32
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v8, v4, [I

    shr-int/lit8 v9, v0, 0x4

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 33
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xb

    new-array v8, v4, [I

    shr-int/lit8 v9, v0, 0x3

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 34
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xc

    new-array v8, v4, [I

    shr-int/lit8 v9, v0, 0x2

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 35
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x41

    new-array v8, v4, [I

    shr-int/lit8 v9, v0, 0x1

    and-int/2addr v9, v4

    aput v9, v8, v3

    .line 36
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v8, v4, [I

    shr-int/2addr v0, v3

    and-int/2addr v0, v4

    aput v0, v8, v3

    .line 37
    invoke-static {v5, v8}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v5, v4, [I

    add-int/lit8 v8, p2, 0x3

    .line 38
    aget-byte v8, p1, v8

    and-int/2addr v8, v7

    aput v8, v5, v3

    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v0, p2, 0x4

    .line 39
    aget-byte v0, p1, v0

    and-int/2addr v0, v7

    if-eqz v0, :cond_a

    if-eq v0, v4, :cond_9

    if-eq v0, v2, :cond_8

    if-eq v0, v1, :cond_7

    if-eq v0, v6, :cond_6

    move v1, v3

    move v2, v1

    :goto_3
    move v5, v2

    goto :goto_4

    :cond_6
    move v2, v3

    move v1, v4

    move v5, v1

    goto :goto_4

    :cond_7
    move v2, v3

    move v5, v2

    move v1, v4

    goto :goto_4

    :cond_8
    move v1, v3

    move v2, v1

    move v5, v4

    goto :goto_4

    :cond_9
    move v1, v3

    move v2, v4

    goto :goto_3

    :cond_a
    move v1, v3

    move v5, v1

    move v2, v4

    :goto_4
    new-array v6, v4, [I

    aput v1, v6, v3

    .line 40
    invoke-static {p3, v6}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v1, v4, [I

    aput v2, v1, v3

    .line 41
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v1, v4, [I

    aput v5, v1, v3

    .line 42
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v1, v4, [I

    aput v0, v1, v3

    .line 43
    invoke-static {p3, v1}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x5

    .line 44
    aget-byte v0, p1, p3

    and-int/2addr v0, v7

    add-int/lit8 p2, p2, 0x6

    .line 45
    aget-byte v1, p1, p2

    and-int/2addr v1, v7

    const-string v2, "persist.fyt.reversetemp"

    .line 46
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 47
    aget-byte p2, p1, p2

    and-int/lit16 v0, p2, 0xff

    .line 48
    aget-byte p1, p1, p3

    and-int/lit16 v1, p1, 0xff

    :cond_b
    const/16 p1, 0x1b

    new-array p2, v4, [I

    and-int/lit16 p3, v0, 0xff

    aput p3, p2, v3

    .line 49
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1c

    new-array p2, v4, [I

    and-int/lit16 p3, v1, 0xff

    aput p3, p2, v3

    .line 50
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :pswitch_4
    add-int/lit8 v0, p2, 0x2

    .line 51
    aget-byte v0, p1, v0

    add-int/2addr p2, v1

    .line 52
    aget-byte p1, p1, p2

    and-int/lit16 p2, v0, 0xff

    .line 53
    iput p2, p0, Lk0/nh;->e:I

    move p2, v3

    .line 54
    :goto_5
    iget-object v0, p0, Lk0/nh;->f:[[I

    array-length v2, v0

    if-ge p2, v2, :cond_d

    .line 55
    iget v2, p0, Lk0/nh;->e:I

    aget-object v8, v0, p2

    aget v8, v8, v3

    if-ne v2, v8, :cond_c

    if-eqz v2, :cond_d

    .line 56
    iput p2, p0, Lk0/nh;->d:I

    goto :goto_6

    :cond_c
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_d
    :goto_6
    and-int/2addr p1, v7

    const/16 v2, 0x1a

    if-ne p1, v4, :cond_12

    .line 57
    array-length p1, v0

    if-ge p2, p1, :cond_21

    .line 58
    iget p1, p0, Lk0/nh;->e:I

    if-eq p1, v1, :cond_10

    if-eq p1, v6, :cond_e

    .line 59
    aget-object p1, v0, p2

    aget p1, p1, v4

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 60
    :cond_e
    sget p1, Lh0/c;->E:I

    if-eq p1, v1, :cond_f

    if-eq p1, v6, :cond_f

    if-eq p1, v5, :cond_f

    .line 61
    invoke-static {v6, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 62
    :cond_f
    invoke-static {p3, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 63
    :cond_10
    sget p1, Lh0/c;->E:I

    if-eq p1, v1, :cond_11

    if-eq p1, v6, :cond_11

    if-eq p1, v5, :cond_11

    .line 64
    invoke-static {v1, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    .line 65
    :cond_11
    invoke-static {v2, v3}, Ll0/b0;->l0(II)V

    goto/16 :goto_9

    :cond_12
    if-nez p1, :cond_21

    .line 66
    iget p1, p0, Lk0/nh;->d:I

    array-length p2, v0

    if-ge p1, p2, :cond_17

    if-eq p1, v7, :cond_17

    .line 67
    iget p2, p0, Lk0/nh;->e:I

    if-eq p2, v1, :cond_15

    if-eq p2, v6, :cond_13

    .line 68
    aget-object p1, v0, p1

    aget p1, p1, v4

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 69
    :cond_13
    sget p1, Lh0/c;->E:I

    if-eq p1, v1, :cond_14

    if-eq p1, v6, :cond_14

    if-eq p1, v5, :cond_14

    .line 70
    invoke-static {v6, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 71
    :cond_14
    invoke-static {p3, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 72
    :cond_15
    sget p1, Lh0/c;->E:I

    if-eq p1, v1, :cond_16

    if-eq p1, v6, :cond_16

    if-eq p1, v5, :cond_16

    .line 73
    invoke-static {v1, v4}, Ll0/b0;->l0(II)V

    goto :goto_7

    .line 74
    :cond_16
    invoke-static {v2, v4}, Ll0/b0;->l0(II)V

    .line 75
    :cond_17
    :goto_7
    iput v7, p0, Lk0/nh;->d:I

    goto/16 :goto_9

    :cond_18
    add-int/2addr p2, v2

    .line 76
    aget-byte p3, p1, p2

    shr-int/2addr p3, v4

    and-int/2addr p3, v4

    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v4

    invoke-static {p3, p1, v3}, Ll0/c0;->N1(III)V

    goto/16 :goto_9

    :cond_19
    const/16 v0, 0x65

    new-array v7, v4, [I

    add-int/lit8 v9, p2, 0x2

    .line 77
    aget-byte v10, p1, v9

    shr-int/lit8 v10, v10, 0x7

    and-int/2addr v10, v4

    aput v10, v7, v3

    invoke-static {v0, v7}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 78
    aget-byte v7, p1, v9

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v4

    aput v7, v0, v3

    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 79
    aget-byte v7, p1, v9

    shr-int/2addr v7, v5

    and-int/2addr v7, v4

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7f

    new-array v0, v4, [I

    .line 80
    aget-byte v7, p1, v9

    shr-int/2addr v7, v1

    and-int/2addr v7, v4

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x68

    new-array v0, v4, [I

    add-int/lit8 v7, p2, 0x3

    .line 81
    aget-byte v8, p1, v7

    shr-int/2addr v8, v5

    and-int/lit8 v8, v8, 0x7

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x69

    new-array v0, v4, [I

    .line 82
    aget-byte v8, p1, v7

    shr-int/2addr v8, v1

    and-int/2addr v8, v1

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x80

    new-array v0, v4, [I

    .line 83
    aget-byte v8, p1, v7

    shr-int/2addr v8, v2

    and-int/2addr v8, v4

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6f

    new-array v0, v4, [I

    .line 84
    aget-byte v7, p1, v7

    shr-int/2addr v7, v4

    and-int/2addr v7, v4

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6a

    new-array v0, v4, [I

    add-int/lit8 v7, p2, 0x4

    .line 85
    aget-byte v8, p1, v7

    shr-int/lit8 v8, v8, 0x6

    and-int/2addr v8, v4

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x70

    new-array v0, v4, [I

    .line 86
    aget-byte v8, p1, v7

    shr-int/2addr v8, v5

    and-int/2addr v8, v4

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x71

    new-array v0, v4, [I

    .line 87
    aget-byte v8, p1, v7

    shr-int/2addr v8, v6

    and-int/2addr v8, v4

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x72

    new-array v0, v4, [I

    .line 88
    aget-byte v8, p1, v7

    shr-int/2addr v8, v1

    and-int/2addr v8, v4

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x73

    new-array v0, v4, [I

    .line 89
    aget-byte v8, p1, v7

    shr-int/2addr v8, v2

    and-int/2addr v8, v4

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x74

    new-array v0, v4, [I

    .line 90
    aget-byte v7, p1, v7

    shr-int/2addr v7, v4

    and-int/2addr v7, v4

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6b

    new-array v0, v4, [I

    add-int/lit8 v7, p2, 0x5

    .line 91
    aget-byte v8, p1, v7

    shr-int/lit8 v8, v8, 0x7

    and-int/2addr v8, v4

    aput v8, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6c

    new-array v0, v4, [I

    .line 92
    aget-byte v8, p1, v7

    shr-int/lit8 v5, v8, 0x5

    and-int/2addr v5, v1

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6d

    new-array v0, v4, [I

    .line 93
    aget-byte v5, p1, v7

    shr-int/2addr v5, v6

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7e

    new-array v0, v4, [I

    .line 94
    aget-byte v5, p1, v7

    shr-int/2addr v5, v1

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x81

    new-array v0, v4, [I

    .line 95
    aget-byte v5, p1, v7

    shr-int/2addr v5, v2

    and-int/2addr v5, v4

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x75

    new-array v0, v4, [I

    add-int/lit8 v5, p2, 0x6

    .line 96
    aget-byte v7, p1, v5

    shr-int/lit8 v7, v7, 0x6

    and-int/2addr v7, v4

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x76

    new-array v0, v4, [I

    .line 97
    aget-byte v7, p1, v5

    shr-int/2addr v7, v6

    and-int/2addr v7, v1

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x77

    new-array v0, v4, [I

    .line 98
    aget-byte v5, p1, v5

    shr-int/2addr v5, v3

    and-int/lit8 v5, v5, 0xf

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x78

    new-array v0, v4, [I

    add-int/lit8 v5, p2, 0x7

    .line 99
    aget-byte v5, p1, v5

    shr-int/2addr v5, v3

    and-int/lit8 v5, v5, 0xf

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x79

    new-array v0, v4, [I

    add-int/lit8 v5, p2, 0x8

    .line 100
    aget-byte v7, p1, v5

    shr-int/lit8 v7, v7, 0x7

    and-int/2addr v7, v4

    aput v7, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x82

    new-array v0, v4, [I

    .line 101
    aget-byte v7, p1, v5

    shr-int/lit8 v6, v7, 0x4

    and-int/2addr v6, v1

    aput v6, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x83

    new-array v0, v4, [I

    .line 102
    aget-byte v6, p1, v5

    shr-int/2addr v6, v2

    and-int/2addr v6, v1

    aput v6, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x84

    new-array v0, v4, [I

    .line 103
    aget-byte v5, p1, v5

    shr-int/2addr v5, v3

    and-int/2addr v5, v1

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x85

    new-array v0, v4, [I

    add-int/lit8 p2, p2, 0x9

    .line 104
    aget-byte v5, p1, p2

    shr-int/lit8 v5, v5, 0x6

    and-int/2addr v5, v1

    aput v5, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7a

    new-array v0, v4, [I

    .line 105
    aget-byte v5, p1, p2

    shr-int/lit8 v1, v5, 0x3

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7b

    new-array v0, v4, [I

    .line 106
    aget-byte v1, p1, p2

    shr-int/2addr v1, v2

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7c

    new-array v0, v4, [I

    .line 107
    aget-byte v1, p1, p2

    shr-int/2addr v1, v4

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x7d

    new-array v0, v4, [I

    .line 108
    aget-byte p1, p1, p2

    shr-int/2addr p1, v3

    and-int/2addr p1, v4

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_9

    :cond_1a
    add-int/lit8 p3, p2, 0x2

    .line 109
    aget-byte p3, p1, p3

    const-string v0, "persist.syu.reversefrontdoor"

    .line 110
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1b

    new-array v0, v4, [I

    shr-int/lit8 v8, p3, 0x5

    and-int/2addr v8, v4

    aput v8, v0, v3

    .line 111
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v8, p3, 0x4

    and-int/2addr v8, v4

    aput v8, v0, v3

    .line 112
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_1b
    new-array v0, v4, [I

    shr-int/lit8 v8, p3, 0x4

    and-int/2addr v8, v4

    aput v8, v0, v3

    .line 113
    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v8, p3, 0x5

    and-int/2addr v8, v4

    aput v8, v0, v3

    .line 114
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    :goto_8
    new-array v0, v4, [I

    shr-int/lit8 v2, p3, 0x3

    and-int/2addr v2, v4

    aput v2, v0, v3

    .line 115
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v1, p3, 0x2

    and-int/2addr v1, v4

    aput v1, v0, v3

    .line 116
    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/lit8 v1, p3, 0x1

    and-int/2addr v1, v4

    aput v1, v0, v3

    .line 117
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    shr-int/2addr p3, v3

    and-int/2addr p3, v4

    aput p3, v0, v3

    .line 118
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    add-int/lit8 p3, p2, 0x3

    .line 119
    aget-byte p3, p1, p3

    and-int/2addr p3, v7

    shl-int/lit8 p3, p3, 0x8

    add-int/lit8 v0, p2, 0x4

    aget-byte v0, p1, v0

    and-int/2addr v0, v7

    or-int/2addr p3, v0

    const/16 v0, 0x63

    new-array v1, v4, [I

    aput p3, v1, v3

    .line 120
    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x62

    new-array v0, v4, [I

    add-int/2addr p2, v5

    .line 121
    aget-byte v1, p1, p2

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v4

    aput v1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x6e

    new-array v0, v4, [I

    .line 122
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v4

    aput p1, v0, v3

    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_9

    .line 123
    :cond_1c
    sget p3, Lk0/nh;->j:I

    if-nez p3, :cond_1d

    goto :goto_9

    :cond_1d
    add-int/2addr p2, v2

    .line 124
    aget-byte p1, p1, p2

    shr-int/lit8 p1, p1, 0x7

    and-int/2addr p1, v4

    .line 125
    sget p2, Lu0/b;->o:I

    if-nez p2, :cond_21

    if-eqz p1, :cond_1e

    .line 126
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 127
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_9

    .line 128
    :cond_1e
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 129
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_9

    :cond_1f
    add-int/lit8 p3, p2, 0x2

    .line 130
    aget-byte p3, p1, p3

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    const/16 p2, 0x19b4

    invoke-static {p3, p1, v3, p2}, Lk0/qt;->i(IIZI)V

    goto :goto_9

    .line 131
    :cond_20
    new-instance v0, Ljava/lang/String;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    :cond_21
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/nh;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/nh;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/nh;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x86

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
    .locals 5

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    const/4 p4, 0x5

    const/16 v0, 0xe3

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_5

    .line 1
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, v1, [I

    aput v0, p1, p3

    const/16 p4, 0x90

    aput p4, p1, v4

    aput v4, p1, v3

    .line 2
    aget p2, p2, p3

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 3
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, p4, [I

    aput v0, p1, p3

    const/16 p4, 0x85

    aput p4, p1, v4

    aput v3, p1, v3

    .line 4
    aget p3, p2, p3

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_5

    .line 5
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, p4, [I

    aput v0, p1, p3

    const/16 p4, 0xe0

    aput p4, p1, v4

    aput v3, p1, v3

    .line 6
    aget p3, p2, p3

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 7
    array-length p1, p2

    if-lez p1, :cond_5

    new-array p1, p4, [I

    aput v0, p1, p3

    const/16 p4, 0x88

    aput p4, p1, v4

    aput v3, p1, v3

    .line 8
    aget p3, p2, p3

    aput p3, p1, v2

    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 9
    array-length p1, p2

    if-lez p1, :cond_5

    .line 10
    aget p1, p2, p3

    invoke-virtual {p0, p1}, Lk0/nh;->b3(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a3(I)V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, 0xe0

    aput v5, v1, v4

    const/4 v6, 0x2

    aput v6, v1, v6

    int-to-byte p1, p1

    const/4 v7, 0x3

    aput p1, v1, v7

    const/4 v8, 0x4

    aput v4, v1, v8

    .line 1
    invoke-static {v1}, Lz/k;->s([I)V

    const-wide/16 v9, 0xc8

    .line 2
    invoke-static {v9, v10}, La/i;->a0(J)V

    new-array v0, v0, [I

    aput v3, v0, v2

    aput v5, v0, v4

    aput v6, v0, v6

    aput p1, v0, v7

    aput v2, v0, v8

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    move p1, v1

    .line 1
    :cond_1
    :goto_0
    sput p1, Lk0/nh;->j:I

    const/16 v2, 0x64

    new-array v3, v1, [I

    aput p1, v3, v0

    .line 2
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/nh;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->b(II)I

    move-result p1

    sget v0, Lk0/nh;->j:I

    if-eq p1, v0, :cond_2

    .line 4
    iget-object p1, p0, Lk0/nh;->b:Lo1/g0;

    invoke-virtual {p1, v1, v0}, Lo1/g0;->g(II)V

    :cond_2
    return-void
.end method
