.class public Lk0/ef;
.super Lk0/lt;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Runnable;

.field public c:Lo1/o;

.field public d:Lo1/o;

.field public e:Lo1/o;

.field public f:Lo1/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lk0/ef$e;

    invoke-direct {v0, p0}, Lk0/ef$e;-><init>(Lk0/ef;)V

    iput-object v0, p0, Lk0/ef;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a3(Lk0/ef;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/ef;->b3(I)V

    return-void
.end method


# virtual methods
.method public S2()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const-string v1, "com.syu.canbus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lk0/mt;->e:I

    const/4 v2, 0x1

    .line 6
    iput v2, v0, Lk0/mt;->f:I

    .line 7
    iput v2, v0, Lk0/mt;->i:I

    .line 8
    iput v1, v0, Lk0/mt;->o:I

    .line 9
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/ef;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Le/c;->w:Lo1/o;

    iput-object v0, p0, Lk0/ef;->c:Lo1/o;

    .line 11
    sget-object v0, Le/c;->x:Lo1/o;

    iput-object v0, p0, Lk0/ef;->d:Lo1/o;

    .line 12
    sget-object v0, Le/c;->y:Lo1/o;

    iput-object v0, p0, Lk0/ef;->e:Lo1/o;

    .line 13
    sget-object v0, Le/c;->z:Lo1/o;

    iput-object v0, p0, Lk0/ef;->f:Lo1/o;

    .line 14
    new-instance v0, Lk0/ef$a;

    invoke-direct {v0, p0}, Lk0/ef$a;-><init>(Lk0/ef;)V

    sput-object v0, Le/c;->w:Lo1/o;

    .line 15
    new-instance v0, Lk0/ef$b;

    invoke-direct {v0, p0}, Lk0/ef$b;-><init>(Lk0/ef;)V

    sput-object v0, Le/c;->x:Lo1/o;

    .line 16
    new-instance v0, Lk0/ef$c;

    invoke-direct {v0, p0}, Lk0/ef$c;-><init>(Lk0/ef;)V

    sput-object v0, Le/c;->z:Lo1/o;

    .line 17
    new-instance v0, Lk0/ef$d;

    invoke-direct {v0, p0}, Lk0/ef$d;-><init>(Lk0/ef;)V

    sput-object v0, Le/c;->y:Lo1/o;

    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        -0x7f
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x70
        0x1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xe3
        -0x70
        0x1
        0x30
    .end array-data
.end method

.method public U2([BII)V
    .locals 6

    .line 1
    aget-byte v0, p1, p2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p3, p3, -0x2

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v0}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 p3, p2, 0x2

    .line 3
    aget-byte p3, p1, p3

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    add-int/lit8 p2, p2, 0x4

    .line 5
    aget-byte p1, p1, p2

    const/16 p2, 0xa

    const/4 v1, 0x1

    new-array v2, v1, [I

    shr-int/lit8 v3, p3, 0x7

    and-int/2addr v3, v1

    const/4 v4, 0x0

    aput v3, v2, v4

    .line 6
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xb

    new-array v2, v1, [I

    shr-int/lit8 v3, p3, 0x6

    and-int/2addr v3, v1

    aput v3, v2, v4

    .line 7
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0xc

    new-array v2, v1, [I

    shr-int/lit8 v3, p3, 0x5

    and-int/2addr v3, v1

    aput v3, v2, v4

    .line 8
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x10

    new-array v2, v1, [I

    shr-int/lit8 v3, p3, 0x4

    and-int/2addr v3, v1

    aput v3, v2, v4

    .line 9
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x15

    new-array v2, v1, [I

    and-int/lit8 p3, p3, 0x7

    aput p3, v2, v4

    .line 10
    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    and-int/lit8 p2, v0, 0xf

    packed-switch p2, :pswitch_data_0

    move p3, v4

    move v0, p3

    :goto_0
    move v2, v0

    goto :goto_1

    :pswitch_0
    move p3, v1

    move v2, p3

    move v0, v4

    goto :goto_1

    :pswitch_1
    move v0, v1

    move p3, v4

    move v2, p3

    goto :goto_1

    :pswitch_2
    move v0, v1

    move v2, v0

    move p3, v4

    goto :goto_1

    :pswitch_3
    move v2, v1

    move p3, v4

    move v0, p3

    goto :goto_1

    :pswitch_4
    move p3, v1

    move v0, v4

    goto :goto_0

    :goto_1
    const/16 v3, 0x12

    new-array v5, v1, [I

    aput p3, v5, v4

    .line 11
    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x13

    new-array v3, v1, [I

    aput v0, v3, v4

    .line 12
    invoke-static {p3, v3}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x14

    new-array v0, v1, [I

    aput v2, v0, v4

    .line 13
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p3, 0x4d

    new-array v0, v1, [I

    aput p2, v0, v4

    .line 14
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p2, 0x1b

    new-array p3, v1, [I

    and-int/lit16 p1, p1, 0xff

    aput p1, p3, v4

    .line 15
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Le/e;->b:Lo1/y;

    iget-object v1, p0, Lk0/ef;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x62

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
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    array-length p1, p2

    if-lez p1, :cond_1

    const/4 p1, 0x5

    new-array p1, p1, [I

    const/16 p3, 0xe3

    const/4 p4, 0x0

    aput p3, p1, p4

    const/16 p3, 0x71

    const/4 v0, 0x1

    aput p3, p1, v0

    const/4 p3, 0x2

    aput p3, p1, p3

    const/4 p3, 0x3

    .line 2
    aget p4, p2, p4

    aput p4, p1, p3

    const/4 p3, 0x4

    aget p2, p2, v0

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b3(I)V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/16 v1, 0x71

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lk0/ef$f;

    invoke-direct {v1, p0, p1}, Lk0/ef$f;-><init>(Lk0/ef;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
