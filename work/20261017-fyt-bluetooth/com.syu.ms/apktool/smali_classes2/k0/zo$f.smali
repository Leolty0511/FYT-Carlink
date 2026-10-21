.class public Lk0/zo$f;
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
    iput-object p1, p0, Lk0/zo$f;->a:Lk0/zo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/zo$f;->a:Lk0/zo;

    iget v1, v0, Lk0/zo;->u:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v1, :cond_3

    sub-int/2addr v1, v5

    .line 2
    iput v1, v0, Lk0/zo;->u:I

    if-nez v1, :cond_3

    .line 3
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    .line 4
    invoke-static {}, Lk0/zo;->J3()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Lk0/zo;->K3()I

    move-result v0

    .line 6
    invoke-static {}, Lk0/zo;->K3()I

    move-result v1

    const/4 v6, 0x3

    if-nez v1, :cond_0

    .line 7
    invoke-static {}, Lk0/zo;->L3()I

    move-result v1

    if-ne v1, v5, :cond_0

    move v0, v6

    :cond_0
    const/4 v1, 0x7

    new-array v7, v1, [I

    const/16 v8, 0xe3

    aput v8, v7, v4

    const/16 v8, 0xca

    aput v8, v7, v5

    const/4 v8, 0x4

    aput v8, v7, v3

    aput v0, v7, v6

    .line 8
    invoke-static {}, Lk0/zo;->M3()I

    move-result v0

    aput v0, v7, v8

    .line 9
    invoke-static {}, Lk0/zo;->N3()I

    move-result v0

    shl-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x80

    invoke-static {}, Lk0/zo;->O3()I

    move-result v1

    shl-int/2addr v1, v8

    and-int/lit8 v1, v1, 0x70

    or-int/2addr v0, v1

    invoke-static {}, Lk0/zo;->d3()I

    move-result v1

    shl-int/2addr v1, v6

    and-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aput v0, v7, v2

    const/4 v0, 0x6

    .line 10
    invoke-static {}, Lk0/zo;->f3()I

    move-result v1

    aput v1, v7, v0

    .line 11
    invoke-static {v7}, Lz/k;->s([I)V

    .line 12
    :cond_1
    invoke-static {}, Lk0/zo;->g3()I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-static {}, Lk0/zo;->h3()I

    move-result v0

    invoke-static {v0}, Ly0/h;->u0(I)V

    .line 14
    :cond_2
    iget-object v0, p0, Lk0/zo$f;->a:Lk0/zo;

    iget-boolean v1, v0, Lk0/zo;->A:Z

    if-eqz v1, :cond_3

    .line 15
    invoke-static {v0, v4}, Lk0/zo;->b3(Lk0/zo;Z)V

    :cond_3
    const-string v0, "com.syu.fourcamera2"

    .line 16
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "persist.lsec.fourcamera2.show"

    .line 17
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    :cond_4
    iget-object v0, p0, Lk0/zo$f;->a:Lk0/zo;

    iget v1, v0, Lk0/zo;->r:I

    add-int/2addr v1, v5

    iput v1, v0, Lk0/zo;->r:I

    if-lt v1, v3, :cond_5

    new-array v0, v2, [I

    .line 19
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 20
    iget-object v0, p0, Lk0/zo$f;->a:Lk0/zo;

    iput v4, v0, Lk0/zo;->r:I

    :cond_5
    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x2
        0x29
        0x0
    .end array-data
.end method
