.class public Le1/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/k;


# direct methods
.method public constructor <init>(Le1/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/k$a;->a:Le1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-boolean v0, Le1/a;->c:Z

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Le1/k$a;->a:Le1/k;

    invoke-static {v0}, Le1/k;->l(Le1/k;)I

    move-result v1

    invoke-static {v0, v1}, Le1/k;->k(Le1/k;I)I

    .line 3
    iget-object v0, p0, Le1/k$a;->a:Le1/k;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Le1/k;->n(Le1/k;I)I

    move-result v1

    invoke-static {v0, v1}, Le1/k;->m(Le1/k;I)I

    .line 4
    iget-object v0, p0, Le1/k$a;->a:Le1/k;

    invoke-static {v0}, Le1/k;->l(Le1/k;)I

    move-result v0

    iget-object v1, p0, Le1/k$a;->a:Le1/k;

    invoke-static {v1}, Le1/k;->j(Le1/k;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Le1/k$a;->a:Le1/k;

    invoke-static {v0}, Le1/k;->l(Le1/k;)I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Le1/k$a;->a:Le1/k;

    invoke-static {v0}, Le1/k;->l(Le1/k;)I

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    if-eqz v0, :cond_5

    iget-object v0, p0, Le1/k$a;->a:Le1/k;

    invoke-static {v0}, Le1/k;->l(Le1/k;)I

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Le1/k$a;->a:Le1/k;

    invoke-static {v0}, Le1/k;->l(Le1/k;)I

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    const/16 v3, 0x40

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Le1/k$a;->a:Le1/k;

    invoke-static {v0}, Le1/k;->l(Le1/k;)I

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_1

    :cond_4
    const/4 v0, 0x2

    .line 8
    invoke-static {v1}, Lu0/d;->n3(I)V

    goto :goto_1

    .line 9
    :cond_5
    :goto_0
    invoke-static {v2}, Lu0/d;->n3(I)V

    move v0, v1

    :goto_1
    if-nez v0, :cond_6

    move v1, v2

    .line 10
    :cond_6
    invoke-static {v1}, Lu0/d;->o3(I)V

    :cond_7
    return-void
.end method
