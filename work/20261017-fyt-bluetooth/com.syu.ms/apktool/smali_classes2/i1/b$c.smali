.class public Li1/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li1/b;->f(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li1/b;


# direct methods
.method public constructor <init>(Li1/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li1/b$c;->b:Li1/b;

    iput p2, p0, Li1/b$c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/b$c;->b:Li1/b;

    const/4 v1, 0x1

    new-array v1, v1, [I

    iget v2, p0, Li1/b$c;->a:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Li1/s;->r(I[I)V

    return-void
.end method
