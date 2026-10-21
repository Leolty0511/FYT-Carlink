.class public Ln0/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln0/a1;->U3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:I

.field public final synthetic c:Ln0/a1;


# direct methods
.method public constructor <init>(Ln0/a1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ln0/a1$a;->c:Ln0/a1;

    iput p2, p0, Ln0/a1$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Ln0/a1$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    iget v1, p0, Ln0/a1$a;->b:I

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Ln0/k4;->i(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Ln0/a1$a;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln0/a1$a;->a:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ln0/a1$a;->a:I

    .line 5
    invoke-static {}, Lo1/q0;->p()F

    move-result v2

    float-to-int v3, v2

    const/16 v4, 0xff

    .line 6
    invoke-static {v3, v0, v4}, Lo1/o0;->a(III)I

    move-result v3

    invoke-static {v3}, Lu0/d;->c0(I)V

    .line 7
    iget-object v3, p0, Ln0/a1$a;->c:Ln0/a1;

    invoke-virtual {v3}, Ln0/a1;->Q3()Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    iget-object v4, p0, Ln0/a1$a;->c:Ln0/a1;

    iget-object v5, v4, Ln0/c4;->j:[I

    aget v6, v5, v1

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    .line 9
    aget v1, v5, v0

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gez v1, :cond_3

    .line 10
    invoke-virtual {v4, v0}, Ln0/c4;->f3(Z)V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object v0, p0, Ln0/a1$a;->c:Ln0/a1;

    invoke-virtual {v0, v1}, Ln0/c4;->f3(Z)V

    :cond_3
    :goto_1
    return-void
.end method
