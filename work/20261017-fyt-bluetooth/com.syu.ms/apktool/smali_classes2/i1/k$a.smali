.class public Li1/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/k;


# direct methods
.method public constructor <init>(Li1/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/k$a;->a:Li1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->w:I

    .line 2
    iget-object v1, p0, Li1/k$a;->a:Li1/k;

    iget v2, v1, Li1/k;->k:I

    if-eq v2, v0, :cond_0

    .line 3
    iput v0, v1, Li1/k;->k:I

    const/4 v2, 0x3

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x19

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v3, v2, v3

    const/4 v3, 0x2

    aput v0, v2, v3

    .line 4
    invoke-virtual {v1, v2}, Li1/k;->w([I)V

    :cond_0
    return-void
.end method
