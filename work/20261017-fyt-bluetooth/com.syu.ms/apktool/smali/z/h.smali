.class public Lz/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static j:Z = false


# instance fields
.field public a:J

.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:I

.field public h:I

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lz/h;->a:J

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 3
    iput-object v0, p0, Lz/h;->b:[B

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lz/h;->c:I

    .line 5
    iput v0, p0, Lz/h;->d:I

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lz/h;->e:I

    .line 7
    iput-boolean v0, p0, Lz/h;->f:Z

    .line 8
    iput v0, p0, Lz/h;->g:I

    .line 9
    iput v0, p0, Lz/h;->h:I

    .line 10
    iput-boolean v1, p0, Lz/h;->i:Z

    .line 11
    invoke-virtual {p0}, Lz/h;->d()Z

    move-result v0

    iput-boolean v0, p0, Lz/h;->i:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lh0/e;->k(Ljava/lang/String;)V

    .line 2
    invoke-static {v0}, Lh0/e;->i(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lh0/e;->j(Ljava/lang/String;)V

    return-void
.end method

.method public b([B)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    .line 1
    array-length v3, p1

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget v3, p0, Lz/h;->c:I

    array-length v4, p1

    add-int/2addr v3, v4

    const/16 v4, 0x400

    if-le v3, v4, :cond_1

    .line 3
    iput v2, p0, Lz/h;->c:I

    .line 4
    iput v1, p0, Lz/h;->e:I

    .line 5
    iput v2, p0, Lz/h;->d:I

    .line 6
    iput-boolean v2, p0, Lz/h;->f:Z

    .line 7
    :cond_1
    iget-object v3, p0, Lz/h;->b:[B

    iget v4, p0, Lz/h;->c:I

    array-length v5, p1

    invoke-static {p1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iget v3, p0, Lz/h;->c:I

    array-length p1, p1

    add-int/2addr v3, p1

    iput v3, p0, Lz/h;->c:I

    .line 9
    iget p1, p0, Lz/h;->e:I

    if-gt v3, p1, :cond_2

    return-void

    .line 10
    :cond_2
    :goto_0
    iget v3, p0, Lz/h;->c:I

    if-ge p1, v3, :cond_6

    .line 11
    iget-object v3, p0, Lz/h;->b:[B

    add-int/lit8 v4, p1, -0x1

    aget-byte v5, v3, v4

    const/16 v6, 0xd

    if-ne v5, v6, :cond_5

    aget-byte v5, v3, p1

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    .line 12
    iget-boolean v5, p0, Lz/h;->f:Z

    if-nez v5, :cond_3

    .line 13
    iget v5, p0, Lz/h;->d:I

    sub-int v6, p1, v5

    invoke-virtual {p0, v3, v5, v6}, Lz/h;->e([BII)V

    .line 14
    iput-boolean v1, p0, Lz/h;->f:Z

    .line 15
    iput v4, p0, Lz/h;->d:I

    goto :goto_1

    .line 16
    :cond_3
    iget v5, p0, Lz/h;->d:I

    sub-int v6, p1, v5

    const/4 v7, 0x5

    if-ge v6, v7, :cond_4

    .line 17
    iput v4, p0, Lz/h;->d:I

    goto :goto_1

    .line 18
    :cond_4
    iput-boolean v2, p0, Lz/h;->f:Z

    add-int/lit8 v4, v5, 0x2

    sub-int v5, p1, v5

    sub-int/2addr v5, v0

    .line 19
    invoke-virtual {p0, v3, v4, v5}, Lz/h;->e([BII)V

    add-int/lit8 v3, p1, 0x1

    .line 20
    iput v3, p0, Lz/h;->d:I

    :goto_1
    add-int/lit8 p1, p1, 0x1

    :cond_5
    add-int/2addr p1, v1

    goto :goto_0

    .line 21
    :cond_6
    iget p1, p0, Lz/h;->d:I

    if-eqz p1, :cond_8

    if-ne p1, v3, :cond_7

    .line 22
    iput v2, p0, Lz/h;->c:I

    goto :goto_2

    :cond_7
    sub-int/2addr v3, p1

    .line 23
    iput v3, p0, Lz/h;->c:I

    .line 24
    iget-object v0, p0, Lz/h;->b:[B

    invoke-static {v0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 25
    :goto_2
    iput v2, p0, Lz/h;->d:I

    .line 26
    :cond_8
    iget p1, p0, Lz/h;->c:I

    if-le p1, v1, :cond_9

    .line 27
    iput p1, p0, Lz/h;->e:I

    goto :goto_3

    .line 28
    :cond_9
    iput v1, p0, Lz/h;->e:I

    :goto_3
    return-void

    :cond_a
    :goto_4
    const-wide/16 v3, 0x64

    .line 29
    invoke-static {v3, v4}, La/i;->a0(J)V

    .line 30
    invoke-static {}, Lg/e;->a()I

    move-result p1

    if-ne p1, v0, :cond_b

    sget-boolean p1, Lz/h;->j:Z

    if-eqz p1, :cond_b

    .line 31
    iget p1, p0, Lz/h;->h:I

    add-int/2addr p1, v1

    iput p1, p0, Lz/h;->h:I

    .line 32
    sput-boolean v2, Lz/h;->j:Z

    if-ne p1, v0, :cond_b

    const-string/jumbo p1, "\u6536\u5230\u7a7a\u6570\u636e \u590d\u4f4d\u84dd\u7259\uff01\uff01\uff01"

    .line 33
    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object p1

    invoke-virtual {p1}, Lcom/syu/jni/ControlNative;->fytResetBluetooth()I

    .line 35
    iput v2, p0, Lz/h;->h:I

    :cond_b
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "he"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " "

    if-nez v1, :cond_5

    const-string v1, "iw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lz/h;->i:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 10
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_5
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_6
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    :goto_1
    return-object p1
.end method

.method public d()Z
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public final e([BII)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    .line 1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IVT DATA : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->b([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BT"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v5, Lutil/log/LogType;->c:Lutil/log/LogType;

    invoke-static/range {p1 .. p3}, Lo1/b0;->b([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    iput v3, v1, Lz/h;->h:I

    .line 4
    aget-byte v5, v0, p2

    const/16 v6, 0x47

    const/16 v7, 0x42

    const/16 v8, 0x50

    const/16 v12, 0x30

    const/4 v13, 0x1

    const/4 v14, 0x2

    if-eq v5, v6, :cond_24

    const/16 v15, 0x49

    const/16 v9, 0x4e

    const/16 v16, 0x5

    const-string v6, ""

    const-string v11, "UTF-8"

    const/16 v17, 0x3

    const/4 v10, 0x4

    if-eq v5, v15, :cond_1a

    const/16 v4, 0x4d

    if-eq v5, v4, :cond_11

    if-eq v5, v8, :cond_5

    const/16 v4, 0x52

    if-eq v5, v4, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v4, p2, 0x1

    .line 5
    aget-byte v4, v0, v4

    if-eq v4, v7, :cond_4

    if-eq v4, v9, :cond_2

    if-eq v4, v8, :cond_1

    goto/16 :goto_8

    .line 6
    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v4, v0, v5, v2, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v0, "\\|"

    .line 7
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8
    array-length v2, v0

    if-ne v2, v14, :cond_30

    .line 9
    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 10
    invoke-static {v2}, Lh0/e;->m(I)V

    .line 11
    aget-object v0, v0, v13

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 12
    invoke-static {v0}, Lh0/e;->o(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 14
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v4, v0, v5, v2, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v0, "\\|"

    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    array-length v2, v0

    if-le v2, v14, :cond_3

    .line 17
    aget-object v2, v0, v3

    invoke-static {v2}, Lh0/e;->k(Ljava/lang/String;)V

    .line 18
    aget-object v2, v0, v13

    invoke-static {v2}, Lh0/e;->j(Ljava/lang/String;)V

    .line 19
    :cond_3
    array-length v2, v0

    if-le v2, v10, :cond_30

    .line 20
    aget-object v2, v0, v17

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 21
    invoke-static {v2}, Lh0/e;->n(I)V

    .line 22
    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 23
    invoke-static {v0}, Lh0/e;->p(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    .line 25
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lz/h;->a:J

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v2, p2, 0x1

    .line 26
    aget-byte v2, v0, v2

    if-eq v2, v7, :cond_7

    const/16 v0, 0x43

    if-eq v2, v0, :cond_6

    goto/16 :goto_8

    .line 27
    :cond_6
    invoke-static {v13}, Lh0/e;->L(I)V

    goto/16 :goto_8

    .line 28
    :cond_7
    invoke-static {v14}, Lh0/e;->L(I)V

    add-int/lit8 v2, p2, 0x5

    .line 29
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, p2, 0x6

    .line 30
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p2, 0x7

    .line 31
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, p2, 0x8

    .line 32
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    if-ne v2, v12, :cond_8

    if-ne v4, v12, :cond_8

    if-ne v5, v12, :cond_8

    if-ne v7, v12, :cond_8

    goto/16 :goto_8

    :cond_8
    if-lt v2, v12, :cond_30

    if-lt v4, v12, :cond_30

    if-lt v5, v12, :cond_30

    if-ge v7, v12, :cond_9

    goto/16 :goto_8

    :cond_9
    sub-int/2addr v2, v12

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v4, v12

    add-int/2addr v2, v4

    sub-int/2addr v5, v12

    mul-int/lit8 v5, v5, 0xa

    sub-int/2addr v7, v12

    add-int/2addr v5, v7

    add-int/lit8 v4, p2, 0x9

    add-int v7, v4, v2

    .line 33
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v9, v3

    :goto_0
    if-ge v4, v7, :cond_e

    if-ge v9, v2, :cond_e

    .line 34
    aget-byte v10, v0, v4

    and-int/lit16 v10, v10, 0x80

    if-nez v10, :cond_a

    .line 35
    aget-byte v10, v0, v4

    int-to-char v10, v10

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 36
    :cond_a
    aget-byte v10, v0, v4

    and-int/lit16 v10, v10, 0xe0

    const/16 v12, 0xc0

    if-ne v10, v12, :cond_b

    .line 37
    aget-byte v10, v0, v4

    and-int/lit8 v10, v10, 0x3f

    shl-int/lit8 v10, v10, 0x6

    int-to-char v10, v10

    add-int/lit8 v12, v4, 0x1

    .line 38
    aget-byte v12, v0, v12

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 39
    :cond_b
    aget-byte v10, v0, v4

    and-int/lit16 v10, v10, 0xf0

    const/16 v12, 0xe0

    if-ne v10, v12, :cond_c

    .line 40
    aget-byte v10, v0, v4

    and-int/lit8 v10, v10, 0x1f

    const/16 v12, 0xc

    shl-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v12, v4, 0x1

    .line 41
    aget-byte v12, v0, v12

    and-int/lit8 v12, v12, 0x3f

    shl-int/lit8 v12, v12, 0x6

    or-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v12, v4, 0x2

    .line 42
    aget-byte v12, v0, v12

    and-int/lit8 v12, v12, 0x3f

    or-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 43
    :cond_c
    aget-byte v10, v0, v4

    and-int/lit16 v10, v10, 0xf8

    const/16 v12, 0xf0

    if-ne v10, v12, :cond_d

    add-int/lit8 v10, v4, 0x1

    .line 44
    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0x3f

    const/16 v12, 0xc

    shl-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v12, v4, 0x2

    .line 45
    aget-byte v12, v0, v12

    and-int/lit8 v12, v12, 0x3f

    shl-int/lit8 v12, v12, 0x6

    int-to-char v12, v12

    or-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v12, v4, 0x3

    .line 46
    aget-byte v12, v0, v12

    and-int/lit8 v12, v12, 0x3f

    int-to-char v12, v12

    or-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    :cond_d
    add-int/lit8 v10, v4, 0x2

    .line 47
    aget-byte v10, v0, v10

    and-int/lit8 v10, v10, 0x3f

    const/16 v12, 0xc

    shl-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v12, v4, 0x3

    .line 48
    aget-byte v12, v0, v12

    and-int/lit8 v12, v12, 0x3f

    shl-int/lit8 v12, v12, 0x6

    int-to-char v12, v12

    or-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v12, v4, 0x4

    .line 49
    aget-byte v12, v0, v12

    and-int/lit8 v12, v12, 0x3f

    int-to-char v12, v12

    or-int/2addr v10, v12

    int-to-char v10, v10

    add-int/lit8 v4, v4, 0x5

    .line 50
    :goto_1
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 51
    :cond_e
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v7, v5, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 52
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v2, v6

    .line 53
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    const-string/jumbo v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 56
    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v7, v4, 0x1

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    if-le v4, v8, :cond_f

    .line 58
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v6, v4

    .line 59
    :cond_f
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_10
    move-object v7, v6

    :goto_3
    const/16 v4, 0x16

    new-array v5, v14, [Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v0, v6, v7}, Lz/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    aput-object v2, v5, v13

    const/4 v2, 0x0

    invoke-static {v4, v2, v2, v5}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_11
    add-int/lit8 v4, p2, 0x1

    .line 61
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-eq v4, v5, :cond_19

    const/16 v5, 0x55

    if-eq v4, v5, :cond_17

    const/16 v5, 0x58

    if-eq v4, v5, :cond_15

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_14

    const/16 v5, 0x4d

    if-eq v4, v5, :cond_13

    if-eq v4, v9, :cond_12

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_8

    .line 62
    :pswitch_0
    invoke-static {v3}, Lh0/e;->B(I)V

    goto/16 :goto_8

    .line 63
    :pswitch_1
    invoke-static {v13}, Lh0/e;->B(I)V

    goto/16 :goto_8

    .line 64
    :pswitch_2
    invoke-static {v13}, Lh0/e;->l(I)V

    goto/16 :goto_8

    .line 65
    :pswitch_3
    invoke-static {v3}, Lh0/e;->l(I)V

    goto/16 :goto_8

    :cond_12
    if-le v2, v14, :cond_30

    .line 66
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 67
    invoke-static {v3}, Lh0/e;->S(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_13
    if-le v2, v14, :cond_30

    .line 68
    :try_start_3
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v3, v0, v4, v2, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 70
    :goto_4
    invoke-static {v6}, Lh0/e;->F(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    if-le v2, v14, :cond_30

    .line 71
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 72
    invoke-static {v3}, Lh0/e;->E(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_15
    const/16 v3, 0xf

    if-gt v2, v3, :cond_16

    goto/16 :goto_8

    :cond_16
    add-int/lit8 v4, p2, 0x2

    .line 73
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    .line 74
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, p2, 0x3

    const/16 v7, 0xc

    invoke-direct {v5, v0, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 75
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, p2, 0xf

    sub-int/2addr v2, v3

    invoke-direct {v6, v0, v7, v2}, Ljava/lang/String;-><init>([BII)V

    if-ne v4, v13, :cond_30

    .line 76
    invoke-static {v5}, Lh0/e;->N(Ljava/lang/String;)V

    .line 77
    invoke-static {v6}, Lh0/e;->O(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_17
    add-int/lit8 v2, p2, 0x2

    .line 78
    aget-byte v0, v0, v2

    const/16 v2, 0x34

    if-ne v0, v2, :cond_18

    .line 79
    invoke-static {v13}, Lh0/e;->l(I)V

    goto/16 :goto_8

    .line 80
    :cond_18
    invoke-static {v3}, Lh0/e;->l(I)V

    goto/16 :goto_8

    :cond_19
    add-int/lit8 v2, p2, 0x2

    .line 81
    aget-byte v0, v0, v2

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_8

    .line 82
    :pswitch_4
    invoke-static/range {v16 .. v16}, Lh0/e;->s(I)V

    goto/16 :goto_8

    .line 83
    :pswitch_5
    invoke-static {v10}, Lh0/e;->s(I)V

    goto/16 :goto_8

    .line 84
    :pswitch_6
    invoke-static/range {v17 .. v17}, Lh0/e;->s(I)V

    goto/16 :goto_8

    .line 85
    :pswitch_7
    invoke-static {v14}, Lh0/e;->s(I)V

    .line 86
    invoke-virtual/range {p0 .. p0}, Lz/h;->d()Z

    move-result v0

    iput-boolean v0, v1, Lz/h;->i:Z

    goto/16 :goto_8

    .line 87
    :pswitch_8
    invoke-static {v13}, Lh0/e;->s(I)V

    goto/16 :goto_8

    .line 88
    :pswitch_9
    invoke-static {v3}, Lh0/e;->s(I)V

    goto/16 :goto_8

    :cond_1a
    add-int/lit8 v5, p2, 0x1

    .line 89
    aget-byte v7, v0, v5

    if-eq v7, v9, :cond_23

    const/16 v8, 0x52

    if-eq v7, v8, :cond_22

    const/16 v8, 0x53

    if-eq v7, v8, :cond_20

    packed-switch v7, :pswitch_data_2

    packed-switch v7, :pswitch_data_3

    goto/16 :goto_8

    :pswitch_a
    if-ge v2, v14, :cond_1b

    return-void

    .line 90
    :cond_1b
    :try_start_4
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v3, v0, v4, v2, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lh0/e;->Q(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_8

    :catch_4
    move-exception v0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :pswitch_b
    if-ge v2, v10, :cond_1c

    return-void

    .line 93
    :cond_1c
    :try_start_5
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x4

    sub-int/2addr v2, v10

    invoke-direct {v3, v0, v5, v2, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------->> phoneOperator : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {v0}, Lh0/e;->P(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_8

    :catch_5
    move-exception v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :pswitch_c
    if-le v2, v14, :cond_30

    .line 97
    :try_start_6
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v3, v0, v4, v2, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lh0/e;->M(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_8

    :catch_6
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_8

    .line 100
    :pswitch_d
    invoke-static {v14}, Lh0/e;->s(I)V

    .line 101
    sget v0, Lh0/c;->M:I

    if-eqz v0, :cond_30

    const/4 v2, 0x0

    .line 102
    invoke-static {v2}, Lh0/e;->q(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 103
    :pswitch_e
    aget-byte v3, v0, v5

    const/16 v4, 0x45

    if-ne v3, v4, :cond_1d

    goto :goto_5

    :cond_1d
    move/from16 v16, v10

    :goto_5
    invoke-static/range {v16 .. v16}, Lh0/e;->s(I)V

    .line 104
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 v5, v2, -0x2

    invoke-direct {v3, v0, v4, v5}, Ljava/lang/String;-><init>([BII)V

    const-string v0, ","

    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, ","

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    :cond_1e
    const/4 v11, 0x0

    :goto_6
    if-eqz v11, :cond_1f

    .line 107
    array-length v0, v11

    if-le v0, v13, :cond_1f

    .line 108
    invoke-static {v11}, Lh0/e;->r([Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1f
    if-le v2, v14, :cond_30

    .line 109
    invoke-static {v3}, Lh0/e;->q(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 110
    :pswitch_f
    invoke-static/range {v17 .. v17}, Lh0/e;->s(I)V

    if-le v2, v14, :cond_30

    .line 111
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Lh0/e;->q(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 112
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lz/h;->d()Z

    move-result v2

    iput-boolean v2, v1, Lz/h;->i:Z

    .line 113
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v3, p2, 0x2

    const/16 v4, 0xc

    invoke-direct {v2, v0, v3, v4}, Ljava/lang/String;-><init>([BII)V

    .line 114
    invoke-static {v2}, Lh0/e;->N(Ljava/lang/String;)V

    .line 115
    invoke-static {v14}, Lh0/e;->s(I)V

    goto/16 :goto_8

    .line 116
    :pswitch_11
    invoke-static {v3}, Lh0/e;->s(I)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lz/h;->a()V

    goto/16 :goto_8

    :cond_20
    if-le v2, v14, :cond_21

    .line 118
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 119
    invoke-static {v4}, Lh0/e;->v(Ljava/lang/String;)V

    :cond_21
    const/16 v0, 0x13

    const/4 v2, 0x0

    .line 120
    invoke-static {v0, v2, v2, v2}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    .line 121
    invoke-static {v3}, Lh0/e;->s(I)V

    .line 122
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v6}, Lh0/f;->g(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v6}, Lh0/f;->U(Ljava/lang/String;)V

    new-array v0, v14, [I

    .line 124
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->r([I)V

    new-array v0, v14, [I

    .line 125
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->r([I)V

    .line 126
    invoke-static {v13}, Lh0/e;->t(I)V

    goto/16 :goto_8

    .line 127
    :cond_22
    invoke-static/range {v16 .. v16}, Lh0/e;->s(I)V

    if-le v2, v14, :cond_30

    .line 128
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Lh0/e;->q(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 129
    :cond_23
    new-instance v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x2

    sub-int/2addr v2, v14

    invoke-direct {v3, v0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 130
    invoke-static {v3}, Lh0/e;->O(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_24
    add-int/lit8 v4, p2, 0x1

    .line 131
    aget-byte v4, v0, v4

    const/16 v5, 0x45

    if-eq v4, v5, :cond_2f

    const/16 v5, 0x46

    const/16 v6, 0x19

    if-eq v4, v5, :cond_2b

    if-eq v4, v8, :cond_27

    const/16 v3, 0x55

    if-eq v4, v3, :cond_25

    goto/16 :goto_8

    :cond_25
    const/16 v3, 0xe

    if-gt v2, v3, :cond_26

    goto/16 :goto_8

    .line 132
    :cond_26
    new-instance v3, Ljava/lang/String;

    const/16 v4, 0xf

    add-int/lit8 v5, p2, 0xf

    sub-int/2addr v2, v4

    invoke-direct {v3, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    .line 133
    invoke-static {v3}, Lh0/e;->O(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_27
    const/16 v4, 0xf

    add-int/lit8 v2, p2, 0x2

    .line 134
    aget-byte v2, v0, v2

    if-eq v2, v7, :cond_28

    goto/16 :goto_8

    :cond_28
    add-int/lit8 v2, p2, 0xf

    .line 135
    aget-byte v0, v0, v2

    if-eq v0, v12, :cond_2a

    const/16 v2, 0x31

    if-eq v0, v2, :cond_29

    goto :goto_8

    :cond_29
    new-array v0, v13, [I

    aput v13, v0, v3

    .line 136
    invoke-static {v6, v0}, Lh0/e;->W(I[I)V

    goto :goto_8

    :cond_2a
    new-array v0, v13, [I

    aput v3, v0, v3

    .line 137
    invoke-static {v6, v0}, Lh0/e;->W(I[I)V

    goto :goto_8

    :cond_2b
    const/16 v4, 0x16

    if-gt v2, v4, :cond_2c

    goto :goto_8

    .line 138
    :cond_2c
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v5, p2, 0x2

    const/16 v7, 0xc

    invoke-direct {v4, v0, v5, v7}, Ljava/lang/String;-><init>([BII)V

    .line 139
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v7, p2, 0xe

    invoke-direct {v5, v0, v7, v13}, Ljava/lang/String;-><init>([BII)V

    .line 140
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, p2, 0x17

    add-int/lit8 v2, v2, -0x17

    invoke-direct {v7, v0, v8, v2}, Ljava/lang/String;-><init>([BII)V

    .line 141
    iget v0, v1, Lz/h;->g:I

    add-int/2addr v0, v13

    iput v0, v1, Lz/h;->g:I

    const-string v0, "0"

    .line 142
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    new-array v0, v13, [I

    aput v3, v0, v3

    .line 143
    invoke-static {v6, v0}, Lh0/e;->W(I[I)V

    goto :goto_7

    :cond_2d
    const-string v0, "1"

    .line 144
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-array v0, v13, [I

    aput v13, v0, v3

    .line 145
    invoke-static {v6, v0}, Lh0/e;->W(I[I)V

    :cond_2e
    :goto_7
    const/16 v0, 0x18

    new-array v2, v13, [I

    aput v14, v2, v3

    new-array v5, v14, [Ljava/lang/String;

    aput-object v4, v5, v3

    aput-object v7, v5, v13

    const/4 v4, 0x0

    .line 146
    invoke-static {v0, v2, v4, v5}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    goto :goto_8

    :cond_2f
    const/4 v4, 0x0

    const/16 v0, 0x18

    .line 147
    invoke-static {v0, v4, v4, v4}, Lh0/e;->X(I[I[F[Ljava/lang/String;)V

    .line 148
    iput v3, v1, Lz/h;->g:I

    :cond_30
    :goto_8
    return-void

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x57
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :array_0
    .array-data 4
        0x43
        0x59
    .end array-data

    :array_1
    .array-data 4
        0x4d
        0x5a
    .end array-data
.end method
