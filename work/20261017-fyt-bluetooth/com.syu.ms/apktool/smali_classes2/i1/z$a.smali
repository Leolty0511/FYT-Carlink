.class public Li1/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/z;


# direct methods
.method public constructor <init>(Li1/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/z$a;->a:Li1/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/z$a;->a:Li1/z;

    const/4 v1, 0x3

    new-array v1, v1, [I

    iget v2, v0, Li1/z;->v:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, v0, Li1/z;->w:I

    const/4 v3, 0x1

    aput v2, v1, v3

    iget v2, v0, Li1/z;->x:I

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Li1/z;->z([I)V

    return-void
.end method
