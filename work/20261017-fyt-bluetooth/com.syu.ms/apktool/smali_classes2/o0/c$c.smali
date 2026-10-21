.class public Lo0/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:Lo0/c;


# direct methods
.method public constructor <init>(Lo0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/c$c;->c:Lo0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lo0/c$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lo0/c$c;->a:Z

    return p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dvd"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lo0/c$c;->b:Z

    .line 4
    iget-boolean v1, p0, Lo0/c$c;->a:Z

    if-eqz v1, :cond_0

    .line 5
    iput-boolean v0, p0, Lo0/c$c;->a:Z

    .line 6
    iget-object v0, p0, Lo0/c$c;->c:Lo0/c;

    invoke-virtual {v0}, Lo0/c;->o()V

    goto :goto_0

    .line 7
    :cond_0
    sget v1, Lo0/e;->I:I

    const/4 v3, 0x2

    const/16 v4, 0x14

    if-ne v1, v3, :cond_1

    new-array v1, v2, [I

    aput v2, v1, v0

    .line 8
    invoke-static {v4, v1}, Lo0/g;->T(I[I)V

    goto :goto_0

    :cond_1
    new-array v2, v2, [I

    aput v1, v2, v0

    .line 9
    invoke-static {v4, v2}, Lo0/g;->T(I[I)V

    goto :goto_0

    .line 10
    :cond_2
    sget v0, Lo0/e;->I:I

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    .line 11
    sget v0, Lh0/c;->G:I

    if-eqz v0, :cond_3

    .line 12
    sget v0, Lu0/b;->C:I

    if-ne v0, v1, :cond_4

    .line 13
    iput-boolean v2, p0, Lo0/c$c;->a:Z

    .line 14
    iget-object v0, p0, Lo0/c$c;->c:Lo0/c;

    invoke-virtual {v0}, Lo0/c;->n()V

    .line 15
    iget-object v0, p0, Lo0/c$c;->c:Lo0/c;

    invoke-static {v0}, Lo0/c;->H(Lo0/c;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-boolean v0, p0, Lo0/c$c;->b:Z

    if-nez v0, :cond_4

    .line 17
    iput-boolean v2, p0, Lo0/c$c;->b:Z

    .line 18
    iget-object v0, p0, Lo0/c$c;->c:Lo0/c;

    invoke-static {v0}, Lo0/c;->I(Lo0/c;)V

    .line 19
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Lo0/c$c$a;

    invoke-direct {v1, p0}, Lo0/c$c$a;-><init>(Lo0/c$c;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method
