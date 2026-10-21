.class public Lmodule/canbus/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/q;


# direct methods
.method public constructor <init>(Lmodule/canbus/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/q$c;->a:Lmodule/canbus/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/q$c;->a:Lmodule/canbus/q;

    invoke-static {v0}, Lmodule/canbus/q;->e3(Lmodule/canbus/q;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/q$c;->a:Lmodule/canbus/q;

    const/4 v1, 0x5

    iput-byte v1, v0, Lmodule/canbus/q;->n:B

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lmodule/canbus/q;->k:I

    return-void
.end method
