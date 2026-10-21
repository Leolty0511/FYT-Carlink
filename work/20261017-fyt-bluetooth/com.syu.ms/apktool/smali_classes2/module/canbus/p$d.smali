.class public Lmodule/canbus/p$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/p;


# direct methods
.method public constructor <init>(Lmodule/canbus/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/p$d;->a:Lmodule/canbus/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/p$d;->a:Lmodule/canbus/p;

    invoke-static {v0}, Lmodule/canbus/p;->e3(Lmodule/canbus/p;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/p$d;->a:Lmodule/canbus/p;

    const/4 v1, 0x5

    iput-byte v1, v0, Lmodule/canbus/p;->h:B

    return-void
.end method
