.class public Li0/c$a$b;
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
    iput-object p1, p0, Li0/c$a$b;->b:Li0/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Li0/c$a$b;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Li0/c$a$b;->a:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Li0/c$a$b;->b:Li0/c$a;

    invoke-static {v2}, Li0/c$a;->b(Li0/c$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Li0/c$a$b;->b:Li0/c$a;

    iget-wide v3, v2, Li0/c$a;->e:J

    sub-long/2addr v0, v3

    invoke-static {v2, v0, v1}, Li0/c$a;->d(Li0/c$a;J)J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Li0/c$a$b;->b:Li0/c$a;

    invoke-static {v2}, Li0/c$a;->c(Li0/c$a;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {v2, v0, v1}, Li0/c$a;->e(Li0/c$a;J)V

    :goto_0
    return-void
.end method
