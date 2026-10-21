.class public Lk0/ip$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ip;


# direct methods
.method public constructor <init>(Lk0/ip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ip$d;->a:Lk0/ip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/ip$d;->a:Lk0/ip;

    iget v1, v0, Lk0/ip;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ip;->h:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v5, Lu0/b;->a0:I

    const/4 v6, 0x3

    aput v5, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lk0/ip$d;->a:Lk0/ip;

    invoke-static {v1}, Lk0/ip;->d3(Lk0/ip;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v2, v2}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v1, v5}, Lk0/ip;->e3(Lk0/ip;I)V

    .line 5
    iget-object v1, p0, Lk0/ip$d;->a:Lk0/ip;

    invoke-static {v1}, Lk0/ip;->d3(Lk0/ip;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/ip;->f3(Lk0/ip;I)V

    .line 6
    iget-object v1, p0, Lk0/ip$d;->a:Lk0/ip;

    invoke-static {v1}, Lk0/ip;->d3(Lk0/ip;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/ip;->g3(Lk0/ip;I)V

    .line 7
    iget-object v1, p0, Lk0/ip$d;->a:Lk0/ip;

    invoke-static {v1}, Lk0/ip;->d3(Lk0/ip;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/ip;->h3(Lk0/ip;I)V

    .line 8
    iget-object v0, p0, Lk0/ip$d;->a:Lk0/ip;

    invoke-static {v0}, Lk0/ip;->d3(Lk0/ip;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ip;->i3(Lk0/ip;I)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, v0, Lk0/ip;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lk0/ip$d;->a:Lk0/ip;

    iput v3, v0, Lk0/ip;->h:I

    :cond_1
    :goto_0
    return-void
.end method
