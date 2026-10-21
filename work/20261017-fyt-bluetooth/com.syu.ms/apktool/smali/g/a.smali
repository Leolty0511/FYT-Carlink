.class public Lg/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g;


# static fields
.field public static j:I = -0x1


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;

.field public d:Ljava/lang/Runnable;

.field public e:I

.field public f:I

.field public g:Ljava/lang/Runnable;

.field public final h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lg/a$b;

    invoke-direct {v0, p0}, Lg/a$b;-><init>(Lg/a;)V

    iput-object v0, p0, Lg/a;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Lg/a$c;

    invoke-direct {v0, p0}, Lg/a$c;-><init>(Lg/a;)V

    iput-object v0, p0, Lg/a;->b:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lg/a$d;

    invoke-direct {v0, p0}, Lg/a$d;-><init>(Lg/a;)V

    iput-object v0, p0, Lg/a;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lg/a$e;

    invoke-direct {v0, p0}, Lg/a$e;-><init>(Lg/a;)V

    iput-object v0, p0, Lg/a;->d:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lg/a;->e:I

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lg/a;->f:I

    .line 8
    new-instance v0, Lg/a$f;

    invoke-direct {v0, p0}, Lg/a$f;-><init>(Lg/a;)V

    iput-object v0, p0, Lg/a;->g:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lg/a$g;

    invoke-direct {v0, p0}, Lg/a$g;-><init>(Lg/a;)V

    iput-object v0, p0, Lg/a;->h:Ljava/lang/Runnable;

    .line 10
    new-instance v0, Lg/a$h;

    invoke-direct {v0, p0}, Lg/a$h;-><init>(Lg/a;)V

    iput-object v0, p0, Lg/a;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic c(Lg/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/a;->e:I

    return p0
.end method

.method public static synthetic d(Lg/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lg/a;->e:I

    return p1
.end method

.method public static synthetic e(Lg/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lg/a;->f:I

    return p0
.end method

.method public static synthetic f(Lg/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lg/a;->f:I

    return p1
.end method

.method public static synthetic g(Lg/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic h(Lg/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/a;->g:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    sget-object v0, La/d;->a:Lo1/y;

    iget-object v1, p0, Lg/a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Ld1/e;->a:Lo1/y;

    iget-object v1, p0, Lg/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lg/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lg/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    sget-object v1, Lu0/c;->k:Lo1/y;

    iget-object v2, p0, Lg/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    sget-object v1, Lu0/c;->j:Lo1/y;

    iget-object v2, p0, Lg/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lg/a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    sget-object v0, Lm1/b;->a:Lo1/y;

    iget-object v1, p0, Lg/a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lg/a;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lg/f;->w(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Lg/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 1
    sget-object v0, La/d;->a:Lo1/y;

    iget-object v1, p0, Lg/a;->c:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Ld1/e;->a:Lo1/y;

    iget-object v1, p0, Lg/a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    iput v2, p0, Lg/a;->e:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lg/a;->f:I

    .line 5
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lg/a;->g:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lg/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v1, Lu0/c;->k:Lo1/y;

    iget-object v4, p0, Lg/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v1, Lu0/c;->j:Lo1/y;

    iget-object v4, p0, Lg/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v4, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    iget-object v1, p0, Lg/a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    sget-object v0, Lm1/b;->a:Lo1/y;

    iget-object v1, p0, Lg/a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    iget-object v0, p0, Lg/a;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lg/f;->b(Ljava/lang/Runnable;)V

    .line 12
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_update_get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    sput v2, La/b;->d0:I

    .line 14
    invoke-static {}, Lcom/syu/jni/ControlNative;->getInstance()Lcom/syu/jni/ControlNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/syu/jni/ControlNative;->fyt_update_clear()I

    .line 15
    :cond_0
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v1, p0, Lg/a;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 16
    sget-object v0, Lu0/c;->A:Lo1/y;

    new-instance v1, Lg/a$a;

    invoke-direct {v1, p0}, Lg/a$a;-><init>(Lg/a;)V

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method
