.class public Lk0/oo$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/oo;


# direct methods
.method public constructor <init>(Lk0/oo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oo$d;->a:Lk0/oo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lk0/qt;->a(I)V

    .line 2
    iget-object v0, p0, Lk0/oo$d;->a:Lk0/oo;

    invoke-static {v0}, Lk0/oo;->d3(Lk0/oo;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/oo$d;->a:Lk0/oo;

    invoke-static {v1}, Lk0/oo;->e3(Lk0/oo;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Lk0/oo$d;->a:Lk0/oo;

    invoke-static {v1}, Lk0/oo;->e3(Lk0/oo;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    return-void
.end method
