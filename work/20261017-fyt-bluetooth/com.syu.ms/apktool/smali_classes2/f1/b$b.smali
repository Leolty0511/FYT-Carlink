.class public Lf1/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/b;


# direct methods
.method public constructor <init>(Lf1/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/b$b;->a:Lf1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/b$b;->a:Lf1/b;

    invoke-static {v0}, Lf1/b;->X(Lf1/b;)Lo1/l0;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lf1/b$b;->a:Lf1/b;

    invoke-static {v0}, Lf1/b;->X(Lf1/b;)Lo1/l0;

    move-result-object v0

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 3
    iget-object v0, p0, Lf1/b$b;->a:Lf1/b;

    invoke-virtual {v0}, Lf1/b;->e0()V

    :cond_0
    return-void
.end method
