.class public Lz0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz0/b;


# direct methods
.method public constructor <init>(Lz0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz0/b$a;->a:Lz0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz0/b$a;->a:Lz0/b;

    invoke-virtual {v0}, Lz0/b;->b()V

    .line 2
    iget-object v0, p0, Lz0/b$a;->a:Lz0/b;

    sget v1, Lo1/q0;->m:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lz0/b;->c(Z)V

    return-void
.end method
