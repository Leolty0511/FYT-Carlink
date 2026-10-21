.class public Li0/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li0/c$a;->i(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:J

.field public final synthetic b:Li0/c$a;


# direct methods
.method public constructor <init>(Li0/c$a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Li0/c$a$a;->b:Li0/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Li0/c$a$a;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Li0/c$a$a;->a:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Li0/c$a$a;->b:Li0/c$a;

    invoke-static {v2, v0, v1}, Li0/c$a;->a(Li0/c$a;J)V

    .line 3
    sget v2, Lh0/c;->A:I

    if-gez v2, :cond_0

    return-void

    :cond_0
    if-nez v2, :cond_1

    .line 4
    iget-object v0, p0, Li0/c$a$a;->b:Li0/c$a;

    iget-object v0, v0, Li0/c$a;->i:Li0/c;

    invoke-virtual {v0}, Li0/c;->L()V

    return-void

    :cond_1
    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    .line 5
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 6
    iget-object v4, p0, Li0/c$a$a;->b:Li0/c$a;

    iget-object v4, v4, Li0/c$a;->i:Li0/c;

    const/16 v5, 0x15

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v7, 0x0

    long-to-int v8, v2

    aput v8, v6, v7

    invoke-virtual {v4, v5, v6}, Li0/c;->z0(I[I)V

    cmp-long v0, v2, v0

    if-gtz v0, :cond_2

    .line 7
    iget-object v0, p0, Li0/c$a$a;->b:Li0/c$a;

    iget-object v0, v0, Li0/c$a;->i:Li0/c;

    invoke-virtual {v0}, Li0/c;->L()V

    :cond_2
    return-void
.end method
