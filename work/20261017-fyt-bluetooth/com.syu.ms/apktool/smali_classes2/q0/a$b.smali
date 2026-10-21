.class public Lq0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq0/a;


# direct methods
.method public constructor <init>(Lq0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq0/a$b;->a:Lq0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lq0/a$b;->a:Lq0/a;

    const/4 v1, 0x3

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V

    .line 2
    iget-object v0, p0, Lq0/a$b;->a:Lq0/a;

    const/4 v1, 0x4

    const/16 v2, 0x21

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V

    .line 3
    iget-object v0, p0, Lq0/a$b;->a:Lq0/a;

    const/4 v1, 0x0

    const/16 v2, 0x41

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V

    .line 4
    iget-object v0, p0, Lq0/a$b;->a:Lq0/a;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lq0/a;->d(Lq0/a;II)V

    .line 5
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    iget-object v1, p0, Lq0/a$b;->a:Lq0/a;

    invoke-static {v1}, Lq0/a;->l(Lq0/a;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
