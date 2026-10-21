.class public Lk0/me$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/me;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/me;


# direct methods
.method public constructor <init>(Lk0/me;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/me$d;->a:Lk0/me;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/me$d;->a:Lk0/me;

    invoke-static {v0}, Lk0/me;->b3(Lk0/me;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk0/me$d;->a:Lk0/me;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/me;->c3(Lk0/me;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lk0/me$d;->a:Lk0/me;

    invoke-static {v0}, Lk0/me;->b3(Lk0/me;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk0/me$d;->a:Lk0/me;

    const-string v1, ""

    invoke-static {v0, v1}, Lk0/me;->c3(Lk0/me;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lk0/me$d;->a:Lk0/me;

    invoke-static {v0}, Lk0/me;->b3(Lk0/me;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lk0/me;->d3(Lk0/me;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
