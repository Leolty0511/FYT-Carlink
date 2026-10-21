.class public Lk0/h5$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/h5;


# direct methods
.method public constructor <init>(Lk0/h5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/h5$f;->a:Lk0/h5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2
    :cond_0
    sget-object v0, Lu0/b;->i3:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lk0/h5$f;->a:Lk0/h5;

    const/16 v2, -0x1e

    invoke-static {v1, v2, v0}, Lk0/h5;->b3(Lk0/h5;BLjava/lang/String;)V

    .line 4
    :cond_1
    sget-object v0, Lu0/b;->j3:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 5
    iget-object v1, p0, Lk0/h5$f;->a:Lk0/h5;

    const/16 v2, -0x1c

    invoke-static {v1, v2, v0}, Lk0/h5;->b3(Lk0/h5;BLjava/lang/String;)V

    .line 6
    :cond_2
    sget-object v0, Lu0/b;->k3:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lk0/h5$f;->a:Lk0/h5;

    const/16 v2, -0x1d

    invoke-static {v1, v2, v0}, Lk0/h5;->b3(Lk0/h5;BLjava/lang/String;)V

    .line 8
    :cond_3
    sget-object v0, Lu0/b;->l3:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 9
    iget-object v1, p0, Lk0/h5$f;->a:Lk0/h5;

    const/16 v2, -0x1b

    invoke-static {v1, v2, v0}, Lk0/h5;->b3(Lk0/h5;BLjava/lang/String;)V

    .line 10
    :cond_4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/h5$f;->a:Lk0/h5;

    iget v1, v0, Lk0/h5;->g:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lk0/h5;->g:I

    if-lez v1, :cond_5

    .line 12
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    return-void
.end method
