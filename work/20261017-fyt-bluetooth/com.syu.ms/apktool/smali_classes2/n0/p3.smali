.class public Ln0/p3;
.super Ln0/c3;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln0/c3;-><init>()V

    return-void
.end method


# virtual methods
.method public L3()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln0/c3;->L3()V

    const-string v0, "LSDD"

    .line 2
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x131

    .line 3
    sput v0, Lm1/a;->d:I

    return-void
.end method

.method public M2()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln0/c4;->M2()V

    .line 2
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    const-string v1, "com.dudu.autoui"

    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    return-void
.end method

.method public final T3()V
    .locals 6

    .line 1
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    instance-of v0, v0, Lui/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    check-cast v0, Lui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lui/a;->p(Lui/a$g;)V

    .line 3
    :cond_0
    new-instance v0, Ln0/p3$a;

    invoke-direct {v0, p0}, Ln0/p3$a;-><init>(Ln0/p3;)V

    const/16 v1, 0x1c

    const/16 v2, 0x46

    .line 4
    invoke-static {}, La/f;->w()I

    move-result v3

    const/16 v4, 0x780

    if-lt v3, v4, :cond_1

    const/16 v1, 0x28

    const/16 v2, 0x6a

    .line 5
    :cond_1
    new-instance v3, Lui/a$d;

    invoke-direct {v3}, Lui/a$d;-><init>()V

    .line 6
    invoke-static {}, La/f;->w()I

    move-result v4

    invoke-static {}, La/f;->i()I

    move-result v5

    invoke-interface {v0, v4, v5}, Lui/a$g;->b(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lui/a$d;->p(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const/16 v4, 0x30

    .line 7
    invoke-virtual {v3, v4}, Lui/a$d;->h(I)Lui/a$d;

    move-result-object v3

    const/4 v4, 0x1

    .line 8
    invoke-virtual {v3, v4}, Lui/a$d;->u(I)Lui/a$d;

    move-result-object v3

    const-string v4, "bk.png"

    .line 9
    invoke-virtual {v3, v4}, Lui/a$d;->b(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const-string v4, "mute.png"

    .line 10
    invoke-virtual {v3, v4}, Lui/a$d;->l(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const-string v4, "unmute.png"

    .line 11
    invoke-virtual {v3, v4}, Lui/a$d;->g(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const-string v4, "bar.png"

    .line 12
    invoke-virtual {v3, v4}, Lui/a$d;->c(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    const-string v4, "bar_p.png"

    .line 13
    invoke-virtual {v3, v4}, Lui/a$d;->d(Ljava/lang/String;)Lui/a$d;

    move-result-object v3

    sget v4, Ly0/f;->g:I

    .line 14
    invoke-virtual {v3, v4}, Lui/a$d;->o(I)Lui/a$d;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 15
    invoke-virtual {v3, v4}, Lui/a$d;->q([I)Lui/a$d;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, -0x1

    invoke-direct {v4, v2, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 16
    invoke-virtual {v3, v4}, Lui/a$d;->s(Landroid/graphics/Rect;)Lui/a$d;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v1, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 17
    invoke-virtual {v2, v3}, Lui/a$d;->j(Landroid/graphics/Rect;)Lui/a$d;

    move-result-object v1

    .line 18
    invoke-interface {v0}, Lui/a$g;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lui/a$d;->t(I)Lui/a$d;

    move-result-object v1

    new-instance v2, Ln0/p3$c;

    invoke-direct {v2, p0}, Ln0/p3$c;-><init>(Ln0/p3;)V

    .line 19
    invoke-virtual {v1, v2}, Lui/a$d;->m(Landroid/view/View$OnClickListener;)Lui/a$d;

    move-result-object v1

    new-instance v2, Ln0/p3$b;

    invoke-direct {v2, p0}, Ln0/p3$b;-><init>(Ln0/p3;)V

    .line 20
    invoke-virtual {v1, v2}, Lui/a$d;->n(Lui/Bar$a;)Lui/a$d;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lui/a$d;->a()Lui/a;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lui/a;->p(Lui/a$g;)V

    const/4 v0, 0x3

    .line 23
    invoke-virtual {v1, v0}, Lui/a;->r(I)V

    .line 24
    new-instance v0, Ln0/p3$d;

    invoke-direct {v0, p0, v1}, Ln0/p3$d;-><init>(Ln0/p3;Lui/a;)V

    .line 25
    new-instance v2, Ln0/p3$e;

    invoke-direct {v2, p0, v0}, Ln0/p3$e;-><init>(Ln0/p3;Ljava/lang/Runnable;)V

    .line 26
    new-instance v0, Ln0/p3$f;

    invoke-direct {v0, p0, v2}, Ln0/p3$f;-><init>(Ln0/p3;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lui/a;->q(Lui/a$f;)V

    .line 27
    invoke-static {v1}, La/f;->D(Lui/b;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x10000
    .end array-data
.end method

.method public X2()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln0/p3;->T3()V

    .line 2
    invoke-super {p0}, Ln0/a;->X2()V

    return-void
.end method
