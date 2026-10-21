.class public Lk0/nn$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nn;


# direct methods
.method public constructor <init>(Lk0/nn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nn$b;->a:Lk0/nn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/nn$b;->a:Lk0/nn;

    iget v1, v0, Lk0/nn;->e:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/nn;->e:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Lk0/nn$b;->a:Lk0/nn;

    invoke-static {v1}, Lk0/nn;->b3(Lk0/nn;)Lo1/g0;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/nn;->c3(Lk0/nn;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lk0/nn;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/nn$b;->a:Lk0/nn;

    const/4 v1, 0x5

    iput v1, v0, Lk0/nn;->e:I

    :cond_1
    :goto_0
    return-void
.end method
