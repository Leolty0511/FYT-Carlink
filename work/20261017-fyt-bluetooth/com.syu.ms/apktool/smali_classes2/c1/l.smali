.class public Lc1/l;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# instance fields
.field public final b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Z

.field public h:I

.field public i:I

.field public j:Lo1/g0;

.field public final k:[I

.field public l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/l;->b:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lc1/l;->c:I

    .line 4
    iput v0, p0, Lc1/l;->d:I

    .line 5
    iput v0, p0, Lc1/l;->e:I

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lc1/l;->f:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lc1/l;->g:Z

    .line 8
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lc1/l;->j:Lo1/g0;

    new-array v0, v2, [I

    .line 9
    iput-object v0, p0, Lc1/l;->k:[I

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/l;->l:Ljava/util/HashMap;

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/l;->m:Ljava/util/HashMap;

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/l;->n:Ljava/util/HashMap;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/l;->o:Ljava/util/HashMap;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/l;->p:Ljava/util/HashMap;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc1/l;->q:Ljava/util/HashMap;

    .line 16
    new-instance v0, Lc1/l$a;

    invoke-direct {v0, p0}, Lc1/l$a;-><init>(Lc1/l;)V

    iput-object v0, p0, Lc1/l;->r:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lc1/l$b;

    invoke-direct {v0, p0}, Lc1/l$b;-><init>(Lc1/l;)V

    iput-object v0, p0, Lc1/l;->s:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2(Lc1/l;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/l;->k:[I

    return-object p0
.end method

.method public static synthetic P2(Lc1/l;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/l;->l:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic Q2(Lc1/l;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/l;->m:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic R2(Lc1/l;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/l;->n:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic S2(Lc1/l;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/l;->o:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic T2(Lc1/l;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/l;->p:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic U2(Lc1/l;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lc1/l;->q:Ljava/util/HashMap;

    return-object p0
.end method

.method public static synthetic V2(Lc1/l;)I
    .locals 0

    .line 1
    iget p0, p0, Lc1/l;->h:I

    return p0
.end method

.method public static synthetic W2(Lc1/l;I)I
    .locals 0

    .line 1
    iput p1, p0, Lc1/l;->h:I

    return p1
.end method

.method public static synthetic X2(Lc1/l;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc1/l;->Z2(I)V

    return-void
.end method

.method public static synthetic Y2(Lc1/l;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc1/l;->c3([I)V

    return-void
.end method


# virtual methods
.method public L2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc1/l;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lc1/b;->c(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lc1/l;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 3
    invoke-virtual {p0}, Lc1/l;->init()V

    .line 4
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lc1/l;->r:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/l;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lc1/b;->e(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lc1/l;->j:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lc1/l;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 7

    const/4 p3, 0x2

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_7

    .line 1
    :pswitch_0
    invoke-virtual {p0}, Lc1/l;->a3()Z

    move-result p3

    if-eqz p3, :cond_0

    new-array p3, v2, [I

    aput v2, p3, v1

    .line 2
    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto/16 :goto_7

    :cond_0
    new-array p3, v2, [I

    aput v1, p3, v1

    .line 3
    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    goto/16 :goto_7

    :pswitch_1
    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    new-array v4, p3, [I

    .line 4
    iget-object v5, p0, Lc1/l;->k:[I

    aget v6, v5, v3

    aput v6, v4, v1

    iget-object v6, p0, Lc1/l;->q:Ljava/util/HashMap;

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_2
    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_1

    new-array v4, p3, [I

    .line 5
    iget-object v5, p0, Lc1/l;->k:[I

    aget v6, v5, v3

    aput v6, v4, v1

    iget-object v6, p0, Lc1/l;->p:Ljava/util/HashMap;

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_1

    new-array v4, p3, [I

    .line 6
    iget-object v5, p0, Lc1/l;->k:[I

    aget v6, v5, v3

    aput v6, v4, v1

    iget-object v6, p0, Lc1/l;->o:Ljava/util/HashMap;

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_4
    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_1

    new-array v4, p3, [I

    .line 7
    iget-object v5, p0, Lc1/l;->k:[I

    aget v6, v5, v3

    aput v6, v4, v1

    iget-object v6, p0, Lc1/l;->n:Ljava/util/HashMap;

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_5
    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_1

    new-array v4, p3, [I

    .line 8
    iget-object v5, p0, Lc1/l;->k:[I

    aget v6, v5, v3

    aput v6, v4, v1

    iget-object v6, p0, Lc1/l;->m:Ljava/util/HashMap;

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_6
    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_1

    new-array v4, p3, [I

    .line 9
    iget-object v5, p0, Lc1/l;->k:[I

    aget v6, v5, v3

    aput v6, v4, v1

    iget-object v6, p0, Lc1/l;->l:Ljava/util/HashMap;

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_7
    move v3, v1

    :goto_6
    if-ge v3, v0, :cond_1

    new-array v4, p3, [I

    aput v3, v4, v1

    .line 10
    iget-object v5, p0, Lc1/l;->k:[I

    aget v5, v5, v3

    aput v5, v4, v2

    invoke-static {p1, p2, v4}, Lo1/x;->v(Ly/b;I[I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_8
    new-array p3, v2, [I

    .line 11
    iget v0, p0, Lc1/l;->i:I

    aput v0, p3, v1

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_1
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 2

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    const/4 p4, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lc1/l;->j:Lo1/g0;

    invoke-virtual {p1, p3, p3}, Lo1/g0;->g(II)V

    .line 2
    iget-object p1, p0, Lc1/l;->j:Lo1/g0;

    invoke-virtual {p1, v1, p3}, Lo1/g0;->g(II)V

    .line 3
    iget-object p1, p0, Lc1/l;->j:Lo1/g0;

    invoke-virtual {p1, v0, p3}, Lo1/g0;->g(II)V

    .line 4
    iget-object p1, p0, Lc1/l;->j:Lo1/g0;

    invoke-virtual {p1, p4, p3}, Lo1/g0;->g(II)V

    move p1, p3

    .line 5
    :goto_0
    iget-object p2, p0, Lc1/l;->k:[I

    array-length p4, p2

    if-ge p1, p4, :cond_1

    .line 6
    aput p3, p2, p1

    new-array p4, v0, [I

    aput p1, p4, p3

    .line 7
    aget p2, p2, p1

    aput p2, p4, v1

    invoke-static {v1, p4}, Lc1/b;->i(I[I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v1, p0, Lc1/l;->g:Z

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0, p2, p3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lc1/l;->j:Lo1/g0;

    iget-object p2, p0, Lc1/l;->k:[I

    aget p2, p2, p3

    invoke-virtual {p1, p3, p2}, Lo1/g0;->g(II)V

    .line 11
    iget-object p1, p0, Lc1/l;->j:Lo1/g0;

    iget-object p2, p0, Lc1/l;->k:[I

    aget p2, p2, v1

    invoke-virtual {p1, v1, p2}, Lo1/g0;->g(II)V

    .line 12
    iget-object p1, p0, Lc1/l;->j:Lo1/g0;

    iget-object p2, p0, Lc1/l;->k:[I

    aget p2, p2, v0

    invoke-virtual {p1, v0, p2}, Lo1/g0;->g(II)V

    .line 13
    iget-object p1, p0, Lc1/l;->j:Lo1/g0;

    iget-object p2, p0, Lc1/l;->k:[I

    aget p2, p2, p4

    invoke-virtual {p1, p4, p2}, Lo1/g0;->g(II)V

    .line 14
    iput-boolean v1, p0, Lc1/l;->g:Z

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0, p2, p3}, Lc1/p;->M2([II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    aget p1, p2, p3

    iput p1, p0, Lc1/l;->f:I

    .line 17
    iput-boolean p3, p0, Lc1/l;->g:Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final Z2(I)V
    .locals 2

    .line 1
    iget v0, p0, Lc1/l;->i:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lc1/l;->i:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 3
    invoke-static {v1, v0}, Lc1/b;->i(I[I)V

    :cond_0
    return-void
.end method

.method public final a3()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lc1/l;->k:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v4, v0, v3

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v4, :cond_0

    aget v2, v0, v1

    aget v4, v0, v6

    if-eq v2, v4, :cond_0

    aget v2, v0, v1

    aget v4, v0, v5

    if-eq v2, v4, :cond_0

    return v3

    .line 2
    :cond_0
    aget v2, v0, v3

    aget v4, v0, v1

    if-eq v2, v4, :cond_1

    aget v2, v0, v3

    aget v4, v0, v6

    if-eq v2, v4, :cond_1

    aget v2, v0, v3

    aget v4, v0, v5

    if-eq v2, v4, :cond_1

    return v3

    .line 3
    :cond_1
    aget v2, v0, v6

    aget v4, v0, v1

    if-eq v2, v4, :cond_2

    aget v2, v0, v6

    aget v4, v0, v3

    if-eq v2, v4, :cond_2

    aget v2, v0, v6

    aget v4, v0, v5

    if-eq v2, v4, :cond_2

    return v3

    .line 4
    :cond_2
    aget v2, v0, v5

    aget v4, v0, v1

    if-eq v2, v4, :cond_3

    aget v2, v0, v5

    aget v4, v0, v3

    if-eq v2, v4, :cond_3

    aget v2, v0, v5

    aget v0, v0, v6

    if-eq v2, v0, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method public b([B)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lc1/l;->z1([BII)V

    return-void

    :cond_1
    :goto_0
    const-wide/16 v0, 0x64

    .line 3
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

.method public final b3([BII)V
    .locals 12

    const/4 p3, 0x0

    .line 1
    iput p3, p0, Lc1/l;->h:I

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lc1/l;->Z2(I)V

    .line 3
    aget-byte v1, p1, p2

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-nez v1, :cond_0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    if-ne v1, v5, :cond_0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v2, :cond_0

    new-array v1, v5, [Ljava/lang/Object;

    add-int/2addr p2, v3

    .line 4
    aget-byte v2, p1, p2

    shr-int/2addr v2, v4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p3

    aget-byte p1, p1, p2

    and-int/lit8 p1, p1, 0xf

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "Ver %d.%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    add-int/lit8 v1, p2, 0x3

    .line 5
    aget-byte v1, p1, v1

    add-int/lit8 v6, p2, 0x4

    aget-byte v6, p1, v6

    add-int/lit8 v7, p2, 0x5

    aget-byte v7, p1, v7

    invoke-static {v1, v6, v7}, Lo1/p0;->d(BBB)I

    move-result v1

    .line 6
    iget-boolean v6, p0, Lc1/l;->g:Z

    const/4 v7, 0x3

    if-nez v6, :cond_2

    add-int/lit8 v6, p2, 0x2

    .line 7
    aget-byte v8, p1, v6

    shr-int/2addr v8, v5

    and-int/2addr v8, v7

    if-eq v8, v5, :cond_1

    aget-byte v6, p1, v6

    shr-int/2addr v6, v5

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_2

    .line 8
    :cond_1
    iget-object v6, p0, Lc1/l;->k:[I

    iget v8, p0, Lc1/l;->f:I

    aget v9, v6, v8

    if-eq v9, v1, :cond_2

    .line 9
    aput v1, v6, v8

    new-array v6, v5, [I

    aput v8, v6, p3

    aput v1, v6, v0

    .line 10
    invoke-static {v0, v6}, Lc1/b;->i(I[I)V

    .line 11
    :cond_2
    aget-byte v6, p1, p2

    and-int/lit16 v6, v6, 0xff

    .line 12
    iget-object v8, p0, Lc1/l;->l:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v8, v5, [I

    aput v1, v8, p3

    aput v6, v8, v0

    .line 13
    invoke-static {v5, v8}, Lc1/b;->i(I[I)V

    add-int/lit8 v6, p2, 0x1

    .line 14
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    .line 15
    iget-object v8, p0, Lc1/l;->m:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v8, v5, [I

    aput v1, v8, p3

    aput v6, v8, v0

    .line 16
    invoke-static {v7, v8}, Lc1/b;->i(I[I)V

    add-int/2addr p2, v5

    .line 17
    aget-byte v6, p1, p2

    const/4 v8, 0x6

    shr-int/2addr v6, v8

    and-int/2addr v6, v7

    .line 18
    iget-object v9, p0, Lc1/l;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v5, [I

    aput v1, v9, p3

    aput v6, v9, v0

    .line 19
    invoke-static {v4, v9}, Lc1/b;->i(I[I)V

    .line 20
    aget-byte v6, p1, p2

    shr-int/lit8 v4, v6, 0x4

    and-int/2addr v4, v7

    .line 21
    iget-object v6, p0, Lc1/l;->o:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v6, v5, [I

    aput v1, v6, p3

    aput v4, v6, v0

    .line 22
    invoke-static {v3, v6}, Lc1/b;->i(I[I)V

    .line 23
    aget-byte v3, p1, p2

    shr-int/2addr v3, v5

    and-int/2addr v3, v7

    .line 24
    iget-object v4, p0, Lc1/l;->p:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v5, [I

    aput v1, v4, p3

    aput v3, v4, v0

    .line 25
    invoke-static {v8, v4}, Lc1/b;->i(I[I)V

    .line 26
    aget-byte p1, p1, p2

    and-int/2addr p1, v7

    .line 27
    iget-object p2, p0, Lc1/l;->q:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [I

    aput v1, p2, p3

    aput p1, p2, v0

    .line 28
    invoke-static {v2, p2}, Lc1/b;->i(I[I)V

    :goto_0
    return-void
.end method

.method public final varargs c3([I)V
    .locals 5

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    .line 2
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_0

    .line 3
    aget v4, p1, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_1
    if-ge v2, v4, :cond_1

    .line 4
    aget-byte v0, v1, v2

    add-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    neg-int p1, p1

    int-to-byte p1, p1

    .line 5
    aput-byte p1, v1, v4

    .line 6
    sget-object p1, Lz/a;->f:Lo1/e0;

    invoke-virtual {p1, v1}, Lo1/e0;->i([B)V

    return-void
.end method

.method public final init()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc1/l;->k:[I

    iget-object v1, p0, Lc1/l;->j:Lo1/g0;

    const/4 v2, 0x0

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3
    invoke-virtual {v1, v2, v2}, Lo1/g0;->d(II)I

    move-result v1

    aput v1, v0, v2

    .line 4
    iget-object v0, p0, Lc1/l;->k:[I

    iget-object v1, p0, Lc1/l;->j:Lo1/g0;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Lo1/g0;->d(II)I

    move-result v1

    aput v1, v0, v4

    .line 5
    iget-object v0, p0, Lc1/l;->k:[I

    iget-object v1, p0, Lc1/l;->j:Lo1/g0;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2}, Lo1/g0;->d(II)I

    move-result v1

    aput v1, v0, v4

    .line 6
    iget-object v0, p0, Lc1/l;->k:[I

    iget-object v1, p0, Lc1/l;->j:Lo1/g0;

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Lo1/g0;->d(II)I

    move-result v1

    aput v1, v0, v4

    .line 7
    :goto_0
    iget-object v0, p0, Lc1/l;->k:[I

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 8
    iget-object v1, p0, Lc1/l;->l:Ljava/util/HashMap;

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lc1/l;->m:Ljava/util/HashMap;

    iget-object v1, p0, Lc1/l;->k:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lc1/l;->n:Ljava/util/HashMap;

    iget-object v1, p0, Lc1/l;->k:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lc1/l;->o:Ljava/util/HashMap;

    iget-object v1, p0, Lc1/l;->k:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v0, p0, Lc1/l;->p:Ljava/util/HashMap;

    iget-object v1, p0, Lc1/l;->k:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v0, p0, Lc1/l;->q:Ljava/util/HashMap;

    iget-object v1, p0, Lc1/l;->k:[I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z1([BII)V
    .locals 4

    .line 1
    iget v0, p0, Lc1/l;->c:I

    add-int/2addr v0, p3

    const/4 v1, 0x0

    const/16 v2, 0x400

    if-le v0, v2, :cond_0

    .line 2
    iput v1, p0, Lc1/l;->c:I

    .line 3
    iput v1, p0, Lc1/l;->d:I

    .line 4
    iput v1, p0, Lc1/l;->e:I

    .line 5
    :cond_0
    iget-object v0, p0, Lc1/l;->b:[B

    iget v2, p0, Lc1/l;->c:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Lc1/l;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lc1/l;->c:I

    .line 7
    iget p2, p0, Lc1/l;->e:I

    const/4 p3, 0x1

    if-eqz p2, :cond_4

    if-lt p2, p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lc1/l;->b:[B

    aget-byte p1, p1, v1

    move p2, p3

    .line 9
    :goto_0
    iget v0, p0, Lc1/l;->e:I

    if-ge p2, v0, :cond_2

    .line 10
    iget-object v0, p0, Lc1/l;->b:[B

    aget-byte v0, v0, p2

    add-int/2addr p1, v0

    int-to-byte p1, p1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    neg-int p1, p1

    int-to-byte p1, p1

    .line 11
    iget-object p2, p0, Lc1/l;->b:[B

    aget-byte v2, p2, v0

    if-ne p1, v2, :cond_3

    sub-int/2addr v0, p3

    .line 12
    invoke-virtual {p0, p2, p3, v0}, Lc1/l;->b3([BII)V

    .line 13
    iget p1, p0, Lc1/l;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lc1/l;->d:I

    goto :goto_1

    .line 14
    :cond_3
    iput p3, p0, Lc1/l;->d:I

    .line 15
    :goto_1
    iput v1, p0, Lc1/l;->e:I

    .line 16
    :cond_4
    iget p1, p0, Lc1/l;->c:I

    :goto_2
    iget p2, p0, Lc1/l;->d:I

    if-ge p2, p1, :cond_9

    .line 17
    iget-object v0, p0, Lc1/l;->b:[B

    aget-byte v2, v0, p2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_8

    add-int/lit8 v2, p2, 0x7

    .line 18
    iput v2, p0, Lc1/l;->e:I

    .line 19
    iget v3, p0, Lc1/l;->c:I

    if-lt v2, v3, :cond_5

    sub-int/2addr v2, p2

    .line 20
    iput v2, p0, Lc1/l;->e:I

    goto :goto_5

    .line 21
    :cond_5
    aget-byte v0, v0, p2

    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 22
    iget v2, p0, Lc1/l;->e:I

    if-ge p2, v2, :cond_6

    .line 23
    iget-object v2, p0, Lc1/l;->b:[B

    aget-byte v2, v2, p2

    add-int/2addr v0, v2

    int-to-byte v0, v0

    goto :goto_3

    :cond_6
    neg-int p2, v0

    int-to-byte p2, p2

    .line 24
    iget-object v0, p0, Lc1/l;->b:[B

    aget-byte v3, v0, v2

    if-ne p2, v3, :cond_7

    .line 25
    iget p2, p0, Lc1/l;->d:I

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v2, p2

    sub-int/2addr v2, p3

    invoke-virtual {p0, v0, v3, v2}, Lc1/l;->b3([BII)V

    .line 26
    iget p2, p0, Lc1/l;->e:I

    iput p2, p0, Lc1/l;->d:I

    goto :goto_4

    .line 27
    :cond_7
    iget p2, p0, Lc1/l;->d:I

    add-int/2addr p2, p3

    iput p2, p0, Lc1/l;->d:I

    .line 28
    :goto_4
    iput v1, p0, Lc1/l;->e:I

    .line 29
    :cond_8
    iget p2, p0, Lc1/l;->d:I

    add-int/2addr p2, p3

    iput p2, p0, Lc1/l;->d:I

    goto :goto_2

    :cond_9
    :goto_5
    if-eqz p2, :cond_b

    .line 30
    iget p1, p0, Lc1/l;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lc1/l;->c:I

    if-eqz p1, :cond_a

    .line 31
    iget-object p3, p0, Lc1/l;->b:[B

    invoke-static {p3, p2, p3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    :cond_a
    iput v1, p0, Lc1/l;->d:I

    :cond_b
    return-void
.end method
