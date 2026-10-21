.class public Lmodule/canbus/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c0;


# direct methods
.method public constructor <init>(Lmodule/canbus/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c0$a;->a:Lmodule/canbus/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/canbus/c0$a;->a:Lmodule/canbus/c0;

    invoke-static {v0}, Lmodule/canbus/c0;->b3(Lmodule/canbus/c0;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lmodule/canbus/c0;->c3(Lmodule/canbus/c0;I)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/c0$a;->a:Lmodule/canbus/c0;

    iput v3, v0, Lmodule/canbus/c0;->g:I

    .line 3
    iput v3, v0, Lmodule/canbus/c0;->h:I

    return-void
.end method
