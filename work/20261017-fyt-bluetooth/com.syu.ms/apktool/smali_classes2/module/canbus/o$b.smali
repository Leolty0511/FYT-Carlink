.class public Lmodule/canbus/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/o;


# direct methods
.method public constructor <init>(Lmodule/canbus/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    invoke-static {v0}, Lmodule/canbus/o;->t3(Lmodule/canbus/o;)I

    move-result v0

    sget v1, Lh0/c;->E:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    invoke-static {v0, v1}, Lmodule/canbus/o;->u3(Lmodule/canbus/o;I)I

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 3
    :goto_0
    iget-object v1, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    invoke-static {v1}, Lmodule/canbus/o;->v3(Lmodule/canbus/o;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    sget-object v4, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v1, v4}, Lmodule/canbus/o;->w3(Lmodule/canbus/o;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    invoke-static {v1}, Lmodule/canbus/o;->v3(Lmodule/canbus/o;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    const-string v2, ""

    invoke-static {v1, v2}, Lmodule/canbus/o;->w3(Lmodule/canbus/o;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    move v2, v0

    .line 7
    :cond_2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v3, :cond_4

    .line 8
    iget-object v0, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    invoke-static {v0}, Lmodule/canbus/o;->t3(Lmodule/canbus/o;)I

    move-result v1

    iget-object v2, p0, Lmodule/canbus/o$b;->a:Lmodule/canbus/o;

    invoke-static {v2}, Lmodule/canbus/o;->v3(Lmodule/canbus/o;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmodule/canbus/o;->x3(Lmodule/canbus/o;ILjava/lang/String;)V

    :cond_4
    return-void
.end method
