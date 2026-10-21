.class public Lk0/ym$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ym;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ym;


# direct methods
.method public constructor <init>(Lk0/ym;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ym$d;->a:Lk0/ym;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/ym$d;->a:Lk0/ym;

    iget v1, v0, Lk0/ym;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ym;->i:I

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v3, 0x0

    aput v1, v0, v3

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lk0/ym$d;->a:Lk0/ym;

    invoke-static {v0}, Lk0/ym;->d3(Lk0/ym;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ym;->e3(Lk0/ym;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v0, Lk0/ym;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/ym$d;->a:Lk0/ym;

    const/4 v1, 0x5

    iput v1, v0, Lk0/ym;->i:I

    :cond_1
    :goto_0
    return-void
.end method
