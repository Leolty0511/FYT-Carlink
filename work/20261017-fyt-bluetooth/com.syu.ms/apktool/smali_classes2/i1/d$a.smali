.class public Li1/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/d;


# direct methods
.method public constructor <init>(Li1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/d$a;->a:Li1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Li1/d$a;->a:Li1/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li1/d;->v(Li1/d;I)I

    .line 2
    iget-object v0, p0, Li1/d$a;->a:Li1/d;

    invoke-static {v0, v1}, Li1/d;->w(Li1/d;I)I

    return-void
.end method
