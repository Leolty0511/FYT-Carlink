.class public Ln1/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Ln1/c;


# direct methods
.method public constructor <init>(Ln1/c;Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Ln1/c$c;->b:Ln1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Ln1/c$c;->a:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ln1/c;Ljava/lang/String;Ln1/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ln1/c$c;-><init>(Ln1/c;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln1/c$c;->b:Ln1/c;

    invoke-static {v0}, Ln1/c;->j(Ln1/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln1/c$b;

    .line 2
    iget-object v2, p0, Ln1/c$c;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Ln1/c$b;->g(Ln1/c$b;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Ln1/c$c;->b:Ln1/c;

    invoke-static {v0}, Ln1/c;->j(Ln1/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v0, p0, Ln1/c$c;->b:Ln1/c;

    invoke-static {v0}, Ln1/c;->h(Ln1/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Ln1/c$c;->b:Ln1/c;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method
