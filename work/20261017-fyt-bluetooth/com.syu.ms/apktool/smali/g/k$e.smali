.class public Lg/k$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/io/FileWriter;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z

.field public final synthetic h:Lg/k;


# direct methods
.method public constructor <init>(Lg/k;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lg/k$e;->h:Lg/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lg/k$e;->a:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lg/k$e;->b:Ljava/io/FileWriter;

    const-string v0, "/dev/zsender-fifo"

    .line 4
    iput-object v0, p0, Lg/k$e;->c:Ljava/lang/String;

    .line 5
    iput-boolean p1, p0, Lg/k$e;->d:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lg/k$e;->e:Z

    .line 7
    iput-boolean v0, p0, Lg/k$e;->f:Z

    .line 8
    iput-boolean p1, p0, Lg/k$e;->g:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lg/k$e;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    const-string v0, "------------->>>fix audio writeValueToFile: "

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------------->>>fix audio writeValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Qin"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v1, Ljava/io/File;

    const-string v3, "/dev/zsender-fifo"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lg/k$e;->b:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    iget-object v1, p0, Lg/k$e;->b:Ljava/io/FileWriter;

    const-string v3, " error!!"

    if-nez v1, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------->>>fix audio writeValueToFile open: /dev/zsender-fifo send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 8
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lg/k$e;->b:Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v1, p0, Lg/k$e;->b:Ljava/io/FileWriter;

    if-eqz v1, :cond_2

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception v1

    .line 13
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " error!!  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x0

    .line 15
    iget-object v4, p0, Lg/k$e;->b:Ljava/io/FileWriter;

    if-eqz v4, :cond_3

    .line 16
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v4

    .line 17
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x2

    .line 19
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    .line 20
    invoke-virtual {p0, p1}, Lg/k$e;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------------->>> fix audio writeValueToFile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " success!!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    .line 22
    :goto_4
    iget-object v0, p0, Lg/k$e;->b:Ljava/io/FileWriter;

    if-eqz v0, :cond_5

    .line 23
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 25
    :cond_5
    :goto_5
    throw p1
.end method

.method public finalize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/k$e;->b:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 3
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public declared-synchronized run()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    sget v3, Ly0/f;->T0:I

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    .line 3
    :goto_1
    sget v4, Ly0/f;->Q0:I

    if-ne v4, v2, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    .line 4
    :goto_2
    iget-object v5, p0, Lg/k$e;->h:Lg/k;

    iget-object v5, v5, Lg/k;->p0:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, La/f;->B()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/bin/blink"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-boolean v5, p0, Lg/k$e;->g:Z

    if-eq v0, v5, :cond_4

    .line 6
    iput-boolean v0, p0, Lg/k$e;->g:Z

    if-eqz v0, :cond_3

    const-string v0, "phone call on"

    goto :goto_3

    :cond_3
    const-string v0, "phone call off"

    .line 7
    :goto_3
    invoke-virtual {p0, v0}, Lg/k$e;->a(Ljava/lang/String;)V

    .line 8
    :cond_4
    iget-object v0, p0, Lg/k$e;->h:Lg/k;

    iget-object v0, v0, Lg/k;->p0:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_6

    sget v0, Lh0/c;->N:I

    if-ne v0, v2, :cond_5

    sget v0, Lu0/b;->D:I

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    .line 9
    :goto_5
    iget-boolean v5, p0, Lg/k$e;->f:Z

    if-eq v3, v5, :cond_7

    .line 10
    iput-boolean v3, p0, Lg/k$e;->f:Z

    move v1, v2

    .line 11
    :cond_7
    iget-boolean v3, p0, Lg/k$e;->e:Z

    if-eq v4, v3, :cond_8

    .line 12
    iput-boolean v4, p0, Lg/k$e;->e:Z

    goto :goto_6

    :cond_8
    move v2, v1

    :goto_6
    if-eqz v2, :cond_b

    .line 13
    iget-boolean v1, p0, Lg/k$e;->f:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lg/k$e;->e:Z

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    const-string v1, "navi off"

    goto :goto_8

    :cond_a
    :goto_7
    const-string v1, "navi on"

    :goto_8
    invoke-virtual {p0, v1}, Lg/k$e;->a(Ljava/lang/String;)V

    .line 14
    :cond_b
    iget-boolean v1, p0, Lg/k$e;->d:Z

    if-eq v0, v1, :cond_d

    .line 15
    iput-boolean v0, p0, Lg/k$e;->d:Z

    if-eqz v0, :cond_c

    const-string v0, "media on"

    goto :goto_9

    :cond_c
    const-string v0, "media off"

    .line 16
    :goto_9
    invoke-virtual {p0, v0}, Lg/k$e;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_d
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
