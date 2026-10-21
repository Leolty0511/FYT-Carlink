.class public Lo0/b$b;
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
.field public final synthetic a:Lo0/b;


# direct methods
.method public constructor <init>(Lo0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/b$b;->a:Lo0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_1

    const/16 v0, 0x14

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    .line 2
    invoke-static {v0, v2}, Lo0/g;->T(I[I)V

    .line 3
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lo0/b$b;->a:Lo0/b;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lo0/b;->F(Lo0/b;I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v1, Lo0/b$b$a;

    invoke-direct {v1, p0}, Lo0/b$b$a;-><init>(Lo0/b$b;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method
