.class public Ln1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Ln1/b;


# direct methods
.method public constructor <init>(Ln1/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln1/b$a;->b:Ln1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln1/b$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0}, Ln1/b;->j(Ln1/b;)I

    .line 2
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0}, Ln1/b;->m(Ln1/b;)I

    .line 3
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0}, Ln1/b;->h(Ln1/b;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-le v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0, v1}, Ln1/b;->i(Ln1/b;I)I

    .line 5
    :cond_0
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0}, Ln1/b;->k(Ln1/b;)I

    move-result v0

    const/16 v2, 0x10

    if-le v0, v2, :cond_1

    .line 6
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0, v2}, Ln1/b;->l(Ln1/b;I)I

    .line 7
    :cond_1
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0}, Ln1/b;->o(Ln1/b;)I

    .line 8
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0}, Ln1/b;->p(Ln1/b;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v2}, Ln1/b;->h(Ln1/b;)I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v4}, Ln1/b;->n(Ln1/b;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x1

    iget-object v4, p0, Ln1/b$a;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v1, "%06d @ %s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 9
    iget-object v0, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v0}, Ln1/b;->q(Ln1/b;)[I

    move-result-object v0

    iget-object v1, p0, Ln1/b$a;->b:Ln1/b;

    invoke-static {v1}, Ln1/b;->h(Ln1/b;)I

    move-result v1

    iget-object v2, p0, Ln1/b$a;->b:Ln1/b;

    iget-object v3, v2, Ln1/b;->l:[I

    invoke-static {v2}, Ln1/b;->h(Ln1/b;)I

    move-result v2

    iget-object v4, p0, Ln1/b$a;->b:Ln1/b;

    iget-object v5, v4, Ln1/b;->l:[I

    array-length v5, v5

    rem-int/2addr v2, v5

    aget v2, v3, v2

    aput v2, v0, v1

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    return-void
.end method
