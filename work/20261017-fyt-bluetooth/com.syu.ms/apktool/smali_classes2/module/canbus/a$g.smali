.class public Lmodule/canbus/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/a;


# direct methods
.method public constructor <init>(Lmodule/canbus/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/a$g;->a:Lmodule/canbus/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/a$g;->a:Lmodule/canbus/a;

    invoke-static {v0}, Lmodule/canbus/a;->k3(Lmodule/canbus/a;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/a$g;->a:Lmodule/canbus/a;

    const/4 v1, 0x5

    iput-byte v1, v0, Lmodule/canbus/a;->m:B

    return-void
.end method
