.class public Lmodule/canbus/i0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/i0;


# direct methods
.method public constructor <init>(Lmodule/canbus/i0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/i0$e;->a:Lmodule/canbus/i0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/i0$e;->a:Lmodule/canbus/i0;

    const/4 v1, 0x0

    iput v1, v0, Lmodule/canbus/i0;->h:I

    .line 2
    iput v1, v0, Lmodule/canbus/i0;->i:I

    .line 3
    iget-object v0, v0, Lmodule/canbus/i0;->S:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lmodule/canbus/i0$e;->a:Lmodule/canbus/i0;

    const/4 v1, 0x5

    iput v1, v0, Lmodule/canbus/i0;->Q:I

    return-void
.end method
