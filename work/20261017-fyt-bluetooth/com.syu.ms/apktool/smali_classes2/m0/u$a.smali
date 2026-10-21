.class public Lm0/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:[B

.field public final synthetic b:Lm0/u;


# direct methods
.method public constructor <init>(Lm0/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/u$a;->b:Lm0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [B

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Lm0/u$a;->a:[B

    return-void

    :array_0
    .array-data 1
        -0x34t
        0x33t
        0x1t
        -0x20t
        0x1t
        -0x1ft
    .end array-data
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm0/u$a;->b:Lm0/u;

    invoke-static {v0}, Lm0/u;->N2(Lm0/u;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CAN"

    const-string v1, "reqUpgradeMode"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lm0/u$a;->b:Lm0/u;

    invoke-static {v0}, Lm0/u;->Q2(Lm0/u;)I

    .line 4
    iget-object v0, p0, Lm0/u$a;->b:Lm0/u;

    invoke-static {v0}, Lm0/u;->O2(Lm0/u;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lm0/u$a;->b:Lm0/u;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lm0/u;->P2(Lm0/u;I)I

    .line 6
    invoke-static {}, Lm0/d;->g()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lm0/u$a;->a:[B

    invoke-static {v0}, Lm0/d;->m([B)V

    .line 8
    :goto_0
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
