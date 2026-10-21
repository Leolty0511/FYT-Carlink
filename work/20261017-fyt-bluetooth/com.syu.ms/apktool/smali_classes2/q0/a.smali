.class public Lq0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/d;


# instance fields
.field public a:Lo1/g0;

.field public b:Lo1/n;

.field public c:Z

.field public d:I

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lq0/a;->a:Lo1/g0;

    .line 3
    new-instance v0, Lo1/n;

    invoke-direct {v0}, Lo1/n;-><init>()V

    iput-object v0, p0, Lq0/a;->b:Lo1/n;

    .line 4
    new-instance v0, Lq0/a$a;

    invoke-direct {v0, p0}, Lq0/a$a;-><init>(Lq0/a;)V

    iput-object v0, p0, Lq0/a;->f:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lq0/a$b;

    invoke-direct {v0, p0}, Lq0/a$b;-><init>(Lq0/a;)V

    iput-object v0, p0, Lq0/a;->g:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lq0/a$c;

    invoke-direct {v0, p0}, Lq0/a$c;-><init>(Lq0/a;)V

    iput-object v0, p0, Lq0/a;->h:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic c(Lq0/a;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lq0/a;->c:Z

    return p1
.end method

.method public static synthetic d(Lq0/a;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lq0/a;->m(II)V

    return-void
.end method

.method public static synthetic g(Lq0/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lq0/a;->d:I

    return p0
.end method

.method public static synthetic h(Lq0/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lq0/a;->d:I

    return p1
.end method

.method public static synthetic i(Lq0/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lq0/a;->e:I

    return p0
.end method

.method public static synthetic j(Lq0/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lq0/a;->e:I

    return p1
.end method

.method public static synthetic k(Lq0/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lq0/a;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic l(Lq0/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lq0/a;->h:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lq0/a;->b:Lo1/n;

    const-string v1, "/dev/i2c-4"

    invoke-virtual {v0, v1}, Lo1/n;->f(Ljava/lang/String;)I

    .line 3
    :goto_0
    iget-object v0, p0, Lq0/a;->a:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lq0/a;->a:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lq0/a;->b:Lo1/n;

    invoke-virtual {v0}, Lo1/n;->close()V

    return-void
.end method

.method public e(I)V
    .locals 4

    .line 1
    sget v0, Lq0/b;->f:I

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    .line 2
    sput p1, Lq0/b;->f:I

    .line 3
    sget-object v0, Lq0/b;->c:[Lo1/x;

    invoke-static {v0, v1, p1}, Lo1/x;->x([Lo1/x;II)V

    const-string v0, "wch"

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ModuleEmitter U_FREQ value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lq0/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lq0/a;->a:Lo1/g0;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lo1/g0;->g(II)V

    .line 6
    :cond_0
    iget-boolean p1, p0, Lq0/a;->c:Z

    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lq0/a;->f:Ljava/lang/Runnable;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-boolean v0, p0, Lq0/a;->c:Z

    if-nez v0, :cond_1

    .line 9
    iput-boolean v1, p0, Lq0/a;->c:Z

    .line 10
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lq0/a;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public f(I)V
    .locals 2

    .line 1
    sget v0, Lq0/b;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    sput p1, Lq0/b;->e:I

    .line 3
    sget-object v0, Lq0/b;->c:[Lo1/x;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lo1/x;->x([Lo1/x;II)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModuleEmitter U_ON value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lq0/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lq0/a;->a:Lo1/g0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lo1/g0;->g(II)V

    .line 6
    :cond_0
    sget p1, Lq0/b;->f:I

    invoke-virtual {p0, p1}, Lq0/a;->e(I)V

    return-void
.end method

.method public final m(II)V
    .locals 0

    return-void
.end method
