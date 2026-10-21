.class public Lh0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh0/b$d;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Ljava/lang/Runnable;

.field public final c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lh0/b;->a:I

    .line 3
    new-instance v0, Lh0/b$a;

    invoke-direct {v0, p0}, Lh0/b$a;-><init>(Lh0/b;)V

    iput-object v0, p0, Lh0/b;->b:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lh0/b$b;

    invoke-direct {v0, p0}, Lh0/b$b;-><init>(Lh0/b;)V

    iput-object v0, p0, Lh0/b;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lh0/b$c;

    invoke-direct {v0, p0}, Lh0/b$c;-><init>(Lh0/b;)V

    iput-object v0, p0, Lh0/b;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static R()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x54
        0x45
    .end array-data
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v0, 0x7

    .line 2
    new-array v1, v1, [B

    const/16 v2, 0x41

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v1, v3

    const/16 v2, 0x54

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/16 v5, 0x2d

    aput-byte v5, v1, v2

    const/4 v2, 0x3

    const/16 v5, 0x43

    .line 4
    aput-byte v5, v1, v2

    const/4 v2, 0x4

    const/16 v5, 0x4c

    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v5, 0xd

    .line 5
    aput-byte v5, v1, v2

    add-int/lit8 v2, v0, 0x6

    const/16 v5, 0xa

    aput-byte v5, v1, v2

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v5, v2, 0x5

    .line 6
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lz/a;->d:Lo1/e0;

    invoke-virtual {v0, v1}, Lo1/e0;->i([B)V

    const/4 v0, 0x5

    .line 8
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "0"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "persist.audio.mic.senstivity"

    if-eqz v1, :cond_4

    .line 10
    invoke-static {v2, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-static {v2, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-static {v3}, Lh0/e;->G(I)V

    goto :goto_1

    :cond_4
    const-string v1, "1"

    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 14
    invoke-static {v2, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v4, :cond_5

    .line 15
    invoke-static {v2, v1}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_5
    invoke-static {v4}, Lh0/e;->G(I)V

    goto :goto_1

    :cond_6
    const-string v2, "2"

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 18
    sget p1, Lh0/c;->S:I

    if-nez p1, :cond_7

    .line 19
    invoke-virtual {p0, v1}, Lh0/b;->A(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_7
    invoke-virtual {p0, v0}, Lh0/b;->A(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public B()V
    .locals 1

    const-string v0, "CV0"

    .line 1
    invoke-virtual {p0, v0}, Lh0/b;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public C(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1
    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lh0/c;->h:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x5

    .line 2
    invoke-static {v1}, Lg/f;->f(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x8

    new-array p1, p1, [B

    .line 3
    fill-array-data p1, :array_0

    .line 4
    sget-object v0, Lz/a;->d:Lo1/e0;

    invoke-virtual {v0, p1}, Lo1/e0;->i([B)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x7

    .line 5
    new-array v1, v1, [B

    const/16 v2, 0x41

    const/4 v3, 0x0

    .line 6
    aput-byte v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x54

    aput-byte v4, v1, v2

    const/4 v2, 0x2

    const/16 v5, 0x2d

    aput-byte v5, v1, v2

    const/4 v2, 0x3

    .line 7
    aput-byte v4, v1, v2

    const/4 v2, 0x4

    const/16 v4, 0x45

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v4, 0xd

    .line 8
    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x6

    const/16 v4, 0xa

    aput-byte v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_3

    add-int/lit8 v2, v3, 0x5

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    sget-object p1, Lz/a;->d:Lo1/e0;

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    :goto_1
    return-void

    :array_0
    .array-data 1
        0x41t
        0x54t
        0x2dt
        0x43t
        0x57t
        0x2at
        0xdt
        0xat
    .end array-data
.end method

.method public E()V
    .locals 3

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2, v2}, Lj0/b;->F(I[I[F[Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x4d
        0x42
    .end array-data
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x50
        0x4a
    .end array-data
.end method

.method public G()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x52
    .end array-data
.end method

.method public H(I)V
    .locals 0

    return-void
.end method

.method public I(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->p([I)V

    goto :goto_0

    .line 2
    :cond_1
    sget p1, Lh0/c;->z:I

    if-nez p1, :cond_3

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->p([I)V

    goto :goto_0

    .line 4
    :cond_2
    sget p1, Lh0/c;->z:I

    if-eqz p1, :cond_3

    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->p([I)V

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x43
        0x4f
    .end array-data

    :array_1
    .array-data 4
        0x43
        0x4f
    .end array-data

    :array_2
    .array-data 4
        0x43
        0x4f
    .end array-data
.end method

.method public J(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "MG"

    goto :goto_0

    :cond_0
    const-string p1, "MH"

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lh0/b;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v0, 0x7

    .line 2
    new-array v1, v1, [B

    const/16 v2, 0x41

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v1, v3

    const/16 v2, 0x54

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/16 v4, 0x2d

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    const/16 v4, 0x43

    .line 4
    aput-byte v4, v1, v2

    const/4 v2, 0x4

    const/16 v4, 0x4b

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v4, 0xd

    .line 5
    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x6

    const/16 v4, 0xa

    aput-byte v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v3, 0x5

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    sget-object p1, Lz/a;->d:Lo1/e0;

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    return-void
.end method

.method public L(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->p([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->p([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x53
        0x44
    .end array-data

    :array_1
    .array-data 4
        0x53
        0x54
    .end array-data
.end method

.method public M()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x4d
    .end array-data
.end method

.method public N(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v1, v0, 0x7

    .line 2
    new-array v1, v1, [B

    const/16 v2, 0x41

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v1, v3

    const/16 v2, 0x54

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/16 v4, 0x2d

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    const/16 v4, 0x44

    .line 4
    aput-byte v4, v1, v2

    const/4 v2, 0x4

    const/16 v4, 0x42

    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x5

    const/16 v4, 0xd

    .line 5
    aput-byte v4, v1, v2

    add-int/lit8 v2, v0, 0x6

    const/16 v4, 0xa

    aput-byte v4, v1, v2

    :goto_0
    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v3, 0x5

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BT write data:  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BT"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object p1, Lz/a;->d:Lo1/e0;

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    return-void
.end method

.method public O()V
    .locals 2

    const/4 v0, 0x5

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lh0/e;->s(I)V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->p([I)V

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->p([I)V

    .line 5
    invoke-virtual {p0}, Lh0/b;->reset()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x48
        0x57
        0x31
    .end array-data

    :array_1
    .array-data 4
        0x43
        0x5a
        0x31
    .end array-data
.end method

.method public P(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lh0/c;->E:I

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lh0/b;->P(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v1}, Lh0/b;->P(I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->p([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->p([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x43
        0x44
    .end array-data

    :array_1
    .array-data 4
        0x43
        0x43
    .end array-data
.end method

.method public Q()V
    .locals 1

    const-string v0, "PS"

    .line 1
    invoke-virtual {p0, v0}, Lh0/b;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x53
    .end array-data
.end method

.method public T()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x48
    .end array-data
.end method

.method public U(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/16 v3, 0x4d

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0x4e

    const/4 v5, 0x1

    aput v3, v1, v5

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput v3, v1, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x3

    aput v3, v1, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput v0, v1, v2

    const/4 v0, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aput p1, v1, v0

    invoke-static {v1}, Lz/k;->p([I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->p([I)V

    :cond_2
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x4d
        0x4e
    .end array-data
.end method

.method public V()V
    .locals 3

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2, v2}, Lj0/b;->F(I[I[F[Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x4d
        0x44
    .end array-data
.end method

.method public W(I)V
    .locals 1

    .line 1
    sget v0, Lh0/c;->U:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "CI"

    goto :goto_0

    :cond_1
    const-string p1, "CJ"

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lh0/b;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public final X(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v0, 0x7

    .line 3
    new-array v2, v1, [B

    const/16 v3, 0x41

    const/4 v4, 0x0

    .line 4
    aput-byte v3, v2, v4

    const/16 v3, 0x54

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    const/16 v3, 0x2d

    const/4 v6, 0x2

    aput-byte v3, v2, v6

    const/4 v3, 0x3

    const/16 v6, 0x43

    .line 5
    aput-byte v6, v2, v3

    const/4 v3, 0x4

    const/16 v6, 0x57

    aput-byte v6, v2, v3

    add-int/lit8 v3, v1, -0x2

    const/16 v6, 0xd

    .line 6
    aput-byte v6, v2, v3

    sub-int/2addr v1, v5

    const/16 v3, 0xa

    aput-byte v3, v2, v1

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v1, v4, 0x5

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lz/a;->d:Lo1/e0;

    invoke-virtual {p1, v2}, Lo1/e0;->i([B)V

    :cond_1
    return-void
.end method

.method public Y()V
    .locals 2

    .line 1
    iget v0, p0, Lh0/b;->a:I

    if-nez v0, :cond_0

    const-string v0, "VB"

    .line 2
    invoke-virtual {p0, v0}, Lh0/b;->b0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "VA"

    .line 3
    invoke-virtual {p0, v0}, Lh0/b;->b0(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final Z(C)V
    .locals 4

    .line 1
    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    sput-object v1, Lh0/c;->h:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-ne v0, v2, :cond_1

    .line 4
    sput-object v1, Lh0/c;->h:Ljava/lang/String;

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh0/c;->h:Ljava/lang/String;

    .line 6
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x43

    aput v1, v0, v2

    const/16 v1, 0x58

    aput v1, v0, v3

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 7
    invoke-static {v0}, Lz/k;->p([I)V

    .line 8
    :cond_2
    sget-boolean p1, Lh0/c;->e:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_3

    sget-object p1, Lh0/c;->i:[Ljava/lang/String;

    invoke-static {p1, v3}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    sget-object p1, Lh0/c;->i:[Ljava/lang/String;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    aput-object v1, p1, v3

    .line 10
    sget-object p1, Lh0/c;->i:[Ljava/lang/String;

    invoke-static {v0, p1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array p1, v3, [Ljava/lang/String;

    .line 11
    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    aput-object v1, p1, v2

    invoke-static {v0, p1}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 12
    :goto_0
    sget-object p1, Lh0/d;->c:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    return-void
.end method

.method public a()V
    .locals 5

    const-string v0, "BT"

    const-string v1, "-------->>>  cmdIn"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lh0/b;->d:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lh0/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const-string/jumbo v0, "sys.fyt.bluetooth_type"

    const-string v1, "0"

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lh0/b;->O()V

    const-string v1, "1"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    :cond_0
    const-string v0, ""

    .line 8
    invoke-virtual {p0, v0}, Lh0/b;->g(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v0}, Lh0/b;->U(Ljava/lang/String;)V

    new-array v2, v1, [I

    .line 10
    fill-array-data v2, :array_1

    invoke-static {v2}, Lz/k;->p([I)V

    new-array v2, v1, [I

    .line 11
    fill-array-data v2, :array_2

    invoke-static {v2}, Lz/k;->p([I)V

    new-array v1, v1, [I

    .line 12
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->p([I)V

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x17e

    const/4 v3, 0x0

    const-string v4, "persist.audio.mic.senstivity"

    invoke-static {v4, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lm1/c;->c(II)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh0/b;->A(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x51
        0x4c
    .end array-data

    :array_1
    .array-data 4
        0x43
        0x59
    .end array-data

    :array_2
    .array-data 4
        0x4d
        0x59
    .end array-data

    :array_3
    .array-data 4
        0x56
        0x45
    .end array-data
.end method

.method public a0(II)V
    .locals 5

    .line 1
    iget v0, p0, Lh0/b;->a:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    or-int/2addr p1, v0

    goto :goto_0

    :cond_0
    not-int p1, p1

    and-int/2addr p1, v0

    .line 2
    :goto_0
    iget p2, p0, Lh0/b;->a:I

    if-eq p1, p2, :cond_5

    const-string v0, "VB"

    const-string v1, "VA"

    if-gez p2, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 3
    :goto_1
    invoke-virtual {p0, v0}, Lh0/b;->b0(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const v2, 0xffff

    const-string v3, "muteA2dp: "

    const-string v4, "Sound"

    if-lez p1, :cond_3

    if-nez p2, :cond_3

    .line 4
    invoke-virtual {p0, v1}, Lh0/b;->b0(Ljava/lang/String;)V

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh0/b;->a:I

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " VA"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 6
    invoke-virtual {p0, v0}, Lh0/b;->b0(Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lh0/b;->a:I

    and-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " VB"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_4
    :goto_2
    iput p1, p0, Lh0/b;->a:I

    :cond_5
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "BT"

    const-string v1, "-------->>>  cmdOut"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lh0/b;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lh0/b;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b0(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-gtz v1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    .line 3
    new-array v3, v2, [B

    const/16 v4, 0x41

    .line 4
    aput-byte v4, v3, v0

    const/16 v4, 0x54

    const/4 v5, 0x1

    .line 5
    aput-byte v4, v3, v5

    const/16 v4, 0x2d

    const/4 v5, 0x2

    .line 6
    aput-byte v4, v3, v5

    add-int/lit8 v4, v2, -0x2

    const/16 v5, 0xd

    .line 7
    aput-byte v5, v3, v4

    add-int/lit8 v4, v2, -0x1

    const/16 v5, 0xa

    .line 8
    aput-byte v5, v3, v4

    move v4, v0

    :goto_1
    if-ge v4, v1, :cond_2

    add-int/lit8 v5, v4, 0x3

    .line 9
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v1, Lutil/log/LogType;->c:Lutil/log/LogType;

    invoke-static {v3, v0, v2}, Lo1/b0;->b([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "write ===========>>> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BT"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    sget-object p1, Lz/a;->d:Lo1/e0;

    invoke-virtual {p1, v3}, Lo1/e0;->i([B)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lh0/b;->X(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x50
        0x49
    .end array-data
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x47
    .end array-data
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x54
    .end array-data
.end method

.method public g(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    :try_start_0
    const-string v0, "UTF-8"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 2
    array-length v0, p1

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x2

    .line 3
    new-array v1, v1, [I

    const/16 v2, 0x4d

    const/4 v3, 0x0

    .line 4
    aput v2, v1, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_2

    add-int/lit8 v2, v3, 0x2

    .line 5
    aget-byte v4, p1, v3

    aput v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {v1}, Lz/k;->p([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public h(I)V
    .locals 2

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/16 p1, 0x23

    .line 1
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto/16 :goto_1

    :pswitch_1
    const/16 p1, 0x2a

    .line 2
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto/16 :goto_1

    :pswitch_2
    const/16 p1, 0x2b

    .line 3
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto/16 :goto_1

    :pswitch_3
    const/16 p1, 0x39

    .line 4
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto/16 :goto_1

    :pswitch_4
    const/16 p1, 0x38

    .line 5
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x37

    .line 6
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x36

    .line 7
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    :pswitch_7
    const/16 p1, 0x35

    .line 8
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    :pswitch_8
    const/16 p1, 0x34

    .line 9
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    :pswitch_9
    const/16 p1, 0x33

    .line 10
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x32

    .line 11
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    :pswitch_b
    const/16 p1, 0x31

    .line 12
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    :pswitch_c
    const/16 p1, 0x30

    .line 13
    invoke-virtual {p0, p1}, Lh0/b;->Z(C)V

    goto :goto_1

    .line 14
    :pswitch_d
    sget p1, Lh0/c;->E:I

    if-ne p1, v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lh0/b;->z()V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lh0/b;->e()V

    goto :goto_1

    .line 17
    :pswitch_e
    sget p1, Lh0/c;->E:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 18
    sget-object p1, Lh0/c;->h:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lh0/b;->X(Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lh0/b;->T()V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    .line 21
    invoke-virtual {p0}, Lh0/b;->n()V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2, v2}, Lj0/b;->F(I[I[F[Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x4d
        0x45
    .end array-data
.end method

.method public j()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x50
        0x4b
        0x31
        0x2c
        0x30
        0x2c
        0x66
        0x66
    .end array-data
.end method

.method public k()V
    .locals 3

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2, v2}, Lj0/b;->F(I[I[F[Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x4d
        0x43
    .end array-data
.end method

.method public l()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x4d
        0x58
    .end array-data
.end method

.method public m()V
    .locals 1

    const-string v0, "YI"

    .line 1
    invoke-virtual {p0, v0}, Lh0/b;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x45
    .end array-data
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "YG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh0/b;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .locals 3

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2, v2}, Lj0/b;->F(I[I[F[Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x4d
        0x41
    .end array-data
.end method

.method public q(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "OP1"

    goto :goto_0

    :cond_0
    const-string p1, "OP0"

    .line 1
    :goto_0
    invoke-virtual {p0, p1}, Lh0/b;->b0(Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x50
        0x48
    .end array-data
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x5a
    .end array-data
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x51
    .end array-data
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh0/b;->X(Ljava/lang/String;)V

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x13

    new-array v0, v0, [B

    const/16 v2, 0x41

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const/16 v2, 0x54

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    const/4 v2, 0x2

    const/16 v4, 0x2d

    aput-byte v4, v0, v2

    const/4 v2, 0x3

    const/16 v4, 0x43

    aput-byte v4, v0, v2

    const/4 v2, 0x4

    aput-byte v4, v0, v2

    const/16 v2, 0x11

    const/16 v4, 0xd

    aput-byte v4, v0, v2

    const/16 v2, 0x12

    const/16 v4, 0xa

    aput-byte v4, v0, v2

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v2, v3, 0x5

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    sget-object p1, Lz/a;->d:Lo1/e0;

    invoke-virtual {p1, v0}, Lo1/e0;->i([B)V

    :cond_2
    :goto_1
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v1, v0, 0x7

    .line 3
    new-array v2, v1, [B

    const/16 v3, 0x41

    const/4 v4, 0x0

    .line 4
    aput-byte v3, v2, v4

    const/16 v3, 0x54

    const/4 v5, 0x1

    aput-byte v3, v2, v5

    const/16 v3, 0x2d

    const/4 v6, 0x2

    aput-byte v3, v2, v6

    const/4 v3, 0x3

    const/16 v6, 0x55

    .line 5
    aput-byte v6, v2, v3

    const/4 v3, 0x4

    const/16 v6, 0x50

    aput-byte v6, v2, v3

    add-int/lit8 v3, v1, -0x2

    const/16 v6, 0xd

    .line 6
    aput-byte v6, v2, v3

    sub-int/2addr v1, v5

    const/16 v3, 0xa

    aput-byte v3, v2, v1

    :goto_0
    if-ge v4, v0, :cond_0

    add-int/lit8 v1, v4, 0x5

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lz/a;->d:Lo1/e0;

    invoke-virtual {p1, v2}, Lo1/e0;->i([B)V

    :cond_1
    return-void
.end method

.method public w()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x4d
        0x53
    .end array-data
.end method

.method public x(I)V
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, Lh0/c;->Q:I

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lh0/b;->x(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v1}, Lh0/b;->x(I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->p([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    .line 5
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->p([I)V

    const/16 p1, 0x3e8

    .line 6
    invoke-static {p1}, Ly0/h;->N(I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x50
        0x31
    .end array-data

    :array_1
    .array-data 4
        0x50
        0x30
    .end array-data
.end method

.method public y(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lh0/b;->b0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public z()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->p([I)V

    return-void

    :array_0
    .array-data 4
        0x43
        0x46
    .end array-data
.end method
