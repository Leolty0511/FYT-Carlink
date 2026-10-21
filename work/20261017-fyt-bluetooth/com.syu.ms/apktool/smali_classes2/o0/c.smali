.class public Lo0/c;
.super Lo0/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/c$d;
    }
.end annotation


# instance fields
.field public a:Ld0/a;

.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo0/h;-><init>()V

    .line 2
    new-instance v0, Lo0/c$d;

    invoke-direct {v0, p0}, Lo0/c$d;-><init>(Lo0/c;)V

    iput-object v0, p0, Lo0/c;->a:Ld0/a;

    .line 3
    new-instance v0, Lo0/c$b;

    invoke-direct {v0, p0}, Lo0/c$b;-><init>(Lo0/c;)V

    iput-object v0, p0, Lo0/c;->b:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lo0/c$c;

    invoke-direct {v0, p0}, Lo0/c$c;-><init>(Lo0/c;)V

    iput-object v0, p0, Lo0/c;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic F(Lo0/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo0/c;->M()V

    return-void
.end method

.method public static synthetic G(Lo0/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo0/c;->L()V

    return-void
.end method

.method public static synthetic H(Lo0/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo0/c;->O()V

    return-void
.end method

.method public static synthetic I(Lo0/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo0/c;->N()V

    return-void
.end method

.method public static synthetic J(Lo0/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo0/c;->P()V

    return-void
.end method

.method public static synthetic K(Lo0/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lo0/c;->Q()V

    return-void
.end method


# virtual methods
.method public A(I)V
    .locals 0

    return-void
.end method

.method public B()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public C(II)V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Ly/g;->M2(III)V

    return-void
.end method

.method public D(I)V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ly/g;->L2(II)V

    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public final L()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Ly/g;->L2(II)V

    return-void
.end method

.method public final M()V
    .locals 3

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ly/g;->L2(II)V

    return-void
.end method

.method public final N()V
    .locals 3

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ly/g;->L2(II)V

    return-void
.end method

.method public final O()V
    .locals 3

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ly/g;->L2(II)V

    return-void
.end method

.method public final P()V
    .locals 8

    .line 1
    sget v0, Lo0/e;->E:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lo0/e;->C:I

    if-gtz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {v1}, Lo0/g;->w(I)V

    .line 4
    sget v2, Lo0/e;->w:I

    const/4 v3, 0x0

    if-eq v2, v1, :cond_2

    .line 5
    sget-object v2, Lo0/e;->X:[Ljava/lang/String;

    const-string v4, "1.\\"

    aput-object v4, v2, v3

    .line 6
    sget-object v2, Lo0/e;->a0:[I

    aput v0, v2, v3

    .line 7
    invoke-static {v1}, Lo0/g;->c(I)V

    .line 8
    :cond_2
    sget v2, Lo0/e;->t:I

    if-eq v2, v0, :cond_4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_3

    .line 9
    sget-object v4, Lo0/e;->U:[Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    const-string v7, "CD Track %d "

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    move v2, v6

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v0}, Lo0/g;->b(I)V

    :cond_4
    return-void
.end method

.method public final Q()V
    .locals 4

    .line 1
    sget v0, Lo0/e;->E:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    sget v3, Lo0/e;->B:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    sget v2, Lo0/e;->C:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v2, 0x2

    sget v3, Lo0/e;->B:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "%d/%d CD Track %d "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/g;->R(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public c([BII)V
    .locals 1

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/16 v0, 0x50

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 2
    aget-byte p1, p1, p2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lo0/c;->L()V

    goto :goto_0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 4
    aget-byte p1, p1, p2

    const/16 p2, 0x22

    if-eq p1, p2, :cond_5

    const/16 p2, 0x23

    if-eq p1, p2, :cond_4

    const/16 p2, 0x28

    if-eq p1, p2, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 5
    :pswitch_0
    invoke-virtual {p0}, Lo0/c;->l()V

    goto :goto_0

    .line 6
    :pswitch_1
    invoke-virtual {p0}, Lo0/c;->r()V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-static {v0}, Lo0/g;->z(I)V

    .line 8
    invoke-virtual {p0}, Lo0/c;->M()V

    .line 9
    invoke-static {}, Lo0/g;->l()V

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lo0/c;->p()V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p0}, Lo0/c;->j()V

    goto :goto_0

    .line 12
    :cond_5
    invoke-virtual {p0}, Lo0/c;->i()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lo0/g;->i(I)V

    .line 2
    invoke-static {}, Ld0/b;->h()Ld0/b;

    move-result-object v1

    iget-object v2, p0, Lo0/c;->a:Ld0/a;

    invoke-virtual {v1, v2}, Ld0/b;->e(Ld0/a;)V

    .line 3
    invoke-static {}, Ld0/b;->h()Ld0/b;

    move-result-object v1

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld0/b;->f(Landroid/content/Context;)V

    .line 4
    sget-object v1, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lo0/c;->b:Ljava/lang/Runnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v1, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lo0/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    :try_start_0
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.example.discdaemondemoserver"

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo0/g;->j(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    :goto_0
    sget-object v0, La/b;->d:Lo1/d;

    new-instance v1, Lo0/c$a;

    invoke-direct {v1, p0}, Lo0/c$a;-><init>(Lo0/c;)V

    const-string v2, "com.syu.dvd"

    invoke-virtual {v0, v2, v1}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    invoke-static {}, Ld0/b;->h()Ld0/b;

    move-result-object v0

    iget-object v1, p0, Lo0/c;->a:Ld0/a;

    invoke-virtual {v0, v1}, Ld0/b;->j(Ld0/a;)V

    .line 2
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lo0/c;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lo0/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, La/b;->d:Lo1/d;

    const-string v1, "com.syu.dvd"

    invoke-virtual {v0, v1}, Lo1/d;->i(Ljava/lang/Comparable;)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x20
    .end array-data
.end method

.method public i()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public q(I)V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Ly/g;->L2(II)V

    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public s(I)V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Ly/g;->L2(II)V

    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public v()V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public x()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public y()V
    .locals 2

    .line 1
    sget-object v0, Lo0/e;->c:Ly/g;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public z(I)V
    .locals 0

    return-void
.end method
