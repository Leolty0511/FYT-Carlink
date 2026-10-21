.class public Lk0/ml;
.super Lk0/lt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/ml$c;
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:[[I

.field public e:Z

.field public f:Lk0/ml$c;

.field public g:I

.field public h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk0/ml;->c:I

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

    new-array v2, v2, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v1, v3

    iput-object v1, p0, Lk0/ml;->d:[[I

    .line 4
    iput-boolean v0, p0, Lk0/ml;->e:Z

    .line 5
    iput v0, p0, Lk0/ml;->g:I

    .line 6
    new-instance v0, Lk0/ml$a;

    invoke-direct {v0, p0}, Lk0/ml$a;-><init>(Lk0/ml;)V

    iput-object v0, p0, Lk0/ml;->h:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/ml$b;

    invoke-direct {v0, p0}, Lk0/ml$b;-><init>(Lk0/ml;)V

    iput-object v0, p0, Lk0/ml;->i:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x10
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x11
        0x22
    .end array-data

    :array_4
    .array-data 4
        0x12
        0x23
    .end array-data

    :array_5
    .array-data 4
        0x13
        0x20
    .end array-data

    :array_6
    .array-data 4
        0x14
        0x21
    .end array-data

    :array_7
    .array-data 4
        0x15
        0x22
    .end array-data

    :array_8
    .array-data 4
        0x16
        0x23
    .end array-data

    :array_9
    .array-data 4
        0x17
        0x20
    .end array-data

    :array_a
    .array-data 4
        0x18
        0x21
    .end array-data

    :array_b
    .array-data 4
        0x19
        0x1e
    .end array-data

    :array_c
    .array-data 4
        0x1a
        0x1f
    .end array-data

    :array_d
    .array-data 4
        0x40
        0x1f
    .end array-data
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v1, 0x0

    iput-object v1, v0, Lk0/mt;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    .line 2
    iput v2, v0, Lk0/mt;->e:I

    const/4 v3, 0x0

    .line 3
    iput v3, v0, Lk0/mt;->f:I

    .line 4
    iput v3, v0, Lk0/mt;->i:I

    .line 5
    iput v3, v0, Lk0/mt;->l:I

    .line 6
    iput v3, v0, Lk0/mt;->g:I

    .line 7
    iput v3, v0, Lk0/mt;->o:I

    .line 8
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v3, p0, Lk0/ml;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    new-instance v0, Lk0/ml$c;

    invoke-direct {v0, p0, v1}, Lk0/ml$c;-><init>(Lk0/ml;Lk0/ml$a;)V

    iput-object v0, p0, Lk0/ml;->f:Lk0/ml$c;

    .line 10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "FOURCAMERA2_BROADCAST_RECV"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/ml;->f:Lk0/ml$c;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public U2([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x8

    const/4 v1, 0x2

    const/16 v2, 0xff

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p3, v1, :cond_6

    if-eq p3, v3, :cond_1

    const/16 v0, 0x71

    if-eq p3, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    add-int/lit8 p3, p2, 0x4

    .line 2
    aget-byte p3, p1, p3

    add-int/lit16 p3, p3, 0x7d0

    and-int/2addr p3, v2

    add-int/lit8 v0, p2, 0x5

    .line 3
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    add-int/lit8 v1, p2, 0x6

    .line 4
    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bagoo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ".V"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p2, 0x8

    aget-byte p3, p1, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p3, p2, 0x9

    aget-byte p3, p1, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0xa

    aget-byte p1, p1, p2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    add-int/lit8 p3, p2, 0x5

    .line 7
    aget-byte p3, p1, p3

    const/16 v6, 0x80

    const/16 v7, 0x7f

    invoke-static {p3, v4, v6, v5, v7}, Lk0/qt;->m(IIIZI)V

    add-int/lit8 p3, p2, 0x7

    .line 8
    aget-byte v6, p1, p3

    shr-int/2addr v6, v4

    and-int/2addr v6, v3

    invoke-static {v6}, Ll0/c0;->s1(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->R2(I)V

    .line 9
    aget-byte v6, p1, p3

    shr-int/2addr v6, v1

    and-int/2addr v6, v3

    invoke-static {v6}, Ll0/c0;->s1(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->S2(I)V

    .line 10
    aget-byte v6, p1, p3

    const/4 v7, 0x4

    shr-int/2addr v6, v7

    and-int/2addr v6, v3

    invoke-static {v6}, Ll0/c0;->s1(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->T2(I)V

    .line 11
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v3

    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->U2(I)V

    add-int/lit8 p3, p2, 0x6

    .line 12
    aget-byte v6, p1, p3

    shr-int/2addr v6, v4

    and-int/2addr v6, v3

    .line 13
    aget-byte v8, p1, p3

    shr-int/2addr v8, v1

    and-int/2addr v8, v3

    .line 14
    aget-byte v9, p1, p3

    shr-int/2addr v9, v7

    and-int/2addr v9, v3

    .line 15
    aget-byte p3, p1, p3

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v3

    if-nez v6, :cond_2

    if-nez v8, :cond_2

    if-nez v9, :cond_2

    if-nez p3, :cond_2

    .line 16
    invoke-static {v4}, Lu0/d;->C2(I)V

    goto :goto_0

    .line 17
    :cond_2
    sget v10, Ll0/c0;->g:I

    if-ne v10, v6, :cond_3

    sget v10, Ll0/c0;->h:I

    if-ne v10, v8, :cond_3

    sget v10, Ll0/c0;->i:I

    if-ne v10, v9, :cond_3

    sget v10, Ll0/c0;->j:I

    if-eq v10, p3, :cond_4

    .line 18
    :cond_3
    sget v10, Lu0/b;->o:I

    if-nez v10, :cond_4

    .line 19
    invoke-static {v5}, Lu0/d;->C2(I)V

    .line 20
    sput v7, Ll0/c0;->k:I

    .line 21
    sget-object v10, Ll0/c0;->l:Ljava/lang/Runnable;

    invoke-static {v10}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 22
    :cond_4
    :goto_0
    sput v6, Ll0/c0;->g:I

    .line 23
    sput v8, Ll0/c0;->h:I

    .line 24
    sput v9, Ll0/c0;->i:I

    .line 25
    sput p3, Ll0/c0;->j:I

    .line 26
    invoke-static {v6}, Ll0/c0;->s1(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->D2(I)V

    .line 27
    invoke-static {v8}, Ll0/c0;->s1(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->E2(I)V

    .line 28
    invoke-static {v9}, Ll0/c0;->s1(I)I

    move-result v6

    invoke-static {v6}, Lu0/d;->F2(I)V

    .line 29
    invoke-static {p3}, Ll0/c0;->s1(I)I

    move-result p3

    invoke-static {p3}, Lu0/d;->G2(I)V

    add-int/2addr p2, v0

    .line 30
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    .line 31
    sget p2, Lk0/nt;->W:I

    if-nez p2, :cond_5

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 32
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 33
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_5
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x1

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 34
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x0

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 35
    invoke-static {v1, p2}, Lk0/qt;->y0(I[I)V

    :goto_1
    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x3

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 36
    invoke-static {v7, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x2

    and-int/2addr p3, v5

    aput p3, p2, v4

    .line 37
    invoke-static {v3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/lit8 p3, p1, 0x4

    and-int/2addr p3, v5

    aput p3, p2, v4

    const/4 p3, 0x5

    .line 38
    invoke-static {p3, p2}, Lk0/qt;->y0(I[I)V

    new-array p2, v5, [I

    shr-int/2addr p1, p3

    and-int/2addr p1, v5

    aput p1, p2, v4

    .line 39
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_6

    :cond_6
    add-int/lit8 p3, p2, 0x2

    .line 40
    aget-byte p3, p1, p3

    add-int/2addr p2, v3

    .line 41
    aget-byte p1, p1, p2

    and-int/lit16 p2, p3, 0xff

    .line 42
    iput p2, p0, Lk0/ml;->c:I

    move p2, v4

    .line 43
    :goto_2
    iget-object p3, p0, Lk0/ml;->d:[[I

    array-length v1, p3

    if-ge p2, v1, :cond_8

    .line 44
    iget v1, p0, Lk0/ml;->c:I

    aget-object v3, p3, p2

    aget v3, v3, v4

    if-ne v1, v3, :cond_7

    if-eqz v1, :cond_8

    .line 45
    iput p2, p0, Lk0/ml;->b:I

    goto :goto_3

    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 46
    :cond_8
    :goto_3
    iget v1, p0, Lk0/ml;->c:I

    const/16 v3, 0x19

    if-eq v1, v3, :cond_f

    const/16 v0, 0x1a

    if-eq v1, v0, :cond_d

    const/16 v0, 0x40

    if-eq v1, v0, :cond_b

    and-int/2addr p1, v2

    if-ne p1, v5, :cond_9

    .line 47
    array-length p1, p3

    if-ge p2, p1, :cond_11

    .line 48
    aget-object p1, p3, p2

    aget p1, p1, v5

    invoke-static {p1, v4}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_9
    if-nez p1, :cond_11

    .line 49
    iget p1, p0, Lk0/ml;->b:I

    array-length p2, p3

    if-ge p1, p2, :cond_a

    if-eq p1, v2, :cond_a

    .line 50
    aget-object p1, p3, p1

    aget p1, p1, v5

    invoke-static {p1, v5}, Ll0/b0;->l0(II)V

    .line 51
    :cond_a
    iput v2, p0, Lk0/ml;->b:I

    goto :goto_6

    :cond_b
    and-int/2addr p1, v2

    if-ne p1, v5, :cond_11

    .line 52
    iget-boolean p1, p0, Lk0/ml;->e:Z

    if-eqz p1, :cond_c

    .line 53
    invoke-static {v5}, Lu0/d;->b0(I)V

    goto :goto_6

    .line 54
    :cond_c
    invoke-static {v4}, Lu0/d;->b0(I)V

    goto :goto_6

    :cond_d
    move p2, v4

    :goto_4
    and-int/lit16 p3, p1, 0xff

    const/4 v0, 0x7

    if-ge p2, p3, :cond_e

    .line 55
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 56
    :cond_e
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    goto :goto_6

    :cond_f
    move p2, v4

    :goto_5
    and-int/lit16 p3, p1, 0xff

    if-ge p2, p3, :cond_10

    .line 57
    invoke-static {v0, v4}, Ll0/b0;->l0(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 58
    :cond_10
    invoke-static {v0, v5}, Ll0/b0;->l0(II)V

    :cond_11
    :goto_6
    return-void
.end method

.method public W2()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lk0/ml;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/ml;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/ml;->f:Lk0/ml$c;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iget-object v1, p0, Lk0/ml;->f:Lk0/ml$c;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 0

    if-ltz p2, :cond_0

    const/4 p3, 0x7

    if-ge p2, p3, :cond_0

    .line 1
    sget-object p3, Lk0/nt;->g:[I

    aget p3, p3, p2

    invoke-static {p1, p2, p3}, Ly/e;->a(Ly/b;II)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
