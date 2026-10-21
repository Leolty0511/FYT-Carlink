.class public Li1/u$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Li1/u$h;->a:Li1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Li1/u$h;->a:Li1/u;

    const/16 v1, 0x13

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Li1/u;->w(Li1/u;II)V

    .line 2
    iget-object v0, p0, Li1/u$h;->a:Li1/u;

    const/16 v1, 0x14

    invoke-static {v0, v1, v2}, Li1/u;->w(Li1/u;II)V

    .line 3
    iget-object v0, p0, Li1/u$h;->a:Li1/u;

    const/16 v1, 0x12

    invoke-static {v0, v1, v2}, Li1/u;->w(Li1/u;II)V

    .line 4
    iget-object v0, p0, Li1/u$h;->a:Li1/u;

    const/16 v1, 0x15

    invoke-static {v0, v1, v2}, Li1/u;->w(Li1/u;II)V

    return-void
.end method
