.class public Lk0/ym;
.super Lk0/lt;
.source "SourceFile"


# static fields
.field public static q:I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:I

.field public j:Ljava/lang/Runnable;

.field public k:Ljava/lang/Runnable;

.field public l:Lo1/g0;

.field public final m:I

.field public n:Ljava/lang/Runnable;

.field public o:Ljava/lang/Runnable;

.field public p:Ljava/lang/Runnable;


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
    iput v0, p0, Lk0/ym;->c:I

    const/16 v1, 0x1f

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

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v5, 0xe

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v5, 0xf

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v5, 0x10

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v5, 0x11

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v5, 0x12

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v5, 0x13

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v5, 0x14

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v5, 0x15

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_16

    const/16 v5, 0x16

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_17

    const/16 v5, 0x17

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_18

    const/16 v5, 0x18

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_19

    const/16 v5, 0x19

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1a

    const/16 v5, 0x1a

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1b

    const/16 v5, 0x1b

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1c

    const/16 v5, 0x1c

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_1d

    const/16 v5, 0x1d

    aput-object v3, v1, v5

    new-array v2, v2, [I

    fill-array-data v2, :array_1e

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ym;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/ym;->e:Z

    .line 5
    new-instance v1, Lk0/ym$a;

    invoke-direct {v1, p0}, Lk0/ym$a;-><init>(Lk0/ym;)V

    iput-object v1, p0, Lk0/ym;->f:Ljava/lang/Runnable;

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lk0/ym;->g:I

    .line 7
    new-instance v1, Lk0/ym$b;

    invoke-direct {v1, p0}, Lk0/ym$b;-><init>(Lk0/ym;)V

    iput-object v1, p0, Lk0/ym;->h:Ljava/lang/Runnable;

    .line 8
    iput v0, p0, Lk0/ym;->i:I

    .line 9
    new-instance v0, Lk0/ym$c;

    invoke-direct {v0, p0}, Lk0/ym$c;-><init>(Lk0/ym;)V

    iput-object v0, p0, Lk0/ym;->j:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lk0/ym$d;

    invoke-direct {v0, p0}, Lk0/ym$d;-><init>(Lk0/ym;)V

    iput-object v0, p0, Lk0/ym;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/ym;->l:Lo1/g0;

    .line 12
    iput v4, p0, Lk0/ym;->m:I

    .line 13
    new-instance v0, Lk0/ym$e;

    invoke-direct {v0, p0}, Lk0/ym$e;-><init>(Lk0/ym;)V

    iput-object v0, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lk0/ym$f;

    invoke-direct {v0, p0}, Lk0/ym$f;-><init>(Lk0/ym;)V

    iput-object v0, p0, Lk0/ym;->o:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lk0/ym$g;

    invoke-direct {v0, p0}, Lk0/ym$g;-><init>(Lk0/ym;)V

    iput-object v0, p0, Lk0/ym;->p:Ljava/lang/Runnable;

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
        0x6
        0xc
    .end array-data

    :array_5
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_7
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_9
    .array-data 4
        0xc
        0x0
    .end array-data

    :array_a
    .array-data 4
        0xd
        0x1b
    .end array-data

    :array_b
    .array-data 4
        0xe
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0x20
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x21
        0x7
    .end array-data

    :array_e
    .array-data 4
        0x22
        0x8
    .end array-data

    :array_f
    .array-data 4
        0x23
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x24
        0x1f
    .end array-data

    :array_11
    .array-data 4
        0x25
        0x1e
    .end array-data

    :array_12
    .array-data 4
        0x26
        0x18
    .end array-data

    :array_13
    .array-data 4
        0x27
        -0x1
    .end array-data

    :array_14
    .array-data 4
        0x28
        0x36
    .end array-data

    :array_15
    .array-data 4
        0x29
        0x12
    .end array-data

    :array_16
    .array-data 4
        0x2a
        0x19
    .end array-data

    :array_17
    .array-data 4
        0x2b
        0x37
    .end array-data

    :array_18
    .array-data 4
        0x2c
        0x5
    .end array-data

    :array_19
    .array-data 4
        0x2d
        0x5
    .end array-data

    :array_1a
    .array-data 4
        0x2e
        0x3
    .end array-data

    :array_1b
    .array-data 4
        0x2f
        0x4
    .end array-data

    :array_1c
    .array-data 4
        0x30
        0x1
    .end array-data

    :array_1d
    .array-data 4
        0x31
        0x6
    .end array-data

    :array_1e
    .array-data 4
        0x32
        0x40
    .end array-data
.end method

.method public static synthetic b3(Lk0/ym;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ym;->g:I

    return p0
.end method

.method public static synthetic c3(Lk0/ym;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ym;->g:I

    return p1
.end method

.method public static synthetic d3(Lk0/ym;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ym;->l:Lo1/g0;

    return-object p0
.end method

.method public static synthetic e3(Lk0/ym;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ym;->f3(I)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 8

    if-eqz p1, :cond_9

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

    aget v6, p1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "      value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget v7, p1, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/16 v3, 0x27

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    aget p1, p1, v6

    const/16 v0, 0xa0

    const/16 v2, 0x41

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 6
    invoke-virtual {p0, v1, v0}, Lk0/ym;->a3(II)V

    goto/16 :goto_0

    .line 7
    :cond_1
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_9

    .line 8
    invoke-virtual {p0, v1, v0}, Lk0/ym;->a3(II)V

    goto/16 :goto_0

    .line 9
    :pswitch_1
    aget p1, p1, v6

    const/16 v1, 0x20

    const/16 v2, 0xd

    if-eqz p1, :cond_2

    .line 10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 11
    invoke-virtual {p0, v0, v1}, Lk0/ym;->a3(II)V

    goto/16 :goto_0

    .line 12
    :cond_2
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_9

    .line 13
    invoke-virtual {p0, v0, v1}, Lk0/ym;->a3(II)V

    goto :goto_0

    .line 14
    :pswitch_2
    aget p1, p1, v6

    const/16 v2, 0xb

    if-eqz p1, :cond_3

    .line 15
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 16
    invoke-virtual {p0, v0, v1}, Lk0/ym;->a3(II)V

    goto :goto_0

    .line 17
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_9

    .line 18
    invoke-virtual {p0, v0, v1}, Lk0/ym;->a3(II)V

    goto :goto_0

    .line 19
    :pswitch_3
    aget p1, p1, v6

    const/16 v1, 0x80

    const/16 v2, 0xa

    if-eqz p1, :cond_4

    .line 20
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_9

    .line 21
    invoke-virtual {p0, v0, v1}, Lk0/ym;->a3(II)V

    goto :goto_0

    .line 22
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_9

    .line 23
    invoke-virtual {p0, v0, v1}, Lk0/ym;->a3(II)V

    goto :goto_0

    .line 24
    :cond_5
    aget p1, p1, v6

    const/16 v0, 0x15

    if-eqz p1, :cond_7

    .line 25
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    add-int/2addr p1, v6

    const/4 v0, 0x7

    if-le p1, v0, :cond_6

    move p1, v0

    :cond_6
    shl-int/lit8 p1, p1, 0x4

    and-int/lit16 p1, p1, 0xf0

    .line 26
    invoke-virtual {p0, v6, p1}, Lk0/ym;->a3(II)V

    goto :goto_0

    .line 27
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    add-int/lit8 p1, p1, -0x1

    if-ge p1, v6, :cond_8

    move p1, v6

    :cond_8
    shl-int/lit8 p1, p1, 0x4

    and-int/lit16 p1, p1, 0xf0

    .line 28
    invoke-virtual {p0, v6, p1}, Lk0/ym;->a3(II)V

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public S2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ym;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 4
    iput v2, v0, Lk0/mt;->f:I

    .line 5
    iput v2, v0, Lk0/mt;->i:I

    .line 6
    iput v2, v0, Lk0/mt;->g:I

    .line 7
    iput v1, v0, Lk0/mt;->j:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ym;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v0, p0, Lk0/ym;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/ym;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 12
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/ym;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 13
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 14
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 15
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 17
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 18
    sget v0, Lk0/nt;->a:I

    const v1, 0x101c8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ym;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 20
    sget-object v0, Lh0/d;->l:Lo1/y;

    iget-object v1, p0, Lk0/ym;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 21
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/ym;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 22
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ym;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 23
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    return-void

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
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, -0x55

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_30

    const/16 v3, 0x20

    const/16 v12, 0xb

    const/16 v11, 0x8

    const/4 v13, 0x5

    const/16 v14, 0xff

    if-eq v2, v3, :cond_1a

    const/16 v3, 0x36

    if-eq v2, v3, :cond_18

    const/16 v3, 0x7d

    if-eq v2, v3, :cond_16

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_15

    const/16 v15, 0x28

    if-eq v2, v15, :cond_13

    const/16 v15, 0x29

    if-eq v2, v15, :cond_11

    const/16 v15, 0x38

    if-eq v2, v15, :cond_10

    const/16 v15, 0x39

    if-eq v2, v15, :cond_f

    const/16 v15, 0xa

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_e

    :pswitch_0
    const/16 v2, 0x96

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x2

    .line 2
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x97

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x98

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x4

    .line 4
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x99

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x5

    .line 5
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9a

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x6

    .line 6
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9b

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 7
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9c

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 8
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x9d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x9

    .line 9
    aget-byte v1, v1, v4

    and-int/2addr v1, v14

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_1
    const/16 v2, 0x86

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x2

    .line 10
    aget-byte v12, v1, v12

    and-int/2addr v12, v14

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x3

    .line 11
    aget-byte v12, v1, v12

    and-int/2addr v12, v14

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x4

    .line 12
    aget-byte v12, v1, v12

    and-int/2addr v12, v14

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x5

    .line 13
    aget-byte v15, v1, v12

    shr-int/2addr v15, v4

    and-int/2addr v15, v10

    aput v15, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v10, [I

    .line 14
    aget-byte v15, v1, v12

    shr-int/2addr v15, v5

    and-int/2addr v15, v10

    aput v15, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    .line 15
    aget-byte v15, v1, v12

    shr-int/lit8 v13, v15, 0x5

    and-int/2addr v13, v10

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v3, v10, [I

    .line 16
    aget-byte v13, v1, v12

    shr-int/2addr v13, v6

    and-int/2addr v13, v10

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v3, v10, [I

    .line 17
    aget-byte v13, v1, v12

    shr-int/2addr v13, v8

    and-int/2addr v13, v10

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v3, v10, [I

    .line 18
    aget-byte v13, v1, v12

    shr-int/2addr v13, v10

    and-int/2addr v13, v8

    aput v13, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v3, v10, [I

    .line 19
    aget-byte v12, v1, v12

    shr-int/2addr v12, v9

    and-int/2addr v12, v10

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x6

    .line 20
    aget-byte v12, v1, v12

    and-int/2addr v12, v14

    aput v12, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x91

    new-array v3, v10, [I

    add-int/lit8 v12, p2, 0x7

    .line 21
    aget-byte v13, v1, v12

    shr-int/lit8 v6, v13, 0x4

    and-int/lit8 v6, v6, 0xf

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x92

    new-array v3, v10, [I

    .line 22
    aget-byte v6, v1, v12

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x93

    new-array v3, v10, [I

    .line 23
    aget-byte v6, v1, v12

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0x8

    .line 24
    aget-byte v7, v1, v6

    shr-int/lit8 v4, v7, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x95

    new-array v3, v10, [I

    .line 25
    aget-byte v1, v1, v6

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_2
    const/16 v2, 0x76

    new-array v7, v10, [I

    add-int/lit8 v8, p2, 0x2

    .line 26
    aget-byte v8, v1, v8

    and-int/2addr v8, v14

    aput v8, v7, v9

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v7, v10, [I

    add-int/lit8 v8, p2, 0x3

    .line 27
    aget-byte v8, v1, v8

    and-int/2addr v8, v14

    aput v8, v7, v9

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v7, v10, [I

    add-int/lit8 v8, p2, 0x4

    .line 28
    aget-byte v8, v1, v8

    and-int/2addr v8, v14

    aput v8, v7, v9

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v7, v10, [I

    add-int/lit8 v8, p2, 0x5

    .line 29
    aget-byte v8, v1, v8

    and-int/2addr v8, v14

    aput v8, v7, v9

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7a

    new-array v7, v10, [I

    add-int/lit8 v8, p2, 0x6

    .line 30
    aget-byte v8, v1, v8

    and-int/2addr v8, v14

    aput v8, v7, v9

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v7, v10, [I

    add-int/lit8 v8, p2, 0x7

    .line 31
    aget-byte v8, v1, v8

    and-int/2addr v8, v14

    aput v8, v7, v9

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v7, v10, [I

    add-int/lit8 v8, p2, 0x8

    .line 32
    aget-byte v11, v1, v8

    shr-int/2addr v11, v4

    and-int/2addr v11, v10

    aput v11, v7, v9

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v7, v10, [I

    .line 33
    aget-byte v11, v1, v8

    shr-int/2addr v11, v13

    and-int/2addr v11, v10

    aput v11, v7, v9

    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 34
    aget-byte v7, v1, v8

    shr-int/2addr v7, v6

    and-int/2addr v7, v10

    aput v7, v2, v9

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v10, [I

    add-int/lit8 v7, p2, 0x9

    .line 35
    aget-byte v8, v1, v7

    shr-int/2addr v8, v4

    and-int/2addr v8, v10

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v10, [I

    .line 36
    aget-byte v8, v1, v7

    shr-int/2addr v8, v5

    and-int/2addr v8, v10

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v10, [I

    .line 37
    aget-byte v8, v1, v7

    shr-int/2addr v8, v13

    and-int/2addr v8, v10

    aput v8, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v10, [I

    .line 38
    aget-byte v7, v1, v7

    shr-int/lit8 v6, v7, 0x4

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v10, [I

    add-int/lit8 v6, p2, 0xa

    .line 39
    aget-byte v7, v1, v6

    shr-int/lit8 v4, v7, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x85

    new-array v3, v10, [I

    .line 40
    aget-byte v1, v1, v6

    shr-int/2addr v1, v5

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 41
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    add-int/lit8 v3, p2, 0x3

    .line 42
    aget-byte v3, v1, v3

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x4

    .line 43
    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    new-array v5, v10, [I

    shr-int/lit8 v16, v2, 0x7

    and-int/lit8 v16, v16, 0x1

    aput v16, v5, v9

    .line 44
    invoke-static {v15, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v15, v2, 0x6

    and-int/2addr v15, v10

    aput v15, v5, v9

    .line 45
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v12, v2, 0x5

    and-int/2addr v12, v10

    aput v12, v5, v9

    const/16 v12, 0xc

    .line 46
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x34

    new-array v12, v10, [I

    shr-int/lit8 v15, v2, 0x4

    and-int/2addr v15, v10

    aput v15, v12, v9

    .line 47
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    new-array v5, v10, [I

    shr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v10

    aput v12, v5, v9

    const/16 v12, 0xd

    .line 48
    invoke-static {v12, v5}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x3e

    new-array v12, v10, [I

    shr-int/lit8 v15, v2, 0x2

    and-int/2addr v15, v10

    aput v15, v12, v9

    .line 49
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x10

    new-array v12, v10, [I

    shr-int/lit8 v15, v2, 0x1

    and-int/2addr v15, v10

    aput v15, v12, v9

    .line 50
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x3f

    new-array v12, v10, [I

    and-int/2addr v2, v10

    aput v2, v12, v9

    .line 51
    invoke-static {v5, v12}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v3, 0xff

    if-eq v2, v10, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v6, :cond_1

    if-eq v2, v13, :cond_0

    move v2, v9

    move v3, v2

    :goto_0
    move v5, v3

    goto :goto_1

    :cond_0
    move v3, v9

    move v5, v3

    move v2, v10

    goto :goto_1

    :cond_1
    move v3, v9

    move v2, v10

    move v5, v2

    goto :goto_1

    :cond_2
    move v2, v9

    move v3, v2

    move v5, v10

    goto :goto_1

    :cond_3
    move v2, v9

    move v3, v10

    goto :goto_0

    :cond_4
    move v2, v9

    move v5, v2

    move v3, v10

    :goto_1
    new-array v7, v10, [I

    aput v2, v7, v9

    const/16 v2, 0x12

    .line 52
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v7, v10, [I

    aput v3, v7, v9

    .line 53
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v3, v10, [I

    aput v5, v3, v9

    .line 54
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v3, v10, [I

    and-int/2addr v4, v14

    aput v4, v3, v9

    .line 55
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 56
    aget-byte v3, v1, v2

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x6

    .line 57
    aget-byte v5, v1, v4

    and-int/2addr v5, v14

    const-string v7, "persist.fyt.reversetemp"

    .line 58
    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 59
    aget-byte v3, v1, v4

    and-int/2addr v3, v14

    .line 60
    aget-byte v2, v1, v2

    and-int/lit16 v5, v2, 0xff

    :cond_5
    const/16 v2, 0x1b

    if-nez v3, :cond_6

    new-array v3, v10, [I

    const/4 v4, -0x2

    aput v4, v3, v9

    .line 61
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_6
    if-ne v3, v14, :cond_7

    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 62
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_7
    new-array v4, v10, [I

    aput v3, v4, v9

    .line 63
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v2, 0x1c

    if-nez v5, :cond_8

    new-array v3, v10, [I

    const/4 v4, -0x2

    aput v4, v3, v9

    .line 64
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    if-ne v5, v14, :cond_9

    new-array v3, v10, [I

    const/4 v4, -0x3

    aput v4, v3, v9

    .line 65
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_9
    new-array v3, v10, [I

    aput v5, v3, v9

    .line 66
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_3
    const/16 v2, 0x1d

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x7

    .line 67
    aget-byte v5, v1, v4

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0xf

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 68
    aget-byte v3, v1, v4

    shr-int/2addr v3, v9

    and-int/lit8 v3, v3, 0xf

    aput v3, v2, v9

    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x50

    new-array v3, v10, [I

    add-int/lit8 v4, p2, 0x8

    .line 69
    aget-byte v1, v1, v4

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    .line 70
    :pswitch_4
    iget-boolean v2, v0, Lk0/ym;->e:Z

    if-eqz v2, :cond_a

    goto/16 :goto_e

    :cond_a
    add-int/lit8 v2, p2, 0x2

    .line 71
    aget-byte v3, v1, v2

    and-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x3

    .line 72
    aget-byte v5, v1, v4

    and-int/2addr v5, v14

    add-int/lit8 v7, p2, 0x4

    .line 73
    aget-byte v8, v1, v7

    and-int/2addr v8, v14

    add-int/lit8 v11, p2, 0x5

    .line 74
    aget-byte v12, v1, v11

    and-int/2addr v12, v14

    if-nez v3, :cond_b

    if-nez v5, :cond_b

    if-nez v8, :cond_b

    if-nez v12, :cond_b

    .line 75
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_4

    .line 76
    :cond_b
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_c

    sget v9, Ll0/c0;->h:I

    if-ne v9, v5, :cond_c

    sget v9, Ll0/c0;->i:I

    if-ne v9, v8, :cond_c

    sget v9, Ll0/c0;->j:I

    if-eq v9, v12, :cond_d

    .line 77
    :cond_c
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_d

    .line 78
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 79
    sput v6, Ll0/c0;->k:I

    .line 80
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 81
    :cond_d
    :goto_4
    sput v3, Ll0/c0;->g:I

    .line 82
    sput v5, Ll0/c0;->h:I

    .line 83
    sput v8, Ll0/c0;->i:I

    .line 84
    sput v12, Ll0/c0;->j:I

    .line 85
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 86
    aget-byte v2, v1, v4

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 87
    aget-byte v2, v1, v7

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 88
    aget-byte v1, v1, v11

    and-int/2addr v1, v14

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_e

    .line 89
    :pswitch_5
    iget-boolean v2, v0, Lk0/ym;->e:Z

    if-eqz v2, :cond_e

    goto/16 :goto_e

    :cond_e
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 91
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2}, Ll0/c0;->E0(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 93
    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    invoke-static {v1}, Ll0/c0;->E0(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v2, p2, 0x2

    .line 94
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 95
    aget-byte v1, v1, v3

    const/16 v3, 0x6a

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 96
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 97
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x5

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 98
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 99
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6e

    new-array v4, v10, [I

    shr-int/lit8 v5, v2, 0x3

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 100
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6f

    new-array v4, v10, [I

    shr-int/2addr v2, v7

    and-int/2addr v2, v10

    aput v2, v4, v9

    .line 101
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 102
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 103
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 104
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 105
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 106
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v10, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    aput v1, v3, v9

    .line 107
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_10
    add-int/lit8 v2, p2, 0x2

    .line 108
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 109
    aget-byte v3, v1, v3

    add-int/lit8 v4, p2, 0x4

    .line 110
    aget-byte v4, v1, v4

    add-int/lit8 v5, p2, 0x5

    .line 111
    aget-byte v5, v1, v5

    add-int/lit8 v6, p2, 0x6

    .line 112
    aget-byte v6, v1, v6

    add-int/lit8 v7, p2, 0x7

    .line 113
    aget-byte v7, v1, v7

    add-int/lit8 v8, p2, 0x8

    .line 114
    aget-byte v8, v1, v8

    add-int/lit8 v11, p2, 0x9

    .line 115
    aget-byte v1, v1, v11

    const/16 v11, 0x66

    new-array v12, v10, [I

    and-int/2addr v2, v14

    aput v2, v12, v9

    .line 116
    invoke-static {v11, v12}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v11, v10, [I

    and-int/2addr v3, v14

    aput v3, v11, v9

    .line 117
    invoke-static {v2, v11}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    and-int/2addr v4, v14

    aput v4, v3, v9

    .line 118
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    and-int/lit16 v4, v5, 0xff

    aput v4, v3, v9

    .line 119
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x62

    new-array v3, v10, [I

    and-int/lit16 v4, v6, 0xff

    aput v4, v3, v9

    .line 120
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v10, [I

    and-int/lit16 v4, v7, 0xff

    aput v4, v3, v9

    .line 121
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x64

    new-array v3, v10, [I

    and-int/lit16 v4, v8, 0xff

    aput v4, v3, v9

    .line 122
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    and-int/2addr v1, v14

    aput v1, v3, v9

    .line 123
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v2, p2, 0x2

    .line 124
    aget-byte v3, v1, v2

    shl-int/2addr v3, v11

    const v4, 0xff00

    and-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v5, v1, v4

    and-int/2addr v5, v14

    or-int/2addr v3, v5

    const v5, 0x8000

    if-lt v3, v5, :cond_12

    .line 125
    aget-byte v3, v1, v4

    aget-byte v1, v1, v2

    const v2, 0x8000

    const/16 v4, 0x3212

    invoke-static {v3, v1, v2, v9, v4}, Lk0/qt;->m(IIIZI)V

    goto/16 :goto_e

    .line 126
    :cond_12
    aget-byte v3, v1, v4

    aget-byte v1, v1, v2

    const/16 v2, 0x2e9b

    invoke-static {v3, v1, v10, v2}, Lk0/qt;->j(IIII)V

    goto/16 :goto_e

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 128
    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_14

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 129
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 130
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_5

    :cond_14
    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 131
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 132
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    :goto_5
    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x5

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 133
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/lit8 v4, v2, 0x4

    and-int/2addr v4, v10

    aput v4, v3, v9

    .line 134
    invoke-static {v8, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v10, [I

    shr-int/2addr v2, v8

    and-int/2addr v2, v10

    aput v2, v3, v9

    .line 135
    invoke-static {v13, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 136
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v10

    aget-byte v1, v1, v2

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    invoke-static {v3, v1, v9}, Ll0/c0;->N1(III)V

    goto/16 :goto_e

    .line 137
    :cond_15
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_16
    add-int/lit8 v2, p2, 0x2

    .line 138
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    if-eq v2, v10, :cond_17

    goto/16 :goto_e

    :cond_17
    add-int/lit8 v2, p2, 0x3

    .line 139
    aget-byte v3, v1, v2

    shr-int/2addr v3, v8

    and-int/2addr v3, v10

    aget-byte v4, v1, v2

    shr-int/2addr v4, v6

    and-int/2addr v4, v10

    invoke-static {v3, v4, v9}, Ll0/c0;->a(III)V

    .line 140
    sget-object v3, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v7, [I

    aput v12, v5, v9

    aget-byte v1, v1, v2

    and-int/2addr v1, v14

    aput v1, v5, v10

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v3, v4, v5, v1, v2}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_18
    add-int/lit8 v2, p2, 0x3

    .line 141
    aget-byte v3, v1, v2

    shl-int/2addr v3, v11

    and-int/lit16 v3, v3, 0x7f00

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, v1, v4

    and-int/2addr v4, v14

    or-int/2addr v3, v4

    .line 142
    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_19

    rsub-int v1, v3, 0x3e8

    goto :goto_6

    :cond_19
    add-int/lit16 v1, v3, 0x3e8

    .line 143
    :goto_6
    invoke-static {v1}, Lu0/d;->B3(I)V

    goto/16 :goto_e

    :cond_1a
    add-int/lit8 v2, p2, 0x2

    .line 144
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 145
    aget-byte v1, v1, v3

    and-int/2addr v2, v14

    .line 146
    iput v2, v0, Lk0/ym;->c:I

    move v2, v9

    .line 147
    :goto_7
    iget-object v3, v0, Lk0/ym;->d:[[I

    array-length v7, v3

    if-ge v2, v7, :cond_1c

    .line 148
    iget v7, v0, Lk0/ym;->c:I

    aget-object v15, v3, v2

    aget v15, v15, v9

    if-ne v7, v15, :cond_1b

    if-eqz v7, :cond_1c

    .line 149
    iput v2, v0, Lk0/ym;->b:I

    goto :goto_8

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 150
    :cond_1c
    :goto_8
    iget v7, v0, Lk0/ym;->c:I

    if-eq v7, v5, :cond_2c

    if-eq v7, v12, :cond_28

    const/16 v5, 0x27

    if-eq v7, v5, :cond_27

    const/16 v5, 0x21

    if-eq v7, v5, :cond_25

    const/16 v4, 0x22

    if-eq v7, v4, :cond_23

    const/16 v4, 0x24

    if-eq v7, v4, :cond_21

    const/16 v4, 0x25

    if-eq v7, v4, :cond_1f

    and-int/2addr v1, v14

    if-ne v1, v10, :cond_1d

    .line 151
    array-length v1, v3

    if-ge v2, v1, :cond_34

    .line 152
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_1d
    if-nez v1, :cond_34

    .line 153
    iget v1, v0, Lk0/ym;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_1e

    if-eq v1, v14, :cond_1e

    .line 154
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 155
    :cond_1e
    iput v14, v0, Lk0/ym;->b:I

    goto/16 :goto_e

    :cond_1f
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_20

    const/16 v3, 0x1e

    .line 156
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_20
    const/16 v3, 0x1e

    .line 157
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_21
    move v2, v9

    :goto_a
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_22

    const/16 v3, 0x1f

    .line 158
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_22
    const/16 v1, 0x1f

    .line 159
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_23
    move v2, v9

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_24

    .line 160
    invoke-static {v11, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 161
    :cond_24
    invoke-static {v11, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_25
    move v2, v9

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_26

    .line 162
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 163
    :cond_26
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_27
    and-int/2addr v1, v14

    if-ne v1, v10, :cond_34

    const-string v1, "com.syu.carlink"

    .line 164
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    const-string v1, "com.syu.carlink"

    .line 165
    invoke-static {v1}, Lo1/u;->g(Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_28
    and-int/2addr v1, v14

    if-ne v1, v10, :cond_34

    .line 166
    sget v1, Lk0/nt;->a:I

    const v2, 0x101c8

    if-ne v1, v2, :cond_2b

    .line 167
    sget v1, Lh0/c;->E:I

    const/16 v2, 0x1a

    if-eq v1, v8, :cond_2a

    if-eq v1, v6, :cond_2a

    if-eq v1, v13, :cond_2a

    .line 168
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 169
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 170
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_29
    const/16 v1, 0xd

    .line 171
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 172
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 173
    :cond_2a
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 174
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_2b
    const/16 v1, 0xd

    .line 175
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 176
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_2c
    and-int/2addr v1, v14

    if-ne v1, v10, :cond_34

    .line 177
    sget v1, Lk0/nt;->a:I

    const v2, 0x101c8

    if-ne v1, v2, :cond_2f

    .line 178
    sget v1, Lh0/c;->E:I

    if-eq v1, v8, :cond_2e

    if-eq v1, v6, :cond_2e

    if-eq v1, v13, :cond_2e

    .line 179
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->r3()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/16 v1, 0x12

    .line 180
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 181
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_2d
    const/16 v1, 0xc

    .line 182
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 183
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_2e
    const/16 v1, 0x12

    .line 184
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 185
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    :cond_2f
    const/16 v1, 0xc

    .line 186
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 187
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_e

    .line 188
    :cond_30
    iput-boolean v10, v0, Lk0/ym;->e:Z

    add-int/lit8 v2, p2, 0x6

    .line 189
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    .line 190
    aget-byte v11, v1, v2

    shr-int/2addr v11, v7

    and-int/2addr v11, v8

    .line 191
    aget-byte v12, v1, v2

    shr-int/2addr v12, v5

    and-int/2addr v12, v8

    .line 192
    aget-byte v2, v1, v2

    shr-int/2addr v2, v6

    and-int/2addr v2, v8

    if-nez v3, :cond_31

    if-nez v11, :cond_31

    if-nez v12, :cond_31

    if-nez v2, :cond_31

    .line 193
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_d

    .line 194
    :cond_31
    sget v13, Ll0/c0;->g:I

    if-ne v13, v3, :cond_32

    sget v13, Ll0/c0;->h:I

    if-ne v13, v11, :cond_32

    sget v13, Ll0/c0;->i:I

    if-ne v13, v12, :cond_32

    sget v13, Ll0/c0;->j:I

    if-eq v13, v2, :cond_33

    .line 195
    :cond_32
    sget v13, Lu0/b;->o:I

    if-nez v13, :cond_33

    .line 196
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 197
    sput v6, Ll0/c0;->k:I

    .line 198
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 199
    :cond_33
    :goto_d
    sput v3, Ll0/c0;->g:I

    .line 200
    sput v11, Ll0/c0;->h:I

    .line 201
    sput v12, Ll0/c0;->i:I

    .line 202
    sput v2, Ll0/c0;->j:I

    .line 203
    invoke-static {v3}, Ll0/c0;->s1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->D2(I)V

    .line 204
    invoke-static {v11}, Ll0/c0;->s1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->E2(I)V

    .line 205
    invoke-static {v12}, Ll0/c0;->s1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->F2(I)V

    .line 206
    invoke-static {v2}, Ll0/c0;->s1(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->G2(I)V

    add-int/lit8 v2, p2, 0x7

    .line 207
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v8

    invoke-static {v3}, Ll0/c0;->s1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    .line 208
    aget-byte v3, v1, v2

    shr-int/2addr v3, v7

    and-int/2addr v3, v8

    invoke-static {v3}, Ll0/c0;->s1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    .line 209
    aget-byte v3, v1, v2

    shr-int/2addr v3, v5

    and-int/2addr v3, v8

    invoke-static {v3}, Ll0/c0;->s1(I)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    .line 210
    aget-byte v1, v1, v2

    shr-int/2addr v1, v6

    and-int/2addr v1, v8

    invoke-static {v1}, Ll0/c0;->s1(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    :cond_34
    :goto_e
    return-void

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/ym;->l:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ym;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ym;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/ym;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/ym;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/ym;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lw0/e;->e:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->t:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->s:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/ym;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    sget-object v0, Lu0/c;->o:Lo1/y;

    iget-object v1, p0, Lk0/ym;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lh0/d;->c:Lo1/y;

    iget-object v1, p0, Lk0/ym;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    sget-object v0, Lh0/d;->a:Lo1/y;

    iget-object v1, p0, Lk0/ym;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x9e

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
    .locals 6

    const/16 p3, 0xe3

    const/4 p4, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, -0x34

    aput p3, p1, v4

    aput v2, p1, v2

    .line 1
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, -0x35

    aput p3, p1, v4

    aput v2, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    aput p3, p1, v3

    const/16 p3, -0x70

    aput p3, p1, v4

    aput v4, p1, v2

    .line 3
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_3
    aget p1, p2, v3

    const/16 v5, 0x99

    if-ne p1, v5, :cond_4

    .line 5
    aget p1, p2, v4

    invoke-virtual {p0, p1}, Lk0/ym;->f3(I)V

    goto :goto_0

    :cond_4
    new-array p1, p4, [I

    aput p3, p1, v3

    const/16 p3, -0x38

    aput p3, p1, v4

    aput v2, p1, v2

    .line 6
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v4

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 7
    array-length p1, p2

    if-le p1, p4, :cond_6

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput p3, p1, v3

    const/16 p3, -0x39

    aput p3, p1, v4

    const/4 p3, 0x6

    aput p3, p1, v2

    .line 8
    aget v3, p2, v3

    aput v3, p1, v1

    aget v3, p2, v4

    aput v3, p1, v0

    aget v2, p2, v2

    aput v2, p1, p4

    aget v1, p2, v1

    aput v1, p1, p3

    const/4 p3, 0x7

    aget v0, p2, v0

    aput v0, p1, p3

    const/16 p3, 0x8

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final a3(II)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, 0xc7

    const/16 v3, 0xe3

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v9, :cond_4

    if-eq p1, v8, :cond_3

    if-eq p1, v7, :cond_2

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p1, v4, [I

    aput v3, p1, v11

    aput v2, p1, v9

    aput v10, p1, v8

    aput v11, p1, v7

    aput v11, p1, v6

    aput v11, p1, v5

    aput v11, p1, v10

    aput v11, p1, v1

    aput p2, p1, v0

    .line 1
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v4, [I

    aput v3, p1, v11

    aput v2, p1, v9

    aput v10, p1, v8

    aput v11, p1, v7

    aput v11, p1, v6

    aput v11, p1, v5

    aput v11, p1, v10

    aput p2, p1, v1

    aput v11, p1, v0

    .line 2
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v4, [I

    aput v3, p1, v11

    aput v2, p1, v9

    aput v10, p1, v8

    aput v11, p1, v7

    aput v11, p1, v6

    aput v11, p1, v5

    aput p2, p1, v10

    aput v11, p1, v1

    aput v11, p1, v0

    .line 3
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v4, [I

    aput v3, p1, v11

    aput v2, p1, v9

    aput v10, p1, v8

    aput v11, p1, v7

    aput v11, p1, v6

    aput p2, p1, v5

    aput v11, p1, v10

    aput v11, p1, v1

    aput v11, p1, v0

    .line 4
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p1, v4, [I

    aput v3, p1, v11

    aput v2, p1, v9

    aput v10, p1, v8

    aput v11, p1, v7

    aput p2, p1, v6

    aput v11, p1, v5

    aput v11, p1, v10

    aput v11, p1, v1

    aput v11, p1, v0

    .line 5
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p1, v4, [I

    aput v3, p1, v11

    aput v2, p1, v9

    aput v10, p1, v8

    aput p2, p1, v7

    aput v11, p1, v6

    aput v11, p1, v5

    aput v11, p1, v10

    aput v11, p1, v1

    aput v11, p1, v0

    .line 6
    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    const-wide/16 p1, 0x64

    .line 7
    invoke-static {p1, p2}, La/i;->a0(J)V

    new-array p1, v4, [I

    .line 8
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0xc7
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final f3(I)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/16 v3, 0x7d

    .line 1
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/16 v3, -0x38

    aput v3, v1, v0

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x99

    aput v4, v1, v3

    const/4 v3, 0x4

    aput p1, v1, v3

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sput p1, Lk0/ym;->q:I

    .line 4
    iget-object p1, p0, Lk0/ym;->l:Lo1/g0;

    invoke-virtual {p1, v0, v2}, Lo1/g0;->b(II)I

    move-result p1

    sget v1, Lk0/ym;->q:I

    if-eq p1, v1, :cond_0

    .line 5
    iget-object p1, p0, Lk0/ym;->l:Lo1/g0;

    invoke-virtual {p1, v0, v1}, Lo1/g0;->g(II)V

    :cond_0
    return-void
.end method
