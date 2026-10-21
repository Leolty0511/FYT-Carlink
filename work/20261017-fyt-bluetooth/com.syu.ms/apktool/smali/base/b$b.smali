.class public Lbase/b$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbase/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lbase/b;


# direct methods
.method public constructor <init>(Lbase/b;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbase/b$b;->a:Lbase/b;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lbase/b$a;

    if-eqz v0, :cond_2

    .line 3
    check-cast p1, Lbase/b$a;

    .line 4
    iget v0, p1, Lbase/b$a;->a:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lbase/b$b;->a:Lbase/b;

    iget v1, p1, Lbase/b$a;->b:I

    iget-object v2, p1, Lbase/b$a;->c:[I

    iget-object v3, p1, Lbase/b$a;->d:[F

    iget-object v4, p1, Lbase/b$a;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbase/b;->O2(I[I[F[Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lbase/b$b;->a:Lbase/b;

    iget v1, p1, Lbase/b$a;->b:I

    iget-object v2, p1, Lbase/b$a;->c:[I

    iget-object v3, p1, Lbase/b$a;->d:[F

    iget-object v4, p1, Lbase/b$a;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lbase/b;->N2(I[I[F[Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lbase/b$b;->a:Lbase/b;

    invoke-virtual {v0, p1}, Lbase/b;->V2(Lbase/b$a;)V

    :cond_2
    return-void
.end method
