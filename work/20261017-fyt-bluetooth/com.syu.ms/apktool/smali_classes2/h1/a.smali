.class public Lh1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;
.implements Ljava/lang/Runnable;


# static fields
.field public static l:Lh1/a;


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Z

.field public c:Z

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:I

.field public i:Lo1/p;

.field public j:Lo1/p;

.field public final k:Lc/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lh1/a;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lh1/a;->b:Z

    .line 4
    iput-boolean v0, p0, Lh1/a;->c:Z

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lh1/a;->d:Ljava/util/HashMap;

    .line 6
    iput-boolean v0, p0, Lh1/a;->e:Z

    .line 7
    iput-boolean v0, p0, Lh1/a;->f:Z

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lh1/a;->g:Z

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lh1/a;->h:I

    .line 10
    new-instance v0, Lh1/a$a;

    invoke-direct {v0, p0}, Lh1/a$a;-><init>(Lh1/a;)V

    iput-object v0, p0, Lh1/a;->i:Lo1/p;

    .line 11
    new-instance v0, Lh1/a$b;

    invoke-direct {v0, p0}, Lh1/a$b;-><init>(Lh1/a;)V

    iput-object v0, p0, Lh1/a;->j:Lo1/p;

    .line 12
    new-instance v0, Lh1/a$c;

    invoke-direct {v0, p0}, Lh1/a$c;-><init>(Lh1/a;)V

    iput-object v0, p0, Lh1/a;->k:Lc/d;

    .line 13
    sget-object v1, Le/e;->c:Lo1/z;

    iget-object v2, p0, Lh1/a;->i:Lo1/p;

    invoke-virtual {v1, v2}, Lo1/z;->a(Lo1/p;)V

    .line 14
    sget-object v1, La/b;->d:Lo1/d;

    const-string v2, "com.syu.carlink"

    invoke-virtual {v1, v2, p0}, Lo1/d;->a(Ljava/lang/Comparable;Ljava/lang/Object;)V

    const-string v2, "com.syu.hicar"

    .line 15
    invoke-virtual {v1, v2, p0}, Lo1/d;->a(Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 16
    sget-object v1, Ly0/g;->l:Lo1/z;

    iget-object v2, p0, Lh1/a;->j:Lo1/p;

    invoke-virtual {v1, v2}, Lo1/z;->a(Lo1/p;)V

    .line 17
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x57

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 18
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x58

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 19
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 20
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x7f

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 21
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x55

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 22
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 23
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 24
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x240

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 25
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v2, 0x24c

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    .line 26
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v3, 0x24b

    invoke-virtual {v1, v3, v0}, Lc/e;->i(ILc/d;)V

    .line 27
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v3, 0x23e

    invoke-virtual {v1, v3, v0}, Lc/e;->i(ILc/d;)V

    .line 28
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    const/16 v3, 0x23f

    invoke-virtual {v1, v3, v0}, Lc/e;->i(ILc/d;)V

    .line 29
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lc/e;->i(ILc/d;)V

    return-void
.end method

.method public static synthetic a(Lh1/a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lh1/a;->c()V

    return-void
.end method

.method public static synthetic b(Lh1/a;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lh1/a;->h()Z

    move-result p0

    return p0
.end method

.method public static d()Lh1/a;
    .locals 1

    .line 1
    sget-object v0, Lh1/a;->l:Lh1/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lh1/a;

    invoke-direct {v0}, Lh1/a;-><init>()V

    sput-object v0, Lh1/a;->l:Lh1/a;

    .line 3
    :cond_0
    sget-object v0, Lh1/a;->l:Lh1/a;

    return-object v0
.end method


# virtual methods
.method public R(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lh1/a;->c:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============>>> topChanged isTop : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Usb"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string p1, "net.easyconn"

    .line 3
    invoke-static {p1}, La/i;->h(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x5a
    .end array-data
.end method

.method public final c()V
    .locals 3

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Lg/f;->n(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "sys.carlink.7731_cp_media"

    .line 2
    invoke-static {v1, v0}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "/system/bin/CarplayService"

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lh1/a;->d:Ljava/util/HashMap;

    const-string v2, "play"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lh1/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public e()I
    .locals 2

    const-string v0, "sys.carlink.type"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 8

    .line 1
    invoke-static {}, Lh0/g;->Y2()Lh0/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lh0/g;->a3()Lj0/b;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mRdaParser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " moduleBt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AA"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    .line 4
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->j3()I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lh1/a;->e()I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callStateOfCp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " linkType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {v1}, Lj0/b;->B()Li0/c;

    move-result-object v1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "linkType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callStateOfCp : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " MD Call: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Li0/c;->D()Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " isTop : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lh1/a;->c:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_2

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Li0/c;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lh1/a;->c:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_2
    if-ne v3, v5, :cond_3

    if-lez v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lh1/a;->c:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne v3, v0, :cond_5

    .line 11
    iget-boolean v6, p0, Lh1/a;->c:Z

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p0}, Lh1/a;->i()Z

    move-result v6

    :cond_5
    :goto_2
    return v6
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh1/a;->f:Z

    return v0
.end method

.method public final h()Z
    .locals 7

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    const/16 v1, 0x8

    .line 2
    invoke-static {v1}, Lg/f;->n(I)Z

    move-result v1

    const-string v2, "com.syu.carlink"

    const/16 v3, 0xa

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {p0}, Lh1/a;->c()V

    .line 4
    iget-object v1, p0, Lh1/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 5
    iget-object v1, p0, Lh1/a;->d:Ljava/util/HashMap;

    const-string v6, "/system/bin/CarplayService"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lh1/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lh1/a;->e:Z

    goto :goto_5

    .line 6
    :cond_2
    sget v1, Lu0/b;->D:I

    if-eq v1, v3, :cond_4

    const/16 v6, 0xf

    if-ne v1, v6, :cond_3

    goto :goto_2

    :cond_3
    move v1, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v4

    :goto_3
    if-eqz v1, :cond_5

    .line 7
    invoke-virtual {v0}, Lu0/i;->g3()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    iput-boolean v1, p0, Lh1/a;->e:Z

    .line 8
    :cond_6
    :goto_5
    sget v1, Lu0/b;->D:I

    if-ne v1, v3, :cond_7

    invoke-virtual {v0}, Lu0/i;->g3()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.huawei.dmsdpdevice"

    invoke-static {v1, v2}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v4

    goto :goto_6

    :cond_7
    move v1, v5

    :goto_6
    const-string v2, "sys.carlink.type"

    .line 9
    invoke-static {v2, v5}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    .line 10
    invoke-virtual {v0}, Lu0/i;->j3()I

    move-result v0

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=========>>> type : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callStateOfCp : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " carlinkActive : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lh1/a;->e:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AA"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-boolean v2, p0, Lh1/a;->e:Z

    if-nez v2, :cond_8

    if-gtz v0, :cond_8

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    move v4, v5

    :goto_7
    return v4
.end method

.method public final i()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh1/a;->e()I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lh1/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh1/a;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lh1/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh1/a;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh1/a;->e()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lh1/a;->g()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v1, "com.syu.hicar"

    .line 3
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "com.syu.carlink"

    .line 4
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lh1/a;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lh1/a;->k()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh1/a;->l()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lh1/a;->f:Z

    return-void
.end method

.method public o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lh1/a;->g:Z

    return-void
.end method

.method public run()V
    .locals 0

    return-void
.end method
