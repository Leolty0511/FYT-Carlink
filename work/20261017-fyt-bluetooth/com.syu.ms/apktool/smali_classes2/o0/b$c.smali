.class public Lo0/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lo0/b;


# direct methods
.method public constructor <init>(Lo0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/b$c;->b:Lo0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lo0/b$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lo0/b$c;->a:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 2
    iget-boolean v0, p0, Lo0/b$c;->a:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lo0/b$c;->a:Z

    .line 4
    iget-object v0, p0, Lo0/b$c;->b:Lo0/b;

    invoke-virtual {v0}, Lo0/b;->o()V

    goto :goto_1

    .line 5
    :cond_0
    sget v0, Lo0/e;->I:I

    const/16 v4, 0x14

    if-ne v0, v1, :cond_1

    new-array v0, v3, [I

    aput v3, v0, v2

    .line 6
    invoke-static {v4, v0}, Lo0/g;->T(I[I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x7

    .line 7
    invoke-static {v0}, Lg/f;->c(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-array v0, v3, [I

    .line 8
    sget v1, Lo0/e;->I:I

    aput v1, v0, v2

    invoke-static {v4, v0}, Lo0/g;->T(I[I)V

    goto :goto_1

    .line 9
    :cond_2
    sput v3, Lo0/e;->I:I

    .line 10
    sget v0, Lh0/c;->G:I

    if-nez v0, :cond_4

    sget v0, Lu0/b;->D:I

    if-ne v0, v1, :cond_3

    sget v0, Lo0/e;->A:I

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Lo0/b$c$a;

    invoke-direct {v1, p0}, Lo0/b$c$a;-><init>(Lo0/b$c;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 12
    :cond_4
    :goto_0
    iput-boolean v3, p0, Lo0/b$c;->a:Z

    .line 13
    iget-object v0, p0, Lo0/b$c;->b:Lo0/b;

    invoke-virtual {v0}, Lo0/b;->n()V

    :cond_5
    :goto_1
    return-void
.end method
