.class public Li1/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/t0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/u;
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
    iput-object p1, p0, Li1/u$b;->a:Li1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([B)I
    .locals 1

    .line 1
    iget-object v0, p0, Li1/u$b;->a:Li1/u;

    iget-object v0, v0, Li1/a;->h:Li1/b0;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lo1/s0;->e([B)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/c$b;->f([I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
