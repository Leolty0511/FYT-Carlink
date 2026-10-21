.class public Lmodule/canbus/b0;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/canbus/b0$e;
    }
.end annotation


# static fields
.field public static final A:[I

.field public static final B:[I

.field public static final C:Lo1/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/f<",
            "Lmodule/canbus/b0$e;",
            ">;"
        }
    .end annotation
.end field

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:I

.field public static w:I

.field public static x:I

.field public static y:I

.field public static z:I


# instance fields
.field public b:[[I

.field public c:[[I

.field public final d:[B

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:[[I

.field public k:Ljava/lang/Runnable;

.field public l:Ljava/lang/Runnable;

.field public m:Ljava/lang/Runnable;

.field public n:[I

.field public o:I

.field public p:I

.field public q:Ljava/lang/Runnable;

.field public r:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/canbus/b0;->A:[I

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lmodule/canbus/b0;->B:[I

    .line 3
    new-instance v0, Lo1/f;

    invoke-direct {v0}, Lo1/f;-><init>()V

    sput-object v0, Lmodule/canbus/b0;->C:Lo1/f;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0xe
        0x10
        0x12
        0x14
        0x16
        0x18
        0x1a
        0x1c
        0x1e
        0x20
        0x22
        0x24
        0x26
        0x28
        0x2a
        0x2c
        0x2e
        0x30
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [[I

    .line 2
    iput-object v1, p0, Lmodule/canbus/b0;->b:[[I

    const/16 v1, 0xf

    new-array v2, v1, [[I

    .line 3
    iput-object v2, p0, Lmodule/canbus/b0;->c:[[I

    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 4
    iput-object v2, p0, Lmodule/canbus/b0;->d:[B

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lmodule/canbus/b0;->e:I

    .line 6
    iput v2, p0, Lmodule/canbus/b0;->f:I

    .line 7
    iput v2, p0, Lmodule/canbus/b0;->g:I

    .line 8
    iput v2, p0, Lmodule/canbus/b0;->i:I

    const/16 v3, 0x15

    new-array v3, v3, [[I

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 9
    fill-array-data v5, :array_0

    aput-object v5, v3, v2

    new-array v5, v4, [I

    fill-array-data v5, :array_1

    const/4 v6, 0x1

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    new-array v5, v4, [I

    fill-array-data v5, :array_3

    const/4 v6, 0x3

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_4

    const/4 v6, 0x4

    aput-object v5, v3, v6

    new-array v5, v4, [I

    fill-array-data v5, :array_5

    aput-object v5, v3, v0

    new-array v0, v4, [I

    fill-array-data v0, :array_6

    const/4 v5, 0x6

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_7

    const/4 v5, 0x7

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_8

    const/16 v5, 0x8

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_9

    const/16 v5, 0x9

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_a

    const/16 v5, 0xa

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_b

    const/16 v5, 0xb

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_c

    const/16 v5, 0xc

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_d

    const/16 v5, 0xd

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_e

    const/16 v5, 0xe

    aput-object v0, v3, v5

    new-array v0, v4, [I

    fill-array-data v0, :array_f

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_10

    const/16 v1, 0x10

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_11

    const/16 v1, 0x11

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_12

    const/16 v1, 0x12

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_13

    const/16 v1, 0x13

    aput-object v0, v3, v1

    new-array v0, v4, [I

    fill-array-data v0, :array_14

    const/16 v1, 0x14

    aput-object v0, v3, v1

    iput-object v3, p0, Lmodule/canbus/b0;->j:[[I

    .line 10
    new-instance v0, Lmodule/canbus/b0$a;

    invoke-direct {v0, p0}, Lmodule/canbus/b0$a;-><init>(Lmodule/canbus/b0;)V

    iput-object v0, p0, Lmodule/canbus/b0;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v0, Lmodule/canbus/b0$b;

    invoke-direct {v0, p0}, Lmodule/canbus/b0$b;-><init>(Lmodule/canbus/b0;)V

    iput-object v0, p0, Lmodule/canbus/b0;->l:Ljava/lang/Runnable;

    .line 12
    new-instance v0, Lmodule/canbus/b0$c;

    invoke-direct {v0, p0}, Lmodule/canbus/b0$c;-><init>(Lmodule/canbus/b0;)V

    iput-object v0, p0, Lmodule/canbus/b0;->m:Ljava/lang/Runnable;

    new-array v0, v4, [I

    .line 13
    fill-array-data v0, :array_15

    iput-object v0, p0, Lmodule/canbus/b0;->n:[I

    .line 14
    iput v2, p0, Lmodule/canbus/b0;->o:I

    const/16 v0, 0x64

    .line 15
    iput v0, p0, Lmodule/canbus/b0;->p:I

    .line 16
    new-instance v0, Lmodule/canbus/b0$d;

    invoke-direct {v0, p0}, Lmodule/canbus/b0$d;-><init>(Lmodule/canbus/b0;)V

    iput-object v0, p0, Lmodule/canbus/b0;->q:Ljava/lang/Runnable;

    .line 17
    iput v2, p0, Lmodule/canbus/b0;->r:I

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
        0x1b
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x1c
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
        0x13
        0x3
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x4
    .end array-data

    :array_a
    .array-data 4
        0x15
        0x6
    .end array-data

    :array_b
    .array-data 4
        0x16
        0x10
    .end array-data

    :array_c
    .array-data 4
        0x81
        0x7
    .end array-data

    :array_d
    .array-data 4
        0x82
        0x8
    .end array-data

    :array_e
    .array-data 4
        0x83
        0x1b
    .end array-data

    :array_f
    .array-data 4
        0x84
        0x1c
    .end array-data

    :array_10
    .array-data 4
        0x85
        0x3
    .end array-data

    :array_11
    .array-data 4
        0x86
        0x4
    .end array-data

    :array_12
    .array-data 4
        0x87
        0x0
    .end array-data

    :array_13
    .array-data 4
        0x88
        0x2
    .end array-data

    :array_14
    .array-data 4
        0xb
        0x2
    .end array-data

    :array_15
    .array-data 4
        0x22
        0xcc
    .end array-data
.end method

.method public static synthetic d3(Lmodule/canbus/b0;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/canbus/b0;->c3(I)V

    return-void
.end method

.method public static synthetic e3(Lmodule/canbus/b0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/b0;->p:I

    return p0
.end method

.method public static synthetic f3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b0;->x:I

    return v0
.end method

.method public static synthetic g3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b0;->z:I

    return v0
.end method

.method public static synthetic h3(Lmodule/canbus/b0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/b0;->w3()V

    return-void
.end method

.method public static synthetic i3(Lmodule/canbus/b0;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/canbus/b0;->r:I

    return p0
.end method

.method public static synthetic j3(Lmodule/canbus/b0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/canbus/b0;->r:I

    return p1
.end method

.method public static synthetic k3(Lmodule/canbus/b0;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/canbus/b0;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmodule/canbus/b0;->r:I

    return v0
.end method

.method public static synthetic l3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b0;->v:I

    return v0
.end method

.method public static synthetic m3(I)I
    .locals 0

    .line 1
    sput p0, Lmodule/canbus/b0;->v:I

    return p0
.end method

.method public static synthetic n3()[I
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/b0;->A:[I

    return-object v0
.end method

.method public static synthetic o3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b0;->u:I

    return v0
.end method

.method public static synthetic p3(Lmodule/canbus/b0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/b0;->y3()V

    return-void
.end method

.method public static synthetic q3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b0;->w:I

    return v0
.end method

.method public static synthetic r3()I
    .locals 1

    .line 1
    sget v0, Lmodule/canbus/b0;->y:I

    return v0
.end method

.method public static synthetic s3(Lmodule/canbus/b0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lmodule/canbus/b0;->x3()V

    return-void
.end method

.method public static t3(II)V
    .locals 1

    .line 1
    sget-object v0, Lmodule/canbus/b0;->C:Lo1/f;

    invoke-virtual {v0, p0}, Lo1/f;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmodule/canbus/b0$e;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/canbus/b0$e;->a(I)V

    :cond_0
    return-void
.end method

.method public static z3([B)V
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    array-length v0, p0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lz/k;->q([B)V

    :cond_0
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

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
    aget v0, p1, v0

    const/16 v2, 0x14

    const/16 v3, 0xc

    const/16 v4, 0xb

    const/16 v5, 0x15

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget p1, p1, v6

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, v4}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v3}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    aget p1, p1, v6

    if-eqz p1, :cond_2

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    :cond_2
    const/16 p1, 0xa

    .line 8
    invoke-virtual {p0, p1}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_3
    aget p1, p1, v6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-virtual {p0, v2}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 11
    :cond_3
    invoke-virtual {p0, v5}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_4
    aget v0, p1, v6

    const/16 v1, 0x23

    if-nez v0, :cond_4

    .line 13
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-nez p1, :cond_a

    .line 14
    invoke-virtual {p0, v1}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 15
    :cond_4
    aget p1, p1, v6

    if-ne p1, v6, :cond_a

    .line 16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v3

    if-ne p1, v6, :cond_a

    .line 17
    invoke-virtual {p0, v1}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 18
    :pswitch_5
    aget p1, p1, v6

    const/4 v0, 0x4

    const/16 v1, 0x26

    if-eqz p1, :cond_5

    .line 19
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 20
    invoke-virtual {p0, v0}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 21
    :cond_5
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lmodule/canbus/b0;->b3(I)V

    goto/16 :goto_0

    .line 23
    :pswitch_6
    aget p1, p1, v6

    const/4 v0, 0x3

    const/16 v1, 0xf

    if-eqz p1, :cond_6

    .line 24
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-nez p1, :cond_a

    .line 25
    invoke-virtual {p0, v0}, Lmodule/canbus/b0;->b3(I)V

    goto :goto_0

    .line 26
    :cond_6
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v1

    if-ne p1, v6, :cond_a

    .line 27
    invoke-virtual {p0, v0}, Lmodule/canbus/b0;->b3(I)V

    goto :goto_0

    .line 28
    :pswitch_7
    aget p1, p1, v6

    const/16 v0, 0xd

    if-eqz p1, :cond_7

    .line 29
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-nez p1, :cond_a

    .line 30
    invoke-virtual {p0, v1}, Lmodule/canbus/b0;->b3(I)V

    goto :goto_0

    .line 31
    :cond_7
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v0

    if-ne p1, v6, :cond_a

    .line 32
    invoke-virtual {p0, v1}, Lmodule/canbus/b0;->b3(I)V

    goto :goto_0

    .line 33
    :pswitch_8
    aget p1, p1, v6

    const/16 v0, 0x10

    if-eqz p1, :cond_8

    .line 34
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-nez p1, :cond_a

    .line 35
    invoke-virtual {p0, v0}, Lmodule/canbus/b0;->b3(I)V

    goto :goto_0

    .line 36
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v4

    if-ne p1, v6, :cond_a

    .line 37
    invoke-virtual {p0, v0}, Lmodule/canbus/b0;->b3(I)V

    goto :goto_0

    .line 38
    :pswitch_9
    aget p1, p1, v6

    if-eqz p1, :cond_9

    .line 39
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-nez p1, :cond_a

    .line 40
    invoke-virtual {p0, v2}, Lmodule/canbus/b0;->b3(I)V

    goto :goto_0

    .line 41
    :cond_9
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v5

    if-lez p1, :cond_a

    .line 42
    invoke-virtual {p0, v6}, Lmodule/canbus/b0;->b3(I)V

    :cond_a
    :goto_0
    return-void

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

.method public R2([I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lk0/lt;->a:Lk0/mt;

    iget p1, p1, Lk0/mt;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lmodule/canbus/b0;->B:[I

    sget v0, Ly0/f;->l:I

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget v0, p1, v0

    sput v0, Lmodule/canbus/b0;->y:I

    .line 3
    sget v0, Ly0/f;->j:I

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    aget p1, p1, v0

    sput p1, Lmodule/canbus/b0;->z:I

    :cond_0
    return-void
.end method

.method public S2()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lu0/c;->f:Lo1/y;

    iget-object v3, v0, Lmodule/canbus/b0;->l:Ljava/lang/Runnable;

    invoke-virtual {v1, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    :cond_0
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 4
    iput v2, v1, Lk0/mt;->e:I

    .line 5
    iput v2, v1, Lk0/mt;->f:I

    .line 6
    iput v2, v1, Lk0/mt;->g:I

    .line 7
    iput v2, v1, Lk0/mt;->o:I

    const/16 v4, 0x9

    new-array v4, v4, [I

    .line 8
    fill-array-data v4, :array_0

    iput-object v4, v1, Lk0/mt;->m:[I

    .line 9
    sget-object v1, Lu0/c;->x:Lo1/y;

    iget-object v4, v0, Lmodule/canbus/b0;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget v1, Lk0/nt;->c:I

    const/16 v5, 0xaa

    const/16 v6, 0xe3

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/16 v10, 0x25

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/16 v13, 0x33

    const/4 v14, 0x5

    const/4 v15, 0x0

    const/16 v16, 0x2

    if-eq v1, v2, :cond_1

    .line 11
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v2, v1, Lk0/mt;->e:I

    .line 13
    iput v2, v1, Lk0/mt;->f:I

    .line 14
    iput v2, v1, Lk0/mt;->g:I

    new-array v1, v7, [I

    aput v6, v1, v15

    aput v13, v1, v2

    aput v14, v1, v16

    aput v15, v1, v12

    .line 15
    iget-object v3, v0, Lmodule/canbus/b0;->n:[I

    iget v4, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v11

    aput v10, v1, v14

    const/16 v3, 0xc

    aput v3, v1, v9

    aput v5, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v7, [I

    aput v6, v1, v15

    aput v13, v1, v2

    aput v14, v1, v16

    aput v15, v1, v12

    .line 16
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v12, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v12, v12, 0x2

    aget v4, v4, v12

    aput v4, v1, v11

    aput v10, v1, v14

    aput v3, v1, v9

    aput v5, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v7, [I

    aput v6, v1, v15

    aput v13, v1, v2

    aput v14, v1, v16

    const/4 v4, 0x3

    aput v15, v1, v4

    .line 17
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v6, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v6, v6, 0x2

    aget v4, v4, v6

    aput v4, v1, v11

    aput v10, v1, v14

    aput v3, v1, v9

    aput v5, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v8, [B

    aput-byte v13, v1, v15

    aput-byte v14, v1, v2

    aput-byte v15, v1, v16

    .line 18
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v5, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    aput-byte v10, v1, v11

    aput-byte v3, v1, v14

    const/16 v4, -0x56

    aput-byte v4, v1, v9

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    new-array v1, v8, [B

    aput-byte v13, v1, v15

    aput-byte v14, v1, v2

    aput-byte v15, v1, v16

    .line 19
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v5, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    aput-byte v10, v1, v11

    aput-byte v3, v1, v14

    const/16 v4, -0x56

    aput-byte v4, v1, v9

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    new-array v1, v8, [B

    aput-byte v13, v1, v15

    aput-byte v14, v1, v2

    aput-byte v15, v1, v16

    .line 20
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v5, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    aput-byte v10, v1, v11

    aput-byte v3, v1, v14

    const/16 v3, -0x56

    aput-byte v3, v1, v9

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    .line 21
    iget v1, v0, Lmodule/canbus/b0;->o:I

    add-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/b0;->o:I

    .line 22
    rem-int/lit8 v1, v1, 0x2

    iput v1, v0, Lmodule/canbus/b0;->o:I

    goto/16 :goto_0

    .line 23
    :cond_1
    iget-object v1, v0, Lk0/lt;->a:Lk0/mt;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lk0/mt;->a:[Ljava/lang/String;

    .line 24
    iput v2, v1, Lk0/mt;->e:I

    .line 25
    iput v2, v1, Lk0/mt;->f:I

    .line 26
    iput v2, v1, Lk0/mt;->g:I

    new-array v1, v7, [I

    aput v6, v1, v15

    aput v13, v1, v2

    aput v14, v1, v16

    const/4 v3, 0x3

    aput v15, v1, v3

    .line 27
    iget-object v3, v0, Lmodule/canbus/b0;->n:[I

    iget v4, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v11

    aput v10, v1, v14

    const/16 v3, 0xd

    aput v3, v1, v9

    aput v5, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v7, [I

    aput v6, v1, v15

    aput v13, v1, v2

    aput v14, v1, v16

    const/4 v4, 0x3

    aput v15, v1, v4

    .line 28
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v12, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v12, v12, 0x2

    aget v4, v4, v12

    aput v4, v1, v11

    aput v10, v1, v14

    aput v3, v1, v9

    aput v5, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v7, [I

    aput v6, v1, v15

    aput v13, v1, v2

    aput v14, v1, v16

    const/4 v4, 0x3

    aput v15, v1, v4

    .line 29
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v6, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v6, v6, 0x2

    aget v4, v4, v6

    aput v4, v1, v11

    aput v10, v1, v14

    aput v3, v1, v9

    aput v5, v1, v8

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v8, [B

    aput-byte v13, v1, v15

    aput-byte v14, v1, v2

    aput-byte v15, v1, v16

    .line 30
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v5, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    aput-byte v10, v1, v11

    aput-byte v3, v1, v14

    const/16 v4, -0x56

    aput-byte v4, v1, v9

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    new-array v1, v8, [B

    aput-byte v13, v1, v15

    aput-byte v14, v1, v2

    aput-byte v15, v1, v16

    .line 31
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v5, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    aput-byte v10, v1, v11

    aput-byte v3, v1, v14

    const/16 v4, -0x56

    aput-byte v4, v1, v9

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    new-array v1, v8, [B

    aput-byte v13, v1, v15

    aput-byte v14, v1, v2

    aput-byte v15, v1, v16

    .line 32
    iget-object v4, v0, Lmodule/canbus/b0;->n:[I

    iget v5, v0, Lmodule/canbus/b0;->o:I

    rem-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    int-to-byte v4, v4

    const/4 v5, 0x3

    aput-byte v4, v1, v5

    aput-byte v10, v1, v11

    aput-byte v3, v1, v14

    const/16 v3, -0x56

    aput-byte v3, v1, v9

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    .line 33
    iget v1, v0, Lmodule/canbus/b0;->o:I

    add-int/2addr v1, v2

    iput v1, v0, Lmodule/canbus/b0;->o:I

    .line 34
    rem-int/lit8 v1, v1, 0x2

    iput v1, v0, Lmodule/canbus/b0;->o:I

    .line 35
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 36
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/b0;->init()V

    .line 37
    iget-object v1, v0, Lmodule/canbus/b0;->q:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->a(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lmodule/canbus/b0;->u3()V

    .line 39
    iget-object v1, v0, Lmodule/canbus/b0;->k:Ljava/lang/Runnable;

    invoke-static {v1}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    :cond_2
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
        0x2a
    .end array-data
.end method

.method public U2([BII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    aget-byte v2, v1, p2

    const/16 v3, 0x1a

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v3, :cond_32

    const/16 v3, 0x29

    if-eq v2, v3, :cond_31

    const/16 v3, 0x41

    const/16 v7, 0x61

    const/16 v8, 0x10

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/16 v12, 0xff

    if-eq v2, v3, :cond_29

    const/16 v3, 0x55

    const/16 v13, 0xe

    const/16 v14, 0xf

    if-eq v2, v3, :cond_21

    if-eq v2, v7, :cond_20

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_20

    :pswitch_0
    add-int/lit8 v2, p2, 0x2

    .line 2
    aget-byte v1, v1, v2

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    .line 3
    :goto_0
    sput v2, Lmodule/canbus/b0;->s:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v6

    .line 4
    :goto_1
    sput v1, Lmodule/canbus/b0;->t:I

    const/16 v2, 0x3f5

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 5
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 6
    invoke-static {}, Lk0/nt;->a()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 7
    sget v1, Lmodule/canbus/b0;->t:I

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v6}, Lk0/qt;->a(I)V

    goto/16 :goto_20

    .line 9
    :cond_2
    invoke-static {v5}, Lk0/qt;->a(I)V

    goto/16 :goto_20

    .line 10
    :pswitch_1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_33

    add-int/lit8 v2, p2, 0x2

    .line 11
    aget-byte v3, v1, v2

    shr-int/2addr v3, v10

    and-int/2addr v3, v14

    invoke-static {v3, v5, v13}, Lo1/o0;->a(III)I

    move-result v3

    sput v3, Lmodule/canbus/b0;->w:I

    .line 12
    aget-byte v2, v1, v2

    and-int/2addr v2, v14

    invoke-static {v2, v5, v13}, Lo1/o0;->a(III)I

    move-result v2

    sput v2, Lmodule/canbus/b0;->x:I

    add-int/lit8 v2, p2, 0x5

    .line 13
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    const/16 v2, 0x3f

    invoke-static {v1, v5, v2}, Lo1/o0;->a(III)I

    move-result v1

    sput v1, Lmodule/canbus/b0;->u:I

    goto/16 :goto_20

    :pswitch_2
    add-int/lit8 v2, p2, 0x2

    .line 14
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/lit8 v2, v2, 0x18

    move v3, v5

    :goto_2
    if-ge v3, v14, :cond_33

    new-array v4, v11, [I

    aput v3, v4, v5

    mul-int/lit8 v7, v3, 0x2

    add-int v7, p2, v7

    add-int/lit8 v8, v7, 0x3

    .line 15
    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v10

    aget-byte v7, v1, v7

    and-int/2addr v7, v12

    or-int/2addr v7, v8

    or-int/2addr v7, v2

    aput v7, v4, v6

    const/16 v7, 0x86

    .line 16
    iget-object v8, v0, Lmodule/canbus/b0;->c:[[I

    aget-object v8, v8, v3

    invoke-static {v7, v4, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 17
    iget-object v7, v0, Lmodule/canbus/b0;->c:[[I

    aput-object v4, v7, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_3
    add-int/lit8 v2, p2, 0x2

    .line 18
    aget-byte v2, v1, v2

    const/16 v3, 0x73

    new-array v7, v6, [I

    and-int/lit16 v8, v2, 0x80

    if-nez v8, :cond_4

    move v8, v5

    goto :goto_3

    :cond_4
    move v8, v6

    :goto_3
    aput v8, v7, v5

    .line 19
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x74

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x70

    shr-int/2addr v8, v10

    aput v8, v7, v5

    .line 20
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x75

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0xc

    shr-int/2addr v8, v11

    aput v8, v7, v5

    .line 21
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x76

    new-array v7, v6, [I

    and-int/2addr v2, v4

    aput v2, v7, v5

    .line 22
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 23
    aget-byte v2, v1, v2

    const/16 v3, 0x77

    new-array v7, v6, [I

    and-int/lit16 v8, v2, 0x80

    if-nez v8, :cond_5

    move v8, v5

    goto :goto_4

    :cond_5
    move v8, v6

    :goto_4
    aput v8, v7, v5

    .line 24
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x78

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x40

    if-nez v8, :cond_6

    move v8, v5

    goto :goto_5

    :cond_6
    move v8, v6

    :goto_5
    aput v8, v7, v5

    .line 25
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x79

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x20

    if-nez v8, :cond_7

    move v8, v5

    goto :goto_6

    :cond_7
    move v8, v6

    :goto_6
    aput v8, v7, v5

    .line 26
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7a

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x10

    if-nez v8, :cond_8

    move v8, v5

    goto :goto_7

    :cond_8
    move v8, v6

    :goto_7
    aput v8, v7, v5

    .line 27
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7b

    new-array v7, v6, [I

    and-int/lit8 v2, v2, 0x7

    aput v2, v7, v5

    .line 28
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x4

    .line 29
    aget-byte v2, v1, v2

    const/16 v3, 0x7c

    new-array v7, v6, [I

    and-int/lit16 v8, v2, 0x80

    if-nez v8, :cond_9

    move v8, v5

    goto :goto_8

    :cond_9
    move v8, v6

    :goto_8
    aput v8, v7, v5

    .line 30
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7d

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x40

    if-nez v8, :cond_a

    move v8, v5

    goto :goto_9

    :cond_a
    move v8, v6

    :goto_9
    aput v8, v7, v5

    .line 31
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7e

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x20

    if-nez v8, :cond_b

    move v8, v5

    goto :goto_a

    :cond_b
    move v8, v6

    :goto_a
    aput v8, v7, v5

    .line 32
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x7f

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x10

    if-nez v8, :cond_c

    move v8, v5

    goto :goto_b

    :cond_c
    move v8, v6

    :goto_b
    aput v8, v7, v5

    .line 33
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    and-int/lit8 v7, v2, 0x8

    if-nez v7, :cond_d

    move v7, v5

    goto :goto_c

    :cond_d
    move v7, v6

    :goto_c
    aput v7, v3, v5

    const/16 v7, 0x80

    .line 34
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x81

    new-array v7, v6, [I

    and-int/lit8 v2, v2, 0x7

    aput v2, v7, v5

    .line 35
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x5

    .line 36
    aget-byte v1, v1, v2

    const/16 v2, 0x82

    new-array v3, v6, [I

    and-int/lit16 v7, v1, 0x80

    if-nez v7, :cond_e

    move v7, v5

    goto :goto_d

    :cond_e
    move v7, v6

    :goto_d
    aput v7, v3, v5

    .line 37
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x83

    new-array v3, v6, [I

    and-int/lit8 v7, v1, 0x40

    if-nez v7, :cond_f

    move v7, v5

    goto :goto_e

    :cond_f
    move v7, v6

    :goto_e
    aput v7, v3, v5

    .line 38
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x84

    new-array v3, v6, [I

    shr-int/2addr v1, v11

    and-int/2addr v1, v4

    aput v1, v3, v5

    .line 39
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_4
    add-int/lit8 v2, p2, 0x2

    .line 40
    aget-byte v2, v1, v2

    const/16 v3, 0x6a

    new-array v7, v6, [I

    and-int/lit16 v8, v2, 0x80

    if-nez v8, :cond_10

    move v8, v5

    goto :goto_f

    :cond_10
    move v8, v6

    :goto_f
    aput v8, v7, v5

    .line 41
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6b

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x40

    if-nez v8, :cond_11

    move v8, v5

    goto :goto_10

    :cond_11
    move v8, v6

    :goto_10
    aput v8, v7, v5

    .line 42
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6c

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x20

    if-nez v8, :cond_12

    move v8, v5

    goto :goto_11

    :cond_12
    move v8, v6

    :goto_11
    aput v8, v7, v5

    .line 43
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x6d

    new-array v7, v6, [I

    and-int/lit8 v8, v2, 0x4

    if-nez v8, :cond_13

    move v8, v5

    goto :goto_12

    :cond_13
    move v8, v6

    :goto_12
    aput v8, v7, v5

    .line 44
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    and-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 45
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    const v4, 0xffffff

    if-ne v3, v12, :cond_14

    move v3, v4

    :cond_14
    const/16 v7, 0x6e

    new-array v8, v6, [I

    or-int/2addr v3, v2

    aput v3, v8, v5

    .line 46
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x4

    .line 47
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    if-ne v3, v12, :cond_15

    move v3, v4

    :cond_15
    const/16 v7, 0x6f

    new-array v8, v6, [I

    or-int/2addr v3, v2

    aput v3, v8, v5

    .line 48
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x5

    .line 49
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    if-ne v3, v12, :cond_16

    move v3, v4

    :cond_16
    const/16 v7, 0x70

    new-array v8, v6, [I

    or-int/2addr v3, v2

    aput v3, v8, v5

    .line 50
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x6

    .line 51
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    if-ne v3, v12, :cond_17

    move v3, v4

    :cond_17
    const/16 v7, 0x71

    new-array v8, v6, [I

    or-int/2addr v3, v2

    aput v3, v8, v5

    .line 52
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v3, p2, 0x7

    .line 53
    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    if-ne v1, v12, :cond_18

    goto :goto_13

    :cond_18
    move v4, v1

    :goto_13
    const/16 v1, 0x72

    new-array v3, v6, [I

    or-int/2addr v2, v4

    aput v2, v3, v5

    .line 54
    invoke-static {v1, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_5
    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v1, v2

    const-string v3, "persist.syu.reversefrontdoor"

    .line 56
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_19

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 57
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 58
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_14

    :cond_19
    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x7

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 59
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x6

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 60
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    :goto_14
    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 61
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 62
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v4

    and-int/2addr v2, v6

    aput v2, v3, v5

    .line 63
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x3

    .line 64
    aget-byte v1, v1, v2

    new-array v2, v6, [I

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v6

    aput v1, v2, v5

    .line 65
    invoke-static {v5, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_6
    add-int/lit8 v2, p2, 0x2

    .line 66
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 67
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x4

    aget-byte v4, v1, v4

    and-int/2addr v4, v12

    or-int/2addr v3, v4

    const v4, 0xffff

    if-ne v3, v4, :cond_1a

    move v3, v5

    :cond_1a
    const/16 v4, 0x68

    new-array v7, v6, [I

    or-int/2addr v3, v2

    aput v3, v7, v5

    .line 68
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    move v3, v5

    :goto_15
    if-ge v3, v9, :cond_33

    new-array v4, v11, [I

    aput v3, v4, v5

    mul-int/lit8 v7, v3, 0x2

    add-int v7, p2, v7

    add-int/lit8 v8, v7, 0x5

    .line 69
    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    shl-int/lit8 v8, v8, 0x8

    add-int/lit8 v7, v7, 0x6

    aget-byte v7, v1, v7

    and-int/2addr v7, v12

    or-int/2addr v7, v8

    or-int/2addr v7, v2

    aput v7, v4, v6

    const/16 v7, 0x69

    .line 70
    iget-object v8, v0, Lmodule/canbus/b0;->b:[[I

    aget-object v8, v8, v3

    invoke-static {v7, v4, v8}, Lk0/qt;->C0(I[I[I)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 71
    iget-object v7, v0, Lmodule/canbus/b0;->b:[[I

    aput-object v4, v7, v3

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :pswitch_7
    add-int/lit8 v2, p2, 0x2

    .line 72
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, p2, 0x3

    .line 73
    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, p2, 0x4

    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    or-int/2addr v1, v3

    const v3, 0xffff

    if-ne v1, v3, :cond_1c

    move v1, v5

    :cond_1c
    const/16 v3, 0x67

    new-array v4, v6, [I

    or-int/2addr v1, v2

    aput v1, v4, v5

    .line 74
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :pswitch_8
    add-int/lit8 v2, p2, 0x8

    .line 75
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/lit8 v2, v2, 0x18

    const/16 v3, 0x64

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x2

    .line 76
    aget-byte v7, v1, v7

    and-int/2addr v7, v12

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p2, 0x3

    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    or-int/2addr v7, v8

    or-int/2addr v7, v2

    aput v7, v4, v5

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x65

    new-array v4, v6, [I

    add-int/lit8 v7, p2, 0x4

    .line 77
    aget-byte v7, v1, v7

    and-int/2addr v7, v12

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, p2, 0x5

    aget-byte v8, v1, v8

    and-int/2addr v8, v12

    or-int/2addr v7, v8

    aput v7, v4, v5

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x66

    new-array v4, v6, [I

    add-int/lit8 v6, p2, 0x6

    .line 78
    aget-byte v6, v1, v6

    and-int/2addr v6, v12

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v7, p2, 0x7

    aget-byte v1, v1, v7

    and-int/2addr v1, v12

    or-int/2addr v1, v6

    or-int/2addr v1, v2

    aput v1, v4, v5

    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 79
    :pswitch_9
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_33

    add-int/lit8 v2, p2, 0x2

    .line 80
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    .line 81
    aget-byte v1, v1, v3

    and-int/2addr v2, v12

    .line 82
    iput v2, v0, Lmodule/canbus/b0;->i:I

    move v2, v5

    .line 83
    :goto_16
    iget-object v3, v0, Lmodule/canbus/b0;->j:[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1e

    .line 84
    iget v4, v0, Lmodule/canbus/b0;->i:I

    aget-object v7, v3, v2

    aget v7, v7, v5

    if-ne v4, v7, :cond_1d

    if-eqz v4, :cond_1e

    .line 85
    iput v2, v0, Lmodule/canbus/b0;->h:I

    goto :goto_17

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_1e
    :goto_17
    and-int/2addr v1, v12

    if-eqz v1, :cond_1f

    .line 86
    array-length v1, v3

    if-ge v2, v1, :cond_33

    .line 87
    aget-object v1, v3, v2

    aget v1, v1, v6

    invoke-static {v1, v5}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    .line 88
    :cond_1f
    array-length v1, v3

    if-gt v2, v1, :cond_33

    .line 89
    iget v1, v0, Lmodule/canbus/b0;->h:I

    aget-object v1, v3, v1

    aget v1, v1, v6

    invoke-static {v1, v6}, Ll0/b0;->l0(II)V

    goto/16 :goto_20

    :pswitch_a
    add-int/lit8 v2, p2, 0x2

    .line 90
    aget-byte v2, v1, v2

    new-array v3, v6, [I

    shr-int/lit8 v8, v2, 0x0

    and-int/2addr v8, v14

    aput v8, v3, v5

    .line 91
    invoke-static {v7, v3}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x62

    new-array v7, v6, [I

    shr-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 92
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x63

    new-array v3, v6, [I

    add-int/lit8 v4, p2, 0x3

    .line 93
    aget-byte v1, v1, v4

    and-int/2addr v1, v12

    aput v1, v3, v5

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    .line 94
    :pswitch_b
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_33

    add-int/lit8 v2, p2, 0x2

    .line 95
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lmodule/canbus/b0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->R2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 96
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lmodule/canbus/b0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->S2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 97
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lmodule/canbus/b0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->T2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 98
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/b0;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->U2(I)V

    goto/16 :goto_20

    .line 99
    :pswitch_c
    invoke-static {}, Lk0/nt;->a()Z

    move-result v2

    if-eqz v2, :cond_33

    add-int/lit8 v2, p2, 0x2

    .line 100
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lmodule/canbus/b0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->D2(I)V

    add-int/lit8 v2, p2, 0x3

    .line 101
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lmodule/canbus/b0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->E2(I)V

    add-int/lit8 v2, p2, 0x4

    .line 102
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    invoke-virtual {v0, v2}, Lmodule/canbus/b0;->a3(I)I

    move-result v2

    invoke-static {v2}, Lu0/d;->F2(I)V

    add-int/lit8 v2, p2, 0x5

    .line 103
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    invoke-virtual {v0, v1}, Lmodule/canbus/b0;->a3(I)I

    move-result v1

    invoke-static {v1}, Lu0/d;->G2(I)V

    goto/16 :goto_20

    .line 104
    :cond_20
    :pswitch_d
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    add-int/lit8 v4, p3, -0x2

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v2}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_21
    add-int/lit8 v2, p2, 0x2

    .line 105
    aget-byte v3, v1, v2

    add-int/lit8 v7, p2, 0x3

    .line 106
    aget-byte v11, v1, v7

    add-int/lit8 v15, p2, 0x4

    .line 107
    aget-byte v15, v1, v15

    add-int/lit8 v16, p2, 0x5

    .line 108
    aget-byte v16, v1, v16

    add-int/lit8 v17, p2, 0x6

    .line 109
    aget-byte v17, v1, v17

    add-int/lit8 v18, p2, 0x7

    .line 110
    aget-byte v18, v1, v18

    const-string v13, "persist.fyt.reversetemp"

    .line 111
    invoke-static {v13, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_22

    .line 112
    aget-byte v3, v1, v7

    .line 113
    aget-byte v11, v1, v2

    :cond_22
    and-int/lit16 v1, v3, 0xff

    const/16 v2, 0x1b

    if-eq v1, v8, :cond_25

    const/16 v3, 0x50

    if-eq v1, v3, :cond_24

    if-ge v1, v8, :cond_23

    new-array v1, v6, [I

    const/4 v3, -0x1

    aput v3, v1, v5

    .line 114
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_23
    new-array v3, v6, [I

    add-int/lit8 v1, v1, -0x24

    mul-int/2addr v1, v9

    add-int/lit16 v1, v1, 0xb4

    aput v1, v3, v5

    .line 115
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_24
    new-array v1, v6, [I

    const/4 v3, -0x3

    aput v3, v1, v5

    .line 116
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_18

    :cond_25
    new-array v1, v6, [I

    const/4 v3, -0x2

    aput v3, v1, v5

    .line 117
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_18
    and-int/lit16 v1, v11, 0xff

    const/16 v2, 0x1c

    if-eq v1, v8, :cond_28

    const/16 v3, 0x50

    if-eq v1, v3, :cond_27

    if-ge v1, v8, :cond_26

    new-array v1, v6, [I

    const/4 v3, -0x1

    aput v3, v1, v5

    .line 118
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_26
    new-array v3, v6, [I

    add-int/lit8 v1, v1, -0x24

    mul-int/2addr v1, v9

    add-int/lit16 v1, v1, 0xb4

    aput v1, v3, v5

    .line 119
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_27
    new-array v1, v6, [I

    const/4 v3, -0x3

    aput v3, v1, v5

    .line 120
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    goto :goto_19

    :cond_28
    new-array v1, v6, [I

    const/4 v3, -0x2

    aput v3, v1, v5

    .line 121
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    :goto_19
    and-int/lit8 v1, v15, 0xf

    const/16 v2, 0x15

    new-array v3, v6, [I

    and-int/2addr v1, v12

    aput v1, v3, v5

    .line 122
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    shr-int/lit8 v1, v15, 0x4

    and-int/2addr v1, v14

    packed-switch v1, :pswitch_data_2

    goto :goto_1a

    :pswitch_e
    move v2, v6

    goto :goto_1b

    :pswitch_f
    move v2, v5

    move v3, v2

    move v7, v6

    goto :goto_1d

    :pswitch_10
    move v3, v5

    move v2, v6

    move v7, v2

    goto :goto_1d

    :pswitch_11
    move v2, v5

    move v3, v6

    goto :goto_1c

    :pswitch_12
    move v2, v5

    move v7, v2

    move v3, v6

    goto :goto_1d

    :pswitch_13
    move v7, v5

    move v2, v6

    move v3, v2

    goto :goto_1d

    :pswitch_14
    move v3, v5

    move v7, v3

    move v2, v6

    goto :goto_1d

    :goto_1a
    move v2, v5

    :goto_1b
    move v3, v2

    :goto_1c
    move v7, v3

    :goto_1d
    const/16 v9, 0x13

    new-array v10, v6, [I

    aput v2, v10, v5

    .line 123
    invoke-static {v9, v10}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x14

    new-array v9, v6, [I

    aput v3, v9, v5

    .line 124
    invoke-static {v2, v9}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x12

    new-array v3, v6, [I

    aput v7, v3, v5

    .line 125
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x4d

    new-array v3, v6, [I

    aput v1, v3, v5

    .line 126
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1d

    new-array v2, v6, [I

    and-int/lit8 v3, v16, 0x3

    aput v3, v2, v5

    .line 127
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1f

    new-array v2, v6, [I

    shr-int/lit8 v3, v16, 0x2

    and-int/2addr v3, v4

    aput v3, v2, v5

    .line 128
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x1e

    new-array v2, v6, [I

    shr-int/lit8 v3, v16, 0x4

    and-int/2addr v3, v4

    aput v3, v2, v5

    .line 129
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v16, 0x6

    and-int/2addr v2, v4

    aput v2, v1, v5

    const/16 v2, 0x20

    .line 130
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xd

    new-array v2, v6, [I

    and-int/lit8 v3, v17, 0x1

    aput v3, v2, v5

    .line 131
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xb

    new-array v2, v6, [I

    shr-int/lit8 v3, v17, 0x1

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 132
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v17, 0x2

    and-int/2addr v2, v6

    aput v2, v1, v5

    const/16 v2, 0xe

    .line 133
    invoke-static {v2, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x35

    new-array v2, v6, [I

    shr-int/lit8 v3, v17, 0x4

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 134
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x41

    new-array v2, v6, [I

    shr-int/lit8 v3, v17, 0x5

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 135
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v17, 0x6

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 136
    invoke-static {v8, v1}, Lk0/qt;->y0(I[I)V

    new-array v1, v6, [I

    shr-int/lit8 v2, v17, 0x7

    and-int/2addr v2, v6

    aput v2, v1, v5

    .line 137
    invoke-static {v14, v1}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0xc

    new-array v2, v6, [I

    shr-int/lit8 v3, v18, 0x0

    and-int/2addr v3, v4

    aput v3, v2, v5

    .line 138
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x21

    new-array v2, v6, [I

    shr-int/lit8 v3, v18, 0x2

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 139
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    const/16 v1, 0x43

    new-array v2, v6, [I

    shr-int/lit8 v3, v18, 0x3

    and-int/2addr v3, v6

    aput v3, v2, v5

    .line 140
    invoke-static {v1, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_29
    add-int/lit8 v2, p2, 0x2

    .line 141
    aget-byte v2, v1, v2

    if-eq v2, v6, :cond_2f

    if-eq v2, v11, :cond_2e

    if-eq v2, v4, :cond_2a

    goto/16 :goto_20

    :cond_2a
    add-int/lit8 v2, p2, 0x3

    .line 142
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x9a

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 143
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x408

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 144
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x9

    .line 145
    aget-byte v3, v1, v2

    and-int/2addr v3, v12

    const/16 v4, 0x9b

    new-array v7, v6, [I

    aput v3, v7, v5

    .line 146
    invoke-static {v4, v7}, Lk0/qt;->y0(I[I)V

    .line 147
    aget-byte v1, v1, v2

    and-int/2addr v1, v12

    and-int/lit16 v2, v1, 0x80

    if-lez v2, :cond_2b

    move v5, v6

    :cond_2b
    if-eqz v5, :cond_2c

    const/16 v2, 0x50

    if-gt v1, v2, :cond_2d

    mul-int/lit8 v1, v1, 0xa

    add-int/lit16 v1, v1, 0x3e8

    goto :goto_1e

    :cond_2c
    const/16 v2, 0xd8

    if-lt v1, v2, :cond_2d

    rsub-int v1, v1, 0xff

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0xa

    rsub-int v1, v1, 0x3e8

    .line 148
    :cond_2d
    :goto_1e
    invoke-static {v1}, Lu0/d;->A3(I)V

    goto/16 :goto_20

    :cond_2e
    add-int/lit8 v2, p2, 0x3

    .line 149
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x4

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x5

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x95

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 150
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x6

    .line 151
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x7

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x96

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 152
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 153
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/2addr v2, v8

    add-int/lit8 v3, p2, 0x9

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xa

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x97

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 154
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xb

    .line 155
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/2addr v2, v8

    add-int/lit8 v3, p2, 0xc

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0xd

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x98

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 156
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0xe

    .line 157
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0xf

    aget-byte v3, v1, v3

    and-int/2addr v3, v12

    shl-int/2addr v3, v5

    or-int/2addr v2, v3

    const/16 v3, 0x99

    new-array v4, v6, [I

    aput v2, v4, v5

    .line 158
    invoke-static {v3, v4}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x10

    .line 159
    aget-byte v2, v1, v2

    and-int/2addr v2, v12

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p2, 0x11

    aget-byte v1, v1, v3

    and-int/2addr v1, v12

    shl-int/2addr v1, v5

    or-int/2addr v1, v2

    new-array v2, v6, [I

    aput v1, v2, v5

    .line 160
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_20

    :cond_2f
    add-int/lit8 v2, p2, 0x3

    .line 161
    aget-byte v2, v1, v2

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x5

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 162
    invoke-static {v5, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x4

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 163
    invoke-static {v9, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x3

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 164
    invoke-static {v10, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 165
    invoke-static {v4, v3}, Lk0/qt;->y0(I[I)V

    const-string v3, "persist.syu.reversefrontdoor"

    .line 166
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_30

    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x0

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 167
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v6

    aput v2, v3, v5

    .line 168
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_1f

    :cond_30
    new-array v3, v6, [I

    shr-int/lit8 v7, v2, 0x0

    and-int/2addr v7, v6

    aput v7, v3, v5

    .line 169
    invoke-static {v11, v3}, Lk0/qt;->y0(I[I)V

    new-array v3, v6, [I

    shr-int/2addr v2, v6

    and-int/2addr v2, v6

    aput v2, v3, v5

    .line 170
    invoke-static {v6, v3}, Lk0/qt;->y0(I[I)V

    :goto_1f
    add-int/lit8 v2, p2, 0x6

    .line 171
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x7

    .line 172
    aget-byte v3, v1, v3

    const/16 v7, 0x87

    new-array v8, v6, [I

    shr-int/lit8 v10, v2, 0x7

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 173
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x88

    new-array v8, v6, [I

    shr-int/lit8 v10, v2, 0x6

    and-int/2addr v10, v6

    aput v10, v8, v5

    .line 174
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v7, 0x89

    new-array v8, v6, [I

    shr-int/2addr v2, v9

    and-int/2addr v2, v6

    aput v2, v8, v5

    .line 175
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8a

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x7

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 176
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8b

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x6

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 177
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8c

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x5

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 178
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8d

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x4

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 179
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8e

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x3

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 180
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x8f

    new-array v7, v6, [I

    shr-int/lit8 v8, v3, 0x2

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 181
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x90

    new-array v7, v6, [I

    shr-int/2addr v3, v6

    and-int/2addr v3, v6

    aput v3, v7, v5

    .line 182
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x8

    .line 183
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x9

    .line 184
    aget-byte v1, v1, v3

    const/16 v3, 0x91

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x2

    and-int/2addr v8, v4

    aput v8, v7, v5

    .line 185
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x92

    new-array v7, v6, [I

    shr-int/lit8 v8, v2, 0x1

    and-int/2addr v8, v6

    aput v8, v7, v5

    .line 186
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v3, 0x93

    new-array v7, v6, [I

    and-int/2addr v2, v6

    aput v2, v7, v5

    .line 187
    invoke-static {v3, v7}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x94

    new-array v3, v6, [I

    shr-int/2addr v1, v9

    and-int/2addr v1, v4

    aput v1, v3, v5

    .line 188
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto :goto_20

    :cond_31
    add-int/lit8 v2, p2, 0x2

    .line 189
    aget-byte v2, v1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v1, v1, v3

    const/16 v3, 0x140

    invoke-static {v2, v1, v5, v3}, Lk0/qt;->k(IIZI)V

    goto :goto_20

    :cond_32
    add-int/lit8 v2, p2, 0x3

    .line 190
    aget-byte v1, v1, v2

    const/16 v2, 0x85

    new-array v3, v6, [I

    shr-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v6

    aput v1, v3, v5

    .line 191
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    :cond_33
    :goto_20
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_d
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/b0;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->x:Lo1/y;

    iget-object v1, p0, Lmodule/canbus/b0;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lmodule/canbus/b0;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/b0;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 p3, 0x9c

    if-ge p2, p3, :cond_2

    const/16 p3, 0x69

    const/4 v0, 0x0

    if-eq p2, p3, :cond_1

    const/16 p3, 0x86

    if-eq p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_2

    :cond_0
    :goto_0
    const/16 p3, 0xf

    if-ge v0, p3, :cond_2

    .line 2
    iget-object p3, p0, Lmodule/canbus/b0;->c:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p3, 0x5

    if-ge v0, p3, :cond_2

    .line 3
    iget-object p3, p0, Lmodule/canbus/b0;->b:[[I

    aget-object p3, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x3ed

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eq v1, v3, :cond_18

    const/16 v3, 0xc

    const/16 v11, 0xd

    const/16 v12, 0x8

    const/4 v13, 0x5

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_7

    .line 1
    :pswitch_0
    sget v1, Lk0/nt;->a:I

    const v14, 0x10188

    const/16 v15, -0x56

    const/16 v16, 0xaa

    const/16 v17, 0xe3

    const/16 v18, 0x25

    const/16 v19, 0x33

    if-ne v1, v14, :cond_0

    new-array v1, v12, [I

    aput v17, v1, v10

    aput v19, v1, v9

    aput v13, v1, v8

    .line 2
    aget v3, v2, v10

    aput v3, v1, v7

    iget-object v3, v0, Lmodule/canbus/b0;->n:[I

    iget v14, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v14, v8

    aget v3, v3, v14

    aput v3, v1, v6

    aput v18, v1, v13

    aput v11, v1, v5

    aput v16, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v12, [I

    aput v17, v1, v10

    aput v19, v1, v9

    aput v13, v1, v8

    .line 3
    aget v3, v2, v10

    aput v3, v1, v7

    iget-object v3, v0, Lmodule/canbus/b0;->n:[I

    iget v14, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v14, v8

    aget v3, v3, v14

    aput v3, v1, v6

    aput v18, v1, v13

    aput v11, v1, v5

    aput v16, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v12, [I

    aput v17, v1, v10

    aput v19, v1, v9

    aput v13, v1, v8

    .line 4
    aget v3, v2, v10

    aput v3, v1, v7

    iget-object v3, v0, Lmodule/canbus/b0;->n:[I

    iget v12, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v12, v8

    aget v3, v3, v12

    aput v3, v1, v6

    aput v18, v1, v13

    aput v11, v1, v5

    aput v16, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v4, [B

    aput-byte v19, v1, v10

    aput-byte v13, v1, v9

    .line 5
    aget v3, v2, v10

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    iget-object v3, v0, Lmodule/canbus/b0;->n:[I

    iget v12, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v12, v8

    aget v3, v3, v12

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    aput-byte v18, v1, v6

    aput-byte v11, v1, v13

    aput-byte v15, v1, v5

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    new-array v1, v4, [B

    aput-byte v19, v1, v10

    aput-byte v13, v1, v9

    .line 6
    aget v3, v2, v10

    int-to-byte v3, v3

    aput-byte v3, v1, v8

    iget-object v3, v0, Lmodule/canbus/b0;->n:[I

    iget v12, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v12, v8

    aget v3, v3, v12

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    aput-byte v18, v1, v6

    aput-byte v11, v1, v13

    aput-byte v15, v1, v5

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    new-array v1, v4, [B

    aput-byte v19, v1, v10

    aput-byte v13, v1, v9

    .line 7
    aget v2, v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    iget-object v2, v0, Lmodule/canbus/b0;->n:[I

    iget v3, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v3, v8

    aget v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v18, v1, v6

    aput-byte v11, v1, v13

    aput-byte v15, v1, v5

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    goto/16 :goto_0

    :cond_0
    const/16 v11, 0x188

    if-ne v1, v11, :cond_1

    new-array v1, v12, [I

    aput v17, v1, v10

    aput v19, v1, v9

    aput v13, v1, v8

    .line 8
    aget v11, v2, v10

    aput v11, v1, v7

    iget-object v11, v0, Lmodule/canbus/b0;->n:[I

    iget v14, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v14, v8

    aget v11, v11, v14

    aput v11, v1, v6

    aput v18, v1, v13

    aput v3, v1, v5

    aput v16, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v12, [I

    aput v17, v1, v10

    aput v19, v1, v9

    aput v13, v1, v8

    .line 9
    aget v11, v2, v10

    aput v11, v1, v7

    iget-object v11, v0, Lmodule/canbus/b0;->n:[I

    iget v14, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v14, v8

    aget v11, v11, v14

    aput v11, v1, v6

    aput v18, v1, v13

    aput v3, v1, v5

    aput v16, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v12, [I

    aput v17, v1, v10

    aput v19, v1, v9

    aput v13, v1, v8

    .line 10
    aget v11, v2, v10

    aput v11, v1, v7

    iget-object v11, v0, Lmodule/canbus/b0;->n:[I

    iget v12, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v12, v8

    aget v11, v11, v12

    aput v11, v1, v6

    aput v18, v1, v13

    aput v3, v1, v5

    aput v16, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v4, [B

    aput-byte v19, v1, v10

    aput-byte v13, v1, v9

    .line 11
    aget v11, v2, v10

    int-to-byte v11, v11

    aput-byte v11, v1, v8

    iget-object v11, v0, Lmodule/canbus/b0;->n:[I

    iget v12, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v12, v8

    aget v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v7

    aput-byte v18, v1, v6

    aput-byte v3, v1, v13

    aput-byte v15, v1, v5

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    new-array v1, v4, [B

    aput-byte v19, v1, v10

    aput-byte v13, v1, v9

    .line 12
    aget v11, v2, v10

    int-to-byte v11, v11

    aput-byte v11, v1, v8

    iget-object v11, v0, Lmodule/canbus/b0;->n:[I

    iget v12, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v12, v8

    aget v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v7

    aput-byte v18, v1, v6

    aput-byte v3, v1, v13

    aput-byte v15, v1, v5

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    new-array v1, v4, [B

    aput-byte v19, v1, v10

    aput-byte v13, v1, v9

    .line 13
    aget v2, v2, v10

    int-to-byte v2, v2

    aput-byte v2, v1, v8

    iget-object v2, v0, Lmodule/canbus/b0;->n:[I

    iget v4, v0, Lmodule/canbus/b0;->o:I

    rem-int/2addr v4, v8

    aget v2, v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    aput-byte v18, v1, v6

    aput-byte v3, v1, v13

    aput-byte v15, v1, v5

    invoke-static {v1}, Lmodule/canbus/b0;->z3([B)V

    .line 14
    :cond_1
    :goto_0
    iget v1, v0, Lmodule/canbus/b0;->o:I

    add-int/2addr v1, v9

    iput v1, v0, Lmodule/canbus/b0;->o:I

    .line 15
    rem-int/2addr v1, v8

    iput v1, v0, Lmodule/canbus/b0;->o:I

    goto/16 :goto_7

    :pswitch_1
    if-eqz v2, :cond_24

    .line 16
    array-length v1, v2

    if-lez v1, :cond_24

    const/16 v1, 0x22

    .line 17
    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_2
    if-eqz v2, :cond_24

    .line 18
    array-length v1, v2

    if-lez v1, :cond_24

    .line 19
    aget v1, v2, v10

    const/16 v3, 0x41

    if-ne v1, v3, :cond_2

    new-array v1, v13, [I

    .line 20
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v13, [I

    .line 21
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v13, [I

    .line 22
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_7

    .line 23
    :cond_2
    aget v1, v2, v10

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_24

    new-array v1, v13, [I

    .line 24
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    goto/16 :goto_7

    :pswitch_3
    if-eqz v2, :cond_24

    .line 25
    array-length v1, v2

    if-lez v1, :cond_24

    const/16 v1, 0x23

    .line 26
    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_4
    if-eqz v2, :cond_24

    .line 27
    array-length v1, v2

    if-lez v1, :cond_24

    .line 28
    aget v1, v2, v10

    if-eqz v1, :cond_3

    .line 29
    aput v9, v2, v10

    :cond_3
    const/16 v1, 0x13

    .line 30
    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_5
    if-eqz v2, :cond_24

    .line 31
    array-length v1, v2

    if-lez v1, :cond_24

    .line 32
    aget v1, v2, v10

    if-eqz v1, :cond_4

    .line 33
    aput v9, v2, v10

    :cond_4
    const/16 v1, 0x12

    .line 34
    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_6
    if-eqz v2, :cond_24

    .line 35
    array-length v1, v2

    if-lez v1, :cond_24

    .line 36
    aget v1, v2, v10

    if-eqz v1, :cond_5

    .line 37
    aput v9, v2, v10

    :cond_5
    const/16 v1, 0x11

    .line 38
    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_7
    if-eqz v2, :cond_24

    .line 39
    array-length v1, v2

    if-lez v1, :cond_24

    .line 40
    aget v1, v2, v10

    if-eqz v1, :cond_6

    .line 41
    aput v9, v2, v10

    :cond_6
    const/16 v1, 0x10

    .line 42
    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_8
    if-eqz v2, :cond_24

    .line 43
    array-length v1, v2

    if-lez v1, :cond_24

    .line 44
    aget v1, v2, v10

    const/16 v2, 0xf

    if-eqz v1, :cond_8

    if-eq v1, v9, :cond_7

    goto/16 :goto_7

    .line 45
    :cond_7
    invoke-virtual {v0, v2, v9}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    .line 46
    :cond_8
    invoke-virtual {v0, v2, v10}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_9
    if-eqz v2, :cond_24

    .line 47
    array-length v1, v2

    if-lez v1, :cond_24

    .line 48
    aget v1, v2, v10

    if-eqz v1, :cond_9

    .line 49
    aput v9, v2, v10

    :cond_9
    const/16 v1, 0xe

    .line 50
    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_a
    if-eqz v2, :cond_24

    .line 51
    array-length v1, v2

    if-lez v1, :cond_24

    .line 52
    aget v1, v2, v10

    if-eqz v1, :cond_a

    .line 53
    aput v9, v2, v10

    .line 54
    :cond_a
    aget v1, v2, v10

    invoke-virtual {v0, v11, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_b
    if-eqz v2, :cond_24

    .line 55
    array-length v1, v2

    if-lez v1, :cond_24

    .line 56
    aget v1, v2, v10

    if-gez v1, :cond_b

    .line 57
    aput v10, v2, v10

    goto :goto_1

    .line 58
    :cond_b
    aget v1, v2, v10

    if-le v1, v7, :cond_c

    .line 59
    aput v7, v2, v10

    .line 60
    :cond_c
    :goto_1
    aget v1, v2, v10

    invoke-virtual {v0, v3, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_c
    const/16 v1, 0xa

    .line 61
    invoke-virtual {v0, v1, v10}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_d
    const/16 v1, 0x9

    .line 62
    invoke-virtual {v0, v1, v10}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    .line 63
    :pswitch_e
    invoke-virtual {v0, v12, v10}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_f
    if-eqz v2, :cond_24

    .line 64
    array-length v1, v2

    if-lez v1, :cond_24

    .line 65
    aget v1, v2, v10

    if-gez v1, :cond_d

    .line 66
    aput v10, v2, v10

    goto :goto_2

    .line 67
    :cond_d
    aget v1, v2, v10

    if-le v1, v7, :cond_e

    .line 68
    aput v7, v2, v10

    .line 69
    :cond_e
    :goto_2
    aget v1, v2, v10

    invoke-virtual {v0, v4, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_10
    if-eqz v2, :cond_24

    .line 70
    array-length v1, v2

    if-lez v1, :cond_24

    .line 71
    aget v1, v2, v10

    if-gez v1, :cond_f

    .line 72
    aput v10, v2, v10

    goto :goto_3

    .line 73
    :cond_f
    aget v1, v2, v10

    if-le v1, v5, :cond_10

    .line 74
    aput v5, v2, v10

    .line 75
    :cond_10
    :goto_3
    aget v1, v2, v10

    invoke-virtual {v0, v13, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_11
    if-eqz v2, :cond_24

    .line 76
    array-length v1, v2

    if-lez v1, :cond_24

    .line 77
    aget v1, v2, v10

    if-eqz v1, :cond_11

    .line 78
    aput v9, v2, v10

    .line 79
    :cond_11
    aget v1, v2, v10

    invoke-virtual {v0, v6, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_12
    if-eqz v2, :cond_24

    .line 80
    array-length v1, v2

    if-lez v1, :cond_24

    .line 81
    aget v1, v2, v10

    if-eqz v1, :cond_12

    .line 82
    aput v9, v2, v10

    .line 83
    :cond_12
    aget v1, v2, v10

    invoke-virtual {v0, v7, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_13
    if-eqz v2, :cond_24

    .line 84
    array-length v1, v2

    if-lez v1, :cond_24

    .line 85
    aget v1, v2, v10

    if-eqz v1, :cond_13

    .line 86
    aput v9, v2, v10

    .line 87
    :cond_13
    aget v1, v2, v10

    invoke-virtual {v0, v8, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_14
    if-eqz v2, :cond_24

    .line 88
    array-length v1, v2

    if-lez v1, :cond_24

    .line 89
    aget v1, v2, v10

    if-eqz v1, :cond_14

    .line 90
    aput v9, v2, v10

    .line 91
    :cond_14
    aget v1, v2, v10

    invoke-virtual {v0, v9, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_15
    if-eqz v2, :cond_24

    .line 92
    array-length v1, v2

    if-lez v1, :cond_24

    .line 93
    aget v1, v2, v10

    if-eqz v1, :cond_15

    .line 94
    aput v9, v2, v10

    .line 95
    :cond_15
    aget v1, v2, v10

    invoke-virtual {v0, v10, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    :pswitch_16
    if-eqz v2, :cond_24

    .line 96
    array-length v1, v2

    if-lez v1, :cond_24

    .line 97
    aget v1, v2, v10

    if-gez v1, :cond_16

    .line 98
    aput v10, v2, v10

    goto :goto_4

    .line 99
    :cond_16
    aget v1, v2, v10

    if-le v1, v6, :cond_17

    .line 100
    aput v6, v2, v10

    .line 101
    :cond_17
    :goto_4
    aget v1, v2, v10

    invoke-virtual {v0, v5, v1}, Lmodule/canbus/b0;->v3(II)V

    goto/16 :goto_7

    .line 102
    :cond_18
    aget v1, v2, v9

    if-nez v1, :cond_19

    goto/16 :goto_7

    .line 103
    :cond_19
    array-length v1, v2

    if-lez v1, :cond_24

    .line 104
    sget v1, Lk0/nt;->c:I

    const/16 v3, 0x21

    if-eq v1, v5, :cond_1f

    if-ne v1, v4, :cond_1a

    goto :goto_6

    .line 105
    :cond_1a
    sget v1, Lmodule/canbus/b0;->s:I

    if-eqz v1, :cond_1e

    .line 106
    aget v1, v2, v10

    if-nez v1, :cond_1b

    .line 107
    invoke-virtual {v0, v3, v9}, Lmodule/canbus/b0;->v3(II)V

    goto :goto_5

    .line 108
    :cond_1b
    aget v1, v2, v10

    if-ne v1, v9, :cond_1c

    .line 109
    invoke-virtual {v0, v3, v8}, Lmodule/canbus/b0;->v3(II)V

    goto :goto_5

    .line 110
    :cond_1c
    aget v1, v2, v10

    if-ne v1, v7, :cond_1d

    .line 111
    invoke-virtual {v0, v3, v7}, Lmodule/canbus/b0;->v3(II)V

    goto :goto_5

    .line 112
    :cond_1d
    aget v1, v2, v10

    if-ne v1, v8, :cond_1e

    .line 113
    invoke-virtual {v0, v3, v5}, Lmodule/canbus/b0;->v3(II)V

    .line 114
    :cond_1e
    :goto_5
    sget v1, Lmodule/canbus/b0;->t:I

    if-eqz v1, :cond_24

    .line 115
    aget v1, v2, v10

    if-ne v1, v6, :cond_24

    const/16 v1, 0x20

    .line 116
    invoke-virtual {v0, v1, v10}, Lmodule/canbus/b0;->v3(II)V

    goto :goto_7

    .line 117
    :cond_1f
    :goto_6
    sget v1, Lmodule/canbus/b0;->t:I

    if-eqz v1, :cond_21

    .line 118
    aget v1, v2, v10

    if-nez v1, :cond_20

    .line 119
    invoke-virtual {v0, v3, v8}, Lmodule/canbus/b0;->v3(II)V

    goto :goto_7

    .line 120
    :cond_20
    aget v1, v2, v10

    if-ne v1, v8, :cond_24

    .line 121
    invoke-virtual {v0, v3, v9}, Lmodule/canbus/b0;->v3(II)V

    goto :goto_7

    .line 122
    :cond_21
    aget v1, v2, v10

    if-nez v1, :cond_22

    .line 123
    invoke-virtual {v0, v3, v6}, Lmodule/canbus/b0;->v3(II)V

    goto :goto_7

    .line 124
    :cond_22
    aget v1, v2, v10

    if-ne v1, v8, :cond_23

    .line 125
    invoke-virtual {v0, v3, v4}, Lmodule/canbus/b0;->v3(II)V

    goto :goto_7

    .line 126
    :cond_23
    aget v1, v2, v10

    if-ne v1, v7, :cond_24

    .line 127
    invoke-virtual {v0, v3, v7}, Lmodule/canbus/b0;->v3(II)V

    :cond_24
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
        -0x70
        0x2
        0x41
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x2
        0x41
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        -0x70
        0x2
        0x1f
        0x0
    .end array-data
.end method

.method public Z2(I)V
    .locals 3

    .line 1
    invoke-static {}, Lk0/nt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lmodule/canbus/b0;->A:[I

    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    aget p1, v0, p1

    sput p1, Lmodule/canbus/b0;->v:I

    :cond_0
    return-void
.end method

.method public final a3(I)I
    .locals 3

    const/16 v0, 0xf

    const/4 v1, 0x3

    if-eqz p1, :cond_4

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_0
    return v0
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
    if-eqz p1, :cond_c

    .line 2
    array-length v1, p1

    if-gtz v1, :cond_1

    goto/16 :goto_5

    .line 3
    :cond_1
    iget v1, p0, Lmodule/canbus/b0;->e:I

    array-length v2, p1

    add-int/2addr v1, v2

    const/16 v2, 0x400

    if-le v1, v2, :cond_2

    .line 4
    iput v0, p0, Lmodule/canbus/b0;->e:I

    .line 5
    iput v0, p0, Lmodule/canbus/b0;->f:I

    .line 6
    iput v0, p0, Lmodule/canbus/b0;->g:I

    .line 7
    :cond_2
    iget-object v1, p0, Lmodule/canbus/b0;->d:[B

    iget v2, p0, Lmodule/canbus/b0;->e:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v1, p0, Lmodule/canbus/b0;->e:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lmodule/canbus/b0;->e:I

    .line 9
    iget p1, p0, Lmodule/canbus/b0;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v1, :cond_3

    return-void

    .line 10
    :cond_3
    iget-object p1, p0, Lmodule/canbus/b0;->d:[B

    aget-byte p1, p1, v0

    move p1, v2

    .line 11
    :goto_0
    iget v1, p0, Lmodule/canbus/b0;->g:I

    if-ge p1, v1, :cond_4

    .line 12
    iget-object v1, p0, Lmodule/canbus/b0;->d:[B

    aget-byte v1, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lmodule/canbus/b0;->d:[B

    aget-byte v1, p1, v3

    add-int/2addr v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmodule/canbus/b0;->U2([BII)V

    .line 14
    iget p1, p0, Lmodule/canbus/b0;->g:I

    add-int/2addr p1, v3

    iput p1, p0, Lmodule/canbus/b0;->f:I

    .line 15
    iput v0, p0, Lmodule/canbus/b0;->g:I

    .line 16
    :cond_5
    iget p1, p0, Lmodule/canbus/b0;->e:I

    sub-int/2addr p1, v2

    :goto_1
    iget v1, p0, Lmodule/canbus/b0;->f:I

    if-ge v1, p1, :cond_a

    .line 17
    iget-object v4, p0, Lmodule/canbus/b0;->d:[B

    aget-byte v5, v4, v1

    const/16 v6, 0x55

    if-ne v5, v6, :cond_9

    .line 18
    iget v5, p0, Lmodule/canbus/b0;->g:I

    const/16 v6, 0x200

    if-le v5, v6, :cond_6

    .line 19
    iput v0, p0, Lmodule/canbus/b0;->g:I

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v1, 0x1

    .line 20
    aget-byte v5, v4, v5

    iput v5, p0, Lmodule/canbus/b0;->g:I

    .line 21
    iget v6, p0, Lmodule/canbus/b0;->e:I

    if-lt v5, v6, :cond_7

    sub-int/2addr v5, v1

    .line 22
    iput v5, p0, Lmodule/canbus/b0;->g:I

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v1, 0x1

    .line 23
    aget-byte v4, v4, v5

    add-int/lit8 v1, v1, 0x2

    .line 24
    :goto_2
    iget v4, p0, Lmodule/canbus/b0;->g:I

    if-ge v1, v4, :cond_8

    .line 25
    iget-object v4, p0, Lmodule/canbus/b0;->d:[B

    aget-byte v4, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 26
    :cond_8
    iget-object v1, p0, Lmodule/canbus/b0;->d:[B

    iget v4, p0, Lmodule/canbus/b0;->f:I

    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5

    add-int/2addr v5, v2

    invoke-virtual {p0, v1, v4, v5}, Lmodule/canbus/b0;->U2([BII)V

    .line 27
    iget v1, p0, Lmodule/canbus/b0;->g:I

    iput v1, p0, Lmodule/canbus/b0;->f:I

    .line 28
    iput v0, p0, Lmodule/canbus/b0;->g:I

    .line 29
    :cond_9
    :goto_3
    iget v1, p0, Lmodule/canbus/b0;->f:I

    add-int/2addr v1, v3

    iput v1, p0, Lmodule/canbus/b0;->f:I

    goto :goto_1

    :cond_a
    :goto_4
    if-eqz v1, :cond_c

    .line 30
    iget p1, p0, Lmodule/canbus/b0;->e:I

    sub-int/2addr p1, v1

    iput p1, p0, Lmodule/canbus/b0;->e:I

    if-eqz p1, :cond_b

    .line 31
    iget-object v2, p0, Lmodule/canbus/b0;->d:[B

    invoke-static {v2, v1, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_b
    iput v0, p0, Lmodule/canbus/b0;->f:I

    :cond_c
    :goto_5
    return-void
.end method

.method public final b3(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/16 p1, 0x16

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, v1, v1}, Lmodule/canbus/b0;->Z0(I[I[F[Ljava/lang/String;)V

    return-void
.end method

.method public final c3(I)V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x83

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    const/16 v4, 0x24

    aput v4, v0, v1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 p1, 0x4

    aput v2, v0, p1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final init()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/canbus/b0;->C:Lo1/f;

    new-instance v1, Lmodule/canbus/b0$e;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lmodule/canbus/b0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 2
    new-instance v1, Lmodule/canbus/b0$e;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v3}, Lmodule/canbus/b0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lmodule/canbus/b0$e;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v3}, Lmodule/canbus/b0$e;-><init>(II)V

    invoke-virtual {v0, v2, v1}, Lo1/f;->f(ILjava/lang/Object;)V

    return-void
.end method

.method public final u3()V
    .locals 1

    .line 1
    sget v0, Ly0/f;->c:I

    invoke-virtual {p0, v0}, Lmodule/canbus/b0;->Z2(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lk0/lt;->P2([I)V

    .line 3
    invoke-virtual {p0, v0}, Lmodule/canbus/b0;->R2([I)V

    return-void
.end method

.method public final v3(II)V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7d

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v1, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x4

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final declared-synchronized w3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/b0;->z:I

    const/4 v1, 0x2

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/b0;->t3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized x3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/b0;->y:I

    const/4 v1, 0x1

    .line 3
    invoke-static {v1, v0}, Lmodule/canbus/b0;->t3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized y3()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    iget v0, v0, Lk0/mt;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    sget v0, Lmodule/canbus/b0;->u:I

    .line 3
    sget v1, Lmodule/canbus/b0;->v:I

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_0
    const/4 v1, 0x7

    .line 4
    invoke-static {v1, v0}, Lmodule/canbus/b0;->t3(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
