.class public Lm0/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/j;


# direct methods
.method public constructor <init>(Lm0/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/j$a;->a:Lm0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v0}, Lm0/j;->N2(Lm0/j;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v0}, Lm0/j;->Q2(Lm0/j;)I

    .line 3
    iget-object v0, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v0}, Lm0/j;->O2(Lm0/j;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v0, v1}, Lm0/j;->P2(Lm0/j;I)I

    .line 5
    iget-object v0, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v0}, Lm0/j;->R2(Lm0/j;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Ll0/z;->a:Ll0/a;

    const/4 v3, 0x7

    new-array v3, v3, [I

    const/16 v4, 0x2e

    aput v4, v3, v1

    const/16 v1, 0xe1

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v1, 0x2

    aput v2, v3, v1

    iget-object v5, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v5}, Lm0/j;->S2(Lm0/j;)[B

    move-result-object v5

    iget-object v6, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v6}, Lm0/j;->T2(Lm0/j;)I

    move-result v6

    sub-int/2addr v6, v2

    aget-byte v5, v5, v6

    const/4 v6, 0x3

    aput v5, v3, v6

    iget-object v5, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v5}, Lm0/j;->S2(Lm0/j;)[B

    move-result-object v5

    iget-object v7, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v7}, Lm0/j;->T2(Lm0/j;)I

    move-result v7

    sub-int/2addr v7, v6

    aget-byte v5, v5, v7

    aput v5, v3, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v5}, Lm0/j;->S2(Lm0/j;)[B

    move-result-object v5

    iget-object v6, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v6}, Lm0/j;->T2(Lm0/j;)I

    move-result v6

    sub-int/2addr v6, v1

    aget-byte v1, v5, v6

    aput v1, v3, v2

    const/4 v1, 0x6

    iget-object v2, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v2}, Lm0/j;->S2(Lm0/j;)[B

    move-result-object v2

    iget-object v5, p0, Lm0/j$a;->a:Lm0/j;

    invoke-static {v5}, Lm0/j;->T2(Lm0/j;)I

    move-result v5

    sub-int/2addr v5, v4

    aget-byte v2, v2, v5

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Ll0/a;->f([I)V

    const-wide/16 v0, 0x14

    .line 7
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :catch_0
    :goto_0
    return-void
.end method
