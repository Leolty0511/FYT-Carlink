.class public Lk0/ud$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ud;


# direct methods
.method public constructor <init>(Lk0/ud;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v2, :cond_1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v4

    :goto_1
    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    move v3, v4

    .line 2
    :cond_4
    :goto_2
    iget-object v0, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v0}, Lk0/ud;->t3(Lk0/ud;)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 3
    iget-object v0, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v0, v3}, Lk0/ud;->u3(Lk0/ud;I)I

    move v0, v4

    goto :goto_3

    :cond_5
    move v0, v5

    .line 4
    :goto_3
    iget-object v1, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v1}, Lk0/ud;->v3(Lk0/ud;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5
    iget-object v1, p0, Lk0/ud$d;->a:Lk0/ud;

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lk0/ud;->w3(Lk0/ud;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v1}, Lk0/ud;->v3(Lk0/ud;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 7
    iget-object v1, p0, Lk0/ud$d;->a:Lk0/ud;

    const-string v2, ""

    invoke-static {v1, v2}, Lk0/ud;->w3(Lk0/ud;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    move v4, v0

    :cond_7
    if-eqz v4, :cond_8

    .line 8
    iget-object v0, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v0}, Lk0/ud;->t3(Lk0/ud;)I

    move-result v1

    iget-object v2, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v2}, Lk0/ud;->v3(Lk0/ud;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lk0/ud;->x3(Lk0/ud;ILjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v0}, Lk0/ud;->y3(Lk0/ud;)Z

    move-result v0

    if-eq v0, v6, :cond_8

    .line 10
    iget-object v0, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v0, v6}, Lk0/ud;->z3(Lk0/ud;Z)Z

    .line 11
    iget-object v0, p0, Lk0/ud$d;->a:Lk0/ud;

    invoke-static {v0, v5}, Lk0/ud;->u3(Lk0/ud;I)I

    :cond_8
    return-void
.end method
