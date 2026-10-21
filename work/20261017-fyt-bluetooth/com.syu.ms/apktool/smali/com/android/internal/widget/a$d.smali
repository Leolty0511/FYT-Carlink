.class public Lcom/android/internal/widget/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/widget/a;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/widget/a;Lcom/android/internal/widget/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/a$d;-><init>(Lcom/android/internal/widget/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v0}, Lcom/android/internal/widget/a;->a(Lcom/android/internal/widget/a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v0}, Lcom/android/internal/widget/a;->c(Lcom/android/internal/widget/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v0, v1}, Lcom/android/internal/widget/a;->d(Lcom/android/internal/widget/a;Z)Z

    .line 4
    iget-object v0, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v0}, Lcom/android/internal/widget/a;->e(Lcom/android/internal/widget/a;)Lcom/android/internal/widget/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/a$c;->m()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v0}, Lcom/android/internal/widget/a;->e(Lcom/android/internal/widget/a;)Lcom/android/internal/widget/a$c;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/android/internal/widget/a$c;->h()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v2}, Lcom/android/internal/widget/a;->f(Lcom/android/internal/widget/a;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v2}, Lcom/android/internal/widget/a;->g(Lcom/android/internal/widget/a;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v2, v1}, Lcom/android/internal/widget/a;->h(Lcom/android/internal/widget/a;Z)Z

    .line 9
    iget-object v1, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v1}, Lcom/android/internal/widget/a;->i(Lcom/android/internal/widget/a;)V

    .line 10
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/widget/a$c;->a()V

    .line 11
    invoke-virtual {v0}, Lcom/android/internal/widget/a$c;->b()I

    move-result v1

    .line 12
    invoke-virtual {v0}, Lcom/android/internal/widget/a$c;->c()I

    move-result v0

    .line 13
    iget-object v2, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/widget/a;->v(II)V

    .line 14
    iget-object v0, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v0}, Lcom/android/internal/widget/a;->j(Lcom/android/internal/widget/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    .line 15
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/a$d;->a:Lcom/android/internal/widget/a;

    invoke-static {v0, v1}, Lcom/android/internal/widget/a;->b(Lcom/android/internal/widget/a;Z)Z

    return-void
.end method
