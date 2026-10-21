.class public Lo1/t0$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lo1/t0;


# direct methods
.method public constructor <init>(Lo1/t0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/t0$c;->b:Lo1/t0;

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lo1/t0$c;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lo1/t0$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v1, p0

    const-string v0, "Xmodem"

    .line 1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendFileSync   =====>> file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lo1/t0$c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2
    :try_start_0
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, v1, Lo1/t0$c;->a:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v2

    .line 4
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    invoke-virtual {v0}, Lo1/t0;->b()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-gtz v0, :cond_0

    .line 5
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 7
    :cond_0
    :try_start_3
    new-array v4, v0, [B

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v7, v5

    move v0, v6

    .line 8
    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v8

    const/4 v9, 0x6

    if-lez v8, :cond_5

    add-int/2addr v8, v0

    int-to-float v0, v8

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v0, v10

    int-to-float v10, v2

    div-float/2addr v0, v10

    float-to-int v10, v0

    .line 9
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-object v0, v0, Lo1/t0;->d:Lo1/t0$b;

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {v0, v10, v6}, Lo1/t0$b;->a(IZ)V

    :cond_1
    move v11, v6

    :goto_2
    const/16 v12, 0xa

    if-ge v11, v12, :cond_3

    .line 11
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    invoke-virtual {v0, v4, v7}, Lo1/t0;->d([BB)[B

    move-result-object v0

    .line 12
    iget-object v13, v1, Lo1/t0$c;->b:Lo1/t0;

    invoke-virtual {v13, v0}, Lo1/t0;->h([B)I

    .line 13
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iput-boolean v5, v0, Lo1/t0;->e:Z

    .line 14
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-object v13, v0, Lo1/t0;->g:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 15
    :try_start_4
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-object v0, v0, Lo1/t0;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_5
    const-string v14, "Xmodem"

    .line 16
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0101 ----"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_3
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 18
    :try_start_6
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-byte v0, v0, Lo1/t0;->f:B

    if-ne v0, v9, :cond_2

    .line 19
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iput-byte v6, v0, Lo1/t0;->f:B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :cond_2
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x1

    goto :goto_2

    .line 20
    :goto_4
    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0

    :cond_3
    :goto_5
    if-lt v11, v12, :cond_4

    .line 21
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-object v0, v0, Lo1/t0;->d:Lo1/t0$b;

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    .line 22
    invoke-interface {v0, v10, v2}, Lo1/t0$b;->a(IZ)V

    goto :goto_6

    :cond_4
    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    move v0, v8

    const/4 v5, 0x1

    goto :goto_1

    .line 23
    :cond_5
    :goto_6
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-byte v0, v0, Lo1/t0;->f:B

    if-eq v0, v9, :cond_6

    .line 24
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    const/4 v2, 0x1

    new-array v4, v2, [B

    const/4 v5, 0x4

    aput-byte v5, v4, v6

    invoke-virtual {v0, v4}, Lo1/t0;->h([B)I

    .line 25
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iput-boolean v2, v0, Lo1/t0;->e:Z

    .line 26
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-object v4, v0, Lo1/t0;->g:Ljava/lang/Object;

    monitor-enter v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 27
    :try_start_9
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-object v0, v0, Lo1/t0;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    .line 28
    :catch_2
    :goto_7
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 29
    :try_start_b
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-byte v0, v0, Lo1/t0;->f:B
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-ne v0, v9, :cond_5

    goto :goto_9

    .line 30
    :goto_8
    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v0

    .line 31
    :cond_6
    :goto_9
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iput-byte v6, v0, Lo1/t0;->f:B

    .line 32
    iget-object v0, v1, Lo1/t0$c;->b:Lo1/t0;

    iget-object v0, v0, Lo1/t0;->d:Lo1/t0$b;

    if-eqz v0, :cond_7

    const/16 v2, 0x64

    .line 33
    invoke-interface {v0, v2, v6}, Lo1/t0$b;->a(IZ)V

    :cond_7
    const-string v0, "Xmodem"

    const-string v2, "sendFileSync Flished!!"

    .line 34
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 35
    :try_start_e
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 36
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_b

    :catchall_3
    move-exception v0

    :goto_a
    move-object v3, v0

    goto :goto_d

    :catch_5
    move-exception v0

    .line 37
    :goto_b
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    if-eqz v2, :cond_8

    .line 38
    :try_start_10
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    :cond_8
    :goto_c
    return-void

    :goto_d
    if-eqz v2, :cond_9

    :try_start_11
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 39
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    :cond_9
    :goto_e
    throw v3
.end method
