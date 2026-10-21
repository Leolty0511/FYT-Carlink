.class public Lu/e;
.super Ljava/io/PrintWriter;
.source "SourceFile"


# static fields
.field public static l:Ljava/io/Writer;


# instance fields
.field public final a:I

.field public final b:[C

.field public c:I

.field public final d:Ljava/io/OutputStream;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/io/Writer;

.field public final h:Landroid/util/Printer;

.field public i:Ljava/nio/charset/CharsetEncoder;

.field public final j:Ljava/nio/ByteBuffer;

.field public k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu/e$a;

    invoke-direct {v0}, Lu/e$a;-><init>()V

    sput-object v0, Lu/e;->l:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lu/e;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 1

    .line 2
    sget-object v0, Lu/e;->l:Ljava/io/Writer;

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const-string v0, "out is null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput p3, p0, Lu/e;->a:I

    .line 5
    new-array v0, p3, [C

    iput-object v0, p0, Lu/e;->b:[C

    .line 6
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lu/e;->j:Ljava/nio/ByteBuffer;

    .line 7
    iput-object p1, p0, Lu/e;->d:Ljava/io/OutputStream;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lu/e;->g:Ljava/io/Writer;

    .line 9
    iput-object p1, p0, Lu/e;->h:Landroid/util/Printer;

    .line 10
    iput-boolean p2, p0, Lu/e;->e:Z

    .line 11
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu/e;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lu/e;->f()V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 13
    invoke-direct {p0, p1, v0, v1}, Lu/e;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .locals 1

    .line 14
    sget-object v0, Lu/e;->l:Ljava/io/Writer;

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const-string/jumbo v0, "wr is null"

    .line 15
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    iput p3, p0, Lu/e;->a:I

    .line 17
    new-array p3, p3, [C

    iput-object p3, p0, Lu/e;->b:[C

    const/4 p3, 0x0

    .line 18
    iput-object p3, p0, Lu/e;->j:Ljava/nio/ByteBuffer;

    .line 19
    iput-object p3, p0, Lu/e;->d:Ljava/io/OutputStream;

    .line 20
    iput-object p1, p0, Lu/e;->g:Ljava/io/Writer;

    .line 21
    iput-object p3, p0, Lu/e;->h:Landroid/util/Printer;

    .line 22
    iput-boolean p2, p0, Lu/e;->e:Z

    .line 23
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu/e;->f:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Lu/e;->f()V

    return-void
.end method


# virtual methods
.method public final a(C)V
    .locals 2

    .line 1
    iget v0, p0, Lu/e;->c:I

    .line 2
    iget v1, p0, Lu/e;->a:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lu/e;->e()V

    .line 4
    iget v0, p0, Lu/e;->c:I

    .line 5
    :cond_0
    iget-object v1, p0, Lu/e;->b:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lu/e;->c:I

    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 3
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lu/e;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lu/e;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lu/e;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;II)V
    .locals 3

    .line 1
    iget v0, p0, Lu/e;->a:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    sub-int v2, p3, p2

    .line 2
    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Lu/e;->b(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 3
    :cond_2
    iget v1, p0, Lu/e;->c:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lu/e;->e()V

    .line 5
    iget v1, p0, Lu/e;->c:I

    :cond_3
    add-int v0, p2, p3

    .line 6
    iget-object v2, p0, Lu/e;->b:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 7
    iput v1, p0, Lu/e;->c:I

    return-void
.end method

.method public final c([CII)V
    .locals 3

    .line 1
    iget v0, p0, Lu/e;->a:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    sub-int v2, p3, p2

    .line 2
    :goto_1
    invoke-virtual {p0, p1, p2, v2}, Lu/e;->c([CII)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 3
    :cond_2
    iget v1, p0, Lu/e;->c:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 4
    invoke-virtual {p0}, Lu/e;->e()V

    .line 5
    iget v1, p0, Lu/e;->c:I

    .line 6
    :cond_3
    iget-object v0, p0, Lu/e;->b:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 7
    iput v1, p0, Lu/e;->c:I

    return-void
.end method

.method public checkError()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lu/e;->flush()V

    .line 2
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lu/e;->k:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearError()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lu/e;->k:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lu/e;->e()V

    .line 3
    iget-object v1, p0, Lu/e;->d:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lu/e;->g:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lu/e;->setError()V

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lu/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lu/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 3
    iget-object v1, p0, Lu/e;->d:Ljava/io/OutputStream;

    iget-object v2, p0, Lu/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 4
    iget-object v0, p0, Lu/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 7

    .line 1
    iget v0, p0, Lu/e;->c:I

    if-lez v0, :cond_7

    .line 2
    iget-object v1, p0, Lu/e;->d:Ljava/io/OutputStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lu/e;->b:[C

    invoke-static {v1, v3, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lu/e;->i:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lu/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 5
    :goto_0
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lu/e;->d()V

    .line 8
    iget-object v1, p0, Lu/e;->i:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lu/e;->j:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lu/e;->d()V

    .line 10
    iget-object v0, p0, Lu/e;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    .line 11
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    iget-object v1, p0, Lu/e;->g:Ljava/io/Writer;

    if-eqz v1, :cond_3

    .line 13
    iget-object v2, p0, Lu/e;->b:[C

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/Writer;->write([CII)V

    .line 14
    iget-object v0, p0, Lu/e;->g:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_3

    .line 15
    :cond_3
    iget-object v0, p0, Lu/e;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 16
    iget v1, p0, Lu/e;->c:I

    if-ge v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_5

    .line 17
    iget-object v4, p0, Lu/e;->b:[C

    iget v5, p0, Lu/e;->c:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    aget-char v4, v4, v5

    iget-object v5, p0, Lu/e;->f:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18
    :cond_5
    iget v0, p0, Lu/e;->c:I

    if-lt v1, v0, :cond_6

    .line 19
    iget-object v0, p0, Lu/e;->h:Landroid/util/Printer;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 20
    :cond_6
    iget-object v2, p0, Lu/e;->h:Landroid/util/Printer;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lu/e;->b:[C

    sub-int/2addr v0, v1

    invoke-direct {v4, v5, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 21
    :goto_3
    iput v3, p0, Lu/e;->c:I

    :cond_7
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lu/e;->i:Ljava/nio/charset/CharsetEncoder;

    .line 2
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 3
    iget-object v0, p0, Lu/e;->i:Ljava/nio/charset/CharsetEncoder;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method public flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lu/e;->e()V

    .line 3
    iget-object v1, p0, Lu/e;->d:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lu/e;->g:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 7
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lu/e;->setError()V

    .line 8
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public print(C)V
    .locals 1

    .line 4
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lu/e;->a(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public print(I)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "0"

    .line 11
    invoke-virtual {p0, p1}, Lu/e;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    :goto_0
    return-void
.end method

.method public print(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "0"

    .line 13
    invoke-virtual {p0, p1}, Lu/e;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    :goto_0
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "null"

    .line 7
    :cond_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lu/e;->b(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lu/e;->setError()V

    .line 10
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public print([C)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lu/e;->c([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public println()V
    .locals 4

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lu/e;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lu/e;->b(Ljava/lang/String;II)V

    .line 3
    iget-boolean v1, p0, Lu/e;->e:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lu/e;->e()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Lu/e;->setError()V

    .line 6
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public println(C)V
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lu/e;->print(C)V

    .line 14
    invoke-virtual {p0}, Lu/e;->println()V

    return-void
.end method

.method public println(I)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "0"

    .line 7
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    :goto_0
    return-void
.end method

.method public println(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string p1, "0"

    .line 9
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    :goto_0
    return-void
.end method

.method public println([C)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lu/e;->print([C)V

    .line 12
    invoke-virtual {p0}, Lu/e;->println()V

    return-void
.end method

.method public setError()V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lu/e;->k:Z

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public write(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    int-to-char p1, p1

    .line 5
    :try_start_0
    invoke-virtual {p0, p1}, Lu/e;->a(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .line 7
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, p1, v1, v2}, Lu/e;->b(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 9
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .line 10
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lu/e;->b(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 12
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public write([CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lu/e;->c([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 3
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
