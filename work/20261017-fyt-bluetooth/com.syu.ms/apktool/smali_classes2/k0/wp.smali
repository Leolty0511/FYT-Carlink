.class public Lk0/wp;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/wp$g;
    }
.end annotation


# static fields
.field public static D:[I


# instance fields
.field public A:Ljava/lang/Runnable;

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;

.field public j:Lk0/wp$g;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:Ljava/lang/Runnable;

.field public x:I

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/wp;->D:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x4
        0x5
        0x8
        0x9
        0x6
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/wp;->c:I

    const/16 v1, 0x17

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

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    const/16 v4, 0x9

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    const/16 v4, 0xa

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    const/16 v4, 0xb

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_c

    const/16 v4, 0xc

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_d

    const/16 v4, 0xd

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_e

    const/16 v4, 0xe

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_f

    const/16 v4, 0xf

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_10

    const/16 v4, 0x10

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_11

    const/16 v4, 0x11

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_12

    const/16 v4, 0x12

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_13

    const/16 v4, 0x13

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_14

    const/16 v4, 0x14

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_15

    const/16 v4, 0x15

    aput-object v3, v1, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/wp;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/wp;->e:Z

    .line 5
    iput v0, p0, Lk0/wp;->f:I

    .line 6
    iput v0, p0, Lk0/wp;->g:I

    .line 7
    new-instance v1, Lk0/wp$a;

    invoke-direct {v1, p0}, Lk0/wp$a;-><init>(Lk0/wp;)V

    iput-object v1, p0, Lk0/wp;->h:Ljava/lang/Runnable;

    .line 8
    new-instance v1, Lk0/wp$b;

    invoke-direct {v1, p0}, Lk0/wp$b;-><init>(Lk0/wp;)V

    iput-object v1, p0, Lk0/wp;->i:Ljava/lang/Runnable;

    const-string v1, ""

    .line 9
    iput-object v1, p0, Lk0/wp;->k:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lk0/wp;->l:Ljava/lang/String;

    .line 11
    iput v0, p0, Lk0/wp;->m:I

    .line 12
    iput v0, p0, Lk0/wp;->n:I

    .line 13
    iput v0, p0, Lk0/wp;->o:I

    .line 14
    iput v0, p0, Lk0/wp;->p:I

    .line 15
    iput v0, p0, Lk0/wp;->q:I

    .line 16
    iput v0, p0, Lk0/wp;->r:I

    .line 17
    iput v0, p0, Lk0/wp;->s:I

    .line 18
    iput v0, p0, Lk0/wp;->t:I

    const/16 v2, 0xff

    .line 19
    iput v2, p0, Lk0/wp;->u:I

    .line 20
    iput v2, p0, Lk0/wp;->v:I

    .line 21
    new-instance v2, Lk0/wp$c;

    invoke-direct {v2, p0}, Lk0/wp$c;-><init>(Lk0/wp;)V

    iput-object v2, p0, Lk0/wp;->w:Ljava/lang/Runnable;

    .line 22
    iput v0, p0, Lk0/wp;->x:I

    .line 23
    iput-object v1, p0, Lk0/wp;->y:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lk0/wp;->z:Ljava/lang/String;

    .line 25
    new-instance v0, Lk0/wp$d;

    invoke-direct {v0, p0}, Lk0/wp$d;-><init>(Lk0/wp;)V

    iput-object v0, p0, Lk0/wp;->A:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lk0/wp$e;

    invoke-direct {v0, p0}, Lk0/wp$e;-><init>(Lk0/wp;)V

    iput-object v0, p0, Lk0/wp;->B:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lk0/wp$f;

    invoke-direct {v0, p0}, Lk0/wp$f;-><init>(Lk0/wp;)V

    iput-object v0, p0, Lk0/wp;->C:Ljava/lang/Runnable;

    return-void

    nop

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
        0x6
        0xc
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_5
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0xb
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xc
        0x4
    .end array-data

    :array_8
    .array-data 4
        0x12
        0xd
    .end array-data

    :array_9
    .array-data 4
        0x80
        0x19
    .end array-data

    :array_a
    .array-data 4
        0x81
        0x5
    .end array-data

    :array_b
    .array-data 4
        0x82
        0x6
    .end array-data

    :array_c
    .array-data 4
        0x83
        0x36
    .end array-data

    :array_d
    .array-data 4
        0x84
        0x15
    .end array-data

    :array_e
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_f
    .array-data 4
        0x86
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x87
        0xc
    .end array-data

    :array_11
    .array-data 4
        0x88
        0x19
    .end array-data

    :array_12
    .array-data 4
        0x89
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x8a
        0x4
    .end array-data

    :array_14
    .array-data 4
        0x8b
        0x37
    .end array-data

    :array_15
    .array-data 4
        0x8c
        0x1
    .end array-data

    :array_16
    .array-data 4
        0x8d
        0x3f
    .end array-data
.end method

.method public static synthetic e3(Lk0/wp;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/wp;->b3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic f3(Lk0/wp;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/wp;->d3()V

    return-void
.end method

.method public static synthetic g3(Lk0/wp;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/wp;->v:I

    return p0
.end method

.method public static synthetic h3(Lk0/wp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/wp;->v:I

    return p1
.end method

.method public static synthetic i3(Lk0/wp;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/wp;->a3(I)I

    move-result p0

    return p0
.end method

.method public static synthetic j3(Lk0/wp;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/wp;->u:I

    return p0
.end method

.method public static synthetic k3(Lk0/wp;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/wp;->u:I

    return p1
.end method

.method public static synthetic l3(Lk0/wp;BLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lk0/wp;->m3(BLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 11

    if-eqz p1, :cond_1e

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

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

    const/16 v3, 0x29

    const/4 v4, 0x3

    const/16 v5, 0x10

    if-eq v2, v3, :cond_16

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_16

    const/16 v3, 0x44

    const/4 v7, 0x4

    const/16 v8, 0x8

    const/16 v9, 0xc

    const/16 v10, 0xb

    if-eq v2, v3, :cond_a

    const/16 v3, 0x15

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 4
    :pswitch_0
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ge p1, v8, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    :cond_1
    invoke-virtual {p0, p1, v6}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 7
    :cond_2
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    .line 8
    :cond_3
    invoke-virtual {p0, p1, v6}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 9
    :pswitch_1
    aget v1, p1, v6

    if-ne v1, v6, :cond_4

    .line 10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-nez p1, :cond_1e

    .line 11
    invoke-virtual {p0, v7, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 12
    :cond_4
    aget p1, p1, v6

    if-nez p1, :cond_1e

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    if-ne p1, v6, :cond_1e

    .line 14
    invoke-virtual {p0, v8, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 15
    :pswitch_2
    aget p1, p1, v6

    const/16 v1, 0x40

    if-eqz p1, :cond_5

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_1e

    .line 17
    invoke-virtual {p0, v1, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 18
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-ne p1, v6, :cond_1e

    .line 19
    invoke-virtual {p0, v1, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 20
    :pswitch_3
    aget p1, p1, v6

    const/16 v1, 0x41

    if-eqz p1, :cond_6

    .line 21
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_1e

    .line 22
    invoke-virtual {p0, v5, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 23
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_1e

    .line 24
    invoke-virtual {p0, v5, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 25
    :pswitch_4
    aget p1, p1, v6

    const/16 v1, 0x20

    const/16 v2, 0xd

    if-eqz p1, :cond_7

    .line 26
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-nez p1, :cond_1e

    .line 27
    invoke-virtual {p0, v1, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 28
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v2

    if-ne p1, v6, :cond_1e

    .line 29
    invoke-virtual {p0, v1, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 30
    :pswitch_5
    aget p1, p1, v6

    if-eqz p1, :cond_8

    .line 31
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-nez p1, :cond_1e

    .line 32
    invoke-virtual {p0, v1, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 33
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    if-ne p1, v6, :cond_1e

    .line 34
    invoke-virtual {p0, v1, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 35
    :pswitch_6
    aget p1, p1, v6

    const/16 v1, 0x80

    if-eqz p1, :cond_9

    .line 36
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_1e

    .line 37
    invoke-virtual {p0, v1, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 38
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-eqz p1, :cond_1e

    .line 39
    invoke-virtual {p0, v1, v0}, Lk0/wp;->c3(II)V

    goto/16 :goto_2

    .line 40
    :cond_a
    aget v0, p1, v6

    const/4 v2, 0x5

    if-ne v0, v6, :cond_b

    new-array p1, v2, [I

    .line 41
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 42
    :cond_b
    aget v0, p1, v6

    if-ne v0, v1, :cond_c

    new-array p1, v2, [I

    .line 43
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 44
    :cond_c
    aget v0, p1, v6

    if-ne v0, v4, :cond_d

    new-array p1, v2, [I

    .line 45
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 46
    :cond_d
    aget v0, p1, v6

    if-ne v0, v7, :cond_e

    new-array p1, v2, [I

    .line 47
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 48
    :cond_e
    aget v0, p1, v6

    if-ne v0, v2, :cond_f

    new-array p1, v2, [I

    .line 49
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 50
    :cond_f
    aget v0, p1, v6

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    new-array p1, v2, [I

    .line 51
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 52
    :cond_10
    aget v0, p1, v6

    const/4 v1, 0x7

    if-ne v0, v1, :cond_11

    new-array p1, v2, [I

    .line 53
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 54
    :cond_11
    aget v0, p1, v6

    if-ne v0, v8, :cond_12

    new-array p1, v2, [I

    .line 55
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 56
    :cond_12
    aget v0, p1, v6

    const/16 v1, 0x9

    if-ne v0, v1, :cond_13

    new-array p1, v2, [I

    .line 57
    fill-array-data p1, :array_8

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 58
    :cond_13
    aget v0, p1, v6

    const/16 v1, 0xa

    if-ne v0, v1, :cond_14

    new-array p1, v2, [I

    .line 59
    fill-array-data p1, :array_9

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 60
    :cond_14
    aget v0, p1, v6

    if-ne v0, v10, :cond_15

    new-array p1, v2, [I

    .line 61
    fill-array-data p1, :array_a

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 62
    :cond_15
    aget p1, p1, v6

    if-ne p1, v9, :cond_1e

    new-array p1, v2, [I

    .line 63
    fill-array-data p1, :array_b

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 64
    :cond_16
    aget p1, p1, v6

    const/16 v0, 0xf

    const/16 v2, 0x12

    const/4 v3, -0x3

    const/4 v7, -0x2

    const/16 v8, 0x1b

    if-eqz p1, :cond_1a

    .line 65
    sget-object p1, Lk0/nt;->g:[I

    aget v9, p1, v8

    if-ne v9, v7, :cond_17

    goto :goto_0

    .line 66
    :cond_17
    aget v1, p1, v8

    if-ne v1, v3, :cond_18

    move v1, v5

    goto :goto_0

    .line 67
    :cond_18
    aget v1, p1, v8

    if-lt v1, v2, :cond_19

    aget v1, p1, v8

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_19

    .line 68
    aget p1, p1, v8

    add-int/lit8 v1, p1, -0xf

    goto :goto_0

    :cond_19
    move v1, v6

    .line 69
    :goto_0
    invoke-virtual {p0, v1, v4}, Lk0/wp;->c3(II)V

    goto :goto_2

    .line 70
    :cond_1a
    sget-object p1, Lk0/nt;->g:[I

    aget v1, p1, v8

    if-ne v1, v7, :cond_1b

    goto :goto_1

    .line 71
    :cond_1b
    aget v1, p1, v8

    if-ne v1, v3, :cond_1c

    move v6, v0

    goto :goto_1

    .line 72
    :cond_1c
    aget v0, p1, v8

    if-lt v0, v2, :cond_1d

    aget v0, p1, v8

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_1d

    .line 73
    aget p1, p1, v8

    add-int/lit8 v6, p1, -0x11

    .line 74
    :cond_1d
    :goto_1
    invoke-virtual {p0, v6, v4}, Lk0/wp;->c3(II)V

    :cond_1e
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x3
        0x0
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x3
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x4
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x4
        0x1
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x5
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x6
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x6
        0x1
    .end array-data

    :array_a
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x1
        0x0
    .end array-data

    :array_b
    .array-data 4
        0xe3
        -0x3b
        0x2
        0x1
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/wp;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/wp;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/wp;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/wp;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    iget-object v0, p0, Lk0/wp;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 7
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput v1, v0, Lk0/mt;->i:I

    const-string v3, "com.syu.canbus"

    .line 8
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 9
    iput v2, v0, Lk0/mt;->e:I

    .line 10
    iput v2, v0, Lk0/mt;->f:I

    .line 11
    iput v2, v0, Lk0/mt;->g:I

    .line 12
    iput v1, v0, Lk0/mt;->o:I

    .line 13
    iput v2, v0, Lk0/mt;->i:I

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 15
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iput v1, v0, Lk0/mt;->i:I

    .line 16
    :cond_0
    sget v0, Lk0/nt;->a:I

    const v1, 0x4a01c7

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lk0/wp;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 18
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/wp;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 19
    new-instance v0, Lk0/wp$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk0/wp$g;-><init>(Lk0/wp;Lk0/wp$a;)V

    iput-object v0, p0, Lk0/wp;->j:Lk0/wp$g;

    .line 20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/wp;->j:Lk0/wp$g;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0}, Lk0/wp;->d3()V

    .line 24
    :goto_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xd

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
        0x43
        0x37
        0x38
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0xa

    const/16 v4, 0xb

    const/16 v7, 0x11

    const/16 v8, 0xc

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x3

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eq v2, v7, :cond_24

    const/16 v7, 0x28

    if-eq v2, v7, :cond_22

    const/16 v7, 0x30

    if-eq v2, v7, :cond_21

    const/16 v7, 0x40

    if-eq v2, v7, :cond_20

    const/16 v7, 0x7d

    if-eq v2, v7, :cond_1c

    const/16 v4, 0x7f

    if-eq v2, v4, :cond_1b

    const/16 v4, 0x38

    const/16 v7, 0x9

    if-eq v2, v4, :cond_13

    const/16 v4, 0x39

    if-eq v2, v4, :cond_12

    const/16 v4, 0x42

    if-eq v2, v4, :cond_11

    const/16 v4, 0x43

    if-eq v2, v4, :cond_10

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    add-int/lit8 v4, p2, 0x3

    .line 3
    aget-byte v5, v1, v4

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x4

    .line 4
    aget-byte v7, v1, v6

    and-int/2addr v7, v13

    add-int/lit8 v8, p2, 0x5

    .line 5
    aget-byte v9, v1, v8

    and-int/2addr v9, v13

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v7, :cond_0

    if-nez v9, :cond_0

    .line 6
    invoke-static {v14}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v11, Ll0/c0;->g:I

    if-ne v11, v3, :cond_1

    sget v11, Ll0/c0;->h:I

    if-ne v11, v5, :cond_1

    sget v11, Ll0/c0;->i:I

    if-ne v11, v7, :cond_1

    sget v11, Ll0/c0;->j:I

    if-eq v11, v9, :cond_2

    .line 8
    :cond_1
    sget v11, Lu0/b;->o:I

    if-nez v11, :cond_2

    .line 9
    invoke-static {v15}, Lu0/d;->C2(I)V

    .line 10
    sput v10, Ll0/c0;->k:I

    .line 11
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 13
    sput v5, Ll0/c0;->h:I

    .line 14
    sput v7, Ll0/c0;->i:I

    .line 15
    sput v9, Ll0/c0;->j:I

    .line 16
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 17
    aget-byte v2, v1, v4

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 18
    aget-byte v2, v1, v6

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 19
    aget-byte v1, v1, v8

    invoke-static {v1}, Ll0/e0;->p(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_a

    :pswitch_1
    add-int/lit8 v2, p2, 0x2

    .line 20
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 22
    aget-byte v2, v1, v2

    invoke-static {v2}, Ll0/e0;->p(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 23
    aget-byte v1, v1, v2

    invoke-static {v1}, Ll0/e0;->p(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_a

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 24
    aget-byte v2, v1, v2

    add-int/lit8 v4, p2, 0x3

    .line 25
    aget-byte v1, v1, v4

    and-int/2addr v2, v13

    .line 26
    iput v2, v0, Lk0/wp;->c:I

    move v2, v14

    .line 27
    :goto_1
    iget-object v4, v0, Lk0/wp;->d:[[I

    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 28
    iget v5, v0, Lk0/wp;->c:I

    aget-object v16, v4, v2

    aget v6, v16, v14

    if-ne v5, v6, :cond_3

    if-eqz v5, :cond_4

    .line 29
    iput v2, v0, Lk0/wp;->b:I

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 30
    :cond_4
    :goto_2
    iget v5, v0, Lk0/wp;->c:I

    if-eq v5, v7, :cond_e

    if-eq v5, v3, :cond_c

    const/16 v3, 0x80

    if-eq v5, v3, :cond_7

    and-int/2addr v1, v13

    if-ne v1, v15, :cond_5

    .line 31
    array-length v1, v4

    if-ge v2, v1, :cond_33

    .line 32
    aget-object v1, v4, v2

    aget v1, v1, v15

    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_5
    if-nez v1, :cond_33

    .line 33
    iget v1, v0, Lk0/wp;->b:I

    array-length v2, v4

    if-ge v1, v2, :cond_6

    if-eq v1, v13, :cond_6

    .line 34
    aget-object v1, v4, v1

    aget v1, v1, v15

    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    .line 35
    :cond_6
    iput v13, v0, Lk0/wp;->b:I

    goto/16 :goto_a

    .line 36
    :cond_7
    iget v2, v0, Lk0/wp;->f:I

    if-eq v2, v1, :cond_33

    .line 37
    iput v1, v0, Lk0/wp;->f:I

    if-ne v1, v15, :cond_8

    .line 38
    iput-boolean v14, v0, Lk0/wp;->e:Z

    goto/16 :goto_a

    :cond_8
    const/16 v2, 0x19

    if-ne v1, v11, :cond_9

    .line 39
    iput-boolean v15, v0, Lk0/wp;->e:Z

    .line 40
    invoke-static {v2, v14}, Ll0/b0;->l0(II)V

    .line 41
    invoke-static {v2, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_9
    if-nez v1, :cond_33

    .line 42
    iget-boolean v1, v0, Lk0/wp;->e:Z

    if-nez v1, :cond_b

    .line 43
    sget v1, Lu0/b;->j:I

    if-ne v1, v15, :cond_a

    .line 44
    invoke-static {v2, v14}, Ll0/b0;->l0(II)V

    .line 45
    invoke-static {v2, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    .line 46
    :cond_a
    invoke-static {v8, v14}, Ll0/b0;->l0(II)V

    .line 47
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    .line 48
    :cond_b
    iput-boolean v14, v0, Lk0/wp;->e:Z

    goto/16 :goto_a

    :cond_c
    and-int/2addr v1, v13

    if-ne v1, v15, :cond_33

    .line 49
    sget v1, Lh0/c;->E:I

    if-eq v1, v12, :cond_d

    if-eq v1, v10, :cond_d

    if-eq v1, v9, :cond_d

    .line 50
    invoke-static {v8, v14}, Ll0/b0;->l0(II)V

    .line 51
    invoke-static {v8, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_d
    const/16 v1, 0x1a

    .line 52
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 53
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_e
    and-int/2addr v1, v13

    if-ne v1, v15, :cond_33

    .line 54
    sget v1, Lh0/c;->E:I

    if-eq v1, v10, :cond_f

    const/16 v1, 0xd

    .line 55
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 56
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_f
    const/16 v1, 0x12

    .line 57
    invoke-static {v1, v14}, Ll0/b0;->l0(II)V

    .line 58
    invoke-static {v1, v15}, Ll0/b0;->l0(II)V

    goto/16 :goto_a

    :cond_10
    const/16 v2, 0x85

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 59
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x86

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 60
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, p2, 0x4

    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    or-int/2addr v4, v5

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x87

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x5

    .line 61
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x88

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 62
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x89

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x7

    .line 63
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x8

    .line 64
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_11
    const/16 v2, 0x7a

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 65
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7b

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 66
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7c

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x4

    .line 67
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7d

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x5

    .line 68
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7e

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 69
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x7f

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x7

    .line 70
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_12
    const/16 v2, 0x6a

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 71
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 72
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x4

    .line 73
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x5

    .line 74
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 75
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_14

    const/16 v3, 0x66

    new-array v4, v15, [I

    .line 76
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_14
    add-int/lit8 v2, p2, 0x3

    .line 77
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_15

    const/16 v3, 0x67

    new-array v4, v15, [I

    .line 78
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_15
    add-int/lit8 v2, p2, 0x4

    .line 79
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_16

    const/16 v3, 0x68

    new-array v4, v15, [I

    .line 80
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_16
    add-int/lit8 v2, p2, 0x5

    .line 81
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_17

    const/16 v3, 0x69

    new-array v4, v15, [I

    .line 82
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_17
    add-int/lit8 v2, p2, 0x6

    .line 83
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_18

    const/16 v3, 0x62

    new-array v4, v15, [I

    .line 84
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_18
    add-int/lit8 v2, p2, 0x7

    .line 85
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_19

    const/16 v3, 0x63

    new-array v4, v15, [I

    .line 86
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_19
    add-int/lit8 v2, p2, 0x8

    .line 87
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_1a

    const/16 v3, 0x64

    new-array v4, v15, [I

    .line 88
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    aput v2, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    :cond_1a
    add-int/lit8 v2, p2, 0x9

    .line 89
    aget-byte v3, v1, v2

    and-int/2addr v3, v13

    if-eq v3, v13, :cond_33

    const/16 v3, 0x65

    new-array v4, v15, [I

    .line 90
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    aput v1, v4, v14

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    .line 91
    :cond_1b
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1c
    add-int/lit8 v2, p2, 0x2

    .line 92
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    const/4 v3, 0x0

    if-eq v2, v15, :cond_1e

    if-eq v2, v12, :cond_1d

    goto/16 :goto_a

    :cond_1d
    add-int/lit8 v2, p2, 0x4

    .line 93
    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    const v4, 0xff00

    and-int/2addr v2, v4

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    or-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    const/16 v2, 0x407

    new-array v4, v15, [I

    aput v1, v4, v14

    .line 94
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    .line 95
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v4, 0x419

    new-array v5, v11, [I

    aput v15, v5, v14

    aput v1, v5, v15

    invoke-static {v2, v4, v5, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_1e
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 96
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    add-int/lit8 v2, p2, 0x3

    .line 97
    aget-byte v5, v1, v2

    shr-int/2addr v5, v12

    and-int/2addr v5, v15

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v15

    invoke-static {v5, v2, v14}, Ll0/c0;->b(III)V

    goto :goto_3

    :cond_1f
    add-int/lit8 v2, p2, 0x3

    .line 98
    aget-byte v5, v1, v2

    shr-int/2addr v5, v12

    and-int/2addr v5, v15

    aget-byte v2, v1, v2

    shr-int/2addr v2, v10

    and-int/2addr v2, v15

    invoke-static {v5, v2, v14}, Ll0/c0;->a(III)V

    .line 99
    :goto_3
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x419

    new-array v6, v11, [I

    aput v4, v6, v14

    add-int/lit8 v4, p2, 0x3

    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v6, v15

    invoke-static {v2, v5, v6, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_20
    const/16 v2, 0x6e

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x2

    .line 100
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x3

    .line 101
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x4

    .line 102
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x5

    .line 103
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x6

    .line 104
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x7

    .line 105
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x8

    .line 106
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x75

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x9

    .line 107
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x76

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xa

    .line 108
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x77

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xb

    .line 109
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x78

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xc

    .line 110
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x79

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xd

    .line 111
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xe

    .line 112
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x81

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0xf

    .line 113
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x82

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x10

    .line 114
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x11

    .line 115
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v15, [I

    const/16 v4, 0x12

    add-int/lit8 v4, p2, 0x12

    .line 116
    aget-byte v1, v1, v4

    and-int/2addr v1, v13

    aput v1, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_21
    add-int/lit8 v2, p2, 0x3

    .line 117
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    add-int/lit8 v3, p2, 0x2

    aget-byte v1, v1, v3

    and-int/2addr v1, v13

    const/16 v3, 0x2ee0

    invoke-static {v2, v1, v14, v3}, Lk0/qt;->l(IIZI)V

    goto/16 :goto_a

    :cond_22
    add-int/lit8 v2, p2, 0x2

    .line 118
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    const-string v2, "persist.syu.reversefrontdoor"

    .line 119
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_23

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 120
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 121
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_23
    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 122
    invoke-static {v15, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 123
    invoke-static {v11, v2}, Lk0/qt;->y0(I[I)V

    :goto_4
    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 124
    invoke-static {v12, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v15

    aput v3, v2, v14

    .line 125
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v15, [I

    shr-int/2addr v1, v12

    and-int/2addr v1, v15

    aput v1, v2, v14

    .line 126
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_a

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 127
    aget-byte v2, v1, v2

    and-int/2addr v2, v13

    add-int/lit8 v5, p2, 0x3

    .line 128
    aget-byte v5, v1, v5

    and-int/2addr v5, v13

    add-int/lit8 v6, p2, 0x4

    .line 129
    aget-byte v6, v1, v6

    and-int/2addr v6, v13

    add-int/lit8 v16, p2, 0x5

    .line 130
    aget-byte v3, v1, v16

    and-int/2addr v3, v13

    add-int/lit8 v17, p2, 0x6

    .line 131
    aget-byte v7, v1, v17

    and-int/2addr v7, v13

    new-array v9, v15, [I

    shr-int/lit8 v18, v2, 0x6

    and-int/lit8 v18, v18, 0x1

    aput v18, v9, v14

    .line 132
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x35

    new-array v9, v15, [I

    shr-int/lit8 v18, v2, 0x5

    and-int/lit8 v18, v18, 0x1

    aput v18, v9, v14

    .line 133
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    new-array v4, v15, [I

    shr-int/lit8 v9, v2, 0x4

    and-int/2addr v9, v15

    aput v9, v4, v14

    .line 134
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v15, [I

    shr-int/lit8 v8, v2, 0x3

    and-int/2addr v8, v15

    aput v8, v4, v14

    const/16 v8, 0xd

    .line 135
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0xe

    new-array v8, v15, [I

    shr-int/lit8 v9, v2, 0x2

    and-int/2addr v9, v15

    aput v9, v8, v14

    .line 136
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x10

    new-array v8, v15, [I

    shr-int/lit8 v9, v2, 0x1

    and-int/2addr v9, v15

    aput v9, v8, v14

    .line 137
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x41

    new-array v8, v15, [I

    shr-int/2addr v2, v14

    and-int/2addr v2, v15

    aput v2, v8, v14

    .line 138
    invoke-static {v4, v8}, Lk0/qt;->y0(I[I)V

    and-int/lit16 v2, v5, 0xff

    if-eq v2, v15, :cond_29

    if-eq v2, v11, :cond_28

    if-eq v2, v12, :cond_27

    if-eq v2, v10, :cond_26

    const/4 v4, 0x5

    if-eq v2, v4, :cond_25

    move v2, v14

    move v4, v2

    :goto_5
    move v5, v4

    goto :goto_6

    :cond_25
    move v4, v14

    move v5, v4

    move v2, v15

    goto :goto_6

    :cond_26
    move v4, v14

    move v2, v15

    move v5, v2

    goto :goto_6

    :cond_27
    move v2, v14

    move v4, v2

    move v5, v15

    goto :goto_6

    :cond_28
    move v2, v14

    move v4, v15

    goto :goto_5

    :cond_29
    move v2, v14

    move v5, v2

    move v4, v15

    :goto_6
    new-array v8, v15, [I

    aput v2, v8, v14

    const/16 v2, 0x12

    .line 139
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v8, v15, [I

    aput v4, v8, v14

    .line 140
    invoke-static {v2, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v4, v15, [I

    aput v5, v4, v14

    .line 141
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x15

    new-array v4, v15, [I

    and-int/lit16 v5, v6, 0xff

    aput v5, v4, v14

    .line 142
    invoke-static {v2, v4}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 143
    invoke-static {v2, v14}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 144
    aget-byte v2, v1, v17

    and-int/lit16 v3, v2, 0xff

    .line 145
    aget-byte v2, v1, v16

    and-int/lit16 v7, v2, 0xff

    :cond_2a
    const/16 v2, 0x1b

    const/16 v4, 0xf

    if-eqz v3, :cond_2d

    if-eq v3, v4, :cond_2c

    if-lez v3, :cond_2b

    if-ge v3, v4, :cond_2b

    new-array v5, v15, [I

    and-int/2addr v3, v13

    const/16 v6, 0x11

    add-int/2addr v3, v6

    aput v3, v5, v14

    .line 146
    invoke-static {v2, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2b
    new-array v3, v15, [I

    const/4 v5, -0x1

    aput v5, v3, v14

    .line 147
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2c
    new-array v3, v15, [I

    const/4 v5, -0x3

    aput v5, v3, v14

    .line 148
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_7

    :cond_2d
    new-array v3, v15, [I

    const/4 v5, -0x2

    aput v5, v3, v14

    .line 149
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_7
    const/16 v2, 0x1c

    if-eqz v7, :cond_30

    if-eq v7, v4, :cond_2f

    if-lez v7, :cond_2e

    if-ge v7, v4, :cond_2e

    new-array v3, v15, [I

    and-int/lit16 v5, v7, 0xff

    const/16 v6, 0x11

    add-int/2addr v5, v6

    aput v5, v3, v14

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_2e
    new-array v3, v15, [I

    const/4 v5, -0x1

    aput v5, v3, v14

    .line 151
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_2f
    new-array v3, v15, [I

    const/4 v5, -0x3

    aput v5, v3, v14

    .line 152
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_8

    :cond_30
    new-array v3, v15, [I

    const/4 v5, -0x2

    aput v5, v3, v14

    .line 153
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :goto_8
    const/16 v2, 0x1d

    new-array v3, v15, [I

    add-int/lit8 v5, p2, 0x8

    .line 154
    aget-byte v5, v1, v5

    shr-int/2addr v5, v14

    and-int/2addr v4, v5

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x80

    new-array v3, v15, [I

    add-int/lit8 v4, p2, 0x9

    .line 155
    aget-byte v4, v1, v4

    and-int/2addr v4, v13

    aput v4, v3, v14

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x7

    .line 156
    aget-byte v1, v1, v2

    and-int/2addr v1, v13

    if-eqz v1, :cond_32

    if-eq v1, v13, :cond_32

    const/16 v2, 0xfe

    if-ne v1, v2, :cond_31

    goto :goto_9

    :cond_31
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x258

    .line 157
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto :goto_a

    .line 158
    :cond_32
    :goto_9
    invoke-static {v14}, Lu0/d;->A3(I)V

    :cond_33
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/wp;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/wp;->C:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/wp;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lk0/wp;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ly0/g;->d:Lo1/y;

    iget-object v1, p0, Lk0/wp;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v0, Ly0/g;->e:Lo1/y;

    iget-object v1, p0, Lk0/wp;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lo1/h;->a:Lo1/y;

    iget-object v1, p0, Lk0/wp;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x8c

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
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0xe3

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    const/4 v9, 0x7

    const/16 v10, 0x9

    const/4 v11, 0x6

    const/16 v12, 0x8

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    const/16 v13, 0x405

    if-eq v0, v13, :cond_0

    move-object/from16 v14, p0

    goto/16 :goto_0

    .line 1
    :cond_0
    aget v0, v1, v7

    mul-int/lit16 v0, v0, 0x400

    invoke-static {}, La/f;->w()I

    move-result v13

    div-int/2addr v0, v13

    .line 2
    aget v13, v1, v6

    mul-int/lit16 v13, v13, 0x3e8

    invoke-static {}, La/f;->i()I

    move-result v14

    div-int/2addr v13, v14

    move-object/from16 v14, p0

    .line 3
    invoke-virtual {v14, v1, v6}, Lk0/lt;->T2([II)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 4
    aget v15, v1, v8

    const/16 v16, 0xa8

    if-nez v15, :cond_1

    new-array v1, v10, [I

    aput v2, v1, v8

    aput v16, v1, v7

    aput v11, v1, v6

    aput v7, v1, v5

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v3

    shr-int/lit8 v0, v13, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v11

    and-int/lit16 v0, v13, 0xff

    aput v0, v1, v9

    aput v8, v1, v12

    .line 5
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 6
    :cond_1
    aget v1, v1, v8

    if-ne v1, v7, :cond_7

    new-array v1, v10, [I

    aput v2, v1, v8

    aput v16, v1, v7

    aput v11, v1, v6

    aput v8, v1, v5

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v4

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v3

    shr-int/lit8 v0, v13, 0x8

    and-int/lit16 v0, v0, 0xff

    aput v0, v1, v11

    and-int/lit16 v0, v13, 0xff

    aput v0, v1, v9

    aput v8, v1, v12

    .line 7
    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v14, p0

    if-eqz v1, :cond_7

    .line 8
    array-length v0, v1

    if-lez v0, :cond_7

    new-array v0, v3, [I

    aput v2, v0, v8

    const/16 v2, 0xc9

    aput v2, v0, v7

    aput v6, v0, v6

    .line 9
    aget v2, v1, v8

    aput v2, v0, v5

    aget v1, v1, v7

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v14, p0

    if-eqz v1, :cond_7

    .line 10
    array-length v0, v1

    if-lez v0, :cond_7

    new-array v0, v3, [I

    aput v2, v0, v8

    const/16 v2, 0x90

    aput v2, v0, v7

    aput v6, v0, v6

    .line 11
    aget v2, v1, v8

    aput v2, v0, v5

    aget v1, v1, v7

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    move-object/from16 v14, p0

    if-eqz v1, :cond_7

    .line 12
    array-length v0, v1

    if-lez v0, :cond_7

    new-array v0, v3, [I

    aput v2, v0, v8

    const/16 v2, 0xc8

    aput v2, v0, v7

    aput v6, v0, v6

    .line 13
    aget v2, v1, v8

    aput v2, v0, v5

    aget v1, v1, v7

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    move-object/from16 v14, p0

    if-eqz v1, :cond_7

    .line 14
    array-length v0, v1

    if-lez v0, :cond_7

    new-array v0, v10, [I

    aput v2, v0, v8

    const/16 v2, 0xc7

    aput v2, v0, v7

    aput v11, v0, v6

    .line 15
    aget v2, v1, v8

    aput v2, v0, v5

    aget v2, v1, v7

    aput v2, v0, v4

    aget v2, v1, v6

    aput v2, v0, v3

    aget v2, v1, v5

    aput v2, v0, v11

    aget v2, v1, v4

    aput v2, v0, v9

    aget v1, v1, v3

    aput v1, v0, v12

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    move-object/from16 v14, p0

    if-eqz v1, :cond_7

    .line 16
    array-length v0, v1

    if-lez v0, :cond_7

    new-array v0, v3, [I

    aput v2, v0, v8

    const/16 v2, 0xa7

    aput v2, v0, v7

    aput v6, v0, v6

    .line 17
    aget v2, v1, v8

    aput v2, v0, v5

    aget v1, v1, v7

    aput v1, v0, v4

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public final a3(I)I
    .locals 8

    const/16 v0, 0x168

    if-le p1, v0, :cond_0

    .line 1
    rem-int/lit16 p1, p1, 0x168

    :cond_0
    if-gez p1, :cond_1

    .line 2
    rem-int/lit16 p1, p1, 0x168

    .line 3
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    rsub-int p1, p1, 0x168

    :cond_1
    int-to-double v1, p1

    const-wide v3, 0x4036800000000000L    # 22.5

    cmpg-double v5, v1, v3

    if-gtz v5, :cond_2

    if-gez p1, :cond_3

    :cond_2
    const-wide v5, 0x4075180000000000L    # 337.5

    cmpl-double v7, v1, v5

    if-ltz v7, :cond_4

    if-gt p1, v0, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto/16 :goto_0

    :cond_4
    cmpl-double p1, v1, v3

    const-wide v3, 0x4050e00000000000L    # 67.5

    if-lez p1, :cond_5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_5

    const/4 p1, 0x2

    goto :goto_0

    :cond_5
    cmpl-double p1, v1, v3

    const-wide v3, 0x405c200000000000L    # 112.5

    if-ltz p1, :cond_6

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_6

    const/4 p1, 0x3

    goto :goto_0

    :cond_6
    cmpl-double p1, v1, v3

    const-wide v3, 0x4063b00000000000L    # 157.5

    if-lez p1, :cond_7

    cmpg-double p1, v1, v3

    if-gez p1, :cond_7

    const/4 p1, 0x4

    goto :goto_0

    :cond_7
    cmpl-double p1, v1, v3

    const-wide v3, 0x4069500000000000L    # 202.5

    if-ltz p1, :cond_8

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_8

    const/4 p1, 0x5

    goto :goto_0

    :cond_8
    cmpl-double p1, v1, v3

    const-wide v3, 0x406ef00000000000L    # 247.5

    if-lez p1, :cond_9

    cmpg-double p1, v1, v3

    if-gez p1, :cond_9

    const/4 p1, 0x6

    goto :goto_0

    :cond_9
    cmpl-double p1, v1, v3

    const-wide v3, 0x4072480000000000L    # 292.5

    if-ltz p1, :cond_a

    cmpg-double p1, v1, v3

    if-gtz p1, :cond_a

    const/4 p1, 0x7

    goto :goto_0

    :cond_a
    cmpl-double p1, v1, v3

    if-lez p1, :cond_b

    cmpg-double p1, v1, v5

    if-gez p1, :cond_b

    const/16 p1, 0x8

    goto :goto_0

    :cond_b
    const/16 p1, 0xf

    :goto_0
    return p1
.end method

.method public final b3(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, "  "

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 2
    array-length v0, p1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/16 v1, -0x1d

    const/4 v2, 0x0

    .line 3
    aput v1, v0, v2

    const/16 v1, -0x36

    const/4 v3, 0x1

    .line 4
    aput v1, v0, v3

    const/4 v1, 0x2

    .line 5
    array-length v4, p1

    add-int/2addr v4, v3

    int-to-byte v3, v4

    aput v3, v0, v1

    const/4 v1, 0x3

    const/16 v3, 0x11

    .line 6
    aput v3, v0, v1

    .line 7
    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_1

    add-int/lit8 v1, v2, 0x4

    .line 8
    aget-byte v3, p1, v2

    aput v3, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final c3(II)V
    .locals 12

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/16 v2, -0x39

    const/16 v3, 0xe3

    const/16 v4, 0x9

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x6

    const/4 v11, 0x0

    if-eqz p2, :cond_5

    if-eq p2, v9, :cond_4

    if-eq p2, v8, :cond_3

    if-eq p2, v7, :cond_2

    if-eq p2, v6, :cond_1

    if-eq p2, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput p1, p2, v0

    .line 1
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput p1, p2, v1

    aput v11, p2, v0

    .line 2
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput p1, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 3
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput v11, p2, v6

    aput p1, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 4
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput v11, p2, v7

    aput p1, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 5
    invoke-static {p2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    new-array p2, v4, [I

    aput v3, p2, v11

    aput v2, p2, v9

    aput v10, p2, v8

    aput p1, p2, v7

    aput v11, p2, v6

    aput v11, p2, v5

    aput v11, p2, v10

    aput v11, p2, v1

    aput v11, p2, v0

    .line 6
    invoke-static {p2}, Lz/k;->s([I)V

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
        -0x39
        0x6
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final d3()V
    .locals 7

    .line 1
    iget v0, p0, Lk0/wp;->r:I

    if-lez v0, :cond_1

    sget-object v1, Lk0/wp;->D:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lk0/wp;->n:I

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0xc9

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x6

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 3
    iget v6, p0, Lk0/wp;->t:I

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, p0, Lk0/wp;->v:I

    aput v6, v3, v4

    const/4 v4, 0x5

    and-int/lit16 v6, v2, 0xff

    aput v6, v3, v4

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v5

    const/4 v4, 0x7

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    aput v2, v3, v4

    aget v0, v1, v0

    const/16 v1, 0x8

    aput v0, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m3(BLjava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 2
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    const/16 v1, -0x1d

    const/4 v2, 0x0

    .line 3
    aput v1, v0, v2

    const/4 v1, 0x1

    .line 4
    aput p1, v0, v1

    const/4 p1, 0x2

    .line 5
    array-length v3, p2

    add-int/2addr v3, v1

    int-to-byte v1, v3

    aput v1, v0, p1

    const/4 p1, 0x3

    const/16 v1, 0x11

    .line 6
    aput v1, v0, p1

    .line 7
    :goto_0
    array-length p1, p2

    if-ge v2, p1, :cond_1

    add-int/lit8 p1, v2, 0x4

    .line 8
    aget-byte v1, p2, v2

    aput v1, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method
