.class public Lg/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lg/j;


# direct methods
.method public constructor <init>(Lg/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/j$e;->b:Lg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 2
    iput-object p1, p0, Lg/j$e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lg/j$e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lg/j$e;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, La/b;->d:Lo1/d;

    iget-object v1, p0, Lg/j$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo1/d;->i(Ljava/lang/Comparable;)V

    .line 6
    :cond_1
    iput-object p1, p0, Lg/j$e;->a:Ljava/lang/String;

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->p:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================>>> change dvrPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/j$e;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 8
    sget-object p1, La/b;->d:Lo1/d;

    iget-object v0, p0, Lg/j$e;->a:Ljava/lang/String;

    iget-object v1, p0, Lg/j$e;->b:Lg/j;

    iget-object v1, v1, Lg/j;->v0:Lo1/s;

    invoke-virtual {p1, v0, v1}, Lo1/d;->h(Ljava/lang/Comparable;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method
