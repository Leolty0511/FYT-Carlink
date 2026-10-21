.class public Lk0/aa$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/aa;


# direct methods
.method public constructor <init>(Lk0/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/aa$h;->a:Lk0/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x8

    const/16 v2, 0x9

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    :cond_1
    if-ne v0, v2, :cond_2

    const-string v0, ""

    .line 4
    sput-object v0, Lu0/b;->j3:Ljava/lang/String;

    .line 5
    sput-object v0, Lu0/b;->k3:Ljava/lang/String;

    .line 6
    :cond_2
    sget-object v0, Lu0/b;->i3:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Lk0/aa$h;->a:Lk0/aa;

    const/16 v2, -0x1e

    invoke-static {v1, v2, v0}, Lk0/aa;->a3(Lk0/aa;BLjava/lang/String;)V

    .line 8
    :cond_3
    sget-object v0, Lu0/b;->j3:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 9
    iget-object v1, p0, Lk0/aa$h;->a:Lk0/aa;

    const/16 v2, -0x1c

    invoke-static {v1, v2, v0}, Lk0/aa;->a3(Lk0/aa;BLjava/lang/String;)V

    .line 10
    :cond_4
    sget-object v0, Lu0/b;->k3:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 11
    iget-object v1, p0, Lk0/aa$h;->a:Lk0/aa;

    const/16 v2, -0x1d

    invoke-static {v1, v2, v0}, Lk0/aa;->a3(Lk0/aa;BLjava/lang/String;)V

    .line 12
    :cond_5
    sget-object v0, Lu0/b;->l3:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 13
    iget-object v1, p0, Lk0/aa$h;->a:Lk0/aa;

    const/16 v2, -0x1b

    invoke-static {v1, v2, v0}, Lk0/aa;->a3(Lk0/aa;BLjava/lang/String;)V

    .line 14
    :cond_6
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lk0/aa$h;->a:Lk0/aa;

    iget v1, v0, Lk0/aa;->f:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lk0/aa;->f:I

    if-lez v1, :cond_7

    .line 16
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void

    :array_0
    .array-data 4
        0xe3
        0x2
        0x2d
        0x2
        0xb
    .end array-data
.end method
