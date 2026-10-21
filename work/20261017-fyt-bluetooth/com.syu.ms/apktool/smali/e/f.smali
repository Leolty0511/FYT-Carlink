.class public Le/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:I = 0x0

.field public static f:I = 0x0

.field public static g:I = 0x0

.field public static h:Ljava/util/regex/Pattern; = null

.field public static i:Z = false

.field public static j:Ljava/lang/Runnable;

.field public static k:I

.field public static final l:Ljava/lang/Runnable;

.field public static m:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static n:I

.field public static o:Le/e$a;

.field public static p:I

.field public static q:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/f$a;

    invoke-direct {v0}, Le/f$a;-><init>()V

    sput-object v0, Le/f;->j:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 2
    sput v0, Le/f;->k:I

    .line 3
    new-instance v0, Le/f$b;

    invoke-direct {v0}, Le/f$b;-><init>()V

    sput-object v0, Le/f;->l:Ljava/lang/Runnable;

    const/4 v1, 0x0

    .line 4
    sput-object v1, Le/f;->m:Landroid/util/SparseArray;

    .line 5
    invoke-static {v0}, Le/f;->g(Ljava/lang/Runnable;)V

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Le/f;->m:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 7
    sput v0, Le/f;->n:I

    .line 8
    new-instance v1, Le/e$a;

    invoke-direct {v1, v0, v0, v0}, Le/e$a;-><init>(III)V

    sput-object v1, Le/f;->o:Le/e$a;

    .line 9
    sput v0, Le/f;->p:I

    .line 10
    new-instance v0, Le/f$c;

    invoke-direct {v0}, Le/f$c;-><init>()V

    sput-object v0, Le/f;->q:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Z)I
    .locals 0

    .line 1
    invoke-static {p0}, Le/f;->h(Z)I

    move-result p0

    return p0
.end method

.method public static synthetic b()I
    .locals 1

    .line 1
    sget v0, Le/f;->p:I

    return v0
.end method

.method public static synthetic c(I)I
    .locals 0

    .line 1
    sput p0, Le/f;->p:I

    return p0
.end method

.method public static synthetic d()I
    .locals 2

    .line 1
    sget v0, Le/f;->p:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Le/f;->p:I

    return v0
.end method

.method public static synthetic e()Ljava/lang/Runnable;
    .locals 1

    .line 1
    sget-object v0, Le/f;->q:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static synthetic f(I)I
    .locals 0

    .line 1
    sput p0, Le/f;->n:I

    return p0
.end method

.method public static g(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h(Z)I
    .locals 6

    .line 1
    sget v0, Le/f;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x78

    if-eq v0, v3, :cond_1

    sget v0, Le/f;->f:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2
    :goto_1
    sget v4, Le/f;->d:I

    if-eq v4, v3, :cond_3

    sget v4, Le/f;->e:I

    if-ne v4, v3, :cond_2

    goto :goto_2

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v2

    .line 3
    :goto_3
    sget v5, Le/f;->b:I

    if-eq v5, v3, :cond_5

    sget v5, Le/f;->g:I

    if-ne v5, v3, :cond_4

    goto :goto_4

    :cond_4
    move v3, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v3, v2

    :goto_5
    if-nez p0, :cond_9

    if-nez v0, :cond_6

    if-nez v3, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    move v1, v2

    .line 4
    :cond_7
    sget-object p0, Lf/b;->d:Lf/b;

    iget-object p0, p0, Lf/b;->c:Lf/c;

    if-nez v1, :cond_8

    if-eqz p0, :cond_8

    .line 5
    invoke-virtual {p0}, Lf/c;->e()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lf/c;->g()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lf/c;->f()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_6

    :cond_8
    move v2, v1

    :cond_9
    :goto_6
    return v2
.end method

.method public static i(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-ne p0, v1, :cond_1

    const/16 p0, 0x78

    goto :goto_1

    .line 1
    :cond_1
    sget p0, Le/f;->g:I

    if-le p0, v1, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    sput p0, Le/f;->f:I

    .line 2
    sget-object p0, Lf/b;->d:Lf/b;

    iget-object p0, p0, Lf/b;->c:Lf/c;

    invoke-virtual {p0}, Lf/c;->e()Z

    move-result p0

    sput p0, Ly0/f;->Q0:I

    const/16 v2, 0x6f

    new-array v1, v1, [I

    aput p0, v1, v0

    .line 3
    invoke-static {v2, v1}, Lu0/d;->I3(I[I)V

    .line 4
    sget-object p0, Ly0/g;->t:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    .line 5
    invoke-static {}, Ly0/h;->M()V

    return-void
.end method

.method public static j(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ne p0, v0, :cond_1

    const/16 v0, 0x78

    .line 1
    :cond_1
    sput v0, Le/f;->g:I

    .line 2
    sget-object p0, Lf/b;->d:Lf/b;

    iget-object p0, p0, Lf/b;->c:Lf/c;

    invoke-virtual {p0}, Lf/c;->f()Z

    move-result p0

    sput p0, Ly0/f;->R0:I

    .line 3
    invoke-static {}, Ly0/h;->M()V

    return-void
.end method

.method public static k(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ne p0, v0, :cond_1

    const/16 v0, 0x78

    .line 1
    :cond_1
    sput v0, Le/f;->e:I

    if-eqz p0, :cond_2

    .line 2
    sget-object p0, Lf/b;->d:Lf/b;

    iget-object p0, p0, Lf/b;->c:Lf/c;

    invoke-virtual {p0}, Lf/c;->g()Z

    move-result p0

    sput p0, Ly0/f;->T0:I

    .line 3
    sget-object p0, Ly0/g;->k:Lo1/z;

    sget v0, Ly0/f;->T0:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Ly0/h;->M()V

    :cond_2
    return-void
.end method

.method public static l()V
    .locals 3

    .line 1
    sget-object v0, Lh0/d;->b:Lo1/y;

    sget-object v1, Le/f;->j:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static m()Z
    .locals 1

    .line 1
    sget v0, Le/f;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Le/f;->h:Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "app_category/voice_app.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lq1/a;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/f;->h:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    :cond_0
    :goto_0
    sget-object v0, Lu0/b;->L1:Ljava/lang/String;

    invoke-static {v0, p0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Le/f;->h:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public static o()V
    .locals 0

    return-void
.end method

.method public static p(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static q(IFF)V
    .locals 4

    .line 1
    sget-object v0, Le/f;->o:Le/e$a;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v0, p0, p1, p2}, Le/e$a;->a(III)V

    .line 2
    sget-object v0, Le/e;->e:Lo1/z;

    sget-object v1, Le/f;->o:Le/e$a;

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lg1/d;->a()V

    :cond_0
    const/16 v0, 0x4d

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 v3, 0x1

    aput p1, v1, v3

    const/4 p1, 0x2

    aput p2, v1, p1

    .line 4
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    .line 5
    sget-boolean p1, Lu0/b;->f4:Z

    if-eqz p1, :cond_5

    if-nez p0, :cond_1

    .line 6
    sget p0, Le/f;->n:I

    add-int/2addr p0, v3

    sput p0, Le/f;->n:I

    goto :goto_0

    .line 7
    :cond_1
    sput v2, Le/f;->n:I

    .line 8
    :goto_0
    sget p0, Le/f;->n:I

    const/4 p1, 0x5

    if-lt p0, p1, :cond_2

    .line 9
    sput p1, Le/f;->n:I

    goto :goto_1

    :cond_2
    if-gtz p0, :cond_3

    .line 10
    sput v2, Le/f;->n:I

    .line 11
    :cond_3
    :goto_1
    sget p0, Le/f;->n:I

    if-lt p0, p1, :cond_4

    .line 12
    sput v2, Le/f;->p:I

    .line 13
    sget-object p0, Le/f;->q:Ljava/lang/Runnable;

    invoke-static {p0}, Le/f;->g(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 14
    :cond_4
    sget-object p0, Le/f;->q:Ljava/lang/Runnable;

    invoke-static {p0}, Le/f;->p(Ljava/lang/Runnable;)V

    .line 15
    sput v2, Le/f;->p:I

    :cond_5
    :goto_2
    return-void
.end method
