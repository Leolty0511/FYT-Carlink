.class public Lz/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lo1/f0;

.field public b:Lo1/e0;

.field public c:Lo1/q;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Lo1/f0;Lo1/e0;Lo1/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz/b;->a:Lo1/f0;

    .line 3
    iput-object p2, p0, Lz/b;->b:Lo1/e0;

    .line 4
    iput-object p3, p0, Lz/b;->c:Lo1/q;

    .line 5
    iput p4, p0, Lz/b;->d:I

    .line 6
    invoke-virtual {p2}, Lo1/e0;->a()I

    move-result p1

    iput p1, p0, Lz/b;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lz/b;->a:Lo1/f0;

    invoke-virtual {v0}, Lo1/f0;->c()V

    .line 2
    iget-object v0, p0, Lz/b;->b:Lo1/e0;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lo1/e0;->f(I)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz/b;->b:Lo1/e0;

    iget v1, p0, Lz/b;->e:I

    invoke-virtual {v0, v1}, Lo1/e0;->f(I)V

    .line 2
    iget-object v0, p0, Lz/b;->b:Lo1/e0;

    iget v1, p0, Lz/b;->d:I

    invoke-virtual {v0, v1}, Lo1/e0;->g(I)V

    .line 3
    iget-object v0, p0, Lz/b;->a:Lo1/f0;

    iget-object v1, p0, Lz/b;->b:Lo1/e0;

    iget-object v2, p0, Lz/b;->c:Lo1/q;

    invoke-virtual {v0, v1, v2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    return-void
.end method
