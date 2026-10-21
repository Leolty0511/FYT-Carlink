.class public Lmodule/canbus/f0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/f0;


# direct methods
.method public constructor <init>(Lmodule/canbus/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/f0$f;->a:Lmodule/canbus/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/f0$f;->a:Lmodule/canbus/f0;

    invoke-static {v0}, Lmodule/canbus/f0;->o3(Lmodule/canbus/f0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lmodule/canbus/f0$f;->a:Lmodule/canbus/f0;

    const/4 v1, -0x1

    iput v1, v0, Lmodule/canbus/f0;->z:I

    const/4 v1, 0x5

    .line 3
    iput-byte v1, v0, Lmodule/canbus/f0;->u:B

    return-void
.end method
