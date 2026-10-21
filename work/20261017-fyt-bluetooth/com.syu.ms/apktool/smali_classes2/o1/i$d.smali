.class public Lo1/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo1/i;


# direct methods
.method public constructor <init>(Lo1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo1/i$d;->a:Lo1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lo1/i$d;->a:Lo1/i;

    invoke-static {v0}, Lo1/i;->h(Lo1/i;)I

    .line 3
    iget-object v0, p0, Lo1/i$d;->a:Lo1/i;

    invoke-static {v0}, Lo1/i;->f(Lo1/i;)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    sget v0, Lu0/b;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "sys.gps.check.err"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget v0, Ln0/j4;->b:I

    const/16 v2, 0x5a

    if-eq v0, v2, :cond_0

    const/4 v0, 0x6

    .line 6
    invoke-static {v0}, Lu0/d;->C3(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lo1/i$d;->a:Lo1/i;

    invoke-static {v0, v1}, Lo1/i;->g(Lo1/i;I)I

    :cond_1
    return-void
.end method
