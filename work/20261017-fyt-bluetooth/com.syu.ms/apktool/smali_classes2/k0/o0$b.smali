.class public Lk0/o0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/o0;


# direct methods
.method public constructor <init>(Lk0/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/o0$b;->a:Lk0/o0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/o0$b;->a:Lk0/o0;

    invoke-static {v0}, Lk0/o0;->c3(Lk0/o0;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/o0;->d3(Lk0/o0;I)V

    .line 2
    iget-object v0, p0, Lk0/o0$b;->a:Lk0/o0;

    iget-object v0, v0, Lk0/o0;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lk0/o0$b;->a:Lk0/o0;

    iput v2, v0, Lk0/o0;->n:I

    return-void
.end method
