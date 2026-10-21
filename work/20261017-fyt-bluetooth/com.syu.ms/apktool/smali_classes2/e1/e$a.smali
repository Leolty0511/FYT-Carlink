.class public Le1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/e;


# direct methods
.method public constructor <init>(Le1/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/e$a;->a:Le1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/e$a;->a:Le1/e;

    invoke-static {v0}, Le1/e;->F(Le1/e;)Lo1/l0;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le1/e$a;->a:Le1/e;

    invoke-static {v0}, Le1/e;->F(Le1/e;)Lo1/l0;

    move-result-object v0

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 3
    iget-object v0, p0, Le1/e$a;->a:Le1/e;

    invoke-virtual {v0}, Le1/e;->M()V

    :cond_0
    return-void
.end method
