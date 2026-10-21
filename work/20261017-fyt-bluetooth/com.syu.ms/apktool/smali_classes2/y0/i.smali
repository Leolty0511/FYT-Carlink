.class public Ly0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ly0/i$f;
    }
.end annotation


# static fields
.field public static final a:[Ly0/i$f;

.field public static final b:[Ly0/i$f;

.field public static final c:[Ly0/i$f;

.field public static final d:[Ly0/i$f;

.field public static final e:[Ly0/i$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x30

    new-array v1, v0, [Ly0/i$f;

    .line 1
    sput-object v1, Ly0/i;->a:[Ly0/i$f;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    sget-object v3, Ly0/i;->a:[Ly0/i$f;

    array-length v4, v3

    const-wide/16 v5, 0x64

    if-ge v2, v4, :cond_0

    .line 3
    new-instance v4, Ly0/i$f;

    new-instance v7, Ly0/i$a;

    invoke-direct {v7}, Ly0/i$a;-><init>()V

    invoke-direct {v4, v7, v2, v5, v6}, Ly0/i$f;-><init>(Ly0/i$f$a;IJ)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v0, [Ly0/i$f;

    .line 4
    sput-object v2, Ly0/i;->b:[Ly0/i$f;

    move v2, v1

    .line 5
    :goto_1
    sget-object v3, Ly0/i;->b:[Ly0/i$f;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 6
    new-instance v4, Ly0/i$f;

    new-instance v7, Ly0/i$b;

    invoke-direct {v7}, Ly0/i$b;-><init>()V

    invoke-direct {v4, v7, v2, v5, v6}, Ly0/i$f;-><init>(Ly0/i$f$a;IJ)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v0, [Ly0/i$f;

    .line 7
    sput-object v0, Ly0/i;->c:[Ly0/i$f;

    move v0, v1

    .line 8
    :goto_2
    sget-object v2, Ly0/i;->c:[Ly0/i$f;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 9
    new-instance v3, Ly0/i$f;

    new-instance v4, Ly0/i$c;

    invoke-direct {v4}, Ly0/i$c;-><init>()V

    invoke-direct {v3, v4, v0, v5, v6}, Ly0/i$f;-><init>(Ly0/i$f$a;IJ)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x24

    new-array v2, v0, [Ly0/i$f;

    .line 10
    sput-object v2, Ly0/i;->d:[Ly0/i$f;

    move v2, v1

    .line 11
    :goto_3
    sget-object v3, Ly0/i;->d:[Ly0/i$f;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 12
    new-instance v4, Ly0/i$f;

    new-instance v7, Ly0/i$d;

    invoke-direct {v7}, Ly0/i$d;-><init>()V

    invoke-direct {v4, v7, v2, v5, v6}, Ly0/i$f;-><init>(Ly0/i$f$a;IJ)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-array v0, v0, [Ly0/i$f;

    .line 13
    sput-object v0, Ly0/i;->e:[Ly0/i$f;

    .line 14
    :goto_4
    sget-object v0, Ly0/i;->e:[Ly0/i$f;

    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 15
    new-instance v2, Ly0/i$f;

    new-instance v3, Ly0/i$e;

    invoke-direct {v3}, Ly0/i$e;-><init>()V

    invoke-direct {v2, v3, v1, v5, v6}, Ly0/i$f;-><init>(Ly0/i$f$a;IJ)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public static synthetic a(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly0/i;->i(II)V

    return-void
.end method

.method public static synthetic b(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly0/i;->g(II)V

    return-void
.end method

.method public static synthetic c(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly0/i;->m(II)V

    return-void
.end method

.method public static synthetic d(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly0/i;->q(II)V

    return-void
.end method

.method public static synthetic e(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly0/i;->o(II)V

    return-void
.end method

.method public static f(II)V
    .locals 2

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Ly0/i;->b:[Ly0/i$f;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    invoke-virtual {p0, p1}, Ly0/i$f;->a(I)V

    :cond_0
    return-void
.end method

.method public static g(II)V
    .locals 3

    if-ltz p0, :cond_1

    const/16 v0, 0x30

    if-ge p0, v0, :cond_1

    const/4 v0, 0x7

    .line 1
    invoke-static {v0}, Lg/f;->c(I)Z

    move-result v0

    const/16 v1, 0x4e20

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v2, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eqCfSrcCmdInner -------->> index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    sget-object v0, Ly0/g;->m:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->b()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p0, v1, v2

    const/4 p0, 0x1

    aput p1, v1, p0

    .line 6
    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static h(II)V
    .locals 2

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Ly0/i;->a:[Ly0/i$f;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    invoke-virtual {p0, p1}, Ly0/i$f;->a(I)V

    :cond_0
    return-void
.end method

.method public static i(II)V
    .locals 5

    if-ltz p0, :cond_5

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget v0, Ly0/f;->f0:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget-object v0, Ly0/g;->n:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->b()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lez v2, :cond_1

    new-array v2, v3, [I

    aput p0, v2, v1

    aput p1, v2, v4

    .line 3
    invoke-virtual {v0, v2}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 4
    :cond_1
    sget v0, Lk0/nt;->v:I

    if-eqz v0, :cond_5

    const/16 v0, 0x4a

    const/4 v2, 0x3

    if-eqz p0, :cond_4

    if-eq p0, v4, :cond_3

    if-eq p0, v3, :cond_2

    goto :goto_0

    :cond_2
    new-array p0, v2, [I

    aput v4, p0, v1

    aput v0, p0, v4

    add-int/2addr p1, v4

    shr-int/2addr p1, v4

    add-int/lit8 p1, p1, 0x20

    aput p1, p0, v3

    .line 5
    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v2, [I

    aput v4, p0, v1

    aput v0, p0, v4

    add-int/2addr p1, v4

    shr-int/2addr p1, v4

    add-int/lit8 p1, p1, 0x40

    aput p1, p0, v3

    .line 6
    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array p0, v2, [I

    aput v4, p0, v1

    aput v0, p0, v4

    add-int/2addr p1, v4

    shr-int/2addr p1, v4

    add-int/lit8 p1, p1, 0x60

    aput p1, p0, v3

    .line 7
    invoke-static {p0}, Lz/k;->s([I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public static j(I)V
    .locals 3

    .line 1
    invoke-static {p0}, Ly0/i;->k(I)V

    .line 2
    sget-object v0, Ly0/g;->p:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->b()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static k(I)V
    .locals 1

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array p0, v0, [I

    .line 1
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array p0, v0, [I

    .line 2
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array p0, v0, [I

    .line 4
    fill-array-data p0, :array_3

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_4

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_5

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array p0, v0, [I

    .line 7
    fill-array-data p0, :array_6

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array p0, v0, [I

    .line 8
    fill-array-data p0, :array_7

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_8
    new-array p0, v0, [I

    .line 9
    fill-array-data p0, :array_8

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        0x1
        0xa
        0x28
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xa
        0x27
    .end array-data

    :array_2
    .array-data 4
        0x1
        0xa
        0x26
    .end array-data

    :array_3
    .array-data 4
        0x1
        0xa
        0x25
    .end array-data

    :array_4
    .array-data 4
        0x1
        0xa
        0x24
    .end array-data

    :array_5
    .array-data 4
        0x1
        0xa
        0x23
    .end array-data

    :array_6
    .array-data 4
        0x1
        0xa
        0x22
    .end array-data

    :array_7
    .array-data 4
        0x1
        0xa
        0x21
    .end array-data

    :array_8
    .array-data 4
        0x1
        0xa
        0x20
    .end array-data
.end method

.method public static l(II)V
    .locals 2

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Ly0/i;->c:[Ly0/i$f;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    invoke-virtual {p0, p1}, Ly0/i$f;->a(I)V

    :cond_0
    return-void
.end method

.method public static m(II)V
    .locals 4

    if-ltz p0, :cond_1

    const/16 v0, 0x30

    if-ge p0, v0, :cond_1

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lg/f;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1, v3, v2}, Lo1/o0;->a(III)I

    move-result p1

    .line 4
    :goto_0
    sget-object v0, Ly0/g;->o:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->b()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p0, v2, v3

    aput p1, v2, v1

    .line 5
    invoke-virtual {v0, v2}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static n(II)V
    .locals 2

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Ly0/i;->e:[Ly0/i$f;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    invoke-virtual {p0, p1}, Ly0/i$f;->a(I)V

    :cond_0
    return-void
.end method

.method public static o(II)V
    .locals 5

    if-ltz p0, :cond_4

    const/16 v0, 0x24

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    const/16 v2, 0x4e20

    .line 1
    invoke-static {p1, v1, v2}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget-object v1, Ly0/g;->r:Lo1/z;

    invoke-virtual {v1}, Lo1/z;->b()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p0, v2, v3

    const/4 v4, 0x1

    aput p1, v2, v4

    .line 3
    invoke-virtual {v1, v2}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 4
    :cond_1
    sget v1, Lk0/nt;->w:I

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Ly0/h;->m0()V

    .line 6
    sget-object v1, Ly0/f;->u0:[I

    aget v2, v1, p0

    if-eq v2, p1, :cond_3

    .line 7
    aput p1, v1, p0

    if-ge p0, v0, :cond_3

    add-int/lit16 p0, p0, 0x12e

    .line 8
    invoke-static {p0, p1}, Lm1/c;->g(II)V

    .line 9
    :cond_3
    invoke-static {v3}, Ly0/h;->l0(I)V

    .line 10
    invoke-static {}, Ly0/h;->L()V

    :cond_4
    :goto_0
    return-void
.end method

.method public static p(II)V
    .locals 2

    if-ltz p0, :cond_0

    .line 1
    sget-object v0, Ly0/i;->d:[Ly0/i$f;

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 2
    aget-object p0, v0, p0

    invoke-virtual {p0, p1}, Ly0/i$f;->a(I)V

    :cond_0
    return-void
.end method

.method public static q(II)V
    .locals 5

    if-ltz p0, :cond_4

    const/16 v0, 0x24

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 1
    invoke-static {p1, v2, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget-object v1, Ly0/g;->s:Lo1/z;

    invoke-virtual {v1}, Lo1/z;->b()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p0, v3, v2

    const/4 v4, 0x1

    aput p1, v3, v4

    .line 3
    invoke-virtual {v1, v3}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 4
    :cond_1
    sget v1, Lk0/nt;->w:I

    if-eqz v1, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {}, Ly0/h;->m0()V

    .line 6
    sget-object v1, Ly0/f;->r0:[I

    aget v3, v1, p0

    if-eq v3, p1, :cond_3

    .line 7
    aput p1, v1, p0

    if-ge p0, v0, :cond_3

    add-int/lit16 p0, p0, 0x10a

    .line 8
    invoke-static {p0, p1}, Lm1/c;->g(II)V

    .line 9
    :cond_3
    invoke-static {v2}, Ly0/h;->l0(I)V

    .line 10
    invoke-static {}, Ly0/h;->L()V

    :cond_4
    :goto_0
    return-void
.end method
