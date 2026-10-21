.class public Li1/c;
.super Li1/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/s<",
        "Li1/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final h:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/s;-><init>(II)V

    const/16 p1, 0x12

    .line 2
    iput p1, p0, Li1/c;->h:I

    .line 3
    new-instance p1, Li1/c$a;

    invoke-direct {p1, p0}, Li1/c$a;-><init>(Li1/c;)V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 4
    invoke-virtual {p1}, Li1/e;->h()V

    return-void
.end method


# virtual methods
.method public i(I)Li1/s$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Li1/s<",
            "Li1/c$a;",
            ">.a;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p4, 0x2

    new-array v0, p4, [Ljava/lang/Object;

    iget-object v1, p0, Li1/s;->b:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Li1/s;->c:Ljava/lang/Integer;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Device receicerId: %2X, cmdid: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " SEND DATA:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    invoke-static {p2, v2, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Device"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x12

    if-eq p1, p3, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length p1, p2

    if-le p1, v3, :cond_3

    .line 3
    aget p1, p2, v3

    const/16 p3, 0xb

    if-eq p1, p3, :cond_2

    const/16 p3, 0xc

    if-eq p1, p3, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 4
    aput p1, p2, v3

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    .line 5
    aput p1, p2, v3

    :goto_0
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/16 p3, 0x99

    aput p3, p1, v2

    aput p4, p1, v3

    .line 6
    aget p2, p2, v3

    aput p2, p1, p4

    const/4 p2, 0x3

    const/16 p3, 0xff

    aput p3, p1, p2

    .line 7
    invoke-virtual {p0, p1}, Li1/c;->v([I)V

    move v2, v3

    :cond_3
    :goto_1
    return v2
.end method

.method public l([I)V
    .locals 0

    return-void
.end method

.method public varargs v([I)V
    .locals 9

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    add-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 2
    new-array v3, v0, [I

    .line 3
    iget-object v4, p0, Li1/s;->c:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/16 v4, 0x2e

    .line 4
    aput v4, v3, v2

    move v4, v5

    .line 5
    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_0

    add-int v6, v1, v4

    .line 6
    aget v7, p1, v4

    and-int/lit16 v7, v7, 0xff

    aput v7, v3, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v0, -0x1

    .line 7
    aput v5, v3, v4

    move v6, v5

    .line 8
    :goto_1
    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 9
    aget v7, v3, v4

    add-int v8, v1, v6

    aget v8, v3, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    aput v7, v3, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10
    :cond_1
    aget p1, v3, v4

    and-int/lit16 p1, p1, 0xff

    xor-int/lit16 p1, p1, 0xff

    aput p1, v3, v4

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Li1/s;->b:Ljava/lang/Integer;

    aput-object v4, v1, v5

    iget-object v4, p0, Li1/s;->c:Ljava/lang/Integer;

    aput-object v4, v1, v2

    const-string v2, "Device receicerId: %2X, cmdid: %2X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " SEND DATA:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5, v0}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 p1, 0x3

    if-ge v5, p1, :cond_2

    .line 12
    invoke-static {v3}, Lz/k;->s([I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
