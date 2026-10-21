.class public Lm1/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm1/c;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lm1/c;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lu0/b;->A3:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v0, v1}, Lm1/c;->f(ILjava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lm1/c;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget v0, La/b;->d0:I

    if-eqz v0, :cond_3

    .line 4
    :cond_1
    :goto_0
    sget-boolean v0, Lm1/a;->c:Z

    if-nez v0, :cond_2

    const-wide/16 v2, 0x3e8

    .line 5
    invoke-static {v2, v3}, La/i;->a0(J)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lm1/b;->a:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 7
    invoke-static {}, Lm1/c;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 8
    invoke-static {}, Lm1/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lm1/c;->f(ILjava/lang/String;)V

    .line 9
    invoke-static {v1}, Lm1/c;->b(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    return-void
.end method
