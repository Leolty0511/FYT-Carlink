.class public La1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La1/d;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Landroid/util/SparseIntArray;

.field public j:Landroid/util/SparseIntArray;

.field public k:Landroid/util/SparseIntArray;

.field public l:Landroid/util/SparseIntArray;

.field public m:Landroid/util/SparseIntArray;

.field public n:Landroid/util/SparseIntArray;

.field public o:Landroid/util/SparseIntArray;

.field public p:Landroid/util/SparseIntArray;

.field public q:Ljava/lang/String;

.field public r:Lo1/h0;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, La1/a;->a:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, La1/a;->b:I

    const/4 v0, 0x2

    .line 4
    iput v0, p0, La1/a;->c:I

    const/4 v0, 0x3

    .line 5
    iput v0, p0, La1/a;->d:I

    const/4 v0, 0x4

    .line 6
    iput v0, p0, La1/a;->e:I

    const-string v0, "Panel_keys"

    .line 7
    iput-object v0, p0, La1/a;->f:Ljava/lang/String;

    const-string v0, "Panel_keys_mcu"

    .line 8
    iput-object v0, p0, La1/a;->g:Ljava/lang/String;

    const-string v0, "steer_config.properties"

    .line 9
    iput-object v0, p0, La1/a;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, La1/a;->q:Ljava/lang/String;

    .line 11
    new-instance v0, Lo1/h0;

    const-string v1, "Steer"

    invoke-direct {v0, v1}, Lo1/h0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, La1/a;->r:Lo1/h0;

    return-void
.end method

.method public static synthetic k(La1/a;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, La1/a;->q(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A()V
    .locals 8

    .line 1
    iget-object v0, p0, La1/a;->q:Ljava/lang/String;

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, La1/a;->q:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5
    array-length v1, v0

    add-int/2addr v1, v2

    new-array v1, v1, [I

    const/16 v3, 0xc6

    const/4 v4, 0x0

    .line 6
    aput v3, v1, v4

    .line 7
    array-length v3, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    add-int/lit8 v6, v2, 0x1

    const/16 v7, 0x10

    .line 8
    :try_start_0
    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v6

    goto :goto_1

    :catch_0
    add-int/lit8 v2, v6, 0x1

    const/16 v5, 0xff

    .line 9
    aput v5, v1, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v1}, Lz/k;->s([I)V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, La1/a;->q:Ljava/lang/String;

    return-void
.end method

.method public final B()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/f;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/oem/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "steer_config.properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, La1/a;->p()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 1
    sget v0, La1/b;->e:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, La1/c;->g(I)V

    if-ltz p1, :cond_3

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyAdc keyCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  adc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_2
    invoke-virtual {p0, p1, p2}, La1/a;->x(II)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-virtual {p0}, La1/a;->l()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x10
        0x20
    .end array-data
.end method

.method public d(II)I
    .locals 1

    .line 1
    iget-object v0, p0, La1/a;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method public e(III)V
    .locals 2

    .line 1
    sget v0, La1/b;->e:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, La1/c;->g(I)V

    const/16 v0, 0x10

    if-lt p1, v0, :cond_3

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p3}, La1/a;->x(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "11 keyAdc keyCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  adc : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " func : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Steer"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_2
    iget-object p3, p0, La1/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 3

    const/4 v0, 0x1

    const-string v1, "Steer"

    const/4 v2, 0x2

    if-eq p1, v0, :cond_6

    if-eq p1, v2, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget-boolean p1, La1/b;->k:Z

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "\u67e5\u8be2\u5df2\u7ecf\u5b66\u4e60\u7684\u6309\u952e "

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    const-string p1, "----> to mcu search allKey C1 04"

    .line 3
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-array p1, v2, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 5
    :cond_2
    sget-boolean p1, La1/b;->k:Z

    if-eqz p1, :cond_3

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "\u6e05\u9664\u6240\u6709\u5b66\u4e60\u7684\u6309\u952e "

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    const-string p1, "-----> to mcu clear allKey C1 03"

    .line 7
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_3
    invoke-virtual {p0}, La1/a;->l()V

    new-array p1, v2, [I

    .line 9
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :cond_4
    sget-boolean p1, La1/b;->k:Z

    if-eqz p1, :cond_5

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "\u7ed3\u675f\u5b66\u4e60\u5e76\u4fdd\u5b58 "

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    const-string p1, "---->to mcu end study C1 02"

    .line 12
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-array p1, v2, [I

    .line 13
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    .line 14
    invoke-virtual {p0}, La1/a;->u()V

    const/4 p1, 0x0

    .line 15
    sput p1, La1/b;->i:I

    .line 16
    sput p1, La1/b;->j:I

    goto :goto_0

    .line 17
    :cond_6
    sget-boolean p1, La1/b;->k:Z

    if-eqz p1, :cond_7

    .line 18
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "\u5f00\u59cb\u5b66\u4e60"

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    const-string p1, "---> to mcu start study C1 01"

    .line 19
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    new-array p1, v2, [I

    .line 20
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xc1
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xc1
        0x3
    .end array-data

    :array_2
    .array-data 4
        0xc1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xc1
        0x1
    .end array-data
.end method

.method public g(II)V
    .locals 3

    if-ltz p1, :cond_0

    const/16 v0, 0x18

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x23

    if-lt p1, v0, :cond_3

    const/16 v0, 0x37

    if-ge p1, v0, :cond_3

    .line 1
    :cond_1
    sput p1, La1/b;->i:I

    .line 2
    sput p2, La1/b;->j:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xc2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    .line 3
    invoke-static {v0}, Lz/k;->s([I)V

    .line 4
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---> study key keycode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " func = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to mcu 0xC2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_2
    iget-object v0, p0, La1/a;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_3
    return-void
.end method

.method public h(III)V
    .locals 4

    .line 1
    iget-object v0, p0, La1/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, p1, -0x3c

    if-ltz v0, :cond_2

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/16 v2, 0x32

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x2

    aput p3, v1, v0

    .line 2
    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget-boolean p3, La1/b;->k:Z

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLongClickfunc keyCode : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " func : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "Steer"

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_1
    iget-object p3, p0, La1/a;->n:Landroid/util/SparseIntArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p3, 0xb

    new-array v0, v0, [I

    aput p1, v0, v3

    aput p2, v0, v2

    .line 5
    invoke-static {p3, v0}, La1/c;->l(I[I)V

    :cond_2
    return-void
.end method

.method public i(II)V
    .locals 5

    .line 1
    sget v0, La1/b;->e:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 2
    invoke-static {v0}, La1/c;->g(I)V

    add-int/lit8 v0, p1, -0x3c

    if-ltz v0, :cond_2

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/16 v3, 0x35

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    .line 3
    invoke-static {v2}, Lz/k;->s([I)V

    .line 4
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClickfunc keyCode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " func : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Steer"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_1
    iget-object v0, p0, La1/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0xa

    new-array v1, v1, [I

    aput p1, v1, v4

    aput p2, v1, v3

    .line 6
    invoke-static {v0, v1}, La1/c;->l(I[I)V

    :cond_2
    return-void
.end method

.method public j(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p1, La1/b;->g:I

    if-nez p1, :cond_1

    .line 2
    invoke-virtual {p0, v2}, La1/a;->j(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, La1/a;->j(I)V

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {v2}, La1/c;->e(I)V

    new-array p1, v1, [I

    .line 5
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    new-array p1, v1, [I

    .line 6
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {v0}, La1/c;->e(I)V

    new-array p1, v1, [I

    .line 8
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x10
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x10
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x10
        0x0
    .end array-data
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-object v0, p0, La1/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2
    iget-object v0, p0, La1/a;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3
    iget-object v0, p0, La1/a;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4
    iget-object v0, p0, La1/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 5
    iget-object v0, p0, La1/a;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 6
    iget-object v0, p0, La1/a;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 7
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    .line 8
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lo1/h0;->v(I)V

    .line 9
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lo1/h0;->v(I)V

    new-array v0, v1, [I

    const/16 v2, 0xb

    .line 10
    invoke-static {v2, v0}, La1/c;->l(I[I)V

    new-array v0, v1, [I

    const/16 v1, 0xa

    .line 11
    invoke-static {v1, v0}, La1/c;->l(I[I)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, La1/a;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2
    iget-object v0, p0, La1/a;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 3
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo1/h0;->v(I)V

    return-void
.end method

.method public n([B)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2
    iget-object v1, p0, La1/a;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Panel_keys"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lo1/s0;->d([B)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Panel_keys_mcu"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 9
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sdcard/steer_config.properties"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, p1

    move-object p1, v0

    .line 12
    :goto_1
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :goto_2
    if-eqz v1, :cond_2

    .line 13
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 14
    :catch_3
    :cond_2
    throw p1
.end method

.method public o()V
    .locals 3

    .line 1
    new-instance v0, La1/a$a;

    invoke-direct {v0, p0}, La1/a$a;-><init>(La1/a;)V

    const-wide/16 v1, 0x32

    invoke-static {v0, v1, v2}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final p()V
    .locals 0

    .line 1
    invoke-virtual {p0}, La1/a;->r()V

    .line 2
    invoke-virtual {p0}, La1/a;->s()V

    return-void
.end method

.method public final q(Ljava/lang/String;)Z
    .locals 9

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 6
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 7
    :catch_0
    :cond_1
    throw p1

    :catch_1
    move-object v3, v2

    :catch_2
    if-eqz v3, :cond_2

    .line 8
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_2
    move p1, v1

    :catch_4
    :goto_1
    if-eqz p1, :cond_4

    const-string v3, "Panel_keys"

    .line 9
    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 11
    :try_start_5
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 13
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 15
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0xa

    .line 16
    invoke-static {v6, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_2

    .line 17
    :catch_5
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->clear()V

    move p1, v1

    :cond_3
    if-eqz p1, :cond_4

    const-string v3, "Panel_keys_mcu"

    .line 18
    invoke-virtual {v0, v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 20
    iput-object v4, p0, La1/a;->o:Landroid/util/SparseIntArray;

    .line 21
    iput-object v0, p0, La1/a;->q:Ljava/lang/String;

    :cond_4
    move v1, p1

    .line 22
    :cond_5
    iget-object p1, p0, La1/a;->o:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, La1/a;->p:Landroid/util/SparseIntArray;

    .line 23
    invoke-virtual {p0}, La1/a;->u()V

    return v1
.end method

.method public final r()V
    .locals 3

    .line 1
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->o:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lo1/h0;->h(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, La1/a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, La1/a;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lo1/h0;->q(II)V

    .line 6
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    .line 7
    :cond_1
    iget-object v0, p0, La1/a;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->p:Landroid/util/SparseIntArray;

    .line 8
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load panelKeyFucs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/a;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load learningKeyFuncs : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La1/a;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->k:Landroid/util/SparseIntArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->l:Landroid/util/SparseIntArray;

    .line 3
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->i:Landroid/util/SparseIntArray;

    .line 4
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->j:Landroid/util/SparseIntArray;

    .line 5
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lo1/h0;->k(I)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->m:Landroid/util/SparseIntArray;

    .line 6
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->n:Landroid/util/SparseIntArray;

    .line 7
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load learnedFuncs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/a;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load defFuncs : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La1/a;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load longClickFuncs : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La1/a;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public save()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    invoke-virtual {p0}, La1/a;->v()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x10
        0x21
    .end array-data
.end method

.method public t(I)V
    .locals 3

    .line 1
    iget-object v0, p0, La1/a;->m:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2
    sget-boolean v1, La1/b;->k:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ====>>  onLongClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " func : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Steer"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz v0, :cond_1

    .line 3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc/e;->c(I)Z

    :cond_1
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, La1/a;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->o:Landroid/util/SparseIntArray;

    .line 2
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----->>>  saveMcuKeyData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/a;->o:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " shareUtils: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/a;->r:Lo1/h0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    iget-object v1, p0, La1/a;->o:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 5
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    return-void
.end method

.method public final v()V
    .locals 5

    .line 1
    iget-object v0, p0, La1/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->k:Landroid/util/SparseIntArray;

    .line 2
    iget-object v0, p0, La1/a;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->i:Landroid/util/SparseIntArray;

    .line 3
    iget-object v0, p0, La1/a;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, La1/a;->m:Landroid/util/SparseIntArray;

    .line 4
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    iget-object v1, p0, La1/a;->k:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 5
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    iget-object v1, p0, La1/a;->i:Landroid/util/SparseIntArray;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 6
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    iget-object v1, p0, La1/a;->m:Landroid/util/SparseIntArray;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Lo1/h0;->s(ILandroid/util/SparseIntArray;)V

    .line 7
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    .line 8
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    invoke-virtual {v0, v3}, Lo1/h0;->e(I)V

    .line 9
    iget-object v0, p0, La1/a;->r:Lo1/h0;

    invoke-virtual {v0, v4}, Lo1/h0;->e(I)V

    .line 10
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save learnedFuncs : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, La1/a;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Steer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save defFuncs : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La1/a;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save longClickFuncs : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, La1/a;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public w(II)V
    .locals 3

    .line 1
    iget-object v0, p0, La1/a;->l:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2
    sget p2, La1/b;->e:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x32

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p1, -0x3c

    if-ltz p2, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput p2, v1, v0

    const/4 p2, 0x2

    aput v2, v1, p2

    .line 3
    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    iget-object v1, p0, La1/a;->n:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    const/16 v1, 0xb

    new-array p2, p2, [I

    aput p1, p2, v2

    aput v2, p2, v0

    .line 5
    invoke-static {v1, p2}, La1/c;->l(I[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public x(II)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x8a

    aput v1, p1, v3

    aput p2, p1, v0

    .line 1
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_2
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x89

    aput v1, p1, v3

    aput p2, p1, v0

    .line 2
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x88

    aput v1, p1, v3

    aput p2, p1, v0

    .line 3
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_4
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x87

    aput v1, p1, v3

    aput p2, p1, v0

    .line 4
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_5
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x86

    aput v1, p1, v3

    aput p2, p1, v0

    .line 5
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_6
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x85

    aput v1, p1, v3

    aput p2, p1, v0

    .line 6
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_7
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x84

    aput v1, p1, v3

    aput p2, p1, v0

    .line 7
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_8
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x83

    aput v1, p1, v3

    aput p2, p1, v0

    .line 8
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_9
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x82

    aput v1, p1, v3

    aput p2, p1, v0

    .line 9
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x81

    aput v1, p1, v3

    aput p2, p1, v0

    .line 10
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x80

    aput v1, p1, v3

    aput p2, p1, v0

    .line 11
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_c
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x1d

    aput v1, p1, v3

    aput p2, p1, v0

    .line 12
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_d
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x1c

    aput v1, p1, v3

    aput p2, p1, v0

    .line 13
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_e
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x1b

    aput v1, p1, v3

    aput p2, p1, v0

    .line 14
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_f
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x1a

    aput v1, p1, v3

    aput p2, p1, v0

    .line 15
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_10
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x19

    aput v1, p1, v3

    aput p2, p1, v0

    .line 16
    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_11
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x18

    aput v1, p1, v3

    aput p2, p1, v0

    .line 17
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_12
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x16

    aput v1, p1, v3

    aput p2, p1, v0

    .line 18
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_13
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x17

    aput v1, p1, v3

    aput p2, p1, v0

    .line 19
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_14
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x15

    aput v1, p1, v3

    aput p2, p1, v0

    .line 20
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_15
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x14

    aput v1, p1, v3

    aput p2, p1, v0

    .line 21
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_16
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x13

    aput v1, p1, v3

    aput p2, p1, v0

    .line 22
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_17
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x12

    aput v1, p1, v3

    aput p2, p1, v0

    .line 23
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_18
    new-array p1, v1, [I

    aput v3, p1, v2

    const/16 v1, 0x11

    aput v1, p1, v3

    aput p2, p1, v0

    .line 24
    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    move v2, v3

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
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
    .end packed-switch
.end method

.method public y(II)V
    .locals 1

    .line 1
    iget-object v0, p0, La1/a;->p:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public z(I)V
    .locals 3

    .line 1
    iget-object v0, p0, La1/a;->i:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 2
    sget-boolean v1, La1/b;->k:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   ====>>  steerEvent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " func : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Steer"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ltz v0, :cond_1

    .line 3
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    invoke-virtual {p1, v0}, Lc/e;->c(I)Z

    :cond_1
    return-void
.end method
