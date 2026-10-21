.class public Ln0/y2$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/y2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final synthetic c:Ln0/y2;


# direct methods
.method public constructor <init>(Ln0/y2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/y2$o;->c:Ln0/y2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Ln0/y2$o;->a:I

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Ln0/y2$o;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    .line 2
    iget v1, v0, Lu0/i;->A:I

    iget v2, p0, Ln0/y2$o;->a:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lu0/i;->B:I

    iget v3, p0, Ln0/y2$o;->b:I

    if-eq v1, v3, :cond_2

    :cond_0
    if-nez v2, :cond_1

    .line 3
    iget v1, v0, Lu0/i;->B:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v1, p0, Ln0/y2$o;->c:Ln0/y2;

    iget-object v1, v1, Ln0/y2;->H:Ljava/lang/Runnable;

    invoke-static {v1}, Lo1/j;->f(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Ln0/y2$o;->c:Ln0/y2;

    iget-object v1, v1, Ln0/y2;->H:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    .line 6
    :cond_1
    iget v1, v0, Lu0/i;->A:I

    iput v1, p0, Ln0/y2$o;->a:I

    .line 7
    iget v0, v0, Lu0/i;->B:I

    iput v0, p0, Ln0/y2$o;->b:I

    :cond_2
    return-void
.end method
