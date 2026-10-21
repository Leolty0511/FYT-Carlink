.class public Lmodule/canbus/r$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/r;


# direct methods
.method public constructor <init>(Lmodule/canbus/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/r$h;->a:Lmodule/canbus/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/r$h;->a:Lmodule/canbus/r;

    iget-object v0, v0, Lmodule/canbus/r;->I:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/r$h;->a:Lmodule/canbus/r;

    const/4 v1, 0x5

    iput v1, v0, Lmodule/canbus/r;->F:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lmodule/canbus/r;->x:I

    .line 4
    iput v1, v0, Lmodule/canbus/r;->y:I

    .line 5
    iput-boolean v1, v0, Lmodule/canbus/r;->G:Z

    return-void
.end method
