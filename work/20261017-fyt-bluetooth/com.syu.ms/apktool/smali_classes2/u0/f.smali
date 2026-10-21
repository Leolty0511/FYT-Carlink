.class public Lu0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu0/f$h;
    }
.end annotation


# static fields
.field public static a:[B

.field public static b:Lo1/f0;

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:Ljava/io/FileWriter;

.field public static final h:Ljava/lang/Runnable;

.field public static final i:Ljava/lang/Runnable;

.field public static final j:Ljava/lang/Runnable;

.field public static k:[I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static final o:Lo1/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu0/f$a;

    invoke-direct {v0}, Lu0/f$a;-><init>()V

    sput-object v0, Lu0/f;->h:Ljava/lang/Runnable;

    .line 2
    new-instance v0, Lu0/f$b;

    invoke-direct {v0}, Lu0/f$b;-><init>()V

    sput-object v0, Lu0/f;->i:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lu0/f$c;

    invoke-direct {v0}, Lu0/f$c;-><init>()V

    sput-object v0, Lu0/f;->j:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 4
    sput v0, Lu0/f;->l:I

    .line 5
    new-instance v0, Lu0/f$f;

    invoke-direct {v0}, Lu0/f$f;-><init>()V

    sput-object v0, Lu0/f;->o:Lo1/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized A(Ljava/lang/String;)V
    .locals 6

    const-class v0, Lu0/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lu0/f;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_4

    const/4 v1, 0x0

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result p0

    const v1, 0x27fa3

    if-lt p0, v1, :cond_2

    const/high16 v1, 0x100000

    if-le p0, v1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    new-array p0, p0, [B

    .line 5
    invoke-virtual {v5, p0}, Ljava/io/InputStream;->read([B)I

    .line 6
    invoke-static {p0}, Lu0/f;->D([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catch_0
    move-exception p0

    .line 8
    :goto_0
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :cond_2
    :goto_1
    :try_start_5
    new-array p0, v4, [I

    aput v4, p0, v3

    .line 9
    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 10
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catch_1
    move-exception p0

    .line 11
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 12
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v5

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    :goto_3
    :try_start_8
    new-array v4, v4, [I

    aput v3, v4, v3

    .line 13
    invoke-static {v2, v4}, Lu0/d;->I3(I[I)V

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_4

    .line 15
    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_5

    :catch_5
    move-exception v1

    .line 16
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_3
    :goto_5
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 18
    :cond_4
    :goto_6
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized B(Ljava/lang/String;II)V
    .locals 6

    const-class v0, Lu0/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lu0/f;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_4

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result p0

    .line 6
    new-array p0, p0, [B

    .line 7
    invoke-virtual {v5, p0}, Ljava/io/InputStream;->read([B)I

    sub-int/2addr p2, p1

    add-int/2addr p2, v4

    .line 8
    new-array v1, p2, [B

    .line 9
    invoke-static {p0, p1, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const p0, 0x27fa3

    if-lt p2, p0, :cond_2

    const/high16 p0, 0x100000

    if-le p2, p0, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {v1}, Lu0/f;->D([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catch_0
    move-exception p0

    .line 12
    :goto_0
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :cond_2
    :goto_1
    :try_start_6
    new-array p0, v4, [I

    aput v4, p0, v3

    .line 13
    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 14
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_1
    move-exception p0

    .line 15
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 16
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v1, v5

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_3
    move-exception p0

    :goto_3
    :try_start_9
    new-array p1, v4, [I

    aput v3, p1, v3

    .line 17
    invoke-static {v2, p1}, Lu0/d;->I3(I[I)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v1, :cond_4

    .line 19
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_6

    :catch_4
    move-exception p0

    goto :goto_0

    :goto_4
    if-eqz v1, :cond_3

    :try_start_b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_5

    :catch_5
    move-exception p1

    .line 20
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :cond_3
    :goto_5
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 22
    :cond_4
    :goto_6
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs C([I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lz/k;->b([I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->i([B)V

    :cond_0
    return-void
.end method

.method public static D([B)V
    .locals 6

    const/4 v0, 0x0

    const v1, 0x9410

    move v2, v0

    :goto_0
    const v3, 0xff00

    const v4, 0x941e

    const/16 v5, 0x8

    if-ge v1, v4, :cond_0

    .line 1
    aget-byte v4, p0, v1

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    neg-int v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 2
    aget-byte v2, p0, v4

    shl-int/2addr v2, v5

    and-int/2addr v2, v3

    const v3, 0x941f

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    new-array p0, v4, [I

    const/4 v1, 0x2

    aput v1, p0, v0

    .line 3
    invoke-static {v3, p0}, Lu0/d;->I3(I[I)V

    return-void

    :cond_1
    new-array v1, v4, [I

    const/4 v2, 0x4

    aput v2, v1, v0

    .line 4
    invoke-static {v3, v1}, Lu0/d;->I3(I[I)V

    const/16 v1, 0x90

    .line 5
    invoke-static {v1, v0}, Lm1/c;->c(II)I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 6
    invoke-static {v1, v4}, Lm1/c;->e(II)I

    .line 7
    :cond_2
    sput-object p0, Lu0/f;->a:[B

    .line 8
    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    const-string v1, "/mnt/sdcard/com.syu.ms_mcu_upgrade.txt"

    invoke-direct {p0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    sput-object p0, Lu0/f;->g:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 10
    :goto_1
    sget-object p0, Lz/a;->l:Lo1/f0;

    invoke-virtual {p0, v4}, Lo1/f0;->a(Z)V

    .line 11
    sput v4, Lm0/b;->e:I

    .line 12
    sput v4, Lm0/b;->f:I

    .line 13
    sget p0, Lm0/b;->e:I

    if-ne p0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    invoke-static {v5, v4}, Ly0/h;->Y(IZ)V

    .line 14
    new-instance p0, Lo1/f0;

    invoke-direct {p0}, Lo1/f0;-><init>()V

    sput-object p0, Lu0/f;->b:Lo1/f0;

    .line 15
    sget-object v1, Lz/a;->b:Lo1/e0;

    new-instance v2, Lu0/f$h;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu0/f$h;-><init>(Lu0/f$a;)V

    invoke-virtual {p0, v1, v2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    .line 16
    sput v0, Lu0/f;->d:I

    const/16 p0, 0x9

    sput p0, Lu0/f;->c:I

    .line 17
    sget-object p0, Lu0/f;->h:Ljava/lang/Runnable;

    invoke-static {p0}, Lu0/d;->m(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static E([BII)V
    .locals 17

    .line 1
    const-class v1, Lu0/f;

    monitor-enter v1

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput v0, Lu0/f;->m:I

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    aget-byte v1, p0, p1

    add-int/lit8 v2, p1, 0x1

    aget-byte v3, p0, v2

    invoke-static {v1, v3}, Lo1/p0;->c(BB)I

    move-result v1

    .line 5
    sget-object v3, Lu0/f;->a:[B

    const v4, 0xf000

    const/4 v5, 0x2

    const/16 v6, 0x30

    const/4 v7, 0x1

    if-gt v1, v4, :cond_5

    shl-int/lit8 v4, v1, 0x8

    if-eqz v3, :cond_4

    .line 6
    array-length v8, v3

    sub-int/2addr v8, v7

    if-ge v4, v8, :cond_4

    .line 7
    array-length v8, v3

    sub-int/2addr v8, v7

    sub-int/2addr v8, v4

    const/16 v9, 0x100

    if-le v8, v9, :cond_0

    move v8, v9

    :cond_0
    const/16 v10, 0x105

    new-array v10, v10, [I

    const/16 v11, 0xec

    aput v11, v10, v0

    .line 8
    aget-byte v11, p0, p1

    aput v11, v10, v7

    aget-byte v2, p0, v2

    aput v2, v10, v5

    .line 9
    sget-object v2, Lu0/f;->k:[I

    array-length v11, v2

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/2addr v11, v12

    const/4 v13, 0x3

    aput v11, v10, v13

    const/4 v11, 0x4

    array-length v2, v2

    and-int/2addr v2, v12

    aput v2, v10, v11

    move v2, v0

    :goto_0
    if-ge v2, v8, :cond_1

    add-int/lit8 v11, v2, 0x5

    add-int v14, v4, v2

    .line 10
    aget-byte v14, v3, v14

    aput v14, v10, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v8, v9, :cond_2

    add-int/lit8 v2, v8, 0x5

    .line 11
    aput v12, v10, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 12
    :cond_2
    sget-object v2, Lu0/f;->k:[I

    aget v3, v2, v1

    if-nez v3, :cond_3

    .line 13
    aput v7, v2, v1

    .line 14
    sget v1, Lu0/f;->l:I

    add-int/2addr v1, v7

    sput v1, Lu0/f;->l:I

    .line 15
    :cond_3
    invoke-static {v10}, Lu0/f;->C([I)V

    new-array v1, v13, [I

    const/4 v2, 0x5

    aput v2, v1, v0

    .line 16
    sget v2, Lu0/f;->l:I

    aput v2, v1, v7

    sget-object v2, Lu0/f;->k:[I

    array-length v2, v2

    aput v2, v1, v5

    invoke-static {v6, v1}, Lu0/d;->I3(I[I)V

    .line 17
    :cond_4
    sget v1, Lu0/f;->n:I

    if-eqz v1, :cond_7

    .line 18
    sput v0, Lu0/f;->n:I

    .line 19
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v0

    const-string v1, "mcu_need_upgrade"

    invoke-virtual {v0, v1}, Ln1/c;->m(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 20
    :pswitch_0
    sget v0, Lu0/f;->n:I

    if-nez v0, :cond_7

    .line 21
    sput v7, Lu0/f;->n:I

    .line 22
    sput-object v2, Lu0/f;->k:[I

    .line 23
    sput-object v2, Lu0/f;->a:[B

    .line 24
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "mcu_need_upgrade"

    const-string v11, "MCU\u7a0b\u5e8f\u4e0d\u5b8c\u6574,\u7528Stm32.bin\u5347\u7ea7\u6587\u4ef6\u91cd\u65b0\u5347\u7ea7MCU"

    sget-object v12, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v13, 0x1e

    const/4 v14, -0x1

    const/16 v15, 0x28

    const v16, 0x7fffff00

    invoke-virtual/range {v8 .. v16}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 25
    sget-object v0, Lu0/f;->b:Lo1/f0;

    invoke-virtual {v0}, Lo1/f0;->b()V

    .line 26
    sput-object v2, Lu0/f;->b:Lo1/f0;

    goto :goto_2

    .line 27
    :pswitch_1
    sput-object v2, Lu0/f;->k:[I

    .line 28
    sput-object v2, Lu0/f;->a:[B

    .line 29
    sget v3, Lu0/f;->n:I

    if-eqz v3, :cond_6

    .line 30
    sput v0, Lu0/f;->n:I

    .line 31
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v3

    const-string v4, "mcu_need_upgrade"

    invoke-virtual {v3, v4}, Ln1/c;->m(Ljava/lang/String;)V

    .line 32
    :cond_6
    sget-object v3, Lu0/f;->b:Lo1/f0;

    invoke-virtual {v3}, Lo1/f0;->b()V

    .line 33
    sput-object v2, Lu0/f;->b:Lo1/f0;

    .line 34
    sput v0, Lm0/b;->e:I

    const-wide/16 v2, 0x64

    .line 35
    invoke-static {v2, v3}, La/i;->a0(J)V

    .line 36
    sget-object v2, Lz/a;->l:Lo1/f0;

    invoke-virtual {v2, v0}, Lo1/f0;->a(Z)V

    packed-switch v1, :pswitch_data_1

    :pswitch_2
    goto :goto_2

    :pswitch_3
    new-array v1, v7, [I

    const/4 v2, 0x6

    aput v2, v1, v0

    .line 37
    invoke-static {v6, v1}, Lu0/d;->I3(I[I)V

    .line 38
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Lu0/f$e;

    invoke-direct {v1}, Lu0/f$e;-><init>()V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :pswitch_4
    new-array v1, v7, [I

    const/4 v2, 0x7

    aput v2, v1, v0

    .line 39
    invoke-static {v6, v1}, Lu0/d;->I3(I[I)V

    goto :goto_2

    :pswitch_5
    new-array v1, v7, [I

    aput v7, v1, v0

    .line 40
    invoke-static {v6, v1}, Lu0/d;->I3(I[I)V

    goto :goto_2

    :pswitch_6
    new-array v1, v7, [I

    aput v5, v1, v0

    .line 41
    invoke-static {v6, v1}, Lu0/d;->I3(I[I)V

    :cond_7
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 42
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0xf001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf001
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static F(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static declared-synchronized G([BII)V
    .locals 6

    const-class v0, Lu0/f;

    monitor-enter v0

    sub-int/2addr p2, p1

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 1
    :try_start_0
    new-array v2, p2, [B

    const/4 v3, 0x0

    .line 2
    invoke-static {p0, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 p0, 0x100000

    const/16 p1, 0x30

    if-le p2, p0, :cond_0

    new-array p0, v1, [I

    aput v1, p0, v3

    .line 3
    invoke-static {p1, p0}, Lu0/d;->I3(I[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :cond_0
    move p0, v3

    move v4, p0

    :goto_0
    if-ge p0, p2, :cond_1

    .line 5
    :try_start_1
    aget-byte v5, v2, p0

    add-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    const/4 v5, 0x2

    if-eq v4, p0, :cond_2

    new-array p0, v1, [I

    aput v5, p0, v3

    .line 6
    invoke-static {p1, p0}, Lu0/d;->I3(I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :cond_2
    :try_start_2
    sput-object v2, Lu0/f;->a:[B

    sub-int/2addr p2, v1

    add-int/lit16 p2, p2, 0xff

    const/16 p0, 0x8

    shr-int/2addr p2, p0

    .line 9
    new-array p2, p2, [I

    sput-object p2, Lu0/f;->k:[I

    .line 10
    sput v3, Lu0/f;->l:I

    const/16 p2, 0xb

    .line 11
    sput p2, Lu0/f;->m:I

    .line 12
    sget-object p2, Lz/a;->l:Lo1/f0;

    invoke-virtual {p2, v1}, Lo1/f0;->a(Z)V

    .line 13
    sput v1, Lm0/b;->e:I

    .line 14
    sput v1, Lm0/b;->f:I

    .line 15
    sget p2, Lm0/b;->e:I

    if-ne p2, v1, :cond_3

    move p2, v1

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    invoke-static {p0, p2}, Ly0/h;->Y(IZ)V

    new-array p0, v1, [I

    const/4 p2, 0x4

    aput p2, p0, v3

    .line 16
    invoke-static {p1, p0}, Lu0/d;->I3(I[I)V

    const/16 p0, 0x90

    .line 17
    invoke-static {p0, v3}, Lm1/c;->c(II)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 18
    invoke-static {p0, v1}, Lm1/c;->e(II)I

    :cond_4
    const/4 p0, 0x3

    new-array p0, p0, [I

    const/16 p1, 0xeb

    aput p1, p0, v3

    aput v3, p0, v1

    aput v1, p0, v5

    .line 19
    invoke-static {p0}, Lu0/f;->C([I)V

    .line 20
    new-instance p0, Lo1/f0;

    invoke-direct {p0}, Lo1/f0;-><init>()V

    sput-object p0, Lu0/f;->b:Lo1/f0;

    .line 21
    sget-object p1, Lz/a;->b:Lo1/e0;

    sget-object p2, Lu0/f;->o:Lo1/q;

    invoke-virtual {p0, p1, p2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    .line 22
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    new-instance p1, Lu0/f$g;

    invoke-direct {p1}, Lu0/f$g;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 23
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic a()I
    .locals 1

    .line 1
    sget v0, Lu0/f;->c:I

    return v0
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lu0/f;->y()V

    return-void
.end method

.method public static synthetic c(I)I
    .locals 0

    .line 1
    sput p0, Lu0/f;->c:I

    return p0
.end method

.method public static synthetic d()I
    .locals 1

    .line 1
    sget v0, Lu0/f;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lu0/f;->c:I

    return v0
.end method

.method public static synthetic e()Ljava/io/FileWriter;
    .locals 1

    .line 1
    sget-object v0, Lu0/f;->g:Ljava/io/FileWriter;

    return-object v0
.end method

.method public static synthetic f(Ljava/io/FileWriter;)Ljava/io/FileWriter;
    .locals 0

    .line 1
    sput-object p0, Lu0/f;->g:Ljava/io/FileWriter;

    return-object p0
.end method

.method public static synthetic g()I
    .locals 1

    .line 1
    sget v0, Lu0/f;->m:I

    return v0
.end method

.method public static synthetic h()I
    .locals 1

    .line 1
    sget v0, Lu0/f;->m:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lu0/f;->m:I

    return v0
.end method

.method public static synthetic i([I)[I
    .locals 0

    .line 1
    sput-object p0, Lu0/f;->k:[I

    return-object p0
.end method

.method public static synthetic j([I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lu0/f;->C([I)V

    return-void
.end method

.method public static synthetic k(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lu0/f;->F(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l()I
    .locals 1

    .line 1
    sget v0, Lu0/f;->d:I

    return v0
.end method

.method public static synthetic m(I)I
    .locals 0

    .line 1
    sput p0, Lu0/f;->d:I

    return p0
.end method

.method public static synthetic n()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lu0/f;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic o()[B
    .locals 1

    .line 1
    sget-object v0, Lu0/f;->a:[B

    return-object v0
.end method

.method public static synthetic p([B)[B
    .locals 0

    .line 1
    sput-object p0, Lu0/f;->a:[B

    return-object p0
.end method

.method public static synthetic q()I
    .locals 1

    .line 1
    sget v0, Lu0/f;->e:I

    return v0
.end method

.method public static synthetic r(I)I
    .locals 0

    .line 1
    sput p0, Lu0/f;->e:I

    return p0
.end method

.method public static synthetic s()I
    .locals 1

    .line 1
    sget v0, Lu0/f;->f:I

    return v0
.end method

.method public static synthetic t(I)I
    .locals 0

    .line 1
    sput p0, Lu0/f;->f:I

    return p0
.end method

.method public static synthetic u(I)I
    .locals 1

    .line 1
    sget v0, Lu0/f;->f:I

    add-int/2addr v0, p0

    sput v0, Lu0/f;->f:I

    return v0
.end method

.method public static synthetic v()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Lu0/f;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic w()Lo1/f0;
    .locals 1

    .line 1
    sget-object v0, Lu0/f;->b:Lo1/f0;

    return-object v0
.end method

.method public static synthetic x(Lo1/f0;)Lo1/f0;
    .locals 0

    .line 1
    sput-object p0, Lu0/f;->b:Lo1/f0;

    return-object p0
.end method

.method public static y()V
    .locals 5

    const-string v0, "clearMcuUpgradeFlag"

    .line 1
    invoke-static {v0}, Lu0/f;->F(Ljava/lang/String;)V

    const/16 v0, 0x87

    new-array v0, v0, [B

    const/16 v1, -0x23

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x55

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v2, v0, v1

    const/4 v4, 0x3

    aput-byte v1, v0, v4

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v4, -0x80

    aput-byte v4, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    move v1, v2

    :goto_0
    const/16 v3, 0x86

    if-ge v2, v3, :cond_0

    .line 2
    aget-byte v3, v0, v2

    add-int/2addr v1, v3

    int-to-byte v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 3
    sget-object v1, Lz/a;->b:Lo1/e0;

    invoke-virtual {v1, v0}, Lo1/e0;->i([B)V

    return-void
.end method

.method public static declared-synchronized z(Ljava/lang/String;II)V
    .locals 8

    const-class v0, Lu0/f;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lu0/f;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-eqz p0, :cond_8

    .line 2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4
    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result p0

    .line 6
    new-array v1, p0, [B

    .line 7
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    if-nez p2, :cond_1

    add-int/lit8 p2, p0, -0x1

    :cond_1
    sub-int/2addr p2, p1

    add-int/2addr p2, v4

    .line 8
    new-array p0, p2, [B

    .line 9
    invoke-static {v1, p1, p0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 p1, 0x100000

    if-le p2, p1, :cond_2

    new-array p0, v4, [I

    aput v4, p0, v3

    .line 10
    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 11
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 12
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 13
    :goto_0
    monitor-exit v0

    return-void

    :cond_2
    move p1, v3

    move v1, p1

    :goto_1
    if-ge p1, p2, :cond_3

    .line 14
    :try_start_6
    aget-byte v6, p0, p1

    add-int/2addr v1, v6

    int-to-byte v1, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    const/4 v6, 0x2

    if-eq v1, p1, :cond_4

    new-array p0, v4, [I

    aput v6, p0, v3

    .line 15
    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 16
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_1
    move-exception p0

    .line 17
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 18
    :goto_2
    monitor-exit v0

    return-void

    .line 19
    :cond_4
    :try_start_9
    sput-object p0, Lu0/f;->a:[B

    sub-int/2addr p2, v4

    add-int/lit16 p2, p2, 0xff

    const/16 p0, 0x8

    shr-int/lit8 p1, p2, 0x8

    .line 20
    new-array p1, p1, [I

    sput-object p1, Lu0/f;->k:[I

    .line 21
    sput v3, Lu0/f;->l:I

    const/16 p1, 0xb

    .line 22
    sput p1, Lu0/f;->m:I

    .line 23
    sget-object p1, Lz/a;->l:Lo1/f0;

    invoke-virtual {p1, v4}, Lo1/f0;->a(Z)V

    .line 24
    sput v4, Lm0/b;->e:I

    .line 25
    sput v4, Lm0/b;->f:I

    .line 26
    sget p1, Lm0/b;->e:I

    if-ne p1, v4, :cond_5

    move p1, v4

    goto :goto_3

    :cond_5
    move p1, v3

    :goto_3
    invoke-static {p0, p1}, Ly0/h;->Y(IZ)V

    new-array p0, v4, [I

    const/4 p1, 0x4

    aput p1, p0, v3

    .line 27
    invoke-static {v2, p0}, Lu0/d;->I3(I[I)V

    const/16 p0, 0x90

    .line 28
    invoke-static {p0, v3}, Lm1/c;->c(II)I

    move-result p1

    if-eq p1, v4, :cond_6

    .line 29
    invoke-static {p0, v4}, Lm1/c;->e(II)I

    :cond_6
    const/4 p0, 0x3

    new-array p0, p0, [I

    const/16 p1, 0xeb

    aput p1, p0, v3

    aput v3, p0, v4

    aput v4, p0, v6

    .line 30
    invoke-static {p0}, Lu0/f;->C([I)V

    .line 31
    new-instance p0, Lo1/f0;

    invoke-direct {p0}, Lo1/f0;-><init>()V

    sput-object p0, Lu0/f;->b:Lo1/f0;

    .line 32
    sget-object p1, Lz/a;->b:Lo1/e0;

    sget-object p2, Lu0/f;->o:Lo1/q;

    invoke-virtual {p0, p1, p2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    .line 33
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    new-instance p1, Lu0/f$d;

    invoke-direct {p1}, Lu0/f$d;-><init>()V

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, p1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 34
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_8

    :catch_2
    move-exception p0

    .line 35
    :goto_4
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_8

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v1, v5

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_4
    move-exception p0

    :goto_5
    :try_start_c
    new-array p1, v4, [I

    aput v3, p1, v3

    .line 36
    invoke-static {v2, p1}, Lu0/d;->I3(I[I)V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_8

    .line 38
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_8

    :catch_5
    move-exception p0

    goto :goto_4

    :goto_6
    if-eqz v1, :cond_7

    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_7

    :catch_6
    move-exception p1

    .line 39
    :try_start_f
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_7
    :goto_7
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 41
    :cond_8
    :goto_8
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method
