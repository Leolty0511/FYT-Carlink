.class public Lutil/log/LogRecorder$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lutil/log/LogRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Process;

.field public b:Ljava/io/BufferedReader;

.field public c:Z

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/io/FileOutputStream;

.field public g:I

.field public final synthetic h:Lutil/log/LogRecorder;


# direct methods
.method public constructor <init>(Lutil/log/LogRecorder;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lutil/log/LogRecorder$a;->h:Lutil/log/LogRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lutil/log/LogRecorder$a;->c:Z

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lutil/log/LogRecorder$a;->d:Z

    .line 5
    iput-object v0, p0, Lutil/log/LogRecorder$a;->e:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    .line 7
    iput v1, p0, Lutil/log/LogRecorder$a;->g:I

    .line 8
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lutil/log/LogRecorder;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lutil/log/LogRecorder;->X(Lutil/log/LogRecorder;)Ljava/text/SimpleDateFormat;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".log"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logcat  *:I | grep "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lutil/log/LogRecorder;->Y(Lutil/log/LogRecorder;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lutil/log/LogRecorder$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lutil/log/LogRecorder$a;->d:Z

    if-eqz p1, :cond_0

    const-string p1, "logcat  *:I"

    .line 2
    iput-object p1, p0, Lutil/log/LogRecorder$a;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .line 1
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lutil/log/LogRecorder$a;->c:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, p0, Lutil/log/LogRecorder$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Lutil/log/LogRecorder$a;->a:Ljava/lang/Process;

    .line 3
    iget-object v1, p0, Lutil/log/LogRecorder$a;->h:Lutil/log/LogRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lutil/log/LogRecorder;->e:J

    .line 4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lutil/log/LogRecorder$a;->a:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    .line 5
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lutil/log/LogRecorder$a;->c:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 6
    iget-object v2, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    if-nez v2, :cond_2

    .line 7
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lutil/log/LogRecorder$a;->h:Lutil/log/LogRecorder;

    iget-object v4, v4, Lutil/log/LogRecorder;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lutil/log/LogRecorder$a;->h:Lutil/log/LogRecorder;

    invoke-static {v6}, Lutil/log/LogRecorder;->X(Lutil/log/LogRecorder;)Ljava/text/SimpleDateFormat;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".log"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    .line 8
    :cond_2
    iget-boolean v2, p0, Lutil/log/LogRecorder$a;->c:Z

    if-nez v2, :cond_3

    goto/16 :goto_2

    .line 9
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    iget-object v3, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lutil/log/LogRecorder$a;->h:Lutil/log/LogRecorder;

    invoke-static {v4}, Lutil/log/LogRecorder;->Y(Lutil/log/LogRecorder;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lutil/log/LogRecorder$a;->d:Z

    if-eqz v3, :cond_1

    .line 11
    :cond_5
    iget-object v3, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 12
    iget v1, p0, Lutil/log/LogRecorder$a;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lutil/log/LogRecorder$a;->g:I

    .line 13
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, p0, Lutil/log/LogRecorder$a;->h:Lutil/log/LogRecorder;

    iget-wide v5, v1, Lutil/log/LogRecorder;->e:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xbb8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    .line 14
    iget-object v1, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 15
    iget-object v1, p0, Lutil/log/LogRecorder$a;->h:Lutil/log/LogRecorder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v1, Lutil/log/LogRecorder;->e:J

    :cond_6
    const/high16 v1, 0x80000

    if-lt v2, v1, :cond_1

    .line 16
    iget-object v1, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 17
    iget-object v1, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 18
    iput-object v0, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lutil/log/LogRecorder$a;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 20
    :cond_7
    :goto_2
    iget-object v1, p0, Lutil/log/LogRecorder$a;->a:Ljava/lang/Process;

    if-eqz v1, :cond_8

    .line 21
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 22
    iput-object v0, p0, Lutil/log/LogRecorder$a;->a:Ljava/lang/Process;

    .line 23
    :cond_8
    iget-object v1, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    if-eqz v1, :cond_9

    .line 24
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 25
    iput-object v0, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    .line 26
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 27
    :goto_3
    iput-object v0, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    .line 28
    :cond_9
    iget-object v1, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 29
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    .line 30
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 31
    iget-object v1, p0, Lutil/log/LogRecorder$a;->a:Ljava/lang/Process;

    if-eqz v1, :cond_a

    .line 32
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 33
    iput-object v0, p0, Lutil/log/LogRecorder$a;->a:Ljava/lang/Process;

    .line 34
    :cond_a
    iget-object v1, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    if-eqz v1, :cond_b

    .line 35
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 36
    iput-object v0, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    .line 37
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    :goto_4
    iput-object v0, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    .line 39
    :cond_b
    iget-object v1, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 40
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 41
    :goto_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    :goto_6
    iput-object v0, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    goto/16 :goto_0

    .line 43
    :goto_7
    iget-object v2, p0, Lutil/log/LogRecorder$a;->a:Ljava/lang/Process;

    if-eqz v2, :cond_c

    .line 44
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 45
    iput-object v0, p0, Lutil/log/LogRecorder$a;->a:Ljava/lang/Process;

    .line 46
    :cond_c
    iget-object v2, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    if-eqz v2, :cond_d

    .line 47
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 48
    iput-object v0, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_5
    move-exception v2

    .line 49
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 50
    :goto_8
    iput-object v0, p0, Lutil/log/LogRecorder$a;->b:Ljava/io/BufferedReader;

    .line 51
    :cond_d
    iget-object v2, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_e

    .line 52
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_9

    :catch_6
    move-exception v2

    .line 53
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :goto_9
    iput-object v0, p0, Lutil/log/LogRecorder$a;->f:Ljava/io/FileOutputStream;

    .line 55
    :cond_e
    throw v1

    :cond_f
    return-void
.end method
