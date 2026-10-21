.class public Le1/m;
.super Le1/l;
.source "SourceFile"


# static fields
.field public static i:I = 0xb8

.field public static j:Z = false


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lo1/n;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:Ljava/lang/Runnable;

.field public h:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le1/l;-><init>()V

    const-string v0, "pr2000"

    .line 2
    iput-object v0, p0, Le1/m;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Lo1/n;

    invoke-direct {v0}, Lo1/n;-><init>()V

    iput-object v0, p0, Le1/m;->b:Lo1/n;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Le1/m;->c:I

    .line 5
    iput v0, p0, Le1/m;->d:I

    .line 6
    iput v0, p0, Le1/m;->e:I

    .line 7
    iput v0, p0, Le1/m;->f:I

    .line 8
    new-instance v1, Le1/m$a;

    invoke-direct {v1, p0}, Le1/m$a;-><init>(Le1/m;)V

    iput-object v1, p0, Le1/m;->g:Ljava/lang/Runnable;

    new-array v0, v0, [I

    .line 9
    iput-object v0, p0, Le1/m;->h:[I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le1/m;->b:Lo1/n;

    const-string v1, "/dev/i2c-6"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Le1/m;->b:Lo1/n;

    const-string v1, "/dev/i2c-4"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    .line 4
    :goto_0
    iget-object v0, p0, Le1/m;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    sget-boolean p1, Le1/m;->j:Z

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Le1/m;->j()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    sput-boolean p1, Le1/m;->j:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le1/m;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public h(IIII)V
    .locals 1

    .line 1
    sget p1, Le1/m;->i:I

    and-int/lit16 p2, p2, 0xff

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Le1/m;->l(III)I

    .line 2
    sget p1, Le1/m;->i:I

    and-int/lit16 p2, p3, 0xff

    invoke-virtual {p0, p1, v0, p2}, Le1/m;->l(III)I

    .line 3
    sget p1, Le1/m;->i:I

    and-int/lit16 p2, p4, 0xff

    invoke-virtual {p0, p1, v0, p2}, Le1/m;->l(III)I

    return-void
.end method

.method public i(I)V
    .locals 0

    return-void
.end method

.method public final j()I
    .locals 4

    .line 1
    iget-object v0, p0, Le1/m;->h:[I

    invoke-virtual {p0, v0}, Le1/m;->k([I)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u521d\u59cb\u5316IC\u7ed3\u679c = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu0/d;->Z3(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le1/m;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final k([I)I
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    array-length v1, p1

    if-gtz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    move v1, v0

    move v2, v1

    .line 2
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v1, v3, :cond_3

    .line 3
    aget v3, p1, v1

    if-eqz v3, :cond_2

    aget v3, p1, v1

    if-eqz v3, :cond_2

    aget v3, p1, v1

    if-eqz v3, :cond_2

    aget v3, p1, v1

    if-nez v3, :cond_1

    goto/16 :goto_1

    .line 4
    :cond_1
    sget v3, Le1/m;->i:I

    aget v5, p1, v1

    add-int/lit8 v6, v1, 0x1

    aget v7, p1, v6

    invoke-virtual {p0, v3, v5, v7}, Le1/m;->l(III)I

    move-result v3

    add-int/2addr v2, v3

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "regAddr = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v4, [Ljava/lang/Object;

    aget v8, p1, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, "%02X "

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v9, v4, [Ljava/lang/Object;

    aget v10, p1, v6

    .line 6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ";result = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lu0/d;->Z3(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Le1/m;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v4, [Ljava/lang/Object;

    aget v11, p1, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v5, v0

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    aget v5, p1, v6

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_2
    return v0
.end method

.method public final l(III)I
    .locals 2

    const-string v0, "sys.fyt.video.debug"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lo1/q0;->k()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Le1/m;->b:Lo1/n;

    invoke-virtual {v0, p1, p2, p3}, Lo1/n;->h(III)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
