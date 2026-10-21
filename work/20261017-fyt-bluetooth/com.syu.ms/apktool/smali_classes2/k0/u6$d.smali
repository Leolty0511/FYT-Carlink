.class public Lk0/u6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/u6;


# direct methods
.method public constructor <init>(Lk0/u6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u6$d;->a:Lk0/u6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/u6$d;->a:Lk0/u6;

    invoke-static {v0}, Lk0/u6;->b3(Lk0/u6;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo1/b0;->i(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lk0/u6$d;->a:Lk0/u6;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/u6;->c3(Lk0/u6;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object v0, p0, Lk0/u6$d;->a:Lk0/u6;

    invoke-static {v0}, Lk0/u6;->b3(Lk0/u6;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lk0/u6$d;->a:Lk0/u6;

    const-string v1, ""

    invoke-static {v0, v1}, Lk0/u6;->c3(Lk0/u6;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lk0/u6$d;->a:Lk0/u6;

    invoke-static {v0}, Lk0/u6;->b3(Lk0/u6;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lk0/u6;->d3(Lk0/u6;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
