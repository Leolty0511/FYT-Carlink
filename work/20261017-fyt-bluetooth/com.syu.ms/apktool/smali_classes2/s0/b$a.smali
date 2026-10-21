.class public Ls0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls0/b;


# direct methods
.method public constructor <init>(Ls0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls0/b$a;->a:Ls0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    sget v0, Ls0/c;->f:I

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Ls0/c;->p:I

    if-nez v0, :cond_1

    invoke-static {}, Ls0/b;->i()I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0x1f4

    .line 3
    invoke-static {v0}, Ls0/b;->k(I)I

    return-void

    .line 4
    :cond_1
    invoke-static {}, Ls0/b;->i()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 5
    invoke-static {v1}, Ls0/b;->j(I)I

    .line 6
    :cond_2
    invoke-static {}, Ls0/b;->l()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Ls0/b$a;->a:Ls0/b;

    sget v2, Ls0/b;->g:I

    const/16 v3, 0x28

    invoke-static {v0, v2, v3}, Ls0/b;->m(Ls0/b;II)I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {v0, v2}, Ls0/b;->n(Ls0/b;I)I

    move-result v0

    .line 8
    iget-object v2, p0, Ls0/b$a;->a:Ls0/b;

    sget v3, Ls0/b;->g:I

    const/16 v4, 0x29

    invoke-static {v2, v3, v4}, Ls0/b;->m(Ls0/b;II)I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {v2, v3}, Ls0/b;->n(Ls0/b;I)I

    move-result v2

    .line 9
    iget-object v3, p0, Ls0/b$a;->a:Ls0/b;

    sget v4, Ls0/b;->g:I

    const/16 v5, 0x2a

    invoke-static {v3, v4, v5}, Ls0/b;->m(Ls0/b;II)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    invoke-static {v3, v4}, Ls0/b;->n(Ls0/b;I)I

    move-result v3

    .line 10
    iget-object v4, p0, Ls0/b$a;->a:Ls0/b;

    sget v5, Ls0/b;->g:I

    const/16 v6, 0x2b

    invoke-static {v4, v5, v6}, Ls0/b;->m(Ls0/b;II)I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v4, v5}, Ls0/b;->n(Ls0/b;I)I

    move-result v4

    .line 11
    iget-object v5, p0, Ls0/b$a;->a:Ls0/b;

    sget v6, Ls0/b;->g:I

    const/16 v7, 0x2c

    invoke-static {v5, v6, v7}, Ls0/b;->m(Ls0/b;II)I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-static {v5, v6}, Ls0/b;->n(Ls0/b;I)I

    move-result v5

    .line 12
    iget-object v6, p0, Ls0/b$a;->a:Ls0/b;

    sget v7, Ls0/b;->g:I

    const/16 v8, 0x2d

    invoke-static {v6, v7, v8}, Ls0/b;->m(Ls0/b;II)I

    move-result v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v6, v7}, Ls0/b;->n(Ls0/b;I)I

    move-result v6

    const-string v7, "gsensor"

    const-string v8, "--------------------------"

    .line 13
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v1

    const-string v11, "%02X "

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " y = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v9, [Ljava/lang/Object;

    .line 15
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v1

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " z = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v9, [Ljava/lang/Object;

    .line 16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v1

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 17
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {v2, v0}, Ls0/d;->e(II)V

    .line 19
    invoke-static {v4, v3}, Ls0/d;->f(II)V

    .line 20
    invoke-static {v6, v5}, Ls0/d;->g(II)V

    .line 21
    invoke-static {}, Ls0/b;->o()[I

    move-result-object v0

    sget v3, Ls0/c;->h:I

    const/4 v5, 0x4

    invoke-static {v3, v1, v5}, Lo1/o0;->a(III)I

    move-result v1

    aget v0, v0, v1

    if-gt v2, v0, :cond_3

    if-gt v4, v0, :cond_3

    if-le v6, v0, :cond_4

    :cond_3
    const-string v0, "\u53d1\u751f\u4e86\u78b0\u649e"

    .line 22
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u53d1\u751f\u4e86\u78b0\u649e DVR\u62cd\u7167"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 24
    invoke-static {v9}, Ls0/d;->j(I)V

    :cond_4
    return-void
.end method
