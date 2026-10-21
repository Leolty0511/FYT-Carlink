.class public Lj/i$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj/i$a;


# direct methods
.method public constructor <init>(Lj/i$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/i$a$a;->a:Lj/i$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj/i$a$a;->a:Lj/i$a;

    iget-object v0, v0, Lj/i$a;->b:Lj/i;

    invoke-static {v0}, Lj/i;->a(Lj/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lj/i$a$a;->a:Lj/i$a;

    iget-object v0, v0, Lj/i$a;->b:Lj/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj/i;->b(Lj/i;Z)Z

    .line 3
    iget-object v0, p0, Lj/i$a$a;->a:Lj/i$a;

    iget-object v0, v0, Lj/i$a;->b:Lj/i;

    invoke-static {v0}, Lj/i;->c(Lj/i;)V

    :cond_0
    return-void
.end method
