.class public Lo0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lo0/a;


# direct methods
.method public constructor <init>(Lo0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/a$b;->b:Lo0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lo0/a$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lo0/a$b;->a:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 2
    iget-boolean v0, p0, Lo0/a$b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lo0/a$b;->a:Z

    .line 4
    iget-object v0, p0, Lo0/a$b;->b:Lo0/a;

    invoke-virtual {v0}, Lo0/a;->o()V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lo0/e;->I:I

    if-ne v0, v2, :cond_1

    const/16 v0, 0x14

    new-array v2, v3, [I

    aput v3, v2, v1

    .line 6
    invoke-static {v0, v2}, Lo0/g;->T(I[I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Lo0/a$b$a;

    invoke-direct {v1, p0}, Lo0/a$b$a;-><init>(Lo0/a$b;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    :goto_0
    sget-object v0, Lo0/e;->m:Ljava/lang/String;

    invoke-static {v0}, Lu0/d;->L0(Ljava/lang/String;)V

    .line 9
    sget-object v0, Lo0/e;->n:Ljava/lang/String;

    invoke-static {v0}, Lu0/d;->K0(Ljava/lang/String;)V

    .line 10
    sget-object v0, Lo0/e;->o:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lu0/d;->J0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_2
    sget v0, Lh0/c;->G:I

    if-nez v0, :cond_4

    sget v0, Lu0/b;->D:I

    if-ne v0, v2, :cond_3

    sget v0, Lo0/e;->A:I

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Lo0/a$b$b;

    invoke-direct {v1, p0}, Lo0/a$b$b;-><init>(Lo0/a$b;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x5a

    .line 13
    invoke-static {v2, v0}, Lz/k;->n(II)V

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    iput-boolean v3, p0, Lo0/a$b;->a:Z

    .line 15
    iget-object v0, p0, Lo0/a$b;->b:Lo0/a;

    invoke-virtual {v0}, Lo0/a;->n()V

    :goto_2
    return-void
.end method
