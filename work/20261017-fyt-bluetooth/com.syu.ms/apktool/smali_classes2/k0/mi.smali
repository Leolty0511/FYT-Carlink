.class public Lk0/mi;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/mi$e;
    }
.end annotation


# static fields
.field public static z:[I


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:Z

.field public j:Ljava/lang/Runnable;

.field public k:Lk0/mi$e;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public final w:Ljava/lang/Runnable;

.field public x:Ljava/lang/Runnable;

.field public y:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/mi;->z:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x2
        0x3
        0x4
        0x5
        0x0
        0x0
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
    iput v0, p0, Lk0/mi;->c:I

    const/16 v1, 0x16

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

    new-array v2, v2, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/mi;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/mi;->e:Z

    .line 5
    iput v0, p0, Lk0/mi;->f:I

    .line 6
    iput v0, p0, Lk0/mi;->g:I

    .line 7
    iput v0, p0, Lk0/mi;->h:I

    .line 8
    iput-boolean v0, p0, Lk0/mi;->i:Z

    .line 9
    new-instance v1, Lk0/mi$a;

    invoke-direct {v1, p0}, Lk0/mi$a;-><init>(Lk0/mi;)V

    iput-object v1, p0, Lk0/mi;->j:Ljava/lang/Runnable;

    const-string v1, ""

    .line 10
    iput-object v1, p0, Lk0/mi;->l:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lk0/mi;->m:Ljava/lang/String;

    .line 12
    iput v0, p0, Lk0/mi;->n:I

    .line 13
    iput v0, p0, Lk0/mi;->o:I

    .line 14
    iput v0, p0, Lk0/mi;->p:I

    .line 15
    iput v0, p0, Lk0/mi;->q:I

    .line 16
    iput v0, p0, Lk0/mi;->r:I

    .line 17
    iput v0, p0, Lk0/mi;->s:I

    .line 18
    iput v0, p0, Lk0/mi;->t:I

    .line 19
    iput v0, p0, Lk0/mi;->u:I

    const/16 v0, 0xff

    .line 20
    iput v0, p0, Lk0/mi;->v:I

    .line 21
    new-instance v0, Lk0/mi$b;

    invoke-direct {v0, p0}, Lk0/mi$b;-><init>(Lk0/mi;)V

    iput-object v0, p0, Lk0/mi;->w:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lk0/mi$c;

    invoke-direct {v0, p0}, Lk0/mi$c;-><init>(Lk0/mi;)V

    iput-object v0, p0, Lk0/mi;->x:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lk0/mi$d;

    invoke-direct {v0, p0}, Lk0/mi$d;-><init>(Lk0/mi;)V

    iput-object v0, p0, Lk0/mi;->y:Ljava/lang/Runnable;

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
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x4
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x12
    .end array-data

    :array_8
    .array-data 4
        0xa
        0x1a
    .end array-data

    :array_9
    .array-data 4
        0xb
        0xc
    .end array-data

    :array_a
    .array-data 4
        0xc
        0x18
    .end array-data

    :array_b
    .array-data 4
        0x81
        0x8
    .end array-data

    :array_c
    .array-data 4
        0x82
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x83
        0x1e
    .end array-data

    :array_e
    .array-data 4
        0x84
        0x1f
    .end array-data

    :array_f
    .array-data 4
        0x85
        0x6
    .end array-data

    :array_10
    .array-data 4
        0x86
        0x5
    .end array-data

    :array_11
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x88
        0x22
    .end array-data

    :array_13
    .array-data 4
        0x89
        0x23
    .end array-data

    :array_14
    .array-data 4
        0x8a
        0x20
    .end array-data

    :array_15
    .array-data 4
        0x8b
        0x21
    .end array-data
.end method

.method public static synthetic e3(Lk0/mi;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/mi;->c3(I)V

    return-void
.end method

.method public static synthetic f3(Lk0/mi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/mi;->d3()V

    return-void
.end method

.method public static synthetic g3(Lk0/mi;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/mi;->w:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic h3(Lk0/mi;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lk0/mi;->b3()V

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

    if-eqz p1, :cond_11

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    aget v2, p1, v0

    const/16 v3, 0x44

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0xa

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    aget p1, p1, v10

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 p1, 0x4e

    .line 4
    invoke-virtual {p0, p1}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0x4f

    .line 5
    invoke-virtual {p0, p1}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    aget p1, p1, v10

    if-eqz p1, :cond_3

    .line 7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-nez p1, :cond_11

    .line 8
    invoke-virtual {p0, v9}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 9
    :cond_3
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    if-ne p1, v10, :cond_11

    const/4 p1, 0x6

    .line 10
    invoke-virtual {p0, p1}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_2
    aget p1, p1, v10

    const/16 v0, 0x10

    if-eqz p1, :cond_4

    .line 12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_11

    .line 13
    invoke-virtual {p0, v3}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 14
    :cond_4
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v10, :cond_11

    const/16 p1, 0xf

    .line 15
    invoke-virtual {p0, p1}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_3
    aget p1, p1, v10

    const/16 v0, 0x41

    if-eqz p1, :cond_5

    .line 17
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_11

    .line 18
    invoke-virtual {p0, v8}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 19
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v10, :cond_11

    .line 20
    invoke-virtual {p0, v7}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 21
    :pswitch_4
    aget p1, p1, v10

    if-eqz p1, :cond_6

    .line 22
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_11

    .line 23
    invoke-virtual {p0, v4}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 24
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v10, :cond_11

    .line 25
    invoke-virtual {p0, v0}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 26
    :pswitch_5
    aget p1, p1, v10

    if-eqz p1, :cond_7

    .line 27
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-nez p1, :cond_11

    .line 28
    invoke-virtual {p0, v1}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 29
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v8

    if-ne p1, v10, :cond_11

    .line 30
    invoke-virtual {p0, v5}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 31
    :pswitch_6
    aget p1, p1, v10

    if-eqz p1, :cond_8

    .line 32
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-nez p1, :cond_11

    .line 33
    invoke-virtual {p0, v10}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 34
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    if-ne p1, v10, :cond_11

    .line 35
    invoke-virtual {p0, v0}, Lk0/mi;->a3(I)V

    goto/16 :goto_0

    .line 36
    :cond_9
    aget v0, p1, v10

    if-ne v0, v6, :cond_a

    new-array p1, v9, [I

    .line 37
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 38
    :cond_a
    aget v0, p1, v10

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    new-array p1, v9, [I

    .line 39
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 40
    :cond_b
    aget v0, p1, v10

    if-ne v0, v10, :cond_c

    new-array p1, v9, [I

    .line 41
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 42
    :cond_c
    aget v0, p1, v10

    if-ne v0, v1, :cond_d

    new-array p1, v9, [I

    .line 43
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 44
    :cond_d
    aget v0, p1, v10

    if-ne v0, v5, :cond_e

    new-array p1, v9, [I

    .line 45
    fill-array-data p1, :array_4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 46
    :cond_e
    aget v0, p1, v10

    if-ne v0, v4, :cond_f

    new-array p1, v9, [I

    .line 47
    fill-array-data p1, :array_5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 48
    :cond_f
    aget v0, p1, v10

    if-ne v0, v8, :cond_10

    new-array p1, v9, [I

    .line 49
    fill-array-data p1, :array_6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 50
    :cond_10
    aget p1, p1, v10

    if-ne p1, v7, :cond_11

    new-array p1, v9, [I

    .line 51
    fill-array-data p1, :array_7

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_11
    :goto_0
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
        -0x58
        0x2
        0x4
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x58
        0x2
        0x4
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x58
        0x2
        0x3
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x58
        0x2
        0x3
        0x3
    .end array-data

    :array_4
    .array-data 4
        0xe3
        -0x58
        0x2
        0x3
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xe3
        -0x58
        0x2
        0x3
        0x5
    .end array-data

    :array_6
    .array-data 4
        0xe3
        -0x58
        0x2
        0x3
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        -0x58
        0x2
        0x3
        0x1
    .end array-data
.end method

.method public S2()V
    .locals 5

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    iget-object v0, p0, Lk0/mi;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/mi;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/mi;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, v0, Lk0/mt;->m:[I

    .line 6
    iput v2, v0, Lk0/mt;->i:I

    const/4 v1, 0x0

    .line 7
    iput v1, v0, Lk0/mt;->b:I

    .line 8
    iput v1, v0, Lk0/mt;->c:I

    .line 9
    iput v1, v0, Lk0/mt;->d:I

    .line 10
    iput v1, v0, Lk0/mt;->o:I

    .line 11
    iput v1, v0, Lk0/mt;->h:I

    .line 12
    iput v1, v0, Lk0/mt;->p:I

    .line 13
    sget v3, Lk0/nt;->a:I

    const v4, 0x5b01c5

    if-ne v3, v4, :cond_0

    .line 14
    iput v1, v0, Lk0/mt;->i:I

    :cond_0
    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 15
    :sswitch_0
    iput-object v4, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 16
    iput v2, v0, Lk0/mt;->e:I

    .line 17
    iput v2, v0, Lk0/mt;->f:I

    .line 18
    iput v1, v0, Lk0/mt;->g:I

    goto :goto_0

    :sswitch_1
    const-string v3, "com.syu.canbus"

    .line 19
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lk0/mt;->a:[Ljava/lang/String;

    .line 20
    iput v1, v0, Lk0/mt;->e:I

    .line 21
    iput v2, v0, Lk0/mt;->f:I

    .line 22
    iput v2, v0, Lk0/mt;->g:I

    .line 23
    new-instance v0, Lk0/mi$e;

    invoke-direct {v0, p0, v4}, Lk0/mi$e;-><init>(Lk0/mi;Lk0/mi$a;)V

    iput-object v0, p0, Lk0/mi;->k:Lk0/mi$e;

    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/mi;->k:Lk0/mi$e;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0}, Lk0/mi;->d3()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4901c5 -> :sswitch_1
        0x5b01c5 -> :sswitch_1
        0xad01c4 -> :sswitch_1
        0xd401b7 -> :sswitch_1
        0xf001b7 -> :sswitch_1
        0xf101b7 -> :sswitch_0
    .end sparse-switch

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
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x25

    const-string v4, "persist.syu.reversefrontdoor"

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v2, v3, :cond_32

    const/16 v3, 0x27

    const/16 v12, 0xff

    if-eq v2, v3, :cond_30

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2f

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2e

    const/16 v3, 0x7d

    const/16 v13, 0x64

    if-eq v2, v3, :cond_27

    const/16 v3, 0x41

    const/4 v4, 0x7

    if-eq v2, v3, :cond_26

    const/16 v13, 0x42

    if-eq v2, v13, :cond_24

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_12

    :pswitch_0
    add-int/lit8 v2, p2, 0x4

    .line 2
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    add-int/lit8 v4, p2, 0x5

    .line 3
    aget-byte v5, v1, v4

    and-int/2addr v5, v12

    add-int/lit8 v7, p2, 0x6

    .line 4
    aget-byte v11, v1, v7

    and-int/2addr v11, v12

    add-int/lit8 v13, p2, 0x7

    .line 5
    aget-byte v14, v1, v13

    and-int/2addr v14, v12

    if-nez v3, :cond_0

    if-nez v5, :cond_0

    if-nez v11, :cond_0

    if-nez v14, :cond_0

    .line 6
    invoke-static {v9}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 7
    :cond_0
    sget v9, Ll0/c0;->g:I

    if-ne v9, v3, :cond_1

    sget v9, Ll0/c0;->h:I

    if-ne v9, v5, :cond_1

    sget v9, Ll0/c0;->i:I

    if-ne v9, v11, :cond_1

    sget v9, Ll0/c0;->j:I

    if-eq v9, v14, :cond_2

    .line 8
    :cond_1
    sget v9, Lu0/b;->o:I

    if-nez v9, :cond_2

    .line 9
    invoke-static {v10}, Lu0/d;->C2(I)V

    .line 10
    sput v6, Ll0/c0;->k:I

    .line 11
    sget-object v6, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v6}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 12
    :cond_2
    :goto_0
    sput v3, Ll0/c0;->g:I

    .line 13
    sput v5, Ll0/c0;->h:I

    .line 14
    sput v11, Ll0/c0;->i:I

    .line 15
    sput v14, Ll0/c0;->j:I

    add-int/lit8 v3, p2, 0x3

    .line 16
    aget-byte v3, v1, v3

    .line 17
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-static {v2, v3}, Ll0/c0;->D1(II)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    .line 18
    aget-byte v2, v1, v4

    and-int/2addr v2, v12

    invoke-static {v2, v3}, Ll0/c0;->D1(II)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    .line 19
    aget-byte v2, v1, v7

    and-int/2addr v2, v12

    invoke-static {v2, v3}, Ll0/c0;->D1(II)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    .line 20
    aget-byte v1, v1, v13

    and-int/2addr v1, v12

    invoke-static {v1, v3}, Ll0/c0;->D1(II)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_12

    :pswitch_1
    add-int/lit8 v2, p2, 0x3

    .line 21
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x4

    .line 22
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    invoke-static {v3, v2}, Ll0/c0;->D1(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->R2(I)V

    add-int/lit8 v3, p2, 0x5

    .line 23
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    invoke-static {v3, v2}, Ll0/c0;->D1(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->S2(I)V

    add-int/lit8 v3, p2, 0x6

    .line 24
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    invoke-static {v3, v2}, Ll0/c0;->D1(II)I

    move-result v3

    invoke-static {v3}, Lu0/d;->T2(I)V

    add-int/lit8 v3, p2, 0x7

    .line 25
    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    invoke-static {v1, v2}, Ll0/c0;->D1(II)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_12

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 26
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    add-int/lit8 v16, p2, 0x3

    .line 27
    aget-byte v15, v1, v16

    and-int/2addr v15, v12

    add-int/lit8 v17, p2, 0x4

    .line 28
    aget-byte v13, v1, v17

    and-int/2addr v13, v12

    add-int/lit8 v18, p2, 0x5

    .line 29
    aget-byte v3, v1, v18

    and-int/2addr v3, v12

    add-int/lit8 v18, p2, 0x6

    .line 30
    aget-byte v14, v1, v18

    and-int/2addr v14, v12

    add-int/lit8 v4, p2, 0x7

    .line 31
    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    const/16 v11, 0x15

    new-array v5, v10, [I

    and-int/2addr v2, v12

    aput v2, v5, v9

    .line 32
    invoke-static {v11, v5}, Lk0/qt;->y0(I[I)V

    const-string v2, "persist.fyt.reversetemp"

    .line 33
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    aget-byte v2, v1, v17

    and-int/lit16 v15, v2, 0xff

    .line 35
    aget-byte v1, v1, v16

    and-int/lit16 v13, v1, 0xff

    .line 36
    :cond_3
    sget v1, Lk0/nt;->a:I

    const v2, 0xad01c4

    const/4 v5, -0x3

    const/4 v11, -0x2

    const/16 v6, 0x1c

    const/16 v8, 0x1b

    if-eq v1, v2, :cond_8

    if-eq v15, v10, :cond_5

    if-eq v15, v12, :cond_4

    new-array v1, v10, [I

    aput v15, v1, v9

    .line 37
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_4
    new-array v1, v10, [I

    aput v5, v1, v9

    .line 38
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array v1, v10, [I

    aput v11, v1, v9

    .line 39
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_1
    if-eq v13, v10, :cond_7

    if-eq v13, v12, :cond_6

    new-array v1, v10, [I

    aput v13, v1, v9

    .line 40
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_6
    new-array v1, v10, [I

    aput v5, v1, v9

    .line 41
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_7
    new-array v1, v10, [I

    aput v11, v1, v9

    .line 42
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_8
    const/16 v1, 0x24

    if-eq v15, v1, :cond_a

    const/16 v1, 0x32

    if-eq v15, v1, :cond_9

    new-array v1, v10, [I

    aput v15, v1, v9

    .line 43
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_9
    new-array v1, v10, [I

    aput v5, v1, v9

    .line 44
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_2

    :cond_a
    new-array v1, v10, [I

    aput v11, v1, v9

    .line 45
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    :goto_2
    const/16 v1, 0x24

    if-eq v13, v1, :cond_c

    const/16 v1, 0x32

    if-eq v13, v1, :cond_b

    new-array v1, v10, [I

    aput v13, v1, v9

    .line 46
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_b
    new-array v1, v10, [I

    aput v5, v1, v9

    .line 47
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_3

    :cond_c
    new-array v1, v10, [I

    aput v11, v1, v9

    .line 48
    invoke-static {v6, v1}, Lk0/qt;->y0(I[I)V

    :goto_3
    if-eq v3, v10, :cond_11

    if-eq v3, v7, :cond_10

    const/4 v1, 0x3

    if-eq v3, v1, :cond_f

    const/4 v1, 0x4

    if-eq v3, v1, :cond_e

    const/4 v1, 0x5

    if-eq v3, v1, :cond_d

    move v1, v9

    move v2, v1

    :goto_4
    move v5, v2

    goto :goto_5

    :cond_d
    move v2, v9

    move v5, v2

    move v1, v10

    goto :goto_5

    :cond_e
    move v2, v9

    move v1, v10

    move v5, v1

    goto :goto_5

    :cond_f
    move v1, v9

    move v2, v1

    move v5, v10

    goto :goto_5

    :cond_10
    move v1, v9

    move v2, v10

    goto :goto_4

    :cond_11
    move v1, v9

    move v5, v1

    move v2, v10

    :goto_5
    const/16 v6, 0x12

    new-array v7, v10, [I

    aput v1, v7, v9

    .line 49
    invoke-static {v6, v7}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x13

    new-array v6, v10, [I

    aput v2, v6, v9

    .line 50
    invoke-static {v1, v6}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x14

    new-array v2, v10, [I

    aput v5, v2, v9

    .line 51
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x4d

    new-array v2, v10, [I

    aput v3, v2, v9

    .line 52
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v14, 0x7

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0xa

    .line 53
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v10, [I

    shr-int/lit8 v3, v14, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 54
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v14, 0x5

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0xc

    .line 55
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v10, [I

    shr-int/lit8 v3, v14, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 56
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x10

    new-array v2, v10, [I

    shr-int/lit8 v3, v14, 0x1

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 57
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v14, 0x0

    and-int/2addr v2, v10

    aput v2, v1, v9

    const/16 v2, 0x41

    .line 58
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v4, 0x4

    const/4 v3, 0x3

    and-int/2addr v2, v3

    aput v2, v1, v9

    const/16 v2, 0x1d

    .line 59
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v10, [I

    shr-int/lit8 v2, v4, 0x6

    and-int/2addr v2, v3

    aput v2, v1, v9

    const/16 v2, 0x1f

    .line 60
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :pswitch_3
    move v3, v8

    add-int/lit8 v2, p2, 0x2

    .line 61
    aget-byte v2, v1, v2

    add-int/lit8 v5, p2, 0x3

    .line 62
    aget-byte v1, v1, v5

    and-int/2addr v2, v12

    .line 63
    iput v2, v0, Lk0/mi;->c:I

    move v2, v9

    .line 64
    :goto_6
    iget-object v3, v0, Lk0/mi;->d:[[I

    array-length v5, v3

    if-ge v2, v5, :cond_13

    .line 65
    iget v5, v0, Lk0/mi;->c:I

    aget-object v6, v3, v2

    aget v6, v6, v9

    if-ne v5, v6, :cond_12

    if-eqz v5, :cond_13

    .line 66
    iput v2, v0, Lk0/mi;->b:I

    goto :goto_7

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 67
    :cond_13
    :goto_7
    iget v5, v0, Lk0/mi;->c:I

    const/16 v6, 0xa

    if-eq v5, v6, :cond_22

    packed-switch v5, :pswitch_data_1

    packed-switch v5, :pswitch_data_2

    and-int/2addr v1, v12

    if-eqz v1, :cond_14

    .line 68
    array-length v1, v3

    if-ge v2, v1, :cond_37

    .line 69
    aget-object v1, v3, v2

    aget v1, v1, v10

    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    .line 70
    :cond_14
    iget v1, v0, Lk0/mi;->b:I

    array-length v2, v3

    if-ge v1, v2, :cond_15

    if-eq v1, v12, :cond_15

    .line 71
    aget-object v1, v3, v1

    aget v1, v1, v10

    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    .line 72
    :cond_15
    iput v12, v0, Lk0/mi;->b:I

    goto/16 :goto_12

    :pswitch_4
    and-int/2addr v1, v12

    if-ne v1, v10, :cond_37

    .line 73
    sget v1, Lu0/b;->D:I

    if-ne v1, v10, :cond_16

    const/16 v1, 0x44

    .line 74
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 75
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_16
    const/16 v1, 0x23

    .line 76
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 77
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :pswitch_5
    and-int/2addr v1, v12

    if-ne v1, v10, :cond_37

    .line 78
    sget v1, Lu0/b;->D:I

    if-ne v1, v10, :cond_17

    const/16 v1, 0x43

    .line 79
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 80
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_17
    const/16 v1, 0x22

    .line 81
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 82
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    .line 83
    :pswitch_6
    iget v2, v0, Lk0/mi;->f:I

    if-eq v2, v1, :cond_37

    .line 84
    iput v1, v0, Lk0/mi;->f:I

    if-ne v1, v10, :cond_18

    .line 85
    iput-boolean v9, v0, Lk0/mi;->e:Z

    goto/16 :goto_12

    :cond_18
    const/16 v2, 0x19

    if-ne v1, v7, :cond_19

    .line 86
    iput-boolean v10, v0, Lk0/mi;->e:Z

    .line 87
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 88
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_19
    if-nez v1, :cond_37

    .line 89
    iget-boolean v1, v0, Lk0/mi;->e:Z

    if-nez v1, :cond_1b

    .line 90
    sget v1, Lu0/b;->j:I

    if-ne v1, v10, :cond_1a

    .line 91
    invoke-static {v2, v9}, Ll0/b0;->l0(II)V

    .line 92
    invoke-static {v2, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_1a
    const/16 v1, 0x1d

    .line 93
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 94
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    .line 95
    :cond_1b
    iput-boolean v9, v0, Lk0/mi;->e:Z

    goto/16 :goto_12

    .line 96
    :pswitch_7
    sget v2, Lu0/b;->D:I

    if-ne v2, v10, :cond_1c

    :goto_8
    and-int/lit16 v2, v1, 0xff

    if-ge v9, v2, :cond_37

    .line 97
    invoke-static {}, Lu0/d;->x1()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_1c
    move v2, v9

    :goto_9
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1d

    const/16 v3, 0x1f

    .line 98
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1d
    const/16 v3, 0x1f

    .line 99
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    .line 100
    :pswitch_8
    sget v2, Lu0/b;->D:I

    if-ne v2, v10, :cond_1e

    :goto_a
    and-int/lit16 v2, v1, 0xff

    if-ge v9, v2, :cond_37

    .line 101
    invoke-static {}, Lu0/d;->L1()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_1e
    move v2, v9

    :goto_b
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_1f

    const/16 v3, 0x1e

    .line 102
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1f
    const/16 v1, 0x1e

    .line 103
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :pswitch_9
    move v2, v9

    :goto_c
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_20

    .line 104
    invoke-static {v4, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 105
    :cond_20
    invoke-static {v4, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :pswitch_a
    move v2, v9

    :goto_d
    and-int/lit16 v3, v1, 0xff

    if-ge v2, v3, :cond_21

    const/16 v3, 0x8

    .line 106
    invoke-static {v3, v9}, Ll0/b0;->l0(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_21
    const/16 v3, 0x8

    .line 107
    invoke-static {v3, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_22
    and-int/2addr v1, v12

    if-ne v1, v10, :cond_37

    .line 108
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_23

    const/4 v2, 0x4

    if-eq v1, v2, :cond_23

    const/4 v2, 0x5

    if-eq v1, v2, :cond_23

    const/16 v1, 0xc

    .line 109
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 110
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_23
    const/16 v1, 0x1a

    .line 111
    invoke-static {v1, v9}, Ll0/b0;->l0(II)V

    .line 112
    invoke-static {v1, v10}, Ll0/b0;->l0(II)V

    goto/16 :goto_12

    :cond_24
    add-int/lit8 v2, p2, 0x2

    .line 113
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    iput v1, v0, Lk0/mi;->h:I

    if-ne v1, v10, :cond_25

    .line 114
    invoke-static {v10}, Lk0/qt;->a(I)V

    goto/16 :goto_12

    .line 115
    :cond_25
    invoke-static {v9}, Lk0/qt;->a(I)V

    goto/16 :goto_12

    :cond_26
    const/16 v2, 0x63

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x2

    .line 116
    aget-byte v6, v1, v5

    const/4 v8, 0x5

    shr-int/2addr v6, v8

    and-int/2addr v6, v4

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    .line 117
    aget-byte v3, v1, v5

    const/4 v6, 0x4

    shr-int/2addr v3, v6

    and-int/2addr v3, v10

    aput v3, v2, v9

    invoke-static {v13, v2}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x65

    new-array v3, v10, [I

    .line 118
    aget-byte v6, v1, v5

    const/4 v8, 0x3

    shr-int/2addr v6, v8

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x66

    new-array v3, v10, [I

    .line 119
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x67

    new-array v3, v10, [I

    .line 120
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    const/4 v6, 0x3

    and-int/2addr v5, v6

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x68

    new-array v3, v10, [I

    add-int/lit8 v5, p2, 0x3

    .line 121
    aget-byte v6, v1, v5

    shr-int/2addr v6, v4

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x69

    new-array v3, v10, [I

    .line 122
    aget-byte v6, v1, v5

    const/4 v8, 0x5

    shr-int/2addr v6, v8

    const/4 v8, 0x3

    and-int/2addr v6, v8

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6a

    new-array v3, v10, [I

    .line 123
    aget-byte v6, v1, v5

    shr-int/2addr v6, v8

    and-int/2addr v6, v8

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6b

    new-array v3, v10, [I

    .line 124
    aget-byte v6, v1, v5

    shr-int/2addr v6, v7

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6c

    new-array v3, v10, [I

    .line 125
    aget-byte v6, v1, v5

    shr-int/2addr v6, v10

    and-int/2addr v6, v10

    aput v6, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6d

    new-array v3, v10, [I

    .line 126
    aget-byte v5, v1, v5

    shr-int/2addr v5, v9

    and-int/2addr v5, v10

    aput v5, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6e

    new-array v3, v10, [I

    const/4 v5, 0x4

    add-int/lit8 v6, p2, 0x4

    .line 127
    aget-byte v5, v1, v6

    shr-int/lit8 v4, v5, 0x7

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x6f

    new-array v3, v10, [I

    .line 128
    aget-byte v4, v1, v6

    shr-int/lit8 v4, v4, 0x6

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x70

    new-array v3, v10, [I

    .line 129
    aget-byte v4, v1, v6

    const/4 v5, 0x5

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x71

    new-array v3, v10, [I

    .line 130
    aget-byte v4, v1, v6

    const/4 v5, 0x4

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x72

    new-array v3, v10, [I

    .line 131
    aget-byte v4, v1, v6

    const/4 v5, 0x3

    shr-int/2addr v4, v5

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x73

    new-array v3, v10, [I

    .line 132
    aget-byte v4, v1, v6

    shr-int/2addr v4, v10

    and-int/2addr v4, v10

    aput v4, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x74

    new-array v3, v10, [I

    .line 133
    aget-byte v1, v1, v6

    shr-int/2addr v1, v9

    and-int/2addr v1, v10

    aput v1, v3, v9

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_27
    add-int/lit8 v2, p2, 0x2

    .line 134
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    if-eq v2, v10, :cond_2c

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2b

    const/4 v3, 0x5

    if-eq v2, v3, :cond_29

    const/16 v3, 0x8

    if-eq v2, v3, :cond_28

    goto/16 :goto_12

    :cond_28
    add-int/lit8 v2, p2, 0x3

    .line 135
    aget-byte v2, v1, v2

    const/4 v3, 0x4

    add-int/lit8 v3, p2, 0x4

    .line 136
    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    .line 137
    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    .line 138
    iput-boolean v10, v0, Lk0/mi;->i:Z

    goto/16 :goto_12

    :cond_29
    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 139
    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    .line 140
    invoke-static {v4, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2a

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 141
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 142
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_e

    :cond_2a
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x6

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 143
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x7

    and-int/2addr v3, v10

    aput v3, v2, v9

    .line 144
    invoke-static {v10, v2}, Lk0/qt;->y0(I[I)V

    :goto_e
    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x5

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x4

    .line 145
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x4

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x3

    .line 146
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/lit8 v3, v1, 0x3

    and-int/2addr v3, v10

    aput v3, v2, v9

    const/4 v3, 0x5

    .line 147
    invoke-static {v3, v2}, Lk0/qt;->y0(I[I)V

    new-array v2, v10, [I

    shr-int/2addr v1, v7

    and-int/2addr v1, v10

    aput v1, v2, v9

    .line 148
    invoke-static {v9, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_12

    :cond_2b
    add-int/lit8 v2, p2, 0x4

    .line 149
    aget-byte v2, v1, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v3, 0xff00

    and-int/2addr v2, v3

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    or-int/2addr v1, v2

    div-int/2addr v1, v13

    const/16 v2, 0x407

    new-array v3, v10, [I

    aput v1, v3, v9

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 151
    sget-object v2, Lk0/nt;->f:[Lo1/x;

    const/16 v3, 0x419

    new-array v4, v7, [I

    aput v10, v4, v9

    aput v1, v4, v10

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_2c
    const-string v2, "persist.fyt.leftrightlighttype"

    .line 152
    invoke-static {v2, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2d

    const/4 v2, 0x3

    add-int/lit8 v3, p2, 0x3

    .line 153
    aget-byte v4, v1, v3

    shr-int/lit8 v2, v4, 0x3

    and-int/2addr v2, v10

    aget-byte v1, v1, v3

    const/4 v3, 0x4

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->b(III)V

    goto/16 :goto_12

    :cond_2d
    const/4 v2, 0x3

    const/4 v3, 0x4

    add-int/lit8 v4, p2, 0x3

    .line 154
    aget-byte v5, v1, v4

    shr-int/lit8 v2, v5, 0x3

    and-int/2addr v2, v10

    aget-byte v1, v1, v4

    shr-int/2addr v1, v3

    and-int/2addr v1, v10

    invoke-static {v2, v1, v9}, Ll0/c0;->a(III)V

    goto/16 :goto_12

    .line 155
    :cond_2e
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 156
    :cond_2f
    iget-boolean v2, v0, Lk0/mi;->i:Z

    if-nez v2, :cond_37

    add-int/lit8 v2, p2, 0x2

    .line 157
    aget-byte v2, v1, v2

    const/4 v3, 0x3

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x21c

    invoke-static {v2, v1, v10, v3}, Lk0/qt;->i(IIZI)V

    goto/16 :goto_12

    :cond_30
    add-int/lit8 v2, p2, 0x2

    .line 158
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_31

    rsub-int v1, v1, 0x100

    const/16 v2, 0xa

    mul-int/2addr v1, v2

    rsub-int v1, v1, 0x3e8

    goto :goto_f

    :cond_31
    const/16 v2, 0xa

    mul-int/2addr v1, v2

    add-int/lit16 v1, v1, 0x3e8

    .line 159
    :goto_f
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_12

    :cond_32
    add-int/lit8 v2, p2, 0x2

    .line 160
    aget-byte v3, v1, v2

    .line 161
    invoke-static {v4, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_33

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 162
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 163
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_33
    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x6

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 164
    invoke-static {v7, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x7

    and-int/2addr v5, v10

    aput v5, v4, v9

    .line 165
    invoke-static {v10, v4}, Lk0/qt;->y0(I[I)V

    :goto_10
    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x5

    and-int/2addr v5, v10

    aput v5, v4, v9

    const/4 v5, 0x4

    .line 166
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x4

    and-int/2addr v5, v10

    aput v5, v4, v9

    const/4 v5, 0x3

    .line 167
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/lit8 v5, v3, 0x3

    and-int/2addr v5, v10

    aput v5, v4, v9

    const/4 v5, 0x5

    .line 168
    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v10, [I

    shr-int/2addr v3, v7

    and-int/2addr v3, v10

    aput v3, v4, v9

    .line 169
    invoke-static {v9, v4}, Lk0/qt;->y0(I[I)V

    .line 170
    aget-byte v3, v1, v2

    shr-int/2addr v3, v9

    and-int/2addr v3, v10

    .line 171
    aget-byte v1, v1, v2

    shr-int/2addr v1, v10

    and-int/2addr v1, v10

    .line 172
    sget v2, Lu0/b;->o:I

    if-nez v2, :cond_37

    .line 173
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    if-ne v3, v10, :cond_34

    .line 174
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_11

    :cond_34
    if-nez v3, :cond_35

    .line 175
    sget-object v2, La/b;->O:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 176
    invoke-static {}, Lk0/qt;->f()V

    .line 177
    :cond_35
    :goto_11
    sget-object v2, La/b;->V:Ljava/lang/String;

    invoke-static {v2}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    if-ne v1, v10, :cond_36

    .line 178
    sget-object v1, La/b;->W:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_12

    :cond_36
    if-nez v1, :cond_37

    .line 179
    sget-object v1, La/b;->V:Ljava/lang/String;

    invoke-static {v1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 180
    invoke-static {}, Lo1/u;->k()V

    :cond_37
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x81
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x87
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    sget-object v1, Ll0/c0;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/mi;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lk0/mi;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lk0/mi;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v0, Ll0/c0;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x75

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

    const/16 p3, 0x8

    const/4 p4, 0x5

    const/16 v0, 0xe3

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v2, :cond_4

    const/16 p4, 0x3eb

    if-eq p1, p4, :cond_2

    const/16 p4, 0x3ed

    if-eq p1, p4, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_7

    .line 1
    array-length p1, p2

    if-lez p1, :cond_7

    .line 2
    iget p1, p0, Lk0/mi;->h:I

    const/16 p4, -0x59

    if-ne p1, v5, :cond_1

    new-array p1, v3, [I

    aput v0, p1, v4

    aput p4, p1, v5

    aput v5, p1, v2

    .line 3
    aget p2, p2, v4

    add-int/2addr p2, p3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_1
    new-array p1, v3, [I

    aput v0, p1, v4

    aput p4, p1, v5

    aput v5, p1, v2

    .line 4
    aget p2, p2, v4

    add-int/2addr p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_2
    if-eqz p2, :cond_7

    .line 5
    array-length p1, p2

    if-lez p1, :cond_7

    .line 6
    aget p1, p2, v4

    if-ne p1, v5, :cond_3

    new-array p1, v3, [I

    .line 7
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v3, [I

    .line 8
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_7

    .line 9
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, v3, [I

    aput v0, p1, v4

    const/16 p3, 0xa7

    aput p3, p1, v5

    aput v5, p1, v2

    .line 10
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_7

    .line 11
    array-length p1, p2

    if-lez p1, :cond_7

    new-array p1, p4, [I

    aput v0, p1, v4

    const/16 p3, 0xc6

    aput p3, p1, v5

    aput v2, p1, v2

    .line 12
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v5

    aput p2, p1, v3

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 13
    array-length p1, p2

    if-lez p1, :cond_7

    const/16 p1, 0x9

    new-array p1, p1, [I

    aput v0, p1, v4

    const/16 v0, 0xc7

    aput v0, p1, v5

    const/4 v0, 0x6

    aput v0, p1, v2

    .line 14
    aget v4, p2, v4

    aput v4, p1, v1

    aget v4, p2, v5

    aput v4, p1, v3

    aget v2, p2, v2

    aput v2, p1, p4

    aget v1, p2, v1

    aput v1, p1, v0

    const/4 v0, 0x7

    aget v1, p2, v3

    aput v1, p1, v0

    aget p2, p2, p4

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x59
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x59
        0x1
        0x1
    .end array-data
.end method

.method public final a3(I)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, -0x58

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final b3()V
    .locals 11

    const/4 v0, 0x5

    new-array v1, v0, [I

    const/16 v2, 0xa5

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v4, 0x3

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x8

    const/4 v7, 0x4

    const/4 v8, 0x2

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    aput v6, v1, v8

    goto :goto_1

    :pswitch_1
    aput v7, v1, v8

    goto :goto_1

    :pswitch_2
    aput v6, v1, v8

    goto :goto_1

    :pswitch_3
    aput v4, v1, v8

    goto :goto_1

    :pswitch_4
    aput v0, v1, v8

    goto :goto_1

    .line 2
    :pswitch_5
    sget v2, Lh0/c;->E:I

    if-eq v2, v4, :cond_2

    if-eq v2, v7, :cond_1

    if-eq v2, v0, :cond_0

    const/16 v2, 0x23

    aput v2, v1, v8

    goto :goto_1

    :cond_0
    const/16 v2, 0x21

    aput v2, v1, v8

    goto :goto_1

    :cond_1
    const/16 v2, 0x22

    aput v2, v1, v8

    goto :goto_1

    :cond_2
    const/16 v2, 0x20

    aput v2, v1, v8

    goto :goto_1

    .line 3
    :pswitch_6
    sget v5, Lw0/d;->i:I

    .line 4
    sget v9, Lw0/d;->h:I

    const/high16 v10, 0x10000

    if-ne v9, v10, :cond_3

    aput v2, v1, v8

    goto :goto_0

    :cond_3
    const v10, 0x10001

    if-ne v9, v10, :cond_4

    aput v2, v1, v8

    goto :goto_0

    :cond_4
    const v10, 0x10002

    if-ne v9, v10, :cond_5

    aput v2, v1, v8

    goto :goto_0

    :cond_5
    if-nez v9, :cond_6

    aput v8, v1, v8

    goto :goto_0

    :cond_6
    if-ne v9, v2, :cond_7

    aput v8, v1, v8

    :cond_7
    :goto_0
    and-int/lit16 v2, v5, 0xff

    aput v2, v1, v4

    shr-int/lit8 v2, v5, 0x8

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v7

    .line 5
    :goto_1
    sget v2, Lu0/b;->a0:I

    if-nez v2, :cond_8

    aput v3, v1, v8

    :cond_8
    const/4 v2, 0x6

    new-array v2, v2, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_9

    add-int/lit8 v4, v3, 0x1

    .line 6
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 7
    :cond_9
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final c3(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-array p1, v1, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v1, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x9
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x3a
        0x2
        0x9
        0x0
    .end array-data
.end method

.method public final d3()V
    .locals 6

    .line 1
    iget v0, p0, Lk0/mi;->s:I

    if-lez v0, :cond_1

    sget-object v1, Lk0/mi;->z:[I

    array-length v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v2, p0, Lk0/mi;->o:I

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/4 v4, 0x1

    const/16 v5, 0x94

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x4

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 3
    aget v0, v1, v0

    aput v0, v3, v4

    shr-int/lit8 v0, v2, 0x10

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v5

    const/4 v0, 0x5

    shr-int/lit8 v1, v2, 0x8

    and-int/lit16 v1, v1, 0xff

    aput v1, v3, v0

    const/4 v0, 0x6

    and-int/lit16 v1, v2, 0xff

    aput v1, v3, v0

    invoke-static {v3}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
