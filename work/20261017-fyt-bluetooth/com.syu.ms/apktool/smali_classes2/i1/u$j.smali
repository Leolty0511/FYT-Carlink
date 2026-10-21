.class public Li1/u$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/u;->l([I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/u;


# direct methods
.method public constructor <init>(Li1/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/u$j;->a:Li1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li1/u$j;->a:Li1/u;

    iget-object v1, v0, Li1/u;->y:Lo1/t0;

    if-eqz v1, :cond_0

    .line 2
    iget-object v0, v0, Li1/u;->A:Lo1/t0$b;

    invoke-virtual {v1, v0}, Lo1/t0;->f(Lo1/t0$b;)V

    .line 3
    iget-object v0, p0, Li1/u$j;->a:Li1/u;

    iget-object v1, v0, Li1/u;->y:Lo1/t0;

    iget-object v0, v0, Li1/u;->x:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lo1/t0;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
