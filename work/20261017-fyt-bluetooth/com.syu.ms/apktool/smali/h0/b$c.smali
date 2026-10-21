.class public Lh0/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lh0/b;


# direct methods
.method public constructor <init>(Lh0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh0/b$c;->b:Lh0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lh0/b$c;->b:Lh0/b;

    invoke-virtual {v0, v3, v1}, Lh0/b;->a0(II)V

    .line 3
    sget-object v0, Lh0/c;->l:Ljava/lang/String;

    invoke-static {v0}, Lu0/d;->L0(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lh0/c;->m:Ljava/lang/String;

    invoke-static {v0}, Lu0/d;->K0(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lh0/c;->n:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v0, v2}, Lu0/d;->J0(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Lh0/b$c;->a:Z

    if-eqz v0, :cond_4

    .line 7
    iput-boolean v1, p0, Lh0/b$c;->a:Z

    .line 8
    sget v0, Lh0/c;->U:I

    if-eq v0, v3, :cond_4

    .line 9
    iget-object v0, p0, Lh0/b$c;->b:Lh0/b;

    invoke-virtual {v0}, Lh0/b;->w()V

    goto :goto_0

    .line 10
    :cond_0
    sget v0, Lu0/b;->C:I

    if-ne v0, v2, :cond_4

    .line 11
    iget-object v0, p0, Lh0/b$c;->b:Lh0/b;

    invoke-virtual {v0, v3, v3}, Lh0/b;->a0(II)V

    .line 12
    sget v0, Lh0/c;->N:I

    if-ne v0, v3, :cond_4

    .line 13
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v0

    invoke-virtual {v0}, Lh1/a;->e()I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v2, :cond_2

    .line 14
    :cond_1
    sget v0, Lu0/b;->D:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    move v1, v3

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 15
    :cond_3
    iput-boolean v3, p0, Lh0/b$c;->a:Z

    .line 16
    iget-object v0, p0, Lh0/b$c;->b:Lh0/b;

    invoke-virtual {v0}, Lh0/b;->E()V

    :cond_4
    :goto_0
    return-void
.end method
