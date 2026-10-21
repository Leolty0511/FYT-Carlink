.class public Lu0/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lu0/f;->s()I

    move-result v0

    .line 2
    invoke-static {}, Lu0/f;->o()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v1, :cond_0

    const/16 v0, 0x30

    new-array v1, v3, [I

    aput v2, v1, v4

    .line 3
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-static {v0, p0}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 5
    invoke-static {}, Lu0/f;->w()Lo1/f0;

    move-result-object v0

    invoke-virtual {v0}, Lo1/f0;->b()V

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lu0/f;->x(Lo1/f0;)Lo1/f0;

    .line 7
    invoke-static {}, Lu0/f;->b()V

    .line 8
    sput v4, Lm0/b;->e:I

    const-wide/16 v1, 0x64

    .line 9
    invoke-static {v1, v2}, La/i;->a0(J)V

    const-string v1, "\u5347\u7ea7\u5b8c\u6210"

    .line 10
    invoke-static {v1}, Lu0/f;->k(Ljava/lang/String;)V

    .line 11
    :try_start_0
    invoke-static {}, Lu0/f;->e()Ljava/io/FileWriter;

    move-result-object v1

    .line 12
    invoke-static {v0}, Lu0/f;->f(Ljava/io/FileWriter;)Ljava/io/FileWriter;

    .line 13
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 14
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 15
    :goto_0
    invoke-static {v0}, Lu0/f;->p([B)[B

    .line 16
    sget-object v0, Lz/a;->l:Lo1/f0;

    invoke-virtual {v0, v4}, Lo1/f0;->a(Z)V

    goto :goto_3

    .line 17
    :cond_0
    invoke-static {}, Lu0/f;->q()I

    move-result v1

    if-eqz v1, :cond_1

    .line 18
    invoke-static {v4}, Lu0/f;->r(I)I

    const-string v0, "MCU\u5fd9,\u5ef6\u8fdf\u53d1\u9001\u6570\u636e"

    .line 19
    invoke-static {v0}, Lu0/f;->k(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v1, 0x87

    new-array v1, v1, [B

    const/16 v5, -0x23

    aput-byte v5, v1, v4

    const/16 v5, 0x55

    aput-byte v5, v1, v3

    const/4 v5, 0x2

    shr-int/lit8 v6, v0, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v5, 0x3

    shr-int/lit8 v6, v0, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    const/4 v5, 0x4

    int-to-byte v6, v0

    aput-byte v6, v1, v5

    const/4 v5, 0x5

    const/16 v6, -0x80

    aput-byte v6, v1, v5

    .line 20
    invoke-static {}, Lu0/f;->o()[B

    move-result-object v5

    const/16 v6, 0x80

    invoke-static {v5, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v4

    move v5, v2

    :goto_1
    const/16 v6, 0x86

    if-ge v2, v6, :cond_2

    .line 21
    aget-byte v6, v1, v2

    add-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    neg-int v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 22
    sget-object v2, Lz/a;->b:Lo1/e0;

    invoke-virtual {v2, v1}, Lo1/e0;->i([B)V

    new-array v1, v3, [Ljava/lang/Object;

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    const-string v0, "\u53d1\u9001\u6570\u636e\uff0c\u5730\u5740\u4e3a  0x%04X"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu0/f;->k(Ljava/lang/String;)V

    .line 24
    :goto_2
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void
.end method
