.class public Lc1/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/l;


# direct methods
.method public constructor <init>(Lc1/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/l$a;->a:Lc1/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget-object v2, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v2}, Lc1/l;->O2(Lc1/l;)[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v2}, Lc1/l;->P2(Lc1/l;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v3}, Lc1/l;->O2(Lc1/l;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v2}, Lc1/l;->Q2(Lc1/l;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v3}, Lc1/l;->O2(Lc1/l;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v2}, Lc1/l;->R2(Lc1/l;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v3}, Lc1/l;->O2(Lc1/l;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v2}, Lc1/l;->S2(Lc1/l;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v3}, Lc1/l;->O2(Lc1/l;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v2}, Lc1/l;->T2(Lc1/l;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v3}, Lc1/l;->O2(Lc1/l;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v2}, Lc1/l;->U2(Lc1/l;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lc1/l$a;->a:Lc1/l;

    invoke-static {v3}, Lc1/l;->O2(Lc1/l;)[I

    move-result-object v3

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method
