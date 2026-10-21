.class public Lo0/c$b;
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

.field public final synthetic b:Lo0/c;


# direct methods
.method public constructor <init>(Lo0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo0/c$b;->b:Lo0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lo0/c$b;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_1

    .line 2
    sget v0, Lo0/e;->I:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lo0/c$b;->a:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lo0/c$b;->b:Lo0/c;

    invoke-static {v0}, Lo0/c;->F(Lo0/c;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v0, p0, Lo0/c$b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lo0/c$b;->a:Z

    .line 7
    iget-object v0, p0, Lo0/c$b;->b:Lo0/c;

    invoke-static {v0}, Lo0/c;->G(Lo0/c;)V

    .line 8
    :cond_2
    invoke-static {}, Lg1/c;->b()Lg1/c;

    move-result-object v0

    invoke-virtual {v0}, Lg1/c;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.syu.dvd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_3

    .line 9
    invoke-static {v2, v2}, Lu0/d;->T3(II)V

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {v2, v1}, Lu0/d;->T3(II)V

    :goto_0
    return-void
.end method
