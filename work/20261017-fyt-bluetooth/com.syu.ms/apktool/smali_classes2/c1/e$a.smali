.class public Lc1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/e;


# direct methods
.method public constructor <init>(Lc1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/e$a;->a:Lc1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc1/e$a;->a:Lc1/e;

    invoke-static {v0}, Lc1/e;->O2(Lc1/e;)Lo1/l0;

    move-result-object v0

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lo1/l0;->c(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lc1/e$a;->a:Lc1/e;

    invoke-static {v2}, Lc1/e;->P2(Lc1/e;)I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 3
    iget-object v2, p0, Lc1/e$a;->a:Lc1/e;

    invoke-static {v2, v0}, Lc1/e;->Q2(Lc1/e;I)I

    const/16 v0, 0x12

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 4
    iget-object v3, p0, Lc1/e$a;->a:Lc1/e;

    invoke-static {v3}, Lc1/e;->P2(Lc1/e;)I

    move-result v3

    aput v3, v1, v2

    invoke-static {v0, v1}, Lc1/b;->i(I[I)V

    :cond_0
    return-void
.end method
