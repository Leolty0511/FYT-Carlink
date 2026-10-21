.class public Lk0/zo$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zo;


# direct methods
.method public constructor <init>(Lk0/zo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zo$h;->a:Lk0/zo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lk0/zo;->i0:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_0

    .line 2
    invoke-static {v0}, Ly0/h;->k(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v2}, Ly0/h;->k(I)V

    .line 4
    :goto_0
    sget v1, Lu0/b;->D:I

    if-eq v1, v3, :cond_4

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataMain.sAppId 22222222222222 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lu0/b;->D:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appId_prev 3333333333333 = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lk0/zo;->i0:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 7
    sget v1, Lk0/zo;->i0:I

    if-ne v1, v3, :cond_3

    .line 8
    invoke-static {}, Lk0/zo;->J3()I

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lk0/zo$h;->a:Lk0/zo;

    iget v1, v1, Lk0/zo;->u:I

    if-gtz v1, :cond_2

    .line 10
    invoke-static {}, Lk0/zo;->K3()I

    move-result v1

    .line 11
    invoke-static {}, Lk0/zo;->K3()I

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_1

    .line 12
    invoke-static {}, Lk0/zo;->L3()I

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v4

    :cond_1
    const/4 v3, 0x7

    new-array v5, v3, [I

    const/16 v6, 0xe3

    aput v6, v5, v0

    const/16 v6, 0xca

    aput v6, v5, v2

    const/4 v2, 0x2

    const/4 v6, 0x4

    aput v6, v5, v2

    aput v1, v5, v4

    .line 13
    invoke-static {}, Lk0/zo;->M3()I

    move-result v1

    aput v1, v5, v6

    const/4 v1, 0x5

    .line 14
    invoke-static {}, Lk0/zo;->N3()I

    move-result v2

    shl-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x80

    invoke-static {}, Lk0/zo;->O3()I

    move-result v3

    shl-int/2addr v3, v6

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    invoke-static {}, Lk0/zo;->d3()I

    move-result v3

    shl-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aput v2, v5, v1

    const/4 v1, 0x6

    .line 15
    invoke-static {}, Lk0/zo;->f3()I

    move-result v2

    aput v2, v5, v1

    .line 16
    invoke-static {v5}, Lz/k;->s([I)V

    .line 17
    :cond_2
    invoke-static {}, Lk0/zo;->g3()I

    move-result v1

    if-nez v1, :cond_3

    .line 18
    invoke-static {}, Lk0/zo;->h3()I

    move-result v1

    invoke-static {v1}, Ly0/h;->u0(I)V

    .line 19
    :cond_3
    iget-object v1, p0, Lk0/zo$h;->a:Lk0/zo;

    iget-boolean v2, v1, Lk0/zo;->A:Z

    if-eqz v2, :cond_4

    .line 20
    invoke-static {v1, v0}, Lk0/zo;->b3(Lk0/zo;Z)V

    .line 21
    :cond_4
    sget v0, Lu0/b;->D:I

    sput v0, Lk0/zo;->i0:I

    :cond_5
    return-void
.end method
