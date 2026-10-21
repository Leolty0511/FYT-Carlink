.class public Lmodule/canbus/x$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/x;


# direct methods
.method public constructor <init>(Lmodule/canbus/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/x$b;->a:Lmodule/canbus/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/x$b;->a:Lmodule/canbus/x;

    iget-object v0, v0, Lmodule/canbus/x;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/x$b;->a:Lmodule/canbus/x;

    const/4 v1, 0x5

    iput v1, v0, Lmodule/canbus/x;->f:I

    return-void
.end method
