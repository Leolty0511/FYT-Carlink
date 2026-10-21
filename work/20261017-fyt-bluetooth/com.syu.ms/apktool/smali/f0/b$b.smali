.class public Lf0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf0/b;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf0/b;


# direct methods
.method public constructor <init>(Lf0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf0/b$b;->a:Lf0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/b$b;->a:Lf0/b;

    iget-boolean v1, v0, Lf0/b;->q:Z

    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2}, Lf0/b;->f(Z)V

    const-wide/16 v2, 0x32

    .line 3
    invoke-static {v2, v3}, Lo1/s0;->C(J)V

    .line 4
    :cond_0
    iget-object v0, p0, Lf0/b$b;->a:Lf0/b;

    iget-object v0, v0, Lf0/b;->P:Lo1/p;

    sget v2, Lu0/b;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Lo1/p;->d(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    invoke-virtual {v0, p0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    if-nez v1, :cond_1

    .line 6
    iget-object v0, p0, Lf0/b$b;->a:Lf0/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf0/b;->f(Z)V

    :cond_1
    return-void
.end method
