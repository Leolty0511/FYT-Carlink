.class public Lmodule/canbus/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/y;


# direct methods
.method public constructor <init>(Lmodule/canbus/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/y$b;->a:Lmodule/canbus/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/y$b;->a:Lmodule/canbus/y;

    invoke-static {v0}, Lmodule/canbus/y;->i3(Lmodule/canbus/y;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/y$b;->a:Lmodule/canbus/y;

    const/16 v1, 0xc

    iput-byte v1, v0, Lmodule/canbus/y;->t:B

    return-void
.end method
